package io.ktor.client.engine.cio;

import com.google.protobuf.DescriptorProtos;
import io.ktor.client.engine.HttpClientEngineConfig;
import io.ktor.network.tls.TLSConfigBuilder;

/* JADX INFO: compiled from: CIOEngineConfig.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CIOEngineConfig extends HttpClientEngineConfig {
    public final EndpointConfig endpoint = new EndpointConfig();
    public final TLSConfigBuilder https = new TLSConfigBuilder();
    public int maxConnectionsCount = DescriptorProtos.Edition.EDITION_2023_VALUE;
    public long requestTimeout = 15000;

    public final EndpointConfig getEndpoint() {
        return this.endpoint;
    }

    public final TLSConfigBuilder getHttps() {
        return this.https;
    }

    public final int getMaxConnectionsCount() {
        return this.maxConnectionsCount;
    }

    public final long getRequestTimeout() {
        return this.requestTimeout;
    }
}
