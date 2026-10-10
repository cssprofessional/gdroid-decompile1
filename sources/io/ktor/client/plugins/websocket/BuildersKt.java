package io.ktor.client.plugins.websocket;

import io.ktor.client.HttpClient;
import io.ktor.client.plugins.HttpClientPluginKt;
import io.ktor.client.request.HttpRequestBuilder;
import io.ktor.client.statement.HttpStatement;
import io.ktor.http.URLBuilder;
import io.ktor.http.URLProtocol;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: builders.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class BuildersKt {
    public static final Object webSocketSession(HttpClient httpClient, Function1<? super HttpRequestBuilder, Unit> function1, Continuation<? super DefaultClientWebSocketSession> continuation) {
        HttpClientPluginKt.plugin(httpClient, WebSockets.Plugin);
        CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        HttpRequestBuilder httpRequestBuilder = new HttpRequestBuilder();
        httpRequestBuilder.url(new Function2() { // from class: io.ktor.client.plugins.websocket.BuildersKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return BuildersKt.webSocketSession$lambda$0$0((URLBuilder) obj, (URLBuilder) obj2);
            }
        });
        function1.invoke(httpRequestBuilder);
        BuildersKt__Builders_commonKt.launch$default(httpClient, null, null, new AnonymousClass2(new HttpStatement(httpRequestBuilder, httpClient), completableDeferredCompletableDeferred$default, null), 3, null);
        return completableDeferredCompletableDeferred$default.await(continuation);
    }

    public static final Unit webSocketSession$lambda$0$0(URLBuilder url, URLBuilder it) {
        Intrinsics.checkNotNullParameter(url, "$this$url");
        Intrinsics.checkNotNullParameter(it, "it");
        url.setProtocol(URLProtocol.Companion.getWS());
        url.setPort(url.getProtocol().getDefaultPort());
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: io.ktor.client.plugins.websocket.BuildersKt$webSocketSession$2, reason: invalid class name */
    /* JADX INFO: compiled from: builders.kt */
    @DebugMetadata(c = "io.ktor.client.plugins.websocket.BuildersKt$webSocketSession$2", f = "builders.kt", l = {269, 272, 56, 284, 284}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public final /* synthetic */ CompletableDeferred<DefaultClientWebSocketSession> $sessionDeferred;
        public final /* synthetic */ HttpStatement $statement;
        public int I$0;
        public int I$1;
        public int I$2;
        public int I$3;
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public Object L$4;
        public Object L$5;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(HttpStatement httpStatement, CompletableDeferred<DefaultClientWebSocketSession> completableDeferred, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$statement = httpStatement;
            this.$sessionDeferred = completableDeferred;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$statement, this.$sessionDeferred, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Can't wrap try/catch for region: R(12:0|2|78|(1:(1:(1:(1:(1:(2:9|10)(3:11|12|68))(4:18|19|72|73))(8:21|76|22|54|55|(1:57)|72|73))(6:26|82|27|28|79|(2:50|(1:52)(6:53|54|55|(0)|72|73))(2:61|62)))(3:31|32|33))(4:34|35|36|(1:38)(1:39))|40|74|41|80|42|45|(1:47)(3:48|79|(0)(0))|(1:(0))) */
        /* JADX WARN: Can't wrap try/catch for region: R(9:(1:78)|(1:(1:(1:(1:(1:(2:9|10)(3:11|12|68))(4:18|19|72|73))(8:21|76|22|54|55|(1:57)|72|73))(6:26|82|27|28|79|(2:50|(1:52)(6:53|54|55|(0)|72|73))(2:61|62)))(3:31|32|33))(4:34|35|36|(1:38)(1:39))|40|74|41|80|42|45|(1:47)(3:48|79|(0)(0))) */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x00ec, code lost:
        
            r0 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x0194, code lost:
        
            r0 = th;
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x0195, code lost:
        
            r8 = r12;
            r6 = r13;
            r7 = r14;
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x01bc, code lost:
        
            return r2;
         */
        /* JADX WARN: Removed duplicated region for block: B:50:0x0119 A[Catch: all -> 0x0188, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x0188, blocks: (B:50:0x0119, B:61:0x018c, B:62:0x0193), top: B:79:0x0117 }] */
        /* JADX WARN: Removed duplicated region for block: B:57:0x0187 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:61:0x018c A[Catch: all -> 0x0188, TRY_ENTER, TryCatch #3 {all -> 0x0188, blocks: (B:50:0x0119, B:61:0x018c, B:62:0x0193), top: B:79:0x0117 }] */
        /* JADX WARN: Removed duplicated region for block: B:67:0x01bc A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r18) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 459
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.plugins.websocket.BuildersKt.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }
}
