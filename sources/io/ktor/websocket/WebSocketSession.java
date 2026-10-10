package io.ktor.websocket;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.channels.SendChannel;

/* JADX INFO: compiled from: WebSocketSession.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface WebSocketSession extends CoroutineScope {
    Object flush(Continuation<? super Unit> continuation);

    ReceiveChannel<Frame> getIncoming();

    long getMaxFrameSize();

    SendChannel<Frame> getOutgoing();

    default Object send(Frame frame, Continuation<? super Unit> continuation) {
        return send$suspendImpl(this, frame, continuation);
    }

    void setMaxFrameSize(long j);

    static /* synthetic */ Object send$suspendImpl(WebSocketSession webSocketSession, Frame frame, Continuation<? super Unit> continuation) {
        Object objSend = webSocketSession.getOutgoing().send(frame, continuation);
        return objSend == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objSend : Unit.INSTANCE;
    }
}
