package okhttp3.internal.connection;

import java.io.IOException;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.connection.RoutePlanner;

/* JADX INFO: compiled from: SequentialExchangeFinder.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class SequentialExchangeFinder implements ExchangeFinder {
    public final RoutePlanner routePlanner;

    public SequentialExchangeFinder(RoutePlanner routePlanner) {
        Intrinsics.checkNotNullParameter(routePlanner, "routePlanner");
        this.routePlanner = routePlanner;
    }

    @Override // okhttp3.internal.connection.ExchangeFinder
    public RoutePlanner getRoutePlanner() {
        return this.routePlanner;
    }

    @Override // okhttp3.internal.connection.ExchangeFinder
    public RealConnection find() throws Throwable {
        RoutePlanner.Plan plan;
        IOException iOException = null;
        while (!getRoutePlanner().isCanceled()) {
            try {
                plan = getRoutePlanner().plan();
            } catch (IOException e) {
                if (iOException == null) {
                    iOException = e;
                } else {
                    ExceptionsKt__ExceptionsKt.addSuppressed(iOException, e);
                }
                if (!RoutePlanner.hasNext$default(getRoutePlanner(), null, 1, null)) {
                    throw iOException;
                }
            }
            if (!plan.isReady()) {
                RoutePlanner.ConnectResult connectResultMo8301connectTcp = plan.mo8301connectTcp();
                if (connectResultMo8301connectTcp.isSuccess()) {
                    connectResultMo8301connectTcp = plan.mo8302connectTlsEtc();
                }
                RoutePlanner.Plan planComponent2 = connectResultMo8301connectTcp.component2();
                Throwable thComponent3 = connectResultMo8301connectTcp.component3();
                if (thComponent3 != null) {
                    throw thComponent3;
                }
                if (planComponent2 != null) {
                    getRoutePlanner().getDeferredPlans().addFirst(planComponent2);
                }
            }
            return plan.mo8298handleSuccess();
        }
        throw new IOException("Canceled");
    }
}
