###### Class in.dragonbra.javasteam.steam.handlers.steammasterserver.Server (in.dragonbra.javasteam.steam.handlers.steammasterserver.Server)
.class public final Lin/dragonbra/javasteam/steam/handlers/steammasterserver/Server;
.super Ljava/lang/Object;
.source "Server.kt"


# instance fields
.field private final authedPlayers:I

.field private final endPoint:Ljava/net/InetSocketAddress;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGMSClientServerQueryResponse$Server;)V
    .registers 5

    const-string v0, "server"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGMSClientServerQueryResponse$Server;->getServerIp()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgIPAddress;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgIPAddress;->getV4()I

    move-result v1

    invoke-static {v1}, Lin/dragonbra/javasteam/util/NetHelpers;->getIPAddress(I)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGMSClientServerQueryResponse$Server;->getQueryPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/Server;->endPoint:Ljava/net/InetSocketAddress;

    .line 21
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGMSClientServerQueryResponse$Server;->getAuthPlayers()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/Server;->authedPlayers:I

    return-void
.end method


# virtual methods
.method public final getAuthedPlayers()I
    .registers 1

    .line 21
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/Server;->authedPlayers:I

    return p0
.end method

.method public final getEndPoint()Ljava/net/InetSocketAddress;
    .registers 1

    .line 16
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/Server;->endPoint:Ljava/net/InetSocketAddress;

    return-object p0
.end method
