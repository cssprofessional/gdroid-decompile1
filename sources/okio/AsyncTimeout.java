package okio;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AsyncTimeout.kt */
/* JADX INFO: loaded from: classes3.dex */
public class AsyncTimeout extends Timeout {
    public static final long IDLE_TIMEOUT_MILLIS;
    public static final long IDLE_TIMEOUT_NANOS;
    public static final Condition condition;
    public static AsyncTimeout idleSentinel;
    public static final ReentrantLock lock;
    public int index = -1;
    public int state;
    public long timeoutAt;
    public static final Companion Companion = new Companion(null);
    public static final PriorityQueue queue = new PriorityQueue();

    public void timedOut() {
    }

    public final long getTimeoutAt$okio() {
        return this.timeoutAt;
    }

    public final void enter() {
        long jTimeoutNanos = timeoutNanos();
        boolean zHasDeadline = hasDeadline();
        if (jTimeoutNanos != 0 || zHasDeadline) {
            ReentrantLock reentrantLock = lock;
            reentrantLock.lock();
            try {
                if (this.state != 0) {
                    throw new IllegalStateException("Unbalanced enter/exit");
                }
                this.state = 1;
                Companion.insertIntoQueue(this);
                Unit unit = Unit.INSTANCE;
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    public final boolean exit() {
        ReentrantLock reentrantLock = lock;
        reentrantLock.lock();
        try {
            int i = this.state;
            this.state = 0;
            if (i != 1) {
                return i == 2;
            }
            queue.remove(this);
            return false;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final long remainingNanos$okio(long j) {
        return this.timeoutAt - j;
    }

    public static /* synthetic */ void setTimeoutAt$okio$default(AsyncTimeout asyncTimeout, long j, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setTimeoutAt");
        }
        if ((i & 1) != 0) {
            j = System.nanoTime();
        }
        asyncTimeout.setTimeoutAt$okio(j);
    }

    public final void setTimeoutAt$okio(long j) {
        long jTimeoutNanos = timeoutNanos();
        boolean zHasDeadline = hasDeadline();
        if (timeoutNanos() != 0 && hasDeadline()) {
            this.timeoutAt = j + Math.min(jTimeoutNanos, deadlineNanoTime() - j);
        } else if (jTimeoutNanos != 0) {
            this.timeoutAt = j + jTimeoutNanos;
        } else {
            if (zHasDeadline) {
                this.timeoutAt = deadlineNanoTime();
                return;
            }
            throw new AssertionError();
        }
    }

    public final IOException access$newTimeoutException(IOException iOException) {
        return newTimeoutException(iOException);
    }

    public IOException newTimeoutException(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    /* JADX INFO: compiled from: AsyncTimeout.kt */
    public static final class Watchdog extends Thread {
        public Watchdog() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            ReentrantLock lock;
            AsyncTimeout asyncTimeoutAwaitTimeout;
            while (true) {
                try {
                    lock = AsyncTimeout.Companion.getLock();
                    lock.lock();
                    try {
                        asyncTimeoutAwaitTimeout = AsyncTimeout.Companion.awaitTimeout();
                    } finally {
                        lock.unlock();
                    }
                } catch (InterruptedException unused) {
                }
                if (asyncTimeoutAwaitTimeout == AsyncTimeout.Companion.getIdleSentinel()) {
                    AsyncTimeout.Companion.setIdleSentinel(null);
                    return;
                }
                Unit unit = Unit.INSTANCE;
                lock.unlock();
                if (asyncTimeoutAwaitTimeout != null) {
                    asyncTimeoutAwaitTimeout.timedOut();
                }
            }
        }
    }

    /* JADX INFO: compiled from: AsyncTimeout.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final PriorityQueue getQueue() {
            return AsyncTimeout.queue;
        }

        public final AsyncTimeout getIdleSentinel() {
            return AsyncTimeout.idleSentinel;
        }

        public final void setIdleSentinel(AsyncTimeout asyncTimeout) {
            AsyncTimeout.idleSentinel = asyncTimeout;
        }

        public final ReentrantLock getLock() {
            return AsyncTimeout.lock;
        }

        public final Condition getCondition() {
            return AsyncTimeout.condition;
        }

        public final void insertIntoQueue(AsyncTimeout asyncTimeout) {
            if (getIdleSentinel() == null) {
                setIdleSentinel(new AsyncTimeout());
                new Watchdog().start();
            }
            AsyncTimeout.setTimeoutAt$okio$default(asyncTimeout, 0L, 1, null);
            getQueue().add(asyncTimeout);
            if (asyncTimeout.index == 1) {
                getCondition().signal();
            }
        }

        public final AsyncTimeout awaitTimeout() throws InterruptedException {
            AsyncTimeout asyncTimeoutFirst = getQueue().first();
            if (asyncTimeoutFirst == null) {
                long jNanoTime = System.nanoTime();
                getCondition().await(AsyncTimeout.IDLE_TIMEOUT_MILLIS, TimeUnit.MILLISECONDS);
                if (getQueue().first() != null || System.nanoTime() - jNanoTime < AsyncTimeout.IDLE_TIMEOUT_NANOS) {
                    return null;
                }
                return getIdleSentinel();
            }
            long jRemainingNanos$okio = asyncTimeoutFirst.remainingNanos$okio(System.nanoTime());
            if (jRemainingNanos$okio > 0) {
                getCondition().await(jRemainingNanos$okio, TimeUnit.NANOSECONDS);
                return null;
            }
            getQueue().remove(asyncTimeoutFirst);
            asyncTimeoutFirst.state = 2;
            return asyncTimeoutFirst;
        }
    }

    static {
        ReentrantLock reentrantLock = new ReentrantLock();
        lock = reentrantLock;
        Condition conditionNewCondition = reentrantLock.newCondition();
        Intrinsics.checkNotNullExpressionValue(conditionNewCondition, "newCondition(...)");
        condition = conditionNewCondition;
        long millis = TimeUnit.SECONDS.toMillis(60L);
        IDLE_TIMEOUT_MILLIS = millis;
        IDLE_TIMEOUT_NANOS = TimeUnit.MILLISECONDS.toNanos(millis);
    }
}
