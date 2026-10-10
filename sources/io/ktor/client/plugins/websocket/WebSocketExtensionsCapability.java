package io.ktor.client.plugins.websocket;

import io.ktor.client.engine.HttpClientEngineCapability;
import kotlin.Unit;

/* JADX INFO: compiled from: WebSockets.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class WebSocketExtensionsCapability implements HttpClientEngineCapability<Unit> {
    public static final WebSocketExtensionsCapability INSTANCE = new WebSocketExtensionsCapability();

    public boolean equals(Object obj) {
        return this == obj || (obj instanceof WebSocketExtensionsCapability);
    }

    public int hashCode() {
        return 806573237;
    }

    public String toString() {
        return "WebSocketExtensionsCapability";
    }
}
