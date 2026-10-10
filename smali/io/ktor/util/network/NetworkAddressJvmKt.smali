###### Class io.ktor.util.network.NetworkAddressJvmKt (io.ktor.util.network.NetworkAddressJvmKt)
.class public final Lio/ktor/util/network/NetworkAddressJvmKt;
.super Ljava/lang/Object;
.source "NetworkAddressJvm.kt"


# direct methods
.method public static final getHostname(Ljava/net/SocketAddress;)Ljava/lang/String;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    instance-of v0, p0, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    move-object v2, p0

    check-cast v2, Ljava/net/InetSocketAddress;

    goto :goto_f

    :cond_e
    move-object v2, v1

    :goto_f
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2f

    :cond_17
    if-eqz v0, :cond_1c

    check-cast p0, Ljava/net/InetSocketAddress;

    goto :goto_1d

    :cond_1c
    move-object p0, v1

    :goto_1d
    if-eqz p0, :cond_29

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    if-eqz p0, :cond_29

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    :cond_29
    if-nez v1, :cond_2e

    const-string v2, ""

    goto :goto_2f

    :cond_2e
    move-object v2, v1

    :cond_2f
    :goto_2f
    return-object v2
.end method

.method public static final getPort(Ljava/net/SocketAddress;)I
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    instance-of v0, p0, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_c

    check-cast p0, Ljava/net/InetSocketAddress;

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p0

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method
