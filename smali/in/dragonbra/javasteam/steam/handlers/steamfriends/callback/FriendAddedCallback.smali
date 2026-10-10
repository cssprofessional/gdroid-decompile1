###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.callback.FriendAddedCallback (in.dragonbra.javasteam.steam.handlers.steamfriends.callback.FriendAddedCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendAddedCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "FriendAddedCallback.kt"


# instance fields
.field private final personaName:Ljava/lang/String;

.field private final result:Lin/dragonbra/javasteam/enums/EResult;

.field private final steamID:Lin/dragonbra/javasteam/types/SteamID;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 5

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 31
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 32
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientAddFriendResponse;

    .line 31
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 35
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientAddFriendResponse$Builder;

    .line 37
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientAddFriendResponse$Builder;->getEresult()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v0

    const-string v1, "from(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendAddedCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    .line 39
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientAddFriendResponse$Builder;->getSteamIdAdded()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendAddedCallback;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    .line 41
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientAddFriendResponse$Builder;->getPersonaNameAdded()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getPersonaNameAdded(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendAddedCallback;->personaName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPersonaName()Ljava/lang/String;
    .registers 1

    .line 28
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendAddedCallback;->personaName:Ljava/lang/String;

    return-object p0
.end method

.method public final getResult()Lin/dragonbra/javasteam/enums/EResult;
    .registers 1

    .line 18
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendAddedCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-object p0
.end method

.method public final getSteamID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 23
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendAddedCallback;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method
