###### Class io.ktor.websocket.FrameTooBigException (io.ktor.websocket.FrameTooBigException)
.class public final Lio/ktor/websocket/FrameTooBigException;
.super Ljava/lang/Exception;
.source "FrameTooBigException.kt"

# interfaces
.implements Lkotlinx/coroutines/CopyableThrowable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Exception;",
        "Lkotlinx/coroutines/CopyableThrowable<",
        "Lio/ktor/websocket/FrameTooBigException;",
        ">;"
    }
.end annotation


# instance fields
.field public final frameSize:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 19
    iput-wide p1, p0, Lio/ktor/websocket/FrameTooBigException;->frameSize:J

    return-void
.end method


# virtual methods
.method public createCopy()Lio/ktor/websocket/FrameTooBigException;
    .registers 4

    .line 25
    new-instance v0, Lio/ktor/websocket/FrameTooBigException;

    iget-wide v1, p0, Lio/ktor/websocket/FrameTooBigException;->frameSize:J

    invoke-direct {v0, v1, v2}, Lio/ktor/websocket/FrameTooBigException;-><init>(J)V

    .line 26
    invoke-static {v0, p0}, Lio/ktor/util/internal/ExceptionUtilsJvmKt;->initCauseBridge(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public bridge synthetic createCopy()Ljava/lang/Throwable;
    .registers 1

    .line 17
    invoke-virtual {p0}, Lio/ktor/websocket/FrameTooBigException;->createCopy()Lio/ktor/websocket/FrameTooBigException;

    move-result-object p0

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 4

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Frame is too big: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/ktor/websocket/FrameTooBigException;->frameSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
