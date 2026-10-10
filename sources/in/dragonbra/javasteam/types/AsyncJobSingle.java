package in.dragonbra.javasteam.types;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import in.dragonbra.javasteam.steam.steamclient.AsyncJobFailedException;
import in.dragonbra.javasteam.steam.steamclient.SteamClient;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AsyncJobSingle.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class AsyncJobSingle<T extends CallbackMsg> extends AsyncJob {
    private final CompletableFuture<T> future;

    /* JADX INFO: renamed from: in.dragonbra.javasteam.types.AsyncJobSingle$await$1, reason: invalid class name */
    /* JADX INFO: compiled from: AsyncJobSingle.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.types.AsyncJobSingle", f = "AsyncJobSingle.kt", l = {27}, m = "await", v = 1)
    public static final class AnonymousClass1 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ AsyncJobSingle<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(AsyncJobSingle<T> asyncJobSingle, Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
            this.this$0 = asyncJobSingle;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return this.this$0.await(this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AsyncJobSingle(SteamClient client, JobID jobId) {
        super(client, jobId);
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(jobId, "jobId");
        this.future = new CompletableFuture<>();
        registerJob(client);
    }

    public final CompletableFuture<T> toDeferred() {
        return toFuture();
    }

    public final CompletableFuture<T> toFuture() {
        return this.future;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object await(kotlin.coroutines.Continuation<? super T> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof in.dragonbra.javasteam.types.AsyncJobSingle.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r5
            in.dragonbra.javasteam.types.AsyncJobSingle$await$1 r0 = (in.dragonbra.javasteam.types.AsyncJobSingle.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            in.dragonbra.javasteam.types.AsyncJobSingle$await$1 r0 = new in.dragonbra.javasteam.types.AsyncJobSingle$await$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r5)
            goto L3f
        L29:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L31:
            kotlin.ResultKt.throwOnFailure(r5)
            java.util.concurrent.CompletableFuture<T extends in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg> r4 = r4.future
            r0.label = r3
            java.lang.Object r5 = kotlinx.coroutines.future.FutureKt.await(r4, r0)
            if (r5 != r1) goto L3f
            return r1
        L3f:
            java.lang.String r4 = "await(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r4)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: in.dragonbra.javasteam.types.AsyncJobSingle.await(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final T runBlock() throws ExecutionException, InterruptedException, CancellationException {
        T t = toFuture().get();
        Intrinsics.checkNotNullExpressionValue(t, "get(...)");
        return t;
    }

    @Override // in.dragonbra.javasteam.types.AsyncJob
    public boolean addResult(CallbackMsg callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.future.complete(callback);
        return true;
    }

    @Override // in.dragonbra.javasteam.types.AsyncJob
    public void setFailed(boolean z) {
        if (z) {
            this.future.completeExceptionally(new AsyncJobFailedException());
        } else {
            this.future.cancel(true);
        }
    }
}
