###### Class io.ktor.network.sockets.BuildersKt (io.ktor.network.sockets.BuildersKt)
.class public final Lio/ktor/network/sockets/BuildersKt;
.super Ljava/lang/Object;
.source "Builders.kt"


# direct methods
.method public static final aSocket(Lio/ktor/network/selector/SelectorManager;)Lio/ktor/network/sockets/SocketBuilder;
    .registers 3

    const-string v0, "selector"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Lio/ktor/network/sockets/SocketBuilder;

    sget-object v1, Lio/ktor/network/sockets/SocketOptions;->Companion:Lio/ktor/network/sockets/SocketOptions$Companion;

    invoke-virtual {v1}, Lio/ktor/network/sockets/SocketOptions$Companion;->create$ktor_network()Lio/ktor/network/sockets/SocketOptions;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/ktor/network/sockets/SocketBuilder;-><init>(Lio/ktor/network/selector/SelectorManager;Lio/ktor/network/sockets/SocketOptions;)V

    return-object v0
.end method
