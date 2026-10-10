###### Class io.ktor.network.sockets.JavaSocketAddressUtilsKt (io.ktor.network.sockets.JavaSocketAddressUtilsKt)
.class public final Lio/ktor/network/sockets/JavaSocketAddressUtilsKt;
.super Ljava/lang/Object;
.source "JavaSocketAddressUtils.kt"


# direct methods
.method public static final toJavaAddress(Lio/ktor/network/sockets/SocketAddress;)Ljava/net/SocketAddress;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lio/ktor/network/sockets/SocketAddress;->getAddress$ktor_network()Ljava/net/SocketAddress;

    move-result-object p0

    return-object p0
.end method
