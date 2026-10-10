package io.ktor.client.statement;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import io.ktor.client.HttpClient;
import io.ktor.client.request.HttpRequestBuilder;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HttpStatement.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpStatement {
    public final HttpRequestBuilder builder;
    public final HttpClient client;

    /* JADX INFO: renamed from: io.ktor.client.statement.HttpStatement$cleanup$1, reason: invalid class name */
    /* JADX INFO: compiled from: HttpStatement.kt */
    @DebugMetadata(c = "io.ktor.client.statement.HttpStatement", f = "HttpStatement.kt", l = {190}, m = "cleanup", v = 1)
    public static final class AnonymousClass1 extends ContinuationImpl {
        public int I$0;
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public int label;
        public /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return HttpStatement.this.cleanup(null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.client.statement.HttpStatement$fetchStreamingResponse$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: HttpStatement.kt */
    @DebugMetadata(c = "io.ktor.client.statement.HttpStatement", f = "HttpStatement.kt", l = {151}, m = "fetchStreamingResponse", v = 1)
    public static final class C00431 extends ContinuationImpl {
        public int I$0;
        public int I$1;
        public Object L$0;
        public int label;
        public /* synthetic */ Object result;

        public C00431(Continuation<? super C00431> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return HttpStatement.this.fetchStreamingResponse(this);
        }
    }

    public HttpStatement(HttpRequestBuilder builder, HttpClient client) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        Intrinsics.checkNotNullParameter(client, "client");
        this.builder = builder;
        this.client = client;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object fetchStreamingResponse(kotlin.coroutines.Continuation<? super io.ktor.client.statement.HttpResponse> r5) throws java.lang.Throwable {
        /*
            r4 = this;
            boolean r0 = r5 instanceof io.ktor.client.statement.HttpStatement.C00431
            if (r0 == 0) goto L13
            r0 = r5
            io.ktor.client.statement.HttpStatement$fetchStreamingResponse$1 r0 = (io.ktor.client.statement.HttpStatement.C00431) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.client.statement.HttpStatement$fetchStreamingResponse$1 r0 = new io.ktor.client.statement.HttpStatement$fetchStreamingResponse$1
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.Object r4 = r0.L$0
            io.ktor.client.request.HttpRequestBuilder r4 = (io.ktor.client.request.HttpRequestBuilder) r4
            kotlin.ResultKt.throwOnFailure(r5)     // Catch: java.util.concurrent.CancellationException -> L2d
            goto L5e
        L2d:
            r4 = move-exception
            goto L65
        L2f:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L37:
            kotlin.ResultKt.throwOnFailure(r5)
            io.ktor.client.request.HttpRequestBuilder r5 = new io.ktor.client.request.HttpRequestBuilder     // Catch: java.util.concurrent.CancellationException -> L2d
            r5.<init>()     // Catch: java.util.concurrent.CancellationException -> L2d
            io.ktor.client.request.HttpRequestBuilder r2 = r4.builder     // Catch: java.util.concurrent.CancellationException -> L2d
            io.ktor.client.request.HttpRequestBuilder r5 = r5.takeFromWithExecutionContext(r2)     // Catch: java.util.concurrent.CancellationException -> L2d
            io.ktor.client.plugins.DoubleReceivePluginKt.skipSaveBody(r5)     // Catch: java.util.concurrent.CancellationException -> L2d
            io.ktor.client.HttpClient r4 = r4.client     // Catch: java.util.concurrent.CancellationException -> L2d
            java.lang.Object r2 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r5)     // Catch: java.util.concurrent.CancellationException -> L2d
            r0.L$0 = r2     // Catch: java.util.concurrent.CancellationException -> L2d
            r2 = 0
            r0.I$0 = r2     // Catch: java.util.concurrent.CancellationException -> L2d
            r0.I$1 = r2     // Catch: java.util.concurrent.CancellationException -> L2d
            r0.label = r3     // Catch: java.util.concurrent.CancellationException -> L2d
            java.lang.Object r5 = r4.execute$ktor_client_core(r5, r0)     // Catch: java.util.concurrent.CancellationException -> L2d
            if (r5 != r1) goto L5e
            return r1
        L5e:
            io.ktor.client.call.HttpClientCall r5 = (io.ktor.client.call.HttpClientCall) r5     // Catch: java.util.concurrent.CancellationException -> L2d
            io.ktor.client.statement.HttpResponse r4 = r5.getResponse()     // Catch: java.util.concurrent.CancellationException -> L2d
            return r4
        L65:
            java.lang.Throwable r4 = io.ktor.client.utils.ExceptionUtilsJvmKt.unwrapCancellationException(r4)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.statement.HttpStatement.fetchStreamingResponse(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object cleanup(io.ktor.client.statement.HttpResponse r5, kotlin.coroutines.Continuation<? super kotlin.Unit> r6) throws java.lang.Throwable {
        /*
            r4 = this;
            boolean r0 = r6 instanceof io.ktor.client.statement.HttpStatement.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r6
            io.ktor.client.statement.HttpStatement$cleanup$1 r0 = (io.ktor.client.statement.HttpStatement.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.client.statement.HttpStatement$cleanup$1 r0 = new io.ktor.client.statement.HttpStatement$cleanup$1
            r0.<init>(r6)
        L18:
            java.lang.Object r4 = r0.result
            java.lang.Object r6 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L41
            if (r1 != r2) goto L39
            java.lang.Object r5 = r0.L$3
            kotlinx.coroutines.CompletableJob r5 = (kotlinx.coroutines.CompletableJob) r5
            java.lang.Object r5 = r0.L$2
            kotlinx.coroutines.CompletableJob r5 = (kotlinx.coroutines.CompletableJob) r5
            java.lang.Object r5 = r0.L$1
            kotlinx.coroutines.CompletableJob r5 = (kotlinx.coroutines.CompletableJob) r5
            java.lang.Object r5 = r0.L$0
            io.ktor.client.statement.HttpResponse r5 = (io.ktor.client.statement.HttpResponse) r5
            kotlin.ResultKt.throwOnFailure(r4)
            goto L83
        L39:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L41:
            kotlin.ResultKt.throwOnFailure(r4)
            kotlin.coroutines.CoroutineContext r4 = r5.getCoroutineContext()
            kotlinx.coroutines.Job r4 = kotlinx.coroutines.JobKt.getJob(r4)
            java.lang.String r1 = "null cannot be cast to non-null type kotlinx.coroutines.CompletableJob"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r4, r1)
            kotlinx.coroutines.CompletableJob r4 = (kotlinx.coroutines.CompletableJob) r4
            r4.complete()
            boolean r1 = io.ktor.client.plugins.DoubleReceivePluginKt.isSaved(r5)
            if (r1 != 0) goto L63
            io.ktor.utils.io.ByteReadChannel r1 = r5.getRawContent()     // Catch: java.lang.Throwable -> L63
            io.ktor.utils.io.ByteReadChannelKt.cancel(r1)     // Catch: java.lang.Throwable -> L63
        L63:
            java.lang.Object r5 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r5)
            r0.L$0 = r5
            java.lang.Object r5 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r4)
            r0.L$1 = r5
            r0.L$2 = r4
            java.lang.Object r5 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r4)
            r0.L$3 = r5
            r5 = 0
            r0.I$0 = r5
            r0.label = r2
            java.lang.Object r4 = r4.join(r0)
            if (r4 != r6) goto L83
            return r6
        L83:
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.statement.HttpStatement.cleanup(io.ktor.client.statement.HttpResponse, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public String toString() {
        return "HttpStatement[" + this.builder.getUrl() + ']';
    }
}
