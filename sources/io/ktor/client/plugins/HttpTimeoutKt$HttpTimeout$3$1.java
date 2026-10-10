package io.ktor.client.plugins;

import io.ktor.client.call.HttpClientCall;
import io.ktor.client.plugins.api.Send;
import io.ktor.client.request.HttpRequestBuilder;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* JADX INFO: compiled from: HttpTimeout.kt */
/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "io.ktor.client.plugins.HttpTimeoutKt$HttpTimeout$3$1", f = "HttpTimeout.kt", l = {168}, m = "invokeSuspend", v = 1)
public final class HttpTimeoutKt$HttpTimeout$3$1 extends SuspendLambda implements Function3<Send.Sender, HttpRequestBuilder, Continuation<? super HttpClientCall>, Object> {
    public final /* synthetic */ Long $connectTimeoutMillis;
    public final /* synthetic */ Long $requestTimeoutMillis;
    public final /* synthetic */ Long $socketTimeoutMillis;
    public /* synthetic */ Object L$0;
    public /* synthetic */ Object L$1;
    public Object L$2;
    public boolean Z$0;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpTimeoutKt$HttpTimeout$3$1(Long l, Long l2, Long l3, Continuation<? super HttpTimeoutKt$HttpTimeout$3$1> continuation) {
        super(3, continuation);
        this.$requestTimeoutMillis = l;
        this.$connectTimeoutMillis = l2;
        this.$socketTimeoutMillis = l3;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Send.Sender sender, HttpRequestBuilder httpRequestBuilder, Continuation<? super HttpClientCall> continuation) {
        HttpTimeoutKt$HttpTimeout$3$1 httpTimeoutKt$HttpTimeout$3$1 = new HttpTimeoutKt$HttpTimeout$3$1(this.$requestTimeoutMillis, this.$connectTimeoutMillis, this.$socketTimeoutMillis, continuation);
        httpTimeoutKt$HttpTimeout$3$1.L$0 = sender;
        httpTimeoutKt$HttpTimeout$3$1.L$1 = httpRequestBuilder;
        return httpTimeoutKt$HttpTimeout$3$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Send.Sender sender = (Send.Sender) this.L$0;
        HttpRequestBuilder httpRequestBuilder = (HttpRequestBuilder) this.L$1;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            boolean supportsRequestTimeout = HttpTimeoutKt.getSupportsRequestTimeout(httpRequestBuilder);
            HttpTimeoutCapability httpTimeoutCapability = HttpTimeoutCapability.INSTANCE;
            HttpTimeoutConfig httpTimeoutConfig = (HttpTimeoutConfig) httpRequestBuilder.getCapabilityOrNull(httpTimeoutCapability);
            if (httpTimeoutConfig == null && HttpTimeoutKt.HttpTimeout$lambda$1$hasNotNullTimeouts(this.$requestTimeoutMillis, this.$connectTimeoutMillis, this.$socketTimeoutMillis, supportsRequestTimeout)) {
                httpTimeoutConfig = new HttpTimeoutConfig(null, null, null, 7, null);
                httpRequestBuilder.setCapability(httpTimeoutCapability, httpTimeoutConfig);
            }
            if (httpTimeoutConfig != null) {
                Long l = this.$connectTimeoutMillis;
                Long l2 = this.$socketTimeoutMillis;
                Long l3 = this.$requestTimeoutMillis;
                Long connectTimeoutMillis = httpTimeoutConfig.getConnectTimeoutMillis();
                if (connectTimeoutMillis != null) {
                    l = connectTimeoutMillis;
                }
                httpTimeoutConfig.setConnectTimeoutMillis(l);
                Long socketTimeoutMillis = httpTimeoutConfig.getSocketTimeoutMillis();
                if (socketTimeoutMillis != null) {
                    l2 = socketTimeoutMillis;
                }
                httpTimeoutConfig.setSocketTimeoutMillis(l2);
                if (supportsRequestTimeout) {
                    Long requestTimeoutMillis = httpTimeoutConfig.getRequestTimeoutMillis();
                    if (requestTimeoutMillis != null) {
                        l3 = requestTimeoutMillis;
                    }
                    httpTimeoutConfig.setRequestTimeoutMillis(l3);
                    HttpTimeoutKt.applyRequestTimeout(sender, httpRequestBuilder, httpTimeoutConfig.getRequestTimeoutMillis());
                }
            }
            this.L$0 = SpillingKt.nullOutSpilledVariable(sender);
            this.L$1 = SpillingKt.nullOutSpilledVariable(httpRequestBuilder);
            this.L$2 = SpillingKt.nullOutSpilledVariable(httpTimeoutConfig);
            this.Z$0 = supportsRequestTimeout;
            this.label = 1;
            obj = sender.proceed(httpRequestBuilder, this);
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
