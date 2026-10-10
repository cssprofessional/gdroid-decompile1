package okhttp3.internal.connection;

import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.TimeUnit;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.RoutePlanner;

/* JADX INFO: compiled from: FastFallbackExchangeFinder.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class FastFallbackExchangeFinder implements ExchangeFinder {
    public final long connectDelayNanos;
    public final BlockingQueue<RoutePlanner.ConnectResult> connectResults;
    public long nextTcpConnectAtNanos;
    public final RoutePlanner routePlanner;
    public final TaskRunner taskRunner;
    public final CopyOnWriteArrayList<RoutePlanner.Plan> tcpConnectsInFlight;

    public FastFallbackExchangeFinder(RoutePlanner routePlanner, TaskRunner taskRunner) {
        Intrinsics.checkNotNullParameter(routePlanner, "routePlanner");
        Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
        this.routePlanner = routePlanner;
        this.taskRunner = taskRunner;
        this.connectDelayNanos = TimeUnit.MILLISECONDS.toNanos(250L);
        this.nextTcpConnectAtNanos = Long.MIN_VALUE;
        this.tcpConnectsInFlight = new CopyOnWriteArrayList<>();
        this.connectResults = taskRunner.getBackend().decorate(new LinkedBlockingDeque());
    }

    @Override // okhttp3.internal.connection.ExchangeFinder
    public RoutePlanner getRoutePlanner() {
        return this.routePlanner;
    }

    @Override // okhttp3.internal.connection.ExchangeFinder
    public RealConnection find() throws IOException {
        RoutePlanner.ConnectResult connectResultLaunchTcpConnect;
        long j;
        IOException iOException = null;
        while (true) {
            try {
                if (!this.tcpConnectsInFlight.isEmpty() || RoutePlanner.hasNext$default(getRoutePlanner(), null, 1, null)) {
                    if (getRoutePlanner().isCanceled()) {
                        throw new IOException("Canceled");
                    }
                    long jNanoTime = this.taskRunner.getBackend().nanoTime();
                    long j2 = this.nextTcpConnectAtNanos - jNanoTime;
                    if (this.tcpConnectsInFlight.isEmpty() || j2 <= 0) {
                        connectResultLaunchTcpConnect = launchTcpConnect();
                        j = this.connectDelayNanos;
                        this.nextTcpConnectAtNanos = jNanoTime + j;
                    } else {
                        j = j2;
                        connectResultLaunchTcpConnect = null;
                    }
                    if (connectResultLaunchTcpConnect != null || (connectResultLaunchTcpConnect = awaitTcpConnect(j, TimeUnit.NANOSECONDS)) != null) {
                        if (connectResultLaunchTcpConnect.isSuccess()) {
                            cancelInFlightConnects();
                            if (!connectResultLaunchTcpConnect.getPlan().isReady()) {
                                connectResultLaunchTcpConnect = connectResultLaunchTcpConnect.getPlan().mo8302connectTlsEtc();
                            }
                            if (connectResultLaunchTcpConnect.isSuccess()) {
                                return connectResultLaunchTcpConnect.getPlan().mo8298handleSuccess();
                            }
                        }
                        Throwable throwable = connectResultLaunchTcpConnect.getThrowable();
                        if (throwable != null) {
                            if (!(throwable instanceof IOException)) {
                                throw throwable;
                            }
                            if (iOException == null) {
                                iOException = (IOException) throwable;
                            } else {
                                ExceptionsKt__ExceptionsKt.addSuppressed(iOException, throwable);
                            }
                        }
                        RoutePlanner.Plan nextPlan = connectResultLaunchTcpConnect.getNextPlan();
                        if (nextPlan != null) {
                            getRoutePlanner().getDeferredPlans().addFirst(nextPlan);
                        }
                    }
                } else {
                    cancelInFlightConnects();
                    Intrinsics.checkNotNull(iOException);
                    throw iOException;
                }
            } finally {
                cancelInFlightConnects();
            }
        }
    }

    public final RoutePlanner.ConnectResult launchTcpConnect() throws IOException {
        final RoutePlanner.Plan failedPlan;
        if (RoutePlanner.hasNext$default(getRoutePlanner(), null, 1, null)) {
            try {
                failedPlan = getRoutePlanner().plan();
            } catch (Throwable th) {
                failedPlan = new FailedPlan(th);
            }
            if (failedPlan.isReady()) {
                return new RoutePlanner.ConnectResult(failedPlan, null, null, 6, null);
            }
            if (failedPlan instanceof FailedPlan) {
                return ((FailedPlan) failedPlan).getResult();
            }
            this.tcpConnectsInFlight.add(failedPlan);
            TaskQueue.schedule$default(this.taskRunner.newQueue(), new Task(_UtilJvmKt.okHttpName + " connect " + getRoutePlanner().getAddress().url().redact()) { // from class: okhttp3.internal.connection.FastFallbackExchangeFinder.launchTcpConnect.1
                @Override // okhttp3.internal.concurrent.Task
                public long runOnce() throws InterruptedException {
                    RoutePlanner.ConnectResult connectResult;
                    try {
                        connectResult = failedPlan.mo8301connectTcp();
                    } catch (Throwable th2) {
                        connectResult = new RoutePlanner.ConnectResult(failedPlan, null, th2, 2, null);
                    }
                    if (!this.tcpConnectsInFlight.contains(failedPlan)) {
                        return -1L;
                    }
                    this.connectResults.put(connectResult);
                    return -1L;
                }
            }, 0L, 2, null);
        }
        return null;
    }

    public final RoutePlanner.ConnectResult awaitTcpConnect(long j, TimeUnit timeUnit) {
        RoutePlanner.ConnectResult connectResultPoll;
        if (this.tcpConnectsInFlight.isEmpty() || (connectResultPoll = this.connectResults.poll(j, timeUnit)) == null) {
            return null;
        }
        this.tcpConnectsInFlight.remove(connectResultPoll.getPlan());
        return connectResultPoll;
    }

    public final void cancelInFlightConnects() {
        Iterator<RoutePlanner.Plan> it = this.tcpConnectsInFlight.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            RoutePlanner.Plan next = it.next();
            next.mo8297cancel();
            RoutePlanner.Plan planMo8299retry = next.mo8299retry();
            if (planMo8299retry != null) {
                getRoutePlanner().getDeferredPlans().addLast(planMo8299retry);
            }
        }
        this.tcpConnectsInFlight.clear();
    }
}
