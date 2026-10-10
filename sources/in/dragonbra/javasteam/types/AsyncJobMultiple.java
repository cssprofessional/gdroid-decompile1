package in.dragonbra.javasteam.types;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import in.dragonbra.javasteam.steam.steamclient.AsyncJobFailedException;
import in.dragonbra.javasteam.steam.steamclient.SteamClient;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AsyncJobMultiple.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class AsyncJobMultiple<T extends CallbackMsg> extends AsyncJob {
    private final Function1<T, Boolean> finishCondition;
    private final CompletableFuture<ResultSet<T>> future;
    private final List<T> results;

    /* JADX INFO: renamed from: in.dragonbra.javasteam.types.AsyncJobMultiple$await$1, reason: invalid class name */
    /* JADX INFO: compiled from: AsyncJobMultiple.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.types.AsyncJobMultiple", f = "AsyncJobMultiple.kt", l = {40}, m = "await", v = 1)
    public static final class AnonymousClass1 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ AsyncJobMultiple<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(AsyncJobMultiple<T> asyncJobMultiple, Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
            this.this$0 = asyncJobMultiple;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return this.this$0.await(this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AsyncJobMultiple(SteamClient client, JobID jobId, Function1<? super T, Boolean> finishCondition) {
        super(client, jobId);
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(jobId, "jobId");
        Intrinsics.checkNotNullParameter(finishCondition, "finishCondition");
        this.finishCondition = finishCondition;
        this.future = new CompletableFuture<>();
        this.results = new ArrayList();
        registerJob(client);
    }

    /* JADX INFO: compiled from: AsyncJobMultiple.kt */
    public static final class ResultSet<T extends CallbackMsg> {
        private boolean complete;
        private boolean failed;
        private List<? extends T> results;

        public ResultSet() {
            this(false, false, null, 7, null);
        }

        public ResultSet(boolean z, boolean z2, List<? extends T> results) {
            Intrinsics.checkNotNullParameter(results, "results");
            this.complete = z;
            this.failed = z2;
            this.results = results;
        }

        public final boolean getComplete() {
            return this.complete;
        }

        public final void setComplete(boolean z) {
            this.complete = z;
        }

        public final boolean getFailed() {
            return this.failed;
        }

        public final void setFailed(boolean z) {
            this.failed = z;
        }

        public /* synthetic */ ResultSet(boolean z, boolean z2, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? false : z, (i & 2) != 0 ? false : z2, (i & 4) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list);
        }

        public final List<T> getResults() {
            return this.results;
        }

        public final void setResults(List<? extends T> list) {
            Intrinsics.checkNotNullParameter(list, "<set-?>");
            this.results = list;
        }
    }

    public final CompletableFuture<ResultSet<T>> toDeferred() {
        return toFuture();
    }

    public final CompletableFuture<ResultSet<T>> toFuture() {
        return this.future;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object await(kotlin.coroutines.Continuation<? super in.dragonbra.javasteam.types.AsyncJobMultiple.ResultSet<T>> r5) throws java.lang.Throwable {
        /*
            r4 = this;
            boolean r0 = r5 instanceof in.dragonbra.javasteam.types.AsyncJobMultiple.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r5
            in.dragonbra.javasteam.types.AsyncJobMultiple$await$1 r0 = (in.dragonbra.javasteam.types.AsyncJobMultiple.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            in.dragonbra.javasteam.types.AsyncJobMultiple$await$1 r0 = new in.dragonbra.javasteam.types.AsyncJobMultiple$await$1
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
            java.util.concurrent.CompletableFuture<in.dragonbra.javasteam.types.AsyncJobMultiple$ResultSet<T extends in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg>> r4 = r4.future
            r0.label = r3
            java.lang.Object r5 = kotlinx.coroutines.future.FutureKt.await(r4, r0)
            if (r5 != r1) goto L3f
            return r1
        L3f:
            java.lang.String r4 = "await(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r4)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: in.dragonbra.javasteam.types.AsyncJobMultiple.await(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final ResultSet<T> runBlock() throws ExecutionException, InterruptedException, CancellationException {
        ResultSet<T> resultSet = toFuture().get();
        Intrinsics.checkNotNullExpressionValue(resultSet, "get(...)");
        return resultSet;
    }

    @Override // in.dragonbra.javasteam.types.AsyncJob
    public boolean addResult(CallbackMsg callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.results.add(callback);
        if (Intrinsics.areEqual(this.finishCondition.invoke(callback), Boolean.TRUE)) {
            CompletableFuture<ResultSet<T>> completableFuture = this.future;
            List listUnmodifiableList = Collections.unmodifiableList(this.results);
            Intrinsics.checkNotNullExpressionValue(listUnmodifiableList, "unmodifiableList(...)");
            completableFuture.complete(new ResultSet<>(true, false, listUnmodifiableList));
            return true;
        }
        heartbeat();
        return false;
    }

    @Override // in.dragonbra.javasteam.types.AsyncJob
    public void setFailed(boolean z) {
        if (this.results.isEmpty()) {
            if (z) {
                this.future.completeExceptionally(new AsyncJobFailedException());
                return;
            } else {
                this.future.cancel(true);
                return;
            }
        }
        List listUnmodifiableList = Collections.unmodifiableList(this.results);
        Intrinsics.checkNotNullExpressionValue(listUnmodifiableList, "unmodifiableList(...)");
        this.future.complete(new ResultSet<>(false, z, listUnmodifiableList));
    }
}
