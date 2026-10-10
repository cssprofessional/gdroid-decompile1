package io.ktor.websocket;

import io.ktor.utils.io.pool.ObjectPool;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.channels.SendChannel;

/* JADX INFO: compiled from: WebSocketReader.kt */
/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "io.ktor.websocket.WebSocketReader$readerJob$1", f = "WebSocketReader.kt", l = {43}, m = "invokeSuspend", v = 1)
public final class WebSocketReader$readerJob$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public final /* synthetic */ ObjectPool<ByteBuffer> $pool;
    public Object L$0;
    public int label;
    public final /* synthetic */ WebSocketReader this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebSocketReader$readerJob$1(ObjectPool<ByteBuffer> objectPool, WebSocketReader webSocketReader, Continuation<? super WebSocketReader$readerJob$1> continuation) {
        super(2, continuation);
        this.$pool = objectPool;
        this.this$0 = webSocketReader;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new WebSocketReader$readerJob$1(this.$pool, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((WebSocketReader$readerJob$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Throwable th;
        ByteBuffer byteBuffer;
        ProtocolViolationException e;
        FrameTooBigException e2;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                ByteBuffer byteBufferBorrow = this.$pool.borrow();
                try {
                    WebSocketReader webSocketReader = this.this$0;
                    this.L$0 = byteBufferBorrow;
                    this.label = 1;
                    if (webSocketReader.readLoop(byteBufferBorrow, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } catch (FrameTooBigException e3) {
                    byteBuffer = byteBufferBorrow;
                    e2 = e3;
                    this.this$0.queue.close(e2);
                    this.$pool.recycle(byteBuffer);
                    SendChannel.DefaultImpls.close$default(this.this$0.queue, null, 1, null);
                    return Unit.INSTANCE;
                } catch (ProtocolViolationException e4) {
                    byteBuffer = byteBufferBorrow;
                    e = e4;
                    this.this$0.queue.close(e);
                    this.$pool.recycle(byteBuffer);
                    SendChannel.DefaultImpls.close$default(this.this$0.queue, null, 1, null);
                    return Unit.INSTANCE;
                } catch (ClosedChannelException | CancellationException unused) {
                } catch (IOException unused2) {
                    byteBuffer = byteBufferBorrow;
                    ReceiveChannel.DefaultImpls.cancel$default(this.this$0.queue, null, 1, null);
                    this.$pool.recycle(byteBuffer);
                    SendChannel.DefaultImpls.close$default(this.this$0.queue, null, 1, null);
                    return Unit.INSTANCE;
                } catch (Throwable th2) {
                    th = th2;
                    throw th;
                }
                byteBuffer = byteBufferBorrow;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                byteBuffer = (ByteBuffer) this.L$0;
                try {
                    ResultKt.throwOnFailure(obj);
                } catch (FrameTooBigException e5) {
                    e2 = e5;
                    this.this$0.queue.close(e2);
                } catch (ProtocolViolationException e6) {
                    e = e6;
                    this.this$0.queue.close(e);
                } catch (ClosedChannelException | CancellationException unused3) {
                } catch (IOException unused4) {
                    ReceiveChannel.DefaultImpls.cancel$default(this.this$0.queue, null, 1, null);
                } catch (Throwable th3) {
                    th = th3;
                    throw th;
                }
            }
            this.$pool.recycle(byteBuffer);
            SendChannel.DefaultImpls.close$default(this.this$0.queue, null, 1, null);
            return Unit.INSTANCE;
        } catch (Throwable th4) {
            this.$pool.recycle((ByteBuffer) coroutine_suspended);
            SendChannel.DefaultImpls.close$default(this.this$0.queue, null, 1, null);
            throw th4;
        }
    }
}
