package io.ktor.client.plugins.api;

import io.ktor.client.HttpClient;
import io.ktor.client.call.HttpClientCall;
import io.ktor.client.plugins.HttpClientPluginKt;
import io.ktor.client.plugins.HttpSend;
import io.ktor.client.request.HttpRequestBuilder;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: CommonHooks.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Send implements ClientHook<Function3<? super Sender, ? super HttpRequestBuilder, ? super Continuation<? super HttpClientCall>, ? extends Object>> {
    public static final Send INSTANCE = new Send();

    /* JADX INFO: compiled from: CommonHooks.kt */
    public static final class Sender implements CoroutineScope {
        public final CoroutineContext coroutineContext;
        public final io.ktor.client.plugins.Sender httpSendSender;

        public Sender(io.ktor.client.plugins.Sender httpSendSender, CoroutineContext coroutineContext) {
            Intrinsics.checkNotNullParameter(httpSendSender, "httpSendSender");
            Intrinsics.checkNotNullParameter(coroutineContext, "coroutineContext");
            this.httpSendSender = httpSendSender;
            this.coroutineContext = coroutineContext;
        }

        @Override // kotlinx.coroutines.CoroutineScope
        public CoroutineContext getCoroutineContext() {
            return this.coroutineContext;
        }

        public final Object proceed(HttpRequestBuilder httpRequestBuilder, Continuation<? super HttpClientCall> continuation) {
            return this.httpSendSender.execute(httpRequestBuilder, continuation);
        }
    }

    /* JADX INFO: renamed from: io.ktor.client.plugins.api.Send$install$1, reason: invalid class name */
    /* JADX INFO: compiled from: CommonHooks.kt */
    @DebugMetadata(c = "io.ktor.client.plugins.api.Send$install$1", f = "CommonHooks.kt", l = {52}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends SuspendLambda implements Function3<io.ktor.client.plugins.Sender, HttpRequestBuilder, Continuation<? super HttpClientCall>, Object> {
        public final /* synthetic */ HttpClient $client;
        public final /* synthetic */ Function3<Sender, HttpRequestBuilder, Continuation<? super HttpClientCall>, Object> $handler;
        public /* synthetic */ Object L$0;
        public /* synthetic */ Object L$1;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(Function3<? super Sender, ? super HttpRequestBuilder, ? super Continuation<? super HttpClientCall>, ? extends Object> function3, HttpClient httpClient, Continuation<? super AnonymousClass1> continuation) {
            super(3, continuation);
            this.$handler = function3;
            this.$client = httpClient;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(io.ktor.client.plugins.Sender sender, HttpRequestBuilder httpRequestBuilder, Continuation<? super HttpClientCall> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$handler, this.$client, continuation);
            anonymousClass1.L$0 = sender;
            anonymousClass1.L$1 = httpRequestBuilder;
            return anonymousClass1.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            io.ktor.client.plugins.Sender sender = (io.ktor.client.plugins.Sender) this.L$0;
            HttpRequestBuilder httpRequestBuilder = (HttpRequestBuilder) this.L$1;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Function3<Sender, HttpRequestBuilder, Continuation<? super HttpClientCall>, Object> function3 = this.$handler;
                Sender sender2 = new Sender(sender, this.$client.getCoroutineContext());
                this.L$0 = SpillingKt.nullOutSpilledVariable(sender);
                this.L$1 = SpillingKt.nullOutSpilledVariable(httpRequestBuilder);
                this.label = 1;
                obj = function3.invoke(sender2, httpRequestBuilder, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    @Override // io.ktor.client.plugins.api.ClientHook
    public void install(HttpClient client, Function3<? super Sender, ? super HttpRequestBuilder, ? super Continuation<? super HttpClientCall>, ? extends Object> handler) {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(handler, "handler");
        ((HttpSend) HttpClientPluginKt.plugin(client, HttpSend.Plugin)).intercept(new AnonymousClass1(handler, client, null));
    }
}
