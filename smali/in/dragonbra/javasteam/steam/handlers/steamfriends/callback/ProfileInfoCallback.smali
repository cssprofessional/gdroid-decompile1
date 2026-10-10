###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.callback.ProfileInfoCallback (in.dragonbra.javasteam.steam.handlers.steamfriends.callback.ProfileInfoCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ProfileInfoCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "ProfileInfoCallback.kt"


# instance fields
.field private final cityName:Ljava/lang/String;

.field private final countryName:Ljava/lang/String;

.field private final headline:Ljava/lang/String;

.field private final realName:Ljava/lang/String;

.field private final result:Lin/dragonbra/javasteam/enums/EResult;

.field private final stateName:Ljava/lang/String;

.field private final steamID:Lin/dragonbra/javasteam/types/SteamID;

.field private final summary:Ljava/lang/String;

.field private final timeCreated:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 7

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 63
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 64
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendProfileInfoResponse;

    .line 63
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 67
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendProfileInfoResponse$Builder;

    .line 69
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getTargetJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;->setJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 71
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendProfileInfoResponse$Builder;->getEresult()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v0

    const-string v1, "from(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ProfileInfoCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    .line 73
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendProfileInfoResponse$Builder;->getSteamidFriend()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ProfileInfoCallback;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    .line 75
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendProfileInfoResponse$Builder;->getTimeCreated()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ProfileInfoCallback;->timeCreated:Ljava/util/Date;

    .line 77
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendProfileInfoResponse$Builder;->getRealName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getRealName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ProfileInfoCallback;->realName:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendProfileInfoResponse$Builder;->getCityName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCityName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ProfileInfoCallback;->cityName:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendProfileInfoResponse$Builder;->getStateName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getStateName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ProfileInfoCallback;->stateName:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendProfileInfoResponse$Builder;->getCountryName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCountryName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ProfileInfoCallback;->countryName:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendProfileInfoResponse$Builder;->getHeadline()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getHeadline(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ProfileInfoCallback;->headline:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendProfileInfoResponse$Builder;->getSummary()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getSummary(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ProfileInfoCallback;->summary:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/enums/EResult;Lin/dragonbra/javasteam/types/SteamID;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "steamID"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeCreated"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "realName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cityName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateName"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryName"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headline"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "summary"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 99
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ProfileInfoCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    .line 100
    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ProfileInfoCallback;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    .line 101
    iput-object p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ProfileInfoCallback;->timeCreated:Ljava/util/Date;

    .line 102
    iput-object p4, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ProfileInfoCallback;->realName:Ljava/lang/String;

    .line 103
    iput-object p5, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ProfileInfoCallback;->cityName:Ljava/lang/String;

    .line 104
    iput-object p6, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ProfileInfoCallback;->stateName:Ljava/lang/String;

    .line 105
    iput-object p7, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ProfileInfoCallback;->countryName:Ljava/lang/String;

    .line 106
    iput-object p8, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ProfileInfoCallback;->headline:Ljava/lang/String;

    .line 107
    iput-object p9, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ProfileInfoCallback;->summary:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCityName()Ljava/lang/String;
    .registers 1

    .line 40
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ProfileInfoCallback;->cityName:Ljava/lang/String;

    return-object p0
.end method

.method public final getCountryName()Ljava/lang/String;
    .registers 1

    .line 50
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ProfileInfoCallback;->countryName:Ljava/lang/String;

    return-object p0
.end method

.method public final getHeadline()Ljava/lang/String;
    .registers 1

    .line 55
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ProfileInfoCallback;->headline:Ljava/lang/String;

    return-object p0
.end method

.method public final getRealName()Ljava/lang/String;
    .registers 1

    .line 35
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ProfileInfoCallback;->realName:Ljava/lang/String;

    return-object p0
.end method

.method public final getResult()Lin/dragonbra/javasteam/enums/EResult;
    .registers 1

    .line 20
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ProfileInfoCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-object p0
.end method

.method public final getStateName()Ljava/lang/String;
    .registers 1

    .line 45
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ProfileInfoCallback;->stateName:Ljava/lang/String;

    return-object p0
.end method

.method public final getSteamID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 25
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ProfileInfoCallback;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public final getSummary()Ljava/lang/String;
    .registers 1

    .line 60
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ProfileInfoCallback;->summary:Ljava/lang/String;

    return-object p0
.end method

.method public final getTimeCreated()Ljava/util/Date;
    .registers 1

    .line 30
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ProfileInfoCallback;->timeCreated:Ljava/util/Date;

    return-object p0
.end method
