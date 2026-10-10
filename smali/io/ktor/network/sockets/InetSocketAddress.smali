###### Class io.ktor.network.sockets.InetSocketAddress (io.ktor.network.sockets.InetSocketAddress)
.class public final Lio/ktor/network/sockets/InetSocketAddress;
.super Lio/ktor/network/sockets/SocketAddress;
.source "SocketAddressJvm.kt"


# instance fields
.field public final address:Ljava/net/InetSocketAddress;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const-string v0, "hostname"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lio/ktor/network/sockets/InetSocketAddress;-><init>(Ljava/net/InetSocketAddress;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .registers 3

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0}, Lio/ktor/network/sockets/SocketAddress;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    iput-object p1, p0, Lio/ktor/network/sockets/InetSocketAddress;->address:Ljava/net/InetSocketAddress;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    if-eqz p1, :cond_b

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const-class v1, Lio/ktor/network/sockets/InetSocketAddress;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 p0, 0x0

    return p0

    .line 50
    :cond_16
    const-string v0, "null cannot be cast to non-null type io.ktor.network.sockets.InetSocketAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/ktor/network/sockets/InetSocketAddress;

    .line 52
    invoke-virtual {p0}, Lio/ktor/network/sockets/InetSocketAddress;->getAddress$ktor_network()Ljava/net/InetSocketAddress;

    move-result-object p0

    invoke-virtual {p1}, Lio/ktor/network/sockets/InetSocketAddress;->getAddress$ktor_network()Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getAddress$ktor_network()Ljava/net/InetSocketAddress;
    .registers 1

    .line 14
    iget-object p0, p0, Lio/ktor/network/sockets/InetSocketAddress;->address:Ljava/net/InetSocketAddress;

    return-object p0
.end method

.method public bridge synthetic getAddress$ktor_network()Ljava/net/SocketAddress;
    .registers 1

    .line 13
    invoke-virtual {p0}, Lio/ktor/network/sockets/InetSocketAddress;->getAddress$ktor_network()Ljava/net/InetSocketAddress;

    move-result-object p0

    return-object p0
.end method

.method public final getHostname()Ljava/lang/String;
    .registers 2

    .line 18
    invoke-virtual {p0}, Lio/ktor/network/sockets/InetSocketAddress;->getAddress$ktor_network()Ljava/net/InetSocketAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getHostName(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 56
    invoke-virtual {p0}, Lio/ktor/network/sockets/InetSocketAddress;->getAddress$ktor_network()Ljava/net/InetSocketAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 59
    invoke-virtual {p0}, Lio/ktor/network/sockets/InetSocketAddress;->getAddress$ktor_network()Ljava/net/InetSocketAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
