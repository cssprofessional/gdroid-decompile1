package io.ktor.client.engine.cio;

import io.ktor.util.date.DateJvmKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.channels.SendChannel;

/* JADX INFO: compiled from: Endpoint.kt */
/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "io.ktor.client.engine.cio.Endpoint$timeout$1", f = "Endpoint.kt", l = {51}, m = "invokeSuspend", v = 1)
public final class Endpoint$timeout$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public long J$0;
    public int label;
    public final /* synthetic */ Endpoint this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Endpoint$timeout$1(Endpoint endpoint, Continuation<? super Endpoint$timeout$1> continuation) {
        super(2, continuation);
        this.this$0 = endpoint;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new Endpoint$timeout$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((Endpoint$timeout$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        long timeMillis;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            try {
                ResultKt.throwOnFailure(obj);
            } catch (Throwable unused) {
            }
        }
        do {
            timeMillis = (this.this$0.lastActivity + this.this$0.maxEndpointIdleTime) - DateJvmKt.getTimeMillis();
            if (timeMillis <= 0) {
                SendChannel.DefaultImpls.close$default(this.this$0.deliveryPoint, null, 1, null);
                this.this$0.onDone.invoke();
                return Unit.INSTANCE;
            }
            this.J$0 = timeMillis;
            this.label = 1;
        } while (DelayKt.delay(timeMillis, this) != coroutine_suspended);
        return coroutine_suspended;
    }
}
