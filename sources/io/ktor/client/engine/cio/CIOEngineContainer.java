package io.ktor.client.engine.cio;

import io.ktor.client.engine.HttpClientEngineFactory;

/* JADX INFO: compiled from: CIOEngineContainer.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CIOEngineContainer {
    private final HttpClientEngineFactory<?> factory = CIO.INSTANCE;

    public HttpClientEngineFactory<?> getFactory() {
        return this.factory;
    }

    public String toString() {
        return "CIO";
    }
}
