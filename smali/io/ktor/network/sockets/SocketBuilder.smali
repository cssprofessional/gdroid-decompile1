###### Class io.ktor.network.sockets.SocketBuilder (io.ktor.network.sockets.SocketBuilder)
.class public final Lio/ktor/network/sockets/SocketBuilder;
.super Ljava/lang/Object;
.source "Builders.kt"


# instance fields
.field public options:Lio/ktor/network/sockets/SocketOptions;

.field public final selector:Lio/ktor/network/selector/SelectorManager;


# direct methods
.method public constructor <init>(Lio/ktor/network/selector/SelectorManager;Lio/ktor/network/sockets/SocketOptions;)V
    .registers 4

    const-string v0, "selector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lio/ktor/network/sockets/SocketBuilder;->selector:Lio/ktor/network/selector/SelectorManager;

    .line 23
    iput-object p2, p0, Lio/ktor/network/sockets/SocketBuilder;->options:Lio/ktor/network/sockets/SocketOptions;

    return-void
.end method


# virtual methods
.method public getOptions()Lio/ktor/network/sockets/SocketOptions;
    .registers 1

    .line 23
    iget-object p0, p0, Lio/ktor/network/sockets/SocketBuilder;->options:Lio/ktor/network/sockets/SocketOptions;

    return-object p0
.end method

.method public final tcp()Lio/ktor/network/sockets/TcpSocketBuilder;
    .registers 3

    .line 31
    new-instance v0, Lio/ktor/network/sockets/TcpSocketBuilder;

    iget-object v1, p0, Lio/ktor/network/sockets/SocketBuilder;->selector:Lio/ktor/network/selector/SelectorManager;

    invoke-virtual {p0}, Lio/ktor/network/sockets/SocketBuilder;->getOptions()Lio/ktor/network/sockets/SocketOptions;

    move-result-object p0

    invoke-virtual {p0}, Lio/ktor/network/sockets/SocketOptions;->peer$ktor_network()Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lio/ktor/network/sockets/TcpSocketBuilder;-><init>(Lio/ktor/network/selector/SelectorManager;Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;)V

    return-object v0
.end method
