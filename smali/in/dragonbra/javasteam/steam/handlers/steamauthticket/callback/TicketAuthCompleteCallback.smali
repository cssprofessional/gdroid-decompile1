###### Class in.dragonbra.javasteam.steam.handlers.steamauthticket.callback.TicketAuthCompleteCallback (in.dragonbra.javasteam.steam.handlers.steamauthticket.callback.TicketAuthCompleteCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAuthCompleteCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "TicketAuthCompleteCallback.kt"


# instance fields
.field private final authSessionResponse:Lin/dragonbra/javasteam/enums/EAuthSessionResponse;

.field private final gameID:Lin/dragonbra/javasteam/types/GameID;

.field private final ownerSteamID:Lin/dragonbra/javasteam/types/SteamID;

.field private final state:I

.field private final steamID:Lin/dragonbra/javasteam/types/SteamID;

.field private final ticketCRC:I

.field private final ticketSequence:I


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/types/JobID;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientTicketAuthComplete$Builder;)V
    .registers 6

    const-string v0, "targetJobID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 24
    invoke-virtual {p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientTicketAuthComplete$Builder;->getEauthSessionResponse()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EAuthSessionResponse;->from(I)Lin/dragonbra/javasteam/enums/EAuthSessionResponse;

    move-result-object v0

    const-string v1, "from(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAuthCompleteCallback;->authSessionResponse:Lin/dragonbra/javasteam/enums/EAuthSessionResponse;

    .line 29
    invoke-virtual {p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientTicketAuthComplete$Builder;->getEstate()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAuthCompleteCallback;->state:I

    .line 34
    new-instance v0, Lin/dragonbra/javasteam/types/GameID;

    invoke-virtual {p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientTicketAuthComplete$Builder;->getGameId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/GameID;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAuthCompleteCallback;->gameID:Lin/dragonbra/javasteam/types/GameID;

    .line 39
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientTicketAuthComplete$Builder;->getOwnerSteamId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAuthCompleteCallback;->ownerSteamID:Lin/dragonbra/javasteam/types/SteamID;

    .line 44
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientTicketAuthComplete$Builder;->getSteamId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAuthCompleteCallback;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    .line 49
    invoke-virtual {p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientTicketAuthComplete$Builder;->getTicketCrc()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAuthCompleteCallback;->ticketCRC:I

    .line 54
    invoke-virtual {p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientTicketAuthComplete$Builder;->getTicketSequence()I

    move-result p2

    iput p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAuthCompleteCallback;->ticketSequence:I

    .line 57
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;->setJobID(Lin/dragonbra/javasteam/types/JobID;)V

    return-void
.end method


# virtual methods
.method public final getAuthSessionResponse()Lin/dragonbra/javasteam/enums/EAuthSessionResponse;
    .registers 1

    .line 24
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAuthCompleteCallback;->authSessionResponse:Lin/dragonbra/javasteam/enums/EAuthSessionResponse;

    return-object p0
.end method

.method public final getGameID()Lin/dragonbra/javasteam/types/GameID;
    .registers 1

    .line 34
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAuthCompleteCallback;->gameID:Lin/dragonbra/javasteam/types/GameID;

    return-object p0
.end method

.method public final getOwnerSteamID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 39
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAuthCompleteCallback;->ownerSteamID:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public final getState()I
    .registers 1

    .line 29
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAuthCompleteCallback;->state:I

    return p0
.end method

.method public final getSteamID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 44
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAuthCompleteCallback;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public final getTicketCRC()I
    .registers 1

    .line 49
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAuthCompleteCallback;->ticketCRC:I

    return p0
.end method

.method public final getTicketSequence()I
    .registers 1

    .line 54
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAuthCompleteCallback;->ticketSequence:I

    return p0
.end method
