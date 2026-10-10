###### Class in.dragonbra.javasteam.steam.handlers.steamgameserver.callback.TicketAuthCallback (in.dragonbra.javasteam.steam.handlers.steamgameserver.callback.TicketAuthCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamgameserver/callback/TicketAuthCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "TicketAuthCallback.kt"


# instance fields
.field private final authSessionResponse:Lin/dragonbra/javasteam/enums/EAuthSessionResponse;

.field private final gameID:Lin/dragonbra/javasteam/types/GameID;

.field private final state:I

.field private final steamID:Lin/dragonbra/javasteam/types/SteamID;

.field private final ticketCrc:I

.field private final ticketSequence:I


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 5

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 48
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 49
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientTicketAuthComplete;

    .line 48
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 52
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientTicketAuthComplete$Builder;

    .line 54
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientTicketAuthComplete$Builder;->getSteamId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/callback/TicketAuthCallback;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    .line 55
    new-instance v0, Lin/dragonbra/javasteam/types/GameID;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientTicketAuthComplete$Builder;->getGameId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/GameID;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/callback/TicketAuthCallback;->gameID:Lin/dragonbra/javasteam/types/GameID;

    .line 57
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientTicketAuthComplete$Builder;->getEstate()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/callback/TicketAuthCallback;->state:I

    .line 59
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientTicketAuthComplete$Builder;->getEauthSessionResponse()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EAuthSessionResponse;->from(I)Lin/dragonbra/javasteam/enums/EAuthSessionResponse;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/callback/TicketAuthCallback;->authSessionResponse:Lin/dragonbra/javasteam/enums/EAuthSessionResponse;

    .line 61
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientTicketAuthComplete$Builder;->getTicketCrc()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/callback/TicketAuthCallback;->ticketCrc:I

    .line 62
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientTicketAuthComplete$Builder;->getTicketSequence()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/callback/TicketAuthCallback;->ticketSequence:I

    return-void
.end method


# virtual methods
.method public final getAuthSessionResponse()Lin/dragonbra/javasteam/enums/EAuthSessionResponse;
    .registers 1

    .line 35
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/callback/TicketAuthCallback;->authSessionResponse:Lin/dragonbra/javasteam/enums/EAuthSessionResponse;

    return-object p0
.end method

.method public final getGameID()Lin/dragonbra/javasteam/types/GameID;
    .registers 1

    .line 25
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/callback/TicketAuthCallback;->gameID:Lin/dragonbra/javasteam/types/GameID;

    return-object p0
.end method

.method public final getState()I
    .registers 1

    .line 30
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/callback/TicketAuthCallback;->state:I

    return p0
.end method

.method public final getSteamID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 20
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/callback/TicketAuthCallback;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public final getTicketCrc()I
    .registers 1

    .line 40
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/callback/TicketAuthCallback;->ticketCrc:I

    return p0
.end method

.method public final getTicketSequence()I
    .registers 1

    .line 45
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/callback/TicketAuthCallback;->ticketSequence:I

    return p0
.end method
