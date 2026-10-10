###### Class io.ktor.client.engine.cio.EndpointConfig (io.ktor.client.engine.cio.EndpointConfig)
.class public final Lio/ktor/client/engine/cio/EndpointConfig;
.super Ljava/lang/Object;
.source "CIOEngineConfig.kt"


# instance fields
.field public allowHalfClose:Z

.field public connectAttempts:I

.field public connectTimeout:J

.field public keepAliveTime:J

.field public maxConnectionsPerRoute:I

.field public pipelineMaxSize:I

.field public socketTimeout:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 78
    iput v0, p0, Lio/ktor/client/engine/cio/EndpointConfig;->maxConnectionsPerRoute:I

    const-wide/16 v0, 0x1388

    .line 85
    iput-wide v0, p0, Lio/ktor/client/engine/cio/EndpointConfig;->keepAliveTime:J

    const/16 v2, 0x14

    .line 92
    iput v2, p0, Lio/ktor/client/engine/cio/EndpointConfig;->pipelineMaxSize:I

    .line 99
    iput-wide v0, p0, Lio/ktor/client/engine/cio/EndpointConfig;->connectTimeout:J

    const-wide v0, 0x7fffffffffffffffL

    .line 106
    iput-wide v0, p0, Lio/ktor/client/engine/cio/EndpointConfig;->socketTimeout:J

    const/4 v0, 0x1

    .line 114
    iput v0, p0, Lio/ktor/client/engine/cio/EndpointConfig;->connectAttempts:I

    return-void
.end method


# virtual methods
.method public final getAllowHalfClose()Z
    .registers 1

    .line 121
    iget-boolean p0, p0, Lio/ktor/client/engine/cio/EndpointConfig;->allowHalfClose:Z

    return p0
.end method

.method public final getConnectAttempts()I
    .registers 1

    .line 114
    iget p0, p0, Lio/ktor/client/engine/cio/EndpointConfig;->connectAttempts:I

    return p0
.end method

.method public final getConnectTimeout()J
    .registers 3

    .line 99
    iget-wide v0, p0, Lio/ktor/client/engine/cio/EndpointConfig;->connectTimeout:J

    return-wide v0
.end method

.method public final getKeepAliveTime()J
    .registers 3

    .line 85
    iget-wide v0, p0, Lio/ktor/client/engine/cio/EndpointConfig;->keepAliveTime:J

    return-wide v0
.end method

.method public final getMaxConnectionsPerRoute()I
    .registers 1

    .line 78
    iget p0, p0, Lio/ktor/client/engine/cio/EndpointConfig;->maxConnectionsPerRoute:I

    return p0
.end method

.method public final getPipelineMaxSize()I
    .registers 1

    .line 92
    iget p0, p0, Lio/ktor/client/engine/cio/EndpointConfig;->pipelineMaxSize:I

    return p0
.end method

.method public final getSocketTimeout()J
    .registers 3

    .line 106
    iget-wide v0, p0, Lio/ktor/client/engine/cio/EndpointConfig;->socketTimeout:J

    return-wide v0
.end method
