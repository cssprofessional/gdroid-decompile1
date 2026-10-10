###### Class io.ktor.client.engine.cio.CIOEngineConfig (io.ktor.client.engine.cio.CIOEngineConfig)
.class public final Lio/ktor/client/engine/cio/CIOEngineConfig;
.super Lio/ktor/client/engine/HttpClientEngineConfig;
.source "CIOEngineConfig.kt"


# instance fields
.field public final endpoint:Lio/ktor/client/engine/cio/EndpointConfig;

.field public final https:Lio/ktor/network/tls/TLSConfigBuilder;

.field public maxConnectionsCount:I

.field public requestTimeout:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 16
    invoke-direct {p0}, Lio/ktor/client/engine/HttpClientEngineConfig;-><init>()V

    .line 22
    new-instance v0, Lio/ktor/client/engine/cio/EndpointConfig;

    invoke-direct {v0}, Lio/ktor/client/engine/cio/EndpointConfig;-><init>()V

    iput-object v0, p0, Lio/ktor/client/engine/cio/CIOEngineConfig;->endpoint:Lio/ktor/client/engine/cio/EndpointConfig;

    .line 29
    new-instance v0, Lio/ktor/network/tls/TLSConfigBuilder;

    invoke-direct {v0}, Lio/ktor/network/tls/TLSConfigBuilder;-><init>()V

    iput-object v0, p0, Lio/ktor/client/engine/cio/CIOEngineConfig;->https:Lio/ktor/network/tls/TLSConfigBuilder;

    const/16 v0, 0x3e8

    .line 36
    iput v0, p0, Lio/ktor/client/engine/cio/CIOEngineConfig;->maxConnectionsCount:I

    const-wide/16 v0, 0x3a98

    .line 47
    iput-wide v0, p0, Lio/ktor/client/engine/cio/CIOEngineConfig;->requestTimeout:J

    return-void
.end method


# virtual methods
.method public final getEndpoint()Lio/ktor/client/engine/cio/EndpointConfig;
    .registers 1

    .line 22
    iget-object p0, p0, Lio/ktor/client/engine/cio/CIOEngineConfig;->endpoint:Lio/ktor/client/engine/cio/EndpointConfig;

    return-object p0
.end method

.method public final getHttps()Lio/ktor/network/tls/TLSConfigBuilder;
    .registers 1

    .line 29
    iget-object p0, p0, Lio/ktor/client/engine/cio/CIOEngineConfig;->https:Lio/ktor/network/tls/TLSConfigBuilder;

    return-object p0
.end method

.method public final getMaxConnectionsCount()I
    .registers 1

    .line 36
    iget p0, p0, Lio/ktor/client/engine/cio/CIOEngineConfig;->maxConnectionsCount:I

    return p0
.end method

.method public final getRequestTimeout()J
    .registers 3

    .line 47
    iget-wide v0, p0, Lio/ktor/client/engine/cio/CIOEngineConfig;->requestTimeout:J

    return-wide v0
.end method
