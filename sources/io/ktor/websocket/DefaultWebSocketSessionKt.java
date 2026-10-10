package io.ktor.websocket;

import io.ktor.util.logging.KtorSimpleLoggerJvmKt;
import io.ktor.websocket.CloseReason;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineName;
import org.slf4j.Logger;

/* JADX INFO: compiled from: DefaultWebSocketSession.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class DefaultWebSocketSessionKt {
    public static final Logger LOGGER = KtorSimpleLoggerJvmKt.KtorSimpleLogger("io.ktor.websocket.WebSocket");
    public static final CoroutineName IncomingProcessorCoroutineName = new CoroutineName("ws-incoming-processor");
    public static final CoroutineName OutgoingProcessorCoroutineName = new CoroutineName("ws-outgoing-processor");
    public static final CloseReason NORMAL_CLOSE = new CloseReason(CloseReason.Codes.NORMAL, "OK");

    public static final Logger getLOGGER() {
        return LOGGER;
    }

    public static final DefaultWebSocketSession DefaultWebSocketSession(WebSocketSession session, long j, long j2) {
        Intrinsics.checkNotNullParameter(session, "session");
        if (session instanceof DefaultWebSocketSession) {
            throw new IllegalArgumentException("Cannot wrap other DefaultWebSocketSession");
        }
        return new DefaultWebSocketSessionImpl(session, j, j2);
    }
}
