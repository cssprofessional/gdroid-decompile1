package io.ktor.client.engine.cio;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.Channel;

/* JADX INFO: compiled from: ConnectionPipeline.kt */
/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "io.ktor.client.engine.cio.ConnectionPipeline$pipelineContext$1$task$1", f = "ConnectionPipeline.kt", l = {45}, m = "invokeSuspend", v = 1)
public final class ConnectionPipeline$pipelineContext$1$task$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super RequestTask>, Object> {
    public final /* synthetic */ Channel<RequestTask> $tasks;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConnectionPipeline$pipelineContext$1$task$1(Channel<RequestTask> channel, Continuation<? super ConnectionPipeline$pipelineContext$1$task$1> continuation) {
        super(2, continuation);
        this.$tasks = channel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ConnectionPipeline$pipelineContext$1$task$1(this.$tasks, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super RequestTask> continuation) {
        return ((ConnectionPipeline$pipelineContext$1$task$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Channel<RequestTask> channel = this.$tasks;
            this.label = 1;
            obj = channel.receive(this);
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
