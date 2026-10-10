package io.ktor.client.plugins;

import io.ktor.client.HttpClient;
import io.ktor.client.call.HttpClientCall;
import io.ktor.client.request.HttpRequestBuilder;
import io.ktor.client.request.HttpRequestPipeline;
import io.ktor.util.AttributeKey;
import io.ktor.util.reflect.TypeInfo;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;

/* JADX INFO: compiled from: HttpSend.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpSend {
    public static final Plugin Plugin = new Plugin(0 == true ? 1 : 0);
    public static final AttributeKey<HttpSend> key;
    public final List<Function3<Sender, HttpRequestBuilder, Continuation<? super HttpClientCall>, Object>> interceptors;
    public final int maxSendCount;

    public /* synthetic */ HttpSend(int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(i);
    }

    public HttpSend(int i) {
        this.maxSendCount = i;
        this.interceptors = new ArrayList();
    }

    /* JADX INFO: compiled from: HttpSend.kt */
    public static final class Config {
        public int maxSendCount = 20;

        public final int getMaxSendCount() {
            return this.maxSendCount;
        }
    }

    public final void intercept(Function3<? super Sender, ? super HttpRequestBuilder, ? super Continuation<? super HttpClientCall>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        this.interceptors.add(block);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        KType kTypeTypeOf = null;
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(HttpSend.class);
        try {
            kTypeTypeOf = Reflection.typeOf(HttpSend.class);
        } catch (Throwable unused) {
        }
        key = new AttributeKey<>("HttpSend", new TypeInfo(orCreateKotlinClass, kTypeTypeOf));
    }

    /* JADX INFO: compiled from: HttpSend.kt */
    public static final class Plugin implements HttpClientPlugin<Config, HttpSend> {
        public /* synthetic */ Plugin(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Plugin() {
        }

        @Override // io.ktor.client.plugins.HttpClientPlugin
        public AttributeKey<HttpSend> getKey() {
            return HttpSend.key;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // io.ktor.client.plugins.HttpClientPlugin
        public HttpSend prepare(Function1<? super Config, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            Config config = new Config();
            block.invoke(config);
            return new HttpSend(config.getMaxSendCount(), null);
        }

        @Override // io.ktor.client.plugins.HttpClientPlugin
        public void install(HttpSend plugin, HttpClient scope) {
            Intrinsics.checkNotNullParameter(plugin, "plugin");
            Intrinsics.checkNotNullParameter(scope, "scope");
            scope.getRequestPipeline().intercept(HttpRequestPipeline.Phases.getSend(), new HttpSend$Plugin$install$1(plugin, scope, null));
        }
    }

    /* JADX INFO: compiled from: HttpSend.kt */
    public static final class InterceptedSender implements Sender {
        public final Function3<Sender, HttpRequestBuilder, Continuation<? super HttpClientCall>, Object> interceptor;
        public final Sender nextSender;

        /* JADX WARN: Multi-variable type inference failed */
        public InterceptedSender(Function3<? super Sender, ? super HttpRequestBuilder, ? super Continuation<? super HttpClientCall>, ? extends Object> interceptor, Sender nextSender) {
            Intrinsics.checkNotNullParameter(interceptor, "interceptor");
            Intrinsics.checkNotNullParameter(nextSender, "nextSender");
            this.interceptor = interceptor;
            this.nextSender = nextSender;
        }

        @Override // io.ktor.client.plugins.Sender
        public Object execute(HttpRequestBuilder httpRequestBuilder, Continuation<? super HttpClientCall> continuation) {
            return this.interceptor.invoke(this.nextSender, httpRequestBuilder, continuation);
        }
    }

    /* JADX INFO: compiled from: HttpSend.kt */
    public static final class DefaultSender implements Sender {
        public final HttpClient client;
        public HttpClientCall currentCall;
        public final int maxSendCount;
        public int sentCount;

        public DefaultSender(int i, HttpClient client) {
            Intrinsics.checkNotNullParameter(client, "client");
            this.maxSendCount = i;
            this.client = client;
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
        @Override // io.ktor.client.plugins.Sender
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.lang.Object execute(io.ktor.client.request.HttpRequestBuilder r7, kotlin.coroutines.Continuation<? super io.ktor.client.call.HttpClientCall> r8) throws java.lang.Throwable {
            /*
                r6 = this;
                boolean r0 = r8 instanceof io.ktor.client.plugins.HttpSend$DefaultSender$execute$1
                if (r0 == 0) goto L13
                r0 = r8
                io.ktor.client.plugins.HttpSend$DefaultSender$execute$1 r0 = (io.ktor.client.plugins.HttpSend$DefaultSender$execute$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                io.ktor.client.plugins.HttpSend$DefaultSender$execute$1 r0 = new io.ktor.client.plugins.HttpSend$DefaultSender$execute$1
                r0.<init>(r6, r8)
            L18:
                java.lang.Object r8 = r0.result
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r0.label
                r3 = 0
                r4 = 1
                if (r2 == 0) goto L36
                if (r2 != r4) goto L2e
                java.lang.Object r7 = r0.L$0
                io.ktor.client.request.HttpRequestBuilder r7 = (io.ktor.client.request.HttpRequestBuilder) r7
                kotlin.ResultKt.throwOnFailure(r8)
                goto L62
            L2e:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r7)
                throw r6
            L36:
                kotlin.ResultKt.throwOnFailure(r8)
                io.ktor.client.call.HttpClientCall r8 = r6.currentCall
                if (r8 == 0) goto L40
                kotlinx.coroutines.CoroutineScopeKt.cancel$default(r8, r3, r4, r3)
            L40:
                int r8 = r6.sentCount
                int r2 = r6.maxSendCount
                if (r8 >= r2) goto L89
                int r8 = r8 + r4
                r6.sentCount = r8
                io.ktor.client.HttpClient r8 = r6.client
                io.ktor.client.request.HttpSendPipeline r8 = r8.getSendPipeline()
                java.lang.Object r2 = r7.getBody()
                java.lang.Object r5 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r7)
                r0.L$0 = r5
                r0.label = r4
                java.lang.Object r8 = r8.execute(r7, r2, r0)
                if (r8 != r1) goto L62
                return r1
            L62:
                boolean r7 = r8 instanceof io.ktor.client.call.HttpClientCall
                if (r7 == 0) goto L69
                r3 = r8
                io.ktor.client.call.HttpClientCall r3 = (io.ktor.client.call.HttpClientCall) r3
            L69:
                if (r3 == 0) goto L6e
                r6.currentCall = r3
                return r3
            L6e:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.StringBuilder r7 = new java.lang.StringBuilder
                r7.<init>()
                java.lang.String r0 = "Failed to execute send pipeline. Expected [HttpClientCall], but received "
                r7.append(r0)
                r7.append(r8)
                java.lang.String r7 = r7.toString()
                java.lang.String r7 = r7.toString()
                r6.<init>(r7)
                throw r6
            L89:
                io.ktor.client.plugins.SendCountExceedException r7 = new io.ktor.client.plugins.SendCountExceedException
                java.lang.StringBuilder r8 = new java.lang.StringBuilder
                r8.<init>()
                java.lang.String r0 = "Max send count "
                r8.append(r0)
                int r6 = r6.maxSendCount
                r8.append(r6)
                java.lang.String r6 = " exceeded. Consider increasing the property maxSendCount if more is required."
                r8.append(r6)
                java.lang.String r6 = r8.toString()
                r7.<init>(r6)
                throw r7
            */
            throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.plugins.HttpSend.DefaultSender.execute(io.ktor.client.request.HttpRequestBuilder, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }
}
