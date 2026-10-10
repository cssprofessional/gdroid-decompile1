package io.ktor.client.engine.cio;

import io.ktor.client.plugins.HttpRequestTimeoutException;
import io.ktor.client.request.HttpRequestData;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.JobKt;

/* JADX INFO: compiled from: Endpoint.kt */
/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "io.ktor.client.engine.cio.EndpointKt$setupTimeout$timeoutJob$1", f = "Endpoint.kt", l = {321}, m = "invokeSuspend", v = 1)
public final class EndpointKt$setupTimeout$timeoutJob$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public final /* synthetic */ CoroutineContext $callContext;
    public final /* synthetic */ HttpRequestData $request;
    public final /* synthetic */ long $timeout;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EndpointKt$setupTimeout$timeoutJob$1(long j, CoroutineContext coroutineContext, HttpRequestData httpRequestData, Continuation<? super EndpointKt$setupTimeout$timeoutJob$1> continuation) {
        super(2, continuation);
        this.$timeout = j;
        this.$callContext = coroutineContext;
        this.$request = httpRequestData;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new EndpointKt$setupTimeout$timeoutJob$1(this.$timeout, this.$callContext, this.$request, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((EndpointKt$setupTimeout$timeoutJob$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            long j = this.$timeout;
            this.label = 1;
            if (DelayKt.delay(j, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        JobKt.cancel(JobKt.getJob(this.$callContext), "Request is timed out", new HttpRequestTimeoutException(this.$request));
        return Unit.INSTANCE;
    }
}
