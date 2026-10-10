###### Class in.dragonbra.javasteam.steam.handlers.steamuserstats.callback.FindOrCreateLeaderboardCallback (in.dragonbra.javasteam.steam.handlers.steamuserstats.callback.FindOrCreateLeaderboardCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/FindOrCreateLeaderboardCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "FindOrCreateLeaderboardCallback.kt"


# instance fields
.field private final displayType:Lin/dragonbra/javasteam/enums/ELeaderboardDisplayType;

.field private final entryCount:I

.field private final id:I

.field private final result:Lin/dragonbra/javasteam/enums/EResult;

.field private final sortMethod:Lin/dragonbra/javasteam/enums/ELeaderboardSortMethod;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 4

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 44
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 45
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLbs$CMsgClientLBSFindOrCreateLBResponse;

    .line 44
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 48
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLbs$CMsgClientLBSFindOrCreateLBResponse$Builder;

    .line 50
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getTargetJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;->setJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 52
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLbs$CMsgClientLBSFindOrCreateLBResponse$Builder;->getEresult()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v0

    const-string v1, "from(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/FindOrCreateLeaderboardCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    .line 53
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLbs$CMsgClientLBSFindOrCreateLBResponse$Builder;->getLeaderboardId()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/FindOrCreateLeaderboardCallback;->id:I

    .line 54
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLbs$CMsgClientLBSFindOrCreateLBResponse$Builder;->getLeaderboardEntryCount()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/FindOrCreateLeaderboardCallback;->entryCount:I

    .line 55
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLbs$CMsgClientLBSFindOrCreateLBResponse$Builder;->getLeaderboardSortMethod()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/enums/ELeaderboardSortMethod;->from(I)Lin/dragonbra/javasteam/enums/ELeaderboardSortMethod;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/FindOrCreateLeaderboardCallback;->sortMethod:Lin/dragonbra/javasteam/enums/ELeaderboardSortMethod;

    .line 56
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLbs$CMsgClientLBSFindOrCreateLBResponse$Builder;->getLeaderboardDisplayType()I

    move-result p1

    invoke-static {p1}, Lin/dragonbra/javasteam/enums/ELeaderboardDisplayType;->from(I)Lin/dragonbra/javasteam/enums/ELeaderboardDisplayType;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/FindOrCreateLeaderboardCallback;->displayType:Lin/dragonbra/javasteam/enums/ELeaderboardDisplayType;

    return-void
.end method


# virtual methods
.method public final getDisplayType()Lin/dragonbra/javasteam/enums/ELeaderboardDisplayType;
    .registers 1

    .line 41
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/FindOrCreateLeaderboardCallback;->displayType:Lin/dragonbra/javasteam/enums/ELeaderboardDisplayType;

    return-object p0
.end method

.method public final getEntryCount()I
    .registers 1

    .line 31
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/FindOrCreateLeaderboardCallback;->entryCount:I

    return p0
.end method

.method public final getId()I
    .registers 1

    .line 26
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/FindOrCreateLeaderboardCallback;->id:I

    return p0
.end method

.method public final getResult()Lin/dragonbra/javasteam/enums/EResult;
    .registers 1

    .line 21
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/FindOrCreateLeaderboardCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-object p0
.end method

.method public final getSortMethod()Lin/dragonbra/javasteam/enums/ELeaderboardSortMethod;
    .registers 1

    .line 36
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/FindOrCreateLeaderboardCallback;->sortMethod:Lin/dragonbra/javasteam/enums/ELeaderboardSortMethod;

    return-object p0
.end method
