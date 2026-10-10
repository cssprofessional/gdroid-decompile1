###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.callback.PersonaStateCallback (in.dragonbra.javasteam.steam.handlers.steamfriends.callback.PersonaStateCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "PersonaStateCallback.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPersonaStateCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PersonaStateCallback.kt\nin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,209:1\n1563#2:210\n1634#2,3:211\n1563#2:214\n1634#2,2:215\n1563#2:217\n1634#2,3:218\n1636#2:221\n*S KotlinDebug\n*F\n+ 1 PersonaStateCallback.kt\nin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback\n*L\n142#1:210\n142#1:211,3\n197#1:214\n197#1:215,2\n200#1:217\n200#1:218,3\n197#1:221\n*E\n"
.end annotation


# instance fields
.field private final avatarHash:[B

.field private final avatarPendingReview:Z

.field private final broadcastId:J

.field private final clanData:Lin/dragonbra/javasteam/steam/handlers/steamfriends/ClanData;

.field private final clanRank:I

.field private final clanTag:Ljava/lang/String;

.field private final friendId:Lin/dragonbra/javasteam/types/SteamID;

.field private final gameDataBlob:[B

.field private final gameId:Lin/dragonbra/javasteam/types/GameID;

.field private final gameLobbyId:J

.field private final gameName:Ljava/lang/String;

.field private final gamePlayedAppId:I

.field private final gameServerIp:Ljava/net/InetAddress;

.field private final gameServerPort:I

.field private final gamingDeviceType:I

.field private final isCommunityBanned:Z

.field private final lastLogoff:Ljava/util/Date;

.field private final lastLogon:Ljava/util/Date;

.field private final lastSeenOnline:Ljava/util/Date;

.field private final onSteamDeck:Z

.field private final onlineSessionInstances:I

.field private final otherGameData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/OtherGameData;",
            ">;"
        }
    .end annotation
.end field

.field private final personaSetByUser:Z

.field private final personaState:Lin/dragonbra/javasteam/enums/EPersonaState;

.field private final personaStateFlags:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EPersonaStateFlag;",
            ">;"
        }
    .end annotation
.end field

.field private final playerName:Ljava/lang/String;

.field private final playerNamePendingReview:Z

.field private final queryPort:I

.field private final richPresence:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/KV;",
            ">;"
        }
    .end annotation
.end field

.field private final statusFlags:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;",
            ">;"
        }
    .end annotation
.end field

.field private final steamIdSource:Lin/dragonbra/javasteam/types/SteamID;

.field private final watchingBroadcastAccountId:I

.field private final watchingBroadcastAppId:I

.field private final watchingBroadcastTitle:Ljava/lang/String;

