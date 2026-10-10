###### Class io.ktor.client.engine.cio.CIOEngineContainer (io.ktor.client.engine.cio.CIOEngineContainer)
.class public final Lio/ktor/client/engine/cio/CIOEngineContainer;
.super Ljava/lang/Object;
.source "CIOEngineContainer.kt"


# instance fields
.field private final factory:Lio/ktor/client/engine/HttpClientEngineFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/client/engine/HttpClientEngineFactory<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lio/ktor/client/engine/cio/CIO;->INSTANCE:Lio/ktor/client/engine/cio/CIO;

    iput-object v0, p0, Lio/ktor/client/engine/cio/CIOEngineContainer;->factory:Lio/ktor/client/engine/HttpClientEngineFactory;

    return-void
.end method


# virtual methods
.method public getFactory()Lio/ktor/client/engine/HttpClientEngineFactory;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/client/engine/HttpClientEngineFactory<",
            "*>;"
        }
    .end annotation

    .line 13
    iget-object p0, p0, Lio/ktor/client/engine/cio/CIOEngineContainer;->factory:Lio/ktor/client/engine/HttpClientEngineFactory;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 15
    const-string p0, "CIO"

    return-object p0
.end method
