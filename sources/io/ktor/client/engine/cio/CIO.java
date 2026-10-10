package io.ktor.client.engine.cio;

import io.ktor.client.engine.HttpClientEngine;
import io.ktor.client.engine.HttpClientEngineFactory;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CIOCommon.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CIO implements HttpClientEngineFactory<CIOEngineConfig> {
    public static final CIO INSTANCE = new CIO();

    public boolean equals(Object obj) {
        return this == obj || (obj instanceof CIO);
    }

    public int hashCode() {
        return 1717340481;
    }

    public String toString() {
        return "CIO";
    }

    @Override // io.ktor.client.engine.HttpClientEngineFactory
    public HttpClientEngine create(Function1<? super CIOEngineConfig, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        CIOEngineConfig cIOEngineConfig = new CIOEngineConfig();
        block.invoke(cIOEngineConfig);
        return new CIOEngine(cIOEngineConfig);
    }
}
