package io.ktor.websocket;

import io.ktor.utils.io.pool.ObjectPool;
import java.nio.ByteBuffer;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: WebSocketWriter.kt */
/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "io.ktor.websocket.WebSocketWriter$writeLoopJob$1", f = "WebSocketWriter.kt", l = {44}, m = "invokeSuspend", v = 1)
public final class WebSocketWriter$writeLoopJob$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int I$0;
    public int I$1;
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public int label;
    public final /* synthetic */ WebSocketWriter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebSocketWriter$writeLoopJob$1(WebSocketWriter webSocketWriter, Continuation<? super WebSocketWriter$writeLoopJob$1> continuation) {
        super(2, continuation);
        this.this$0 = webSocketWriter;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new WebSocketWriter$writeLoopJob$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((WebSocketWriter$writeLoopJob$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object obj2;
        Throwable th;
        ObjectPool objectPool;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            ObjectPool<ByteBuffer> pool = this.this$0.getPool();
            WebSocketWriter webSocketWriter = this.this$0;
            ByteBuffer byteBufferBorrow = pool.borrow();
            try {
                ByteBuffer byteBuffer = byteBufferBorrow;
                this.L$0 = pool;
                this.L$1 = byteBufferBorrow;
                this.L$2 = SpillingKt.nullOutSpilledVariable(byteBuffer);
                this.I$0 = 0;
                this.I$1 = 0;
                this.label = 1;
                if (webSocketWriter.writeLoop(byteBuffer, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                objectPool = pool;
                obj2 = byteBufferBorrow;
            } catch (Throwable th2) {
                obj2 = byteBufferBorrow;
                th = th2;
                objectPool = pool;
                objectPool.recycle(obj2);
                throw th;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            obj2 = this.L$1;
            objectPool = (ObjectPool) this.L$0;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (Throwable th3) {
                th = th3;
                objectPool.recycle(obj2);
                throw th;
            }
        }
        Unit unit = Unit.INSTANCE;
        objectPool.recycle(obj2);
        return Unit.INSTANCE;
    }
}
