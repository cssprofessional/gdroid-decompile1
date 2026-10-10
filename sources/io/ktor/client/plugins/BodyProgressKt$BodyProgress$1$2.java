package io.ktor.client.plugins;

import io.ktor.client.content.ProgressListener;
import io.ktor.client.statement.HttpResponse;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: BodyProgress.kt */
/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "io.ktor.client.plugins.BodyProgressKt$BodyProgress$1$2", f = "BodyProgress.kt", l = {}, m = "invokeSuspend", v = 1)
public final class BodyProgressKt$BodyProgress$1$2 extends SuspendLambda implements Function2<HttpResponse, Continuation<? super HttpResponse>, Object> {
    public /* synthetic */ Object L$0;
    public int label;

    public BodyProgressKt$BodyProgress$1$2(Continuation<? super BodyProgressKt$BodyProgress$1$2> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        BodyProgressKt$BodyProgress$1$2 bodyProgressKt$BodyProgress$1$2 = new BodyProgressKt$BodyProgress$1$2(continuation);
        bodyProgressKt$BodyProgress$1$2.L$0 = obj;
        return bodyProgressKt$BodyProgress$1$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(HttpResponse httpResponse, Continuation<? super HttpResponse> continuation) {
        return ((BodyProgressKt$BodyProgress$1$2) create(httpResponse, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        HttpResponse httpResponse = (HttpResponse) this.L$0;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            ProgressListener progressListener = (ProgressListener) httpResponse.getCall().getRequest().getAttributes().getOrNull(BodyProgressKt.DownloadProgressListenerAttributeKey);
            if (progressListener == null) {
                return null;
            }
            return BodyProgressKt.withObservableDownload(httpResponse, progressListener);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
