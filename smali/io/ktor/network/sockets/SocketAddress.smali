###### Class io.ktor.network.sockets.SocketAddress (io.ktor.network.sockets.SocketAddress)
.class public abstract Lio/ktor/network/sockets/SocketAddress;
.super Ljava/lang/Object;
.source "SocketAddressJvm.kt"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/ktor/network/sockets/SocketAddress;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAddress$ktor_network()Ljava/net/SocketAddress;
.end method
