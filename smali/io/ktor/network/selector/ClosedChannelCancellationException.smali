###### Class io.ktor.network.selector.ClosedChannelCancellationException (io.ktor.network.selector.ClosedChannelCancellationException)
.class public final Lio/ktor/network/selector/ClosedChannelCancellationException;
.super Ljava/util/concurrent/CancellationException;
.source "Selectable.kt"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    const-string v0, "Closed channel."

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    return-void
.end method
