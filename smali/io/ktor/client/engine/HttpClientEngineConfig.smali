###### Class io.ktor.client.engine.HttpClientEngineConfig (io.ktor.client.engine.HttpClientEngineConfig)
.class public Lio/ktor/client/engine/HttpClientEngineConfig;
.super Ljava/lang/Object;
.source "HttpClientEngineConfig.kt"


# instance fields
.field public dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public pipelining:Z

.field public proxy:Ljava/net/Proxy;

.field public threadsCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 26
    iput v0, p0, Lio/ktor/client/engine/HttpClientEngineConfig;->threadsCount:I

    return-void
.end method


# virtual methods
.method public final getDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 1

    .line 33
    iget-object p0, p0, Lio/ktor/client/engine/HttpClientEngineConfig;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object p0
.end method

.method public final getPipelining()Z
    .registers 1

    .line 40
    iget-boolean p0, p0, Lio/ktor/client/engine/HttpClientEngineConfig;->pipelining:Z

    return p0
.end method

.method public final getProxy()Ljava/net/Proxy;
    .registers 1

    .line 50
    iget-object p0, p0, Lio/ktor/client/engine/HttpClientEngineConfig;->proxy:Ljava/net/Proxy;

    return-object p0
.end method
