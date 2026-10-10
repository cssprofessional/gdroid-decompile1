package okhttp3.internal.connection;

import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.connection.RoutePlanner;

/* JADX INFO: compiled from: FailedPlan.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class FailedPlan implements RoutePlanner.Plan {
    public final boolean isReady;
    public final RoutePlanner.ConnectResult result;

    public FailedPlan(Throwable e) {
        Intrinsics.checkNotNullParameter(e, "e");
        this.result = new RoutePlanner.ConnectResult(this, null, e, 2, null);
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /* JADX INFO: renamed from: handleSuccess, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ RealConnection mo8298handleSuccess() {
        return (RealConnection) handleSuccess();
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /* JADX INFO: renamed from: retry, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ RoutePlanner.Plan mo8299retry() {
        return (RoutePlanner.Plan) retry();
    }

    public final RoutePlanner.ConnectResult getResult() {
        return this.result;
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    public boolean isReady() {
        return this.isReady;
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /* JADX INFO: renamed from: connectTcp */
    public RoutePlanner.ConnectResult mo8301connectTcp() {
        return this.result;
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /* JADX INFO: renamed from: connectTlsEtc */
    public RoutePlanner.ConnectResult mo8302connectTlsEtc() {
        return this.result;
    }

    public Void handleSuccess() {
        throw new IllegalStateException("unexpected call");
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan, okhttp3.internal.http.ExchangeCodec.Carrier
    /* JADX INFO: renamed from: cancel, reason: merged with bridge method [inline-methods] */
    public Void mo8297cancel() {
        throw new IllegalStateException("unexpected cancel");
    }

    public Void retry() {
        throw new IllegalStateException("unexpected retry");
    }
}
