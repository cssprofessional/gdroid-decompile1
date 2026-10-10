###### Class io.ktor.websocket.WebSocketExtension (io.ktor.websocket.WebSocketExtension)
.class public interface abstract Lio/ktor/websocket/WebSocketExtension;
.super Ljava/lang/Object;
.source "WebSocketExtension.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ConfigType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract clientNegotiation(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/ktor/websocket/WebSocketExtensionHeader;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract getProtocols()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ktor/websocket/WebSocketExtensionHeader;",
            ">;"
        }
    .end annotation
.end method

.method public abstract processIncomingFrame(Lio/ktor/websocket/Frame;)Lio/ktor/websocket/Frame;
.end method

.method public abstract processOutgoingFrame(Lio/ktor/websocket/Frame;)Lio/ktor/websocket/Frame;
.end method
