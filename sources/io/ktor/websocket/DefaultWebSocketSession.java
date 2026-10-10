package io.ktor.websocket;

import java.util.List;

/* JADX INFO: compiled from: DefaultWebSocketSession.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface DefaultWebSocketSession extends WebSocketSession {
    void start(List<? extends WebSocketExtension<?>> list);
}