.field private final watchingBroadcastViewers:I


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;Ljava/util/EnumSet;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;",
            ">;)V"
        }
    .end annotation

    const-string v0, "friend"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusFlags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 29
    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->statusFlags:Ljava/util/EnumSet;

    .line 34
    new-instance p2, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getFriendid()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->friendId:Lin/dragonbra/javasteam/types/SteamID;

    .line 40
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getPersonaState()I

    move-result p2

    invoke-static {p2}, Lin/dragonbra/javasteam/enums/EPersonaState;->from(I)Lin/dragonbra/javasteam/enums/EPersonaState;

    move-result-object p2

    if-nez p2, :cond_26

    sget-object p2, Lin/dragonbra/javasteam/enums/EPersonaState;->Offline:Lin/dragonbra/javasteam/enums/EPersonaState;

    :cond_26
    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->personaState:Lin/dragonbra/javasteam/enums/EPersonaState;

    .line 46
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getGamePlayedAppId()I

    move-result p2

    iput p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->gamePlayedAppId:I

    .line 51
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getGameServerIp()I

    move-result p2

    invoke-static {p2}, Lin/dragonbra/javasteam/util/NetHelpers;->getIPAddress(I)Ljava/net/InetAddress;

    move-result-object p2

    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->gameServerIp:Ljava/net/InetAddress;

    .line 56
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getGameServerPort()I

    move-result p2

    iput p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->gameServerPort:I

    .line 61
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getPersonaStateFlags()I

    move-result p2

    invoke-static {p2}, Lin/dragonbra/javasteam/enums/EPersonaStateFlag;->from(I)Ljava/util/EnumSet;

    move-result-object p2

    const-string v0, "from(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->personaStateFlags:Ljava/util/EnumSet;

    .line 66
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getOnlineSessionInstances()I

    move-result p2

    iput p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->onlineSessionInstances:I

    .line 71
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getPersonaSetByUser()Z

    move-result p2

    iput-boolean p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->personaSetByUser:Z

    .line 77
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getPlayerName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "getPlayerName(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->playerName:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getQueryPort()I

    move-result p2

    iput p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->queryPort:I

    .line 87
    new-instance p2, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getSteamidSource()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->steamIdSource:Lin/dragonbra/javasteam/types/SteamID;

    .line 92
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getAvatarHash()Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p2

    const-string v0, "toByteArray(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->avatarHash:[B

    .line 97
    new-instance p2, Ljava/util/Date;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getLastLogoff()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {p2, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->lastLogoff:Ljava/util/Date;

    .line 102
    new-instance p2, Ljava/util/Date;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getLastLogon()I

    move-result v1

    int-to-long v1, v1

    mul-long/2addr v1, v3

    invoke-direct {p2, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->lastLogon:Ljava/util/Date;

    .line 107
    new-instance p2, Ljava/util/Date;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getLastSeenOnline()I

    move-result v1

    int-to-long v1, v1

    mul-long/2addr v1, v3

    invoke-direct {p2, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->lastSeenOnline:Ljava/util/Date;

    .line 112
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getClanRank()I

    move-result p2

    iput p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->clanRank:I

    .line 117
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getGameName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "getGameName(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->gameName:Ljava/lang/String;

    .line 122
    new-instance p2, Lin/dragonbra/javasteam/types/GameID;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getGameid()J

    move-result-wide v1

    invoke-direct {p2, v1, v2}, Lin/dragonbra/javasteam/types/GameID;-><init>(J)V

    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->gameId:Lin/dragonbra/javasteam/types/GameID;

    .line 127
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getGameDataBlob()Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->gameDataBlob:[B

    .line 132
    new-instance p2, Lin/dragonbra/javasteam/steam/handlers/steamfriends/ClanData;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getClanData()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend$ClanData;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend$ClanData;->getOggAppId()I

    move-result v0

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getClanData()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend$ClanData;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend$ClanData;->getChatGroupId()J

    move-result-wide v1

    invoke-direct {p2, v0, v1, v2}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/ClanData;-><init>(IJ)V

    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->clanData:Lin/dragonbra/javasteam/steam/handlers/steamfriends/ClanData;

    .line 137
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getClanTag()Ljava/lang/String;

    move-result-object p2

    const-string v0, "getClanTag(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->clanTag:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getRichPresenceList()Ljava/util/List;

    move-result-object p2

    const-string v0, "getRichPresenceList(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1563
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_110
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "getValue(...)"

    const-string v5, "getKey(...)"

    if-eqz v3, :cond_137

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1635
    check-cast v3, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend$KV;

    .line 142
    new-instance v6, Lin/dragonbra/javasteam/steam/handlers/steamfriends/KV;

    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend$KV;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend$KV;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v7, v3}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/KV;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_110

    .line 142
    :cond_137
    iput-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->richPresence:Ljava/util/List;

    .line 147
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getBroadcastId()J

    move-result-wide v6

    iput-wide v6, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->broadcastId:J

    .line 152
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getGameLobbyId()J

    move-result-wide v6

    iput-wide v6, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->gameLobbyId:J

    .line 157
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getWatchingBroadcastAccountid()I

    move-result p2

    iput p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->watchingBroadcastAccountId:I

    .line 162
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getWatchingBroadcastAppid()I

    move-result p2

    iput p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->watchingBroadcastAppId:I

    .line 167
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getWatchingBroadcastViewers()I

    move-result p2

    iput p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->watchingBroadcastViewers:I

    .line 172
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getWatchingBroadcastTitle()Ljava/lang/String;

    move-result-object p2

    const-string v1, "getWatchingBroadcastTitle(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->watchingBroadcastTitle:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getIsCommunityBanned()Z

    move-result p2

    iput-boolean p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->isCommunityBanned:Z

    .line 182
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getPlayerNamePendingReview()Z

    move-result p2

    iput-boolean p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->playerNamePendingReview:Z

    .line 187
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getAvatarPendingReview()Z

    move-result p2

    iput-boolean p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->avatarPendingReview:Z

    .line 192
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getOnSteamDeck()Z

    move-result p2

    iput-boolean p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->onSteamDeck:Z

    .line 197
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getOtherGameDataList()Ljava/util/List;

    move-result-object p2

    const-string v1, "getOtherGameDataList(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1563
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_190
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1635
    check-cast v3, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend$OtherGameData;

    .line 199
    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend$OtherGameData;->getGameid()J

    move-result-wide v6

    .line 200
    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend$OtherGameData;->getRichPresenceList()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1563
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1d7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 1635
    check-cast v9, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend$KV;

    .line 200
    new-instance v10, Lin/dragonbra/javasteam/steam/handlers/steamfriends/KV;

    invoke-virtual {v9}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend$KV;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend$KV;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v11, v9}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/KV;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    invoke-interface {v8, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1b4

    .line 198
    :cond_1d7
    new-instance v3, Lin/dragonbra/javasteam/steam/handlers/steamfriends/OtherGameData;

    invoke-direct {v3, v6, v7, v8}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/OtherGameData;-><init>(JLjava/util/List;)V

    .line 1635
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_190

    .line 197
    :cond_1e0
    iput-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->otherGameData:Ljava/util/List;

    .line 207
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getGamingDeviceType()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->gamingDeviceType:I

    return-void
.end method


# virtual methods
.method public final getAvatarHash()[B
    .registers 1

    .line 92
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->avatarHash:[B

    return-object p0
.end method

.method public final getAvatarPendingReview()Z
    .registers 1

    .line 187
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->avatarPendingReview:Z

    return p0
.end method

.method public final getBroadcastId()J
    .registers 3

    .line 147
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->broadcastId:J

    return-wide v0
.end method

.method public final getClanData()Lin/dragonbra/javasteam/steam/handlers/steamfriends/ClanData;
    .registers 1

    .line 132
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->clanData:Lin/dragonbra/javasteam/steam/handlers/steamfriends/ClanData;

    return-object p0
.end method

.method public final getClanRank()I
    .registers 1

    .line 112
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->clanRank:I

    return p0
.end method

.method public final getClanTag()Ljava/lang/String;
    .registers 1

    .line 137
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->clanTag:Ljava/lang/String;

    return-object p0
.end method

.method public final getFriendId()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 34
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->friendId:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public final getGameAppID()I
    .registers 1

    .line 46
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->gamePlayedAppId:I

    return p0
.end method

.method public final getGameDataBlob()[B
    .registers 1

    .line 127
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->gameDataBlob:[B

    return-object p0
.end method

.method public final getGameId()Lin/dragonbra/javasteam/types/GameID;
    .registers 1

    .line 122
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->gameId:Lin/dragonbra/javasteam/types/GameID;

    return-object p0
.end method

.method public final getGameLobbyId()J
    .registers 3

    .line 152
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->gameLobbyId:J

    return-wide v0
.end method

.method public final getGameName()Ljava/lang/String;
    .registers 1

    .line 117
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->gameName:Ljava/lang/String;

    return-object p0
.end method

.method public final getGameServerIp()Ljava/net/InetAddress;
    .registers 1

    .line 51
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->gameServerIp:Ljava/net/InetAddress;

    return-object p0
.end method

.method public final getGameServerPort()I
    .registers 1

    .line 56
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->gameServerPort:I

    return p0
.end method

.method public final getGamingDeviceType()I
    .registers 1

    .line 207
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->gamingDeviceType:I

    return p0
.end method

.method public final getLastLogoff()Ljava/util/Date;
    .registers 1

    .line 97
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->lastLogoff:Ljava/util/Date;

    return-object p0
.end method

.method public final getLastLogon()Ljava/util/Date;
    .registers 1

    .line 102
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->lastLogon:Ljava/util/Date;

    return-object p0
.end method

.method public final getLastSeenOnline()Ljava/util/Date;
    .registers 1

    .line 107
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->lastSeenOnline:Ljava/util/Date;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .registers 1

    .line 77
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->playerName:Ljava/lang/String;

    return-object p0
.end method

.method public final getOnSteamDeck()Z
    .registers 1

    .line 192
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->onSteamDeck:Z

    return p0
.end method

.method public final getOnlineSessionInstances()I
    .registers 1

    .line 66
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->onlineSessionInstances:I

    return p0
.end method

.method public final getOtherGameData()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/OtherGameData;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->otherGameData:Ljava/util/List;

    return-object p0
.end method

.method public final getPersonaSetByUser()Z
    .registers 1

    .line 71
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->personaSetByUser:Z

    return p0
.end method

.method public final getPersonaStateFlags()Ljava/util/EnumSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EPersonaStateFlag;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->personaStateFlags:Ljava/util/EnumSet;

    return-object p0
.end method

.method public final getPlayerNamePendingReview()Z
    .registers 1

    .line 182
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->playerNamePendingReview:Z

    return p0
.end method

.method public final getQueryPort()I
    .registers 1

    .line 82
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->queryPort:I

    return p0
.end method

.method public final getRichPresence()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/KV;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->richPresence:Ljava/util/List;

    return-object p0
.end method

.method public final getState()Lin/dragonbra/javasteam/enums/EPersonaState;
    .registers 1

    .line 40
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->personaState:Lin/dragonbra/javasteam/enums/EPersonaState;

    return-object p0
.end method

.method public final getStatusFlags()Ljava/util/EnumSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->statusFlags:Ljava/util/EnumSet;

    return-object p0
.end method

.method public final getSteamIdSource()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 87
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->steamIdSource:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public final getWatchingBroadcastAccountId()I
    .registers 1

    .line 157
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->watchingBroadcastAccountId:I

    return p0
.end method

.method public final getWatchingBroadcastAppId()I
    .registers 1

    .line 162
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->watchingBroadcastAppId:I

    return p0
.end method

.method public final getWatchingBroadcastTitle()Ljava/lang/String;
    .registers 1

    .line 172
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->watchingBroadcastTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final getWatchingBroadcastViewers()I
    .registers 1

    .line 167
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->watchingBroadcastViewers:I

    return p0
.end method

.method public final isCommunityBanned()Z
    .registers 1

    .line 177
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;->isCommunityBanned:Z

    return p0
.end method
