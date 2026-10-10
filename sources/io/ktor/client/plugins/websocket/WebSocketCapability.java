package io.ktor.client.plugins.websocket;

import io.ktor.client.engine.HttpClientEngineCapability;
import kotlin.Unit;

/* JADX INFO: compiled from: WebSockets.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class WebSocketCapability implements HttpClientEngineCapability<Unit> {
    public static final WebSocketCapability INSTANCE = new WebSocketCapability();

    public boolean equals(Object obj) {
        return this == obj || (obj instanceof WebSocketCapability);
    }

    public int hashCode() {
        return -1146563391;
    }

    public String toString() {
        return "WebSocketCapability";
    }
}
