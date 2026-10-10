package io.ktor.websocket;

import java.util.List;

/* JADX INFO: compiled from: WebSocketExtension.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface WebSocketExtension<ConfigType> {
    boolean clientNegotiation(List<WebSocketExtensionHeader> list);

    List<WebSocketExtensionHeader> getProtocols();

    Frame processIncomingFrame(Frame frame);

    Frame processOutgoingFrame(Frame frame);
}
