package io.ktor.client.engine;

import java.net.Proxy;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: compiled from: HttpClientEngineConfig.kt */
/* JADX INFO: loaded from: classes2.dex */
public class HttpClientEngineConfig {
    public CoroutineDispatcher dispatcher;
    public boolean pipelining;
    public Proxy proxy;
    public int threadsCount = 4;

    public final CoroutineDispatcher getDispatcher() {
        return this.dispatcher;
    }

    public final boolean getPipelining() {
        return this.pipelining;
    }

    public final Proxy getProxy() {
        return this.proxy;
    }
}
