package io.ktor.client.plugins;

import io.ktor.client.request.HttpRequest;
import io.ktor.client.utils.ExceptionUtilsJvmKt;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* JADX INFO: compiled from: HttpCallValidator.kt */
/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "io.ktor.client.plugins.HttpCallValidatorKt$HttpCallValidator$2$3", f = "HttpCallValidator.kt", l = {135}, m = "invokeSuspend", v = 1)
public final class HttpCallValidatorKt$HttpCallValidator$2$3 extends SuspendLambda implements Function3<HttpRequest, Throwable, Continuation<? super Throwable>, Object> {
    public final /* synthetic */ List<HandlerWrapper> $callExceptionHandlers;
    public /* synthetic */ Object L$0;
    public /* synthetic */ Object L$1;
    public Object L$2;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public HttpCallValidatorKt$HttpCallValidator$2$3(List<? extends HandlerWrapper> list, Continuation<? super HttpCallValidatorKt$HttpCallValidator$2$3> continuation) {
        super(3, continuation);
        this.$callExceptionHandlers = list;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(HttpRequest httpRequest, Throwable th, Continuation<? super Throwable> continuation) {
        HttpCallValidatorKt$HttpCallValidator$2$3 httpCallValidatorKt$HttpCallValidator$2$3 = new HttpCallValidatorKt$HttpCallValidator$2$3(this.$callExceptionHandlers, continuation);
        httpCallValidatorKt$HttpCallValidator$2$3.L$0 = httpRequest;
        httpCallValidatorKt$HttpCallValidator$2$3.L$1 = th;
        return httpCallValidatorKt$HttpCallValidator$2$3.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        HttpRequest httpRequest = (HttpRequest) this.L$0;
        Throwable th = (Throwable) this.L$1;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Throwable th2 = (Throwable) this.L$2;
            ResultKt.throwOnFailure(obj);
            return th2;
        }
        ResultKt.throwOnFailure(obj);
        Throwable thUnwrapCancellationException = ExceptionUtilsJvmKt.unwrapCancellationException(th);
        List<HandlerWrapper> list = this.$callExceptionHandlers;
        this.L$0 = SpillingKt.nullOutSpilledVariable(httpRequest);
        this.L$1 = SpillingKt.nullOutSpilledVariable(th);
        this.L$2 = thUnwrapCancellationException;
        this.label = 1;
        return HttpCallValidatorKt.HttpCallValidator$lambda$0$processException(list, thUnwrapCancellationException, httpRequest, this) == coroutine_suspended ? coroutine_suspended : thUnwrapCancellationException;
    }
}
