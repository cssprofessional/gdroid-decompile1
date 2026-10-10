package io.ktor.client.engine.cio;

import org.tukaani.xz.common.Util;

/* JADX INFO: compiled from: CIOEngineConfig.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class EndpointConfig {
    public boolean allowHalfClose;
    public int maxConnectionsPerRoute = 100;
    public long keepAliveTime = 5000;
    public int pipelineMaxSize = 20;
    public long connectTimeout = 5000;
    public long socketTimeout = Util.VLI_MAX;
    public int connectAttempts = 1;

    public final int getMaxConnectionsPerRoute() {
        return this.maxConnectionsPerRoute;
    }

    public final long getKeepAliveTime() {
        return this.keepAliveTime;
    }

    public final int getPipelineMaxSize() {
        return this.pipelineMaxSize;
    }

    public final long getConnectTimeout() {
        return this.connectTimeout;
    }

    public final long getSocketTimeout() {
        return this.socketTimeout;
    }

    public final int getConnectAttempts() {
        return this.connectAttempts;
    }

    public final boolean getAllowHalfClose() {
        return this.allowHalfClose;
    }
}
