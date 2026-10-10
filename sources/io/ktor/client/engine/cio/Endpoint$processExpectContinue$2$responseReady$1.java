package io.ktor.client.engine.cio;

import io.ktor.utils.io.ByteReadChannel;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: Endpoint.kt */
/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "io.ktor.client.engine.cio.Endpoint$processExpectContinue$2$responseReady$1", f = "Endpoint.kt", l = {153}, m = "invokeSuspend", v = 1)
public final class Endpoint$processExpectContinue$2$responseReady$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
    public final /* synthetic */ ByteReadChannel $input;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Endpoint$processExpectContinue$2$responseReady$1(ByteReadChannel byteReadChannel, Continuation<? super Endpoint$processExpectContinue$2$responseReady$1> continuation) {
        super(2, continuation);
        this.$input = byteReadChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new Endpoint$processExpectContinue$2$responseReady$1(this.$input, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
        return ((Endpoint$processExpectContinue$2$responseReady$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            ByteReadChannel byteReadChannel = this.$input;
            this.label = 1;
            obj = ByteReadChannel.awaitContent$default(byteReadChannel, 0, this, 1, null);
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
