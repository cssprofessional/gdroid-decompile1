package io.ktor.client.plugins;

import io.ktor.client.plugins.api.OnRequestContext;
import io.ktor.client.request.HttpRequestBuilder;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function4;

/* JADX INFO: compiled from: HttpRequestRetry.kt */
/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "io.ktor.client.plugins.HttpRequestRetryKt$HttpRequestRetry$2$1", f = "HttpRequestRetry.kt", l = {}, m = "invokeSuspend", v = 1)
public final class HttpRequestRetryKt$HttpRequestRetry$2$1 extends SuspendLambda implements Function4<OnRequestContext, HttpRequestBuilder, Object, Continuation<? super Unit>, Object> {
    public final /* synthetic */ int $maxRetries;
    public /* synthetic */ Object L$0;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpRequestRetryKt$HttpRequestRetry$2$1(int i, Continuation<? super HttpRequestRetryKt$HttpRequestRetry$2$1> continuation) {
        super(4, continuation);
        this.$maxRetries = i;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(OnRequestContext onRequestContext, HttpRequestBuilder httpRequestBuilder, Object obj, Continuation<? super Unit> continuation) {
        HttpRequestRetryKt$HttpRequestRetry$2$1 httpRequestRetryKt$HttpRequestRetry$2$1 = new HttpRequestRetryKt$HttpRequestRetry$2$1(this.$maxRetries, continuation);
        httpRequestRetryKt$HttpRequestRetry$2$1.L$0 = httpRequestBuilder;
        return httpRequestRetryKt$HttpRequestRetry$2$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        HttpRequestBuilder httpRequestBuilder = (HttpRequestBuilder) this.L$0;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        Integer num = (Integer) httpRequestBuilder.getAttributes().getOrNull(HttpRequestRetryKt.getMaxRetriesPerRequestAttributeKey());
        httpRequestBuilder.getAttributes().put(HttpRequestRetryKt.getMaxRetriesPerRequestAttributeKey(), Boxing.boxInt(num != null ? num.intValue() : this.$maxRetries));
        return Unit.INSTANCE;
    }
}
