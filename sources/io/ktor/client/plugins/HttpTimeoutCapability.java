package io.ktor.client.plugins;

import io.ktor.client.engine.HttpClientEngineCapability;

/* JADX INFO: compiled from: HttpTimeout.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpTimeoutCapability implements HttpClientEngineCapability<HttpTimeoutConfig> {
    public static final HttpTimeoutCapability INSTANCE = new HttpTimeoutCapability();

    public boolean equals(Object obj) {
        return this == obj || (obj instanceof HttpTimeoutCapability);
    }

    public int hashCode() {
        return 2058496954;
    }

    public String toString() {
        return "HttpTimeoutCapability";
    }
}
