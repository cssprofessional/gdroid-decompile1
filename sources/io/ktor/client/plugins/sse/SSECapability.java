package io.ktor.client.plugins.sse;

import io.ktor.client.engine.HttpClientEngineCapability;
import kotlin.Unit;

/* JADX INFO: compiled from: SSE.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SSECapability implements HttpClientEngineCapability<Unit> {
    public static final SSECapability INSTANCE = new SSECapability();

    public boolean equals(Object obj) {
        return this == obj || (obj instanceof SSECapability);
    }

    public int hashCode() {
        return -177755299;
    }

    public String toString() {
        return "SSECapability";
    }
}
