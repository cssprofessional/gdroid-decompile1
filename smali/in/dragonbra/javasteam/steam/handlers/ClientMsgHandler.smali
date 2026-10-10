###### Class in.dragonbra.javasteam.steam.handlers.ClientMsgHandler (in.dragonbra.javasteam.steam.handlers.ClientMsgHandler)
.class public abstract Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;
.super Ljava/lang/Object;
.source "ClientMsgHandler.kt"


# instance fields
.field protected client:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;
    .registers 1

    .line 17
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->client:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "client"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract handleMsg(Lin/dragonbra/javasteam/base/IPacketMsg;)V
.end method

.method public final isExpectDisconnection()Z
    .registers 1

    .line 29
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/CMClient;->isExpectDisconnection()Z

    move-result p0

    return p0
.end method

.method public final setClient(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->client:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    return-void
.end method

.method public final setExpectDisconnection(Z)V
    .registers 2

    .line 31
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/CMClient;->setExpectDisconnection(Z)V

    return-void
.end method

.method public final setup(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;)V
    .registers 3

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->setClient(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;)V

    return-void
.end method
