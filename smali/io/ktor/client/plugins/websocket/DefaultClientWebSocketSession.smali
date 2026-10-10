###### Class io.ktor.client.plugins.websocket.DefaultClientWebSocketSession (io.ktor.client.plugins.websocket.DefaultClientWebSocketSession)
.class public final Lio/ktor/client/plugins/websocket/DefaultClientWebSocketSession;
.super Ljava/lang/Object;
.source "ClientSessions.kt"

# interfaces
.implements Lio/ktor/client/plugins/websocket/ClientWebSocketSession;
.implements Lio/ktor/websocket/DefaultWebSocketSession;


# instance fields
.field public final synthetic $$delegate_0:Lio/ktor/websocket/DefaultWebSocketSession;

.field public final call:Lio/ktor/client/call/HttpClientCall;


# direct methods
.method public constructor <init>(Lio/ktor/client/call/HttpClientCall;Lio/ktor/websocket/DefaultWebSocketSession;)V
    .registers 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lio/ktor/client/plugins/websocket/DefaultClientWebSocketSession;->$$delegate_0:Lio/ktor/websocket/DefaultWebSocketSession;

    .line 36
    iput-object p1, p0, Lio/ktor/client/plugins/websocket/DefaultClientWebSocketSession;->call:Lio/ktor/client/call/HttpClientCall;

    return-void
.end method


# virtual methods
.method public flush(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    iget-object p0, p0, Lio/ktor/client/plugins/websocket/DefaultClientWebSocketSession;->$$delegate_0:Lio/ktor/websocket/DefaultWebSocketSession;

    invoke-interface {p0, p1}, Lio/ktor/websocket/WebSocketSession;->flush(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .registers 1

    .line 0
    iget-object p0, p0, Lio/ktor/client/plugins/websocket/DefaultClientWebSocketSession;->$$delegate_0:Lio/ktor/websocket/DefaultWebSocketSession;

    invoke-interface {p0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0
.end method

.method public getIncoming()Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "Lio/ktor/websocket/Frame;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object p0, p0, Lio/ktor/client/plugins/websocket/DefaultClientWebSocketSession;->$$delegate_0:Lio/ktor/websocket/DefaultWebSocketSession;

    invoke-interface {p0}, Lio/ktor/websocket/WebSocketSession;->getIncoming()Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p0

    return-object p0
.end method

.method public getMaxFrameSize()J
    .registers 3

    .line 0
    iget-object p0, p0, Lio/ktor/client/plugins/websocket/DefaultClientWebSocketSession;->$$delegate_0:Lio/ktor/websocket/DefaultWebSocketSession;

    invoke-interface {p0}, Lio/ktor/websocket/WebSocketSession;->getMaxFrameSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutgoing()Lkotlinx/coroutines/channels/SendChannel;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "Lio/ktor/websocket/Frame;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object p0, p0, Lio/ktor/client/plugins/websocket/DefaultClientWebSocketSession;->$$delegate_0:Lio/ktor/websocket/DefaultWebSocketSession;

    invoke-interface {p0}, Lio/ktor/websocket/WebSocketSession;->getOutgoing()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object p0

    return-object p0
.end method

.method public send(Lio/ktor/websocket/Frame;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/websocket/Frame;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    iget-object p0, p0, Lio/ktor/client/plugins/websocket/DefaultClientWebSocketSession;->$$delegate_0:Lio/ktor/websocket/DefaultWebSocketSession;

    invoke-interface {p0, p1, p2}, Lio/ktor/websocket/WebSocketSession;->send(Lio/ktor/websocket/Frame;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public setMaxFrameSize(J)V
    .registers 3

    .line 0
    iget-object p0, p0, Lio/ktor/client/plugins/websocket/DefaultClientWebSocketSession;->$$delegate_0:Lio/ktor/websocket/DefaultWebSocketSession;

    invoke-interface {p0, p1, p2}, Lio/ktor/websocket/WebSocketSession;->setMaxFrameSize(J)V

    return-void
.end method

.method public start(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/ktor/websocket/WebSocketExtension<",
            "*>;>;)V"
        }
    .end annotation

    .line 0
    const-string v0, "negotiatedExtensions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/ktor/client/plugins/websocket/DefaultClientWebSocketSession;->$$delegate_0:Lio/ktor/websocket/DefaultWebSocketSession;

    invoke-interface {p0, p1}, Lio/ktor/websocket/DefaultWebSocketSession;->start(Ljava/util/List;)V

    return-void
.end method
