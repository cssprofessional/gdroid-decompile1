###### Class io.ktor.client.engine.cio.FailToConnectException (io.ktor.client.engine.cio.FailToConnectException)
.class public final Lio/ktor/client/engine/cio/FailToConnectException;
.super Ljava/lang/Exception;
.source "Endpoint.kt"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 330
    const-string v0, "Connect timed out or retry attempts exceeded"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
