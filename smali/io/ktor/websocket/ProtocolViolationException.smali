###### Class io.ktor.websocket.ProtocolViolationException (io.ktor.websocket.ProtocolViolationException)
.class public final Lio/ktor/websocket/ProtocolViolationException;
.super Ljava/lang/Exception;
.source "ProtocolViolationException.kt"

# interfaces
.implements Lkotlinx/coroutines/CopyableThrowable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Exception;",
        "Lkotlinx/coroutines/CopyableThrowable<",
        "Lio/ktor/websocket/ProtocolViolationException;",
        ">;"
    }
.end annotation


# instance fields
.field public final violation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "violation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 17
    iput-object p1, p0, Lio/ktor/websocket/ProtocolViolationException;->violation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createCopy()Lio/ktor/websocket/ProtocolViolationException;
    .registers 3

    .line 22
    new-instance v0, Lio/ktor/websocket/ProtocolViolationException;

    iget-object v1, p0, Lio/ktor/websocket/ProtocolViolationException;->violation:Ljava/lang/String;

    invoke-direct {v0, v1}, Lio/ktor/websocket/ProtocolViolationException;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-static {v0, p0}, Lio/ktor/util/internal/ExceptionUtilsJvmKt;->initCauseBridge(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public bridge synthetic createCopy()Ljava/lang/Throwable;
    .registers 1

    .line 15
    invoke-virtual {p0}, Lio/ktor/websocket/ProtocolViolationException;->createCopy()Lio/ktor/websocket/ProtocolViolationException;

    move-result-object p0

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received illegal frame: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/ktor/websocket/ProtocolViolationException;->violation:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
