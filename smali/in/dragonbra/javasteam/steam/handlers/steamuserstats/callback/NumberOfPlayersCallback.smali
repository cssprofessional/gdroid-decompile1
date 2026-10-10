###### Class in.dragonbra.javasteam.steam.handlers.steamuserstats.callback.NumberOfPlayersCallback (in.dragonbra.javasteam.steam.handlers.steamuserstats.callback.NumberOfPlayersCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/NumberOfPlayersCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "NumberOfPlayersCallback.kt"


# instance fields
.field private final numPlayers:I

.field private final result:Lin/dragonbra/javasteam/enums/EResult;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 4

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 27
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 28
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgDPGetNumberOfCurrentPlayersResponse;

    .line 27
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 31
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgDPGetNumberOfCurrentPlayersResponse$Builder;

    .line 33
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getTargetJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;->setJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 34
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgDPGetNumberOfCurrentPlayersResponse$Builder;->getEresult()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v0

    const-string v1, "from(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/NumberOfPlayersCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    .line 35
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgDPGetNumberOfCurrentPlayersResponse$Builder;->getPlayerCount()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/NumberOfPlayersCallback;->numPlayers:I

    return-void
.end method


# virtual methods
.method public final getNumPlayers()I
    .registers 1

    .line 24
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/NumberOfPlayersCallback;->numPlayers:I

    return p0
.end method

.method public final getResult()Lin/dragonbra/javasteam/enums/EResult;
    .registers 1

    .line 19
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/NumberOfPlayersCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-object p0
.end method
