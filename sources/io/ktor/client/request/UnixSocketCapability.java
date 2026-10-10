package io.ktor.client.request;

import io.ktor.client.engine.HttpClientEngineCapability;

/* JADX INFO: compiled from: UnixSockets.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class UnixSocketCapability implements HttpClientEngineCapability<UnixSocketSettings> {
    public static final UnixSocketCapability INSTANCE = new UnixSocketCapability();

    public boolean equals(Object obj) {
        return this == obj || (obj instanceof UnixSocketCapability);
    }

    public int hashCode() {
        return 620284891;
    }

    public String toString() {
        return "UnixSocketCapability";
    }
}
