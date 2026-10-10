###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.SteamFriends (in.dragonbra.javasteam.steam.handlers.steamfriends.SteamFriends)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;
.super Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;
.source "SteamFriends.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends$Companion;,
        Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSteamFriends.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SteamFriends.kt\nin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 LogManager.kt\nin/dragonbra/javasteam/util/log/LogManager\n*L\n1#1,924:1\n1#2:925\n1563#3:926\n1634#3,3:927\n1563#3:930\n1634#3,3:931\n1869#3,2:934\n1869#3,2:936\n1869#3,2:938\n1869#3,2:940\n1869#3,2:942\n53#4:944\n*S KotlinDebug\n*F\n+ 1 SteamFriends.kt\nin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends\n*L\n554#1:926\n554#1:927,3\n693#1:930\n693#1:931,3\n749#1:934,2\n787#1:936,2\n818#1:938,2\n859#1:940,2\n860#1:942,2\n902#1:944\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends$Companion;

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field private cache:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;

.field private clanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/types/SteamID;",
            ">;"
        }
    .end annotation
.end field

.field private friendsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/types/SteamID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->Companion:Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends$Companion;

    .line 53
    const-class v0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    .line 902
    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 78
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->friendsList:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->clanList:Ljava/util/List;

    .line 87
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;

    invoke-direct {v0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;-><init>()V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->cache:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;

    return-void
.end method

.method private final fixChatID(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/types/SteamID;
    .registers 4

    .line 707
    new-instance p0, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    .line 709
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->isClanAccount()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 711
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->toChatID()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object p0

    :cond_13
    return-object p0
.end method

.method private final handleAccountInfo(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 4

    .line 879
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 880
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientAccountInfo;

    .line 879
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 885
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->cache:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->getLocalUser()Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;

    move-result-object p0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientAccountInfo$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientAccountInfo$Builder;->getPersonaName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private final handleFriendMessageHistoryResponse(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 5

    .line 870
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 871
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientChatGetFriendMessageHistoryResponse;

    .line 870
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 875
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendMsgHistoryCallback;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientChatGetFriendMessageHistoryResponse$Builder;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/CMClient;->getUniverse()Lin/dragonbra/javasteam/enums/EUniverse;

    move-result-object v1

    const-string v2, "getUniverse(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, v1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendMsgHistoryCallback;-><init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientChatGetFriendMessageHistoryResponse$Builder;Lin/dragonbra/javasteam/enums/EUniverse;)V

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->postCallback(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V

    return-void
.end method

.method private final handleFriendsList(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 12

    .line 793
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendsList;

    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 795
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/CMClient;->getSteamID()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 796
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->cache:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->getLocalUser()Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;

    move-result-object v1

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;->setSteamID(Lin/dragonbra/javasteam/types/SteamID;)V

    .line 799
    :cond_1a
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendsList$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendsList$Builder;->getBincremental()Z

    move-result p1

    if-nez p1, :cond_30

    .line 801
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->friendsList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 802
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->clanList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 806
    :cond_30
    new-instance p1, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 808
    sget-object v3, Lin/dragonbra/javasteam/enums/EMsg;->ClientRequestFriendData:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 806
    const-class v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientRequestFriendData;

    const/4 v4, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 811
    invoke-virtual {p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientRequestFriendData$Builder;

    .line 812
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v2

    invoke-virtual {v2}, Lin/dragonbra/javasteam/steam/CMClient;->getConfiguration()Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->getDefaultPersonaStateFlags()Ljava/util/EnumSet;

    move-result-object v2

    invoke-static {v2}, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->code(Ljava/util/EnumSet;)I

    move-result v2

    .line 811
    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientRequestFriendData$Builder;->setPersonaStateRequested(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientRequestFriendData$Builder;

    .line 815
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 816
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 818
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v3

    check-cast v3, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendsList$Builder;

    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendsList$Builder;->getFriendsList()Ljava/util/List;

    move-result-object v3

    const-string v4, "getFriendsList(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1869
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_73
    :goto_73
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_116

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendsList$Friend;

    .line 819
    new-instance v6, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {v5}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendsList$Friend;->getUlfriendid()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    .line 821
    invoke-virtual {v6}, Lin/dragonbra/javasteam/types/SteamID;->isIndividualAccount()Z

    move-result v7

    if-eqz v7, :cond_b9

    .line 822
    iget-object v7, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->cache:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;

    invoke-virtual {v7, v6}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->getUser(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;

    move-result-object v7

    .line 824
    invoke-virtual {v5}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendsList$Friend;->getEfriendrelationship()I

    move-result v8

    invoke-static {v8}, Lin/dragonbra/javasteam/enums/EFriendRelationship;->from(I)Lin/dragonbra/javasteam/enums/EFriendRelationship;

    move-result-object v8

    invoke-virtual {v7, v8}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->setRelationship(Lin/dragonbra/javasteam/enums/EFriendRelationship;)V

    .line 826
    iget-object v8, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->friendsList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b3

    .line 828
    invoke-virtual {v7}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->getRelationship()Lin/dragonbra/javasteam/enums/EFriendRelationship;

    move-result-object v7

    sget-object v8, Lin/dragonbra/javasteam/enums/EFriendRelationship;->None:Lin/dragonbra/javasteam/enums/EFriendRelationship;

    if-ne v7, v8, :cond_fb

    .line 829
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_fb

    .line 833
    :cond_b3
    iget-object v7, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->friendsList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_fb

    .line 835
    :cond_b9
    invoke-virtual {v6}, Lin/dragonbra/javasteam/types/SteamID;->isClanAccount()Z

    move-result v7

    if-eqz v7, :cond_fb

    .line 836
    iget-object v7, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->cache:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;

    invoke-virtual {v7}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->getClans()Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;

    move-result-object v7

    invoke-virtual {v7, v6}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;->getAccount(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;

    move-result-object v7

    check-cast v7, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Clan;

    .line 838
    invoke-virtual {v5}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendsList$Friend;->getEfriendrelationship()I

    move-result v8

    invoke-static {v8}, Lin/dragonbra/javasteam/enums/EClanRelationship;->from(I)Lin/dragonbra/javasteam/enums/EClanRelationship;

    move-result-object v8

    if-nez v8, :cond_d7

    sget-object v8, Lin/dragonbra/javasteam/enums/EClanRelationship;->None:Lin/dragonbra/javasteam/enums/EClanRelationship;

    :cond_d7
    invoke-virtual {v7, v8}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Clan;->setRelationship(Lin/dragonbra/javasteam/enums/EClanRelationship;)V

    .line 840
    iget-object v8, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->clanList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f6

    .line 843
    invoke-virtual {v7}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Clan;->getRelationship()Lin/dragonbra/javasteam/enums/EClanRelationship;

    move-result-object v8

    sget-object v9, Lin/dragonbra/javasteam/enums/EClanRelationship;->None:Lin/dragonbra/javasteam/enums/EClanRelationship;

    if-eq v8, v9, :cond_f2

    invoke-virtual {v7}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Clan;->getRelationship()Lin/dragonbra/javasteam/enums/EClanRelationship;

    move-result-object v7

    sget-object v8, Lin/dragonbra/javasteam/enums/EClanRelationship;->Kicked:Lin/dragonbra/javasteam/enums/EClanRelationship;

    if-ne v7, v8, :cond_fb

    .line 844
    :cond_f2
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_fb

    .line 848
    :cond_f6
    iget-object v7, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->clanList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 852
    :cond_fb
    :goto_fb
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v6

    check-cast v6, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendsList$Builder;

    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendsList$Builder;->getBincremental()Z

    move-result v6

    if-nez v6, :cond_73

    .line 854
    invoke-virtual {p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v6

    check-cast v6, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientRequestFriendData$Builder;

    invoke-virtual {v5}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendsList$Friend;->getUlfriendid()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientRequestFriendData$Builder;->addFriends(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientRequestFriendData$Builder;

    goto/16 :goto_73

    .line 859
    :cond_116
    iget-object v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->friendsList:Ljava/util/List;

    .line 1869
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lin/dragonbra/javasteam/types/SteamID;

    .line 859
    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_11c

    .line 860
    :cond_12c
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->clanList:Ljava/util/List;

    .line 1869
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_132
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_142

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lin/dragonbra/javasteam/types/SteamID;

    .line 860
    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_132

    .line 862
    :cond_142
    invoke-virtual {p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientRequestFriendData$Builder;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientRequestFriendData$Builder;->getFriendsList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15c

    .line 863
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    .line 866
    :cond_15c
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendsListCallback;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendsList$Builder;

    invoke-direct {p1, v0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendsListCallback;-><init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendsList$Builder;)V

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->postCallback(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V

    return-void
.end method

.method private final handlePersonaChangeResponse(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 4

    .line 889
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 890
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgPersonaChangeResponse;

    .line 889
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 895
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->cache:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->getLocalUser()Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;

    move-result-object p1

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgPersonaChangeResponse$Builder;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgPersonaChangeResponse$Builder;->getPlayerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;->setName(Ljava/lang/String;)V

    .line 897
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaChangeCallback;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getTargetJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v1

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgPersonaChangeResponse$Builder;

    invoke-direct {p1, v1, v0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaChangeCallback;-><init>(Lin/dragonbra/javasteam/types/JobID;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgPersonaChangeResponse$Builder;)V

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->postCallback(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V

    return-void
.end method

.method private final handlePersonaState(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 10

    .line 742
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 743
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState;

    .line 742
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 747
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Builder;->getStatusFlags()I

    move-result p1

    invoke-static {p1}, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->from(I)Ljava/util/EnumSet;

    move-result-object p1

    .line 749
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Builder;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Builder;->getFriendsList()Ljava/util/List;

    move-result-object v1

    const-string v2, "getFriendsList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1869
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;

    .line 750
    new-instance v4, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getFriendid()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    .line 752
    invoke-virtual {v4}, Lin/dragonbra/javasteam/types/SteamID;->isIndividualAccount()Z

    move-result v5

    if-eqz v5, :cond_a8

    .line 753
    iget-object v5, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->cache:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;

    invoke-virtual {v5, v4}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->getUser(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;

    move-result-object v4

    .line 755
    sget-object v5, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->PlayerName:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    invoke-virtual {p1, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 756
    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getPlayerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;->setName(Ljava/lang/String;)V

    .line 759
    :cond_58
    sget-object v5, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->Presence:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    invoke-virtual {p1, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    .line 760
    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getAvatarHash()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;->setAvatarHash([B)V

    .line 761
    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getPersonaState()I

    move-result v5

    invoke-static {v5}, Lin/dragonbra/javasteam/enums/EPersonaState;->from(I)Lin/dragonbra/javasteam/enums/EPersonaState;

    move-result-object v5

    if-nez v5, :cond_77

    sget-object v5, Lin/dragonbra/javasteam/enums/EPersonaState;->Offline:Lin/dragonbra/javasteam/enums/EPersonaState;

    :cond_77
    invoke-virtual {v4, v5}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->setPersonaState(Lin/dragonbra/javasteam/enums/EPersonaState;)V

    .line 762
    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getPersonaStateFlags()I

    move-result v5

    invoke-static {v5}, Lin/dragonbra/javasteam/enums/EPersonaStateFlag;->from(I)Ljava/util/EnumSet;

    move-result-object v5

    invoke-virtual {v4, v5}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->setPersonaStateFlags(Ljava/util/EnumSet;)V

    .line 765
    :cond_85
    sget-object v5, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->GameDataBlob:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    invoke-virtual {p1, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 766
    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getGameName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->setGameName(Ljava/lang/String;)V

    .line 767
    new-instance v5, Lin/dragonbra/javasteam/types/GameID;

    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getGameid()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lin/dragonbra/javasteam/types/GameID;-><init>(J)V

    invoke-virtual {v4, v5}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->setGameID(Lin/dragonbra/javasteam/types/GameID;)V

    .line 768
    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getGamePlayedAppId()I

    move-result v3

    invoke-virtual {v4, v3}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->setGameAppID(I)V

    goto :goto_28

    .line 770
    :cond_a8
    invoke-virtual {v4}, Lin/dragonbra/javasteam/types/SteamID;->isClanAccount()Z

    move-result v5

    if-eqz v5, :cond_de

    .line 771
    iget-object v5, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->cache:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;

    invoke-virtual {v5}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->getClans()Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;

    move-result-object v5

    invoke-virtual {v5, v4}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;->getAccount(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;

    move-result-object v4

    check-cast v4, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Clan;

    .line 773
    sget-object v5, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->PlayerName:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    invoke-virtual {p1, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c9

    .line 774
    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getPlayerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;->setName(Ljava/lang/String;)V

    .line 777
    :cond_c9
    sget-object v5, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->Presence:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    invoke-virtual {p1, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 778
    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;->getAvatarHash()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;->setAvatarHash([B)V

    goto/16 :goto_28

    .line 781
    :cond_de
    sget-object v3, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown item in handlePersonaState(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v3, v4, v6, v5, v6}, Lin/dragonbra/javasteam/util/log/Logger;->debug$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto/16 :goto_28

    .line 787
    :cond_f8
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Builder;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Builder;->getFriendsList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1869
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_109
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_128

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;

    .line 788
    new-instance v2, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/PersonaStateCallback;-><init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPersonaState$Friend;Ljava/util/EnumSet;)V

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v1

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->postCallback(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V

    goto :goto_109

    :cond_128
    return-void
.end method

.method public static synthetic ignoreFriend$default(Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;Lin/dragonbra/javasteam/types/SteamID;ZILjava/lang/Object;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x1

    .line 580
    :cond_5
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->ignoreFriend(Lin/dragonbra/javasteam/types/SteamID;Z)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic isLocalUser$default(Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;Lin/dragonbra/javasteam/types/SteamID;ILjava/lang/Object;)Z
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 110
    :cond_5
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->isLocalUser(Lin/dragonbra/javasteam/types/SteamID;)Z

    move-result p0

    return p0
.end method

.method public static synthetic requestFriendInfo$default(Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;Lin/dragonbra/javasteam/types/SteamID;IILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 567
    :cond_5
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->requestFriendInfo(Lin/dragonbra/javasteam/types/SteamID;I)V

    return-void
.end method

.method public static synthetic requestFriendInfo$default(Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;Ljava/util/List;IILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 543
    :cond_5
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->requestFriendInfo(Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public final addFriend(Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 9

    const-string v0, "steamID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 381
    sget-object v3, Lin/dragonbra/javasteam/enums/EMsg;->ClientAddFriend:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 379
    const-class v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientAddFriend;

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 383
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientAddFriend$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientAddFriend$Builder;->setSteamidToAdd(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientAddFriend$Builder;

    .line 384
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    return-void
.end method

.method public final addFriend(Ljava/lang/String;)V
    .registers 9

    const-string v0, "accountNameOrEmail"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 367
    sget-object v3, Lin/dragonbra/javasteam/enums/EMsg;->ClientAddFriend:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 365
    const-class v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientAddFriend;

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 369
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientAddFriend$Builder;

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientAddFriend$Builder;->setAccountnameOrEmailToAdd(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientAddFriend$Builder;

    .line 370
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    return-void
.end method

.method public final banChatMember(Lin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 8

    const-string v0, "steamIdChat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "steamIdMember"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->fixChatID(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/types/SteamID;

    move-result-object p1

    .line 510
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsg;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-class v3, Lin/dragonbra/javasteam/generated/MsgClientChatAction;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lin/dragonbra/javasteam/base/ClientMsg;-><init>(Ljava/lang/Class;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 511
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/generated/MsgClientChatAction;

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/generated/MsgClientChatAction;->setSteamIdChat(Lin/dragonbra/javasteam/types/SteamID;)V

    .line 512
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/generated/MsgClientChatAction;

    invoke-virtual {p1, p2}, Lin/dragonbra/javasteam/generated/MsgClientChatAction;->setSteamIdUserToActOn(Lin/dragonbra/javasteam/types/SteamID;)V

    .line 514
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/generated/MsgClientChatAction;

    sget-object p2, Lin/dragonbra/javasteam/enums/EChatAction;->Ban:Lin/dragonbra/javasteam/enums/EChatAction;

    invoke-virtual {p1, p2}, Lin/dragonbra/javasteam/generated/MsgClientChatAction;->setChatAction(Lin/dragonbra/javasteam/enums/EChatAction;)V

    .line 515
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    return-void
.end method

.method public final getCachedClans()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Clan;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->cache:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->getClans()Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;

    move-result-object p0

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getCachedUsers()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->cache:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->getUsers()Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;

    move-result-object p0

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getClanAvatar(Lin/dragonbra/javasteam/types/SteamID;)[B
    .registers 3

    const-string v0, "steamID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->cache:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->getClans()Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;

    move-result-object p0

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;->getAccount(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Clan;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;->getAvatarHash()[B

    move-result-object p0

    return-object p0
.end method

.method public final getClanByIndex(I)Lin/dragonbra/javasteam/types/SteamID;
    .registers 4

    if-ltz p1, :cond_14

    .line 315
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->clanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_14

    :cond_b
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->clanList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/types/SteamID;

    goto :goto_1b

    :cond_14
    :goto_14
    new-instance p0, Lin/dragonbra/javasteam/types/SteamID;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    :goto_1b
    return-object p0
.end method

.method public final getClanCount()I
    .registers 1

    .line 306
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->clanList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getClanList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/types/SteamID;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->clanList:Ljava/util/List;

    return-object p0
.end method

.method public final getClanName(Lin/dragonbra/javasteam/types/SteamID;)Ljava/lang/String;
    .registers 3

    const-string v0, "steamID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->cache:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->getClans()Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;

    move-result-object p0

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;->getAccount(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Clan;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getClanRelationship(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/enums/EClanRelationship;
    .registers 3

    const-string v0, "steamID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->cache:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->getClans()Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;

    move-result-object p0

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;->getAccount(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Clan;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Clan;->getRelationship()Lin/dragonbra/javasteam/enums/EClanRelationship;

    move-result-object p0

    return-object p0
.end method

.method public final getClanSteamID(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/types/SteamID;
    .registers 3

    const-string v0, "steamID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->cache:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->getClans()Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;

    move-result-object p0

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;->getAccount(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Clan;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;->getSteamID()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object p0

    return-object p0
.end method

.method public final getFriendAvatar(Lin/dragonbra/javasteam/types/SteamID;)[B
    .registers 3

    const-string v0, "steamID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->cache:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->getUser(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;

    move-result-object p0

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;->getAvatarHash()[B

    move-result-object p0

    return-object p0
.end method

.method public final getFriendByIndex(I)Lin/dragonbra/javasteam/types/SteamID;
    .registers 4

    if-ltz p1, :cond_14

    .line 235
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->friendsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_14

    :cond_b
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->friendsList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/types/SteamID;

    goto :goto_1b

    :cond_14
    :goto_14
    new-instance p0, Lin/dragonbra/javasteam/types/SteamID;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    :goto_1b
    return-object p0
.end method

.method public final getFriendCount()I
    .registers 1

    .line 226
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->friendsList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getFriendGameAppId(Lin/dragonbra/javasteam/types/SteamID;)I
    .registers 3

    const-string v0, "steamID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->cache:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->getUser(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;

    move-result-object p0

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->getGameAppID()I

    move-result p0

    return p0
.end method

.method public final getFriendGamePlayed(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/types/GameID;
    .registers 3

    const-string v0, "steamID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->cache:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->getUser(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;

    move-result-object p0

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->getGameID()Lin/dragonbra/javasteam/types/GameID;

    move-result-object p0

    return-object p0
.end method

.method public final getFriendGamePlayedName(Lin/dragonbra/javasteam/types/SteamID;)Ljava/lang/String;
    .registers 3

    const-string v0, "steamID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->cache:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->getUser(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;

    move-result-object p0

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->getGameName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getFriendPersonaName(Lin/dragonbra/javasteam/types/SteamID;)Ljava/lang/String;
    .registers 3

    const-string v0, "steamID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->cache:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->getUser(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;

    move-result-object p0

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getFriendPersonaState(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/enums/EPersonaState;
    .registers 3

    const-string v0, "steamID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->cache:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->getUser(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;

    move-result-object p0

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->getPersonaState()Lin/dragonbra/javasteam/enums/EPersonaState;

    move-result-object p0

    return-object p0
.end method

.method public final getFriendPersonaStateFlags(Lin/dragonbra/javasteam/types/SteamID;)Ljava/util/EnumSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/types/SteamID;",
            ")",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EPersonaStateFlag;",
            ">;"
        }
    .end annotation

    const-string v0, "steamID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->cache:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->getUser(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;

    move-result-object p0

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->getPersonaStateFlags()Ljava/util/EnumSet;

    move-result-object p0

    return-object p0
.end method

.method public final getFriendRelationship(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/enums/EFriendRelationship;
    .registers 3

    const-string v0, "steamID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->cache:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->getUser(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;

    move-result-object p0

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->getRelationship()Lin/dragonbra/javasteam/enums/EFriendRelationship;

    move-result-object p0

    return-object p0
.end method

.method public final getFriendSteamID(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/types/SteamID;
    .registers 3

    const-string v0, "steamID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->cache:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->getUser(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;

    move-result-object p0

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;->getSteamID()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object p0

    return-object p0
.end method

.method public final getFriendsList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/types/SteamID;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->friendsList:Ljava/util/List;

    return-object p0
.end method

.method public final getPersonaAvatar()[B
    .registers 1

    .line 141
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->cache:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->getLocalUser()Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;

    move-result-object p0

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;->getAvatarHash()[B

    move-result-object p0

    return-object p0
.end method

.method public final getPersonaName()Ljava/lang/String;
    .registers 1

    .line 134
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->cache:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->getLocalUser()Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;

    move-result-object p0

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPersonaState()Lin/dragonbra/javasteam/enums/EPersonaState;
    .registers 1

    .line 166
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->cache:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->getLocalUser()Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;

    move-result-object p0

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->getPersonaState()Lin/dragonbra/javasteam/enums/EPersonaState;

    move-result-object p0

    return-object p0
.end method

.method public handleMsg(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 4

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 722
    sget-object v0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->Companion:Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends$Companion;

    invoke-static {v0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends$Companion;->access$getCallback(Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends$Companion;Lin/dragonbra/javasteam/base/IPacketMsg;)Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 726
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->postCallback(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V

    return-void

    .line 731
    :cond_15
    invoke-interface {p1}, Lin/dragonbra/javasteam/base/IPacketMsg;->getMsgType()Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object v0

    sget-object v1, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_41

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_39

    const/4 v1, 0x4

    if-eq v0, v1, :cond_35

    const/4 v1, 0x5

    if-eq v0, v1, :cond_31

    goto :goto_44

    .line 736
    :cond_31
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->handlePersonaChangeResponse(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_44

    .line 735
    :cond_35
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->handleAccountInfo(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_44

    .line 734
    :cond_39
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->handleFriendMessageHistoryResponse(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_44

    .line 733
    :cond_3d
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->handleFriendsList(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_44

    .line 732
    :cond_41
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->handlePersonaState(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    :goto_44
    return-void
.end method

.method public final ignoreFriend(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/types/SteamID;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/IgnoreFriendCallback;",
            ">;"
        }
    .end annotation

    .line 0
    const-string v0, "steamID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->ignoreFriend$default(Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;Lin/dragonbra/javasteam/types/SteamID;ZILjava/lang/Object;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final ignoreFriend(Lin/dragonbra/javasteam/types/SteamID;Z)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/types/SteamID;",
            "Z)",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/IgnoreFriendCallback;",
            ">;"
        }
    .end annotation

    const-string v0, "steamID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsg;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-class v3, Lin/dragonbra/javasteam/generated/MsgClientSetIgnoreFriend;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lin/dragonbra/javasteam/base/ClientMsg;-><init>(Ljava/lang/Class;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 582
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getNextJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/base/ClientMsg;->setSourceJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 584
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/generated/MsgClientSetIgnoreFriend;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v2

    invoke-virtual {v2}, Lin/dragonbra/javasteam/steam/CMClient;->getSteamID()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/generated/MsgClientSetIgnoreFriend;->setMySteamId(Lin/dragonbra/javasteam/types/SteamID;)V

    .line 585
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/generated/MsgClientSetIgnoreFriend;

    invoke-virtual {v1, p2}, Lin/dragonbra/javasteam/generated/MsgClientSetIgnoreFriend;->setIgnore(B)V

    .line 586
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object p2

    check-cast p2, Lin/dragonbra/javasteam/generated/MsgClientSetIgnoreFriend;

    invoke-virtual {p2, p1}, Lin/dragonbra/javasteam/generated/MsgClientSetIgnoreFriend;->setSteamIdFriend(Lin/dragonbra/javasteam/types/SteamID;)V

    .line 589
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p1

    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    .line 591
    new-instance p1, Lin/dragonbra/javasteam/types/AsyncJobSingle;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getSourceJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lin/dragonbra/javasteam/types/AsyncJobSingle;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lin/dragonbra/javasteam/types/JobID;)V

    return-object p1
.end method

.method public final inviteUserToChat(Lin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 10

    const-string v0, "steamIdUser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "steamIdChat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    invoke-direct {p0, p2}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->fixChatID(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/types/SteamID;

    move-result-object p2

    .line 472
    new-instance v6, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 474
    sget-object v2, Lin/dragonbra/javasteam/enums/EMsg;->ClientChatInvite:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 472
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientChatInvite;

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 476
    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientChatInvite$Builder;

    invoke-virtual {p2}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientChatInvite$Builder;->setSteamIdChat(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientChatInvite$Builder;

    .line 477
    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p2

    check-cast p2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientChatInvite$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientChatInvite$Builder;->setSteamIdInvited(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientChatInvite$Builder;

    .line 480
    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientChatInvite$Builder;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p2

    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/CMClient;->getSteamID()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object p2

    if-eqz p2, :cond_4a

    :goto_45
    invoke-virtual {p2}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v0

    goto :goto_50

    :cond_4a
    new-instance p2, Lin/dragonbra/javasteam/types/SteamID;

    invoke-direct {p2}, Lin/dragonbra/javasteam/types/SteamID;-><init>()V

    goto :goto_45

    :goto_50
    invoke-virtual {p1, v0, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientChatInvite$Builder;->setSteamIdPatron(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientChatInvite$Builder;

    .line 481
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v6}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    return-void
.end method

.method public final isLocalUser()Z
    .registers 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->isLocalUser$default(Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;Lin/dragonbra/javasteam/types/SteamID;ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isLocalUser(Lin/dragonbra/javasteam/types/SteamID;)Z
    .registers 3

    .line 110
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->cache:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;

    if-nez p1, :cond_c

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/CMClient;->getSteamID()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object p1

    :cond_c
    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->isLocalUser(Lin/dragonbra/javasteam/types/SteamID;)Z

    move-result p0

    return p0
.end method

.method public final joinChat(Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 7

    const-string v0, "steamID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->fixChatID(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/types/SteamID;

    move-result-object p1

    .line 409
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsg;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-class v3, Lin/dragonbra/javasteam/generated/MsgClientJoinChat;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lin/dragonbra/javasteam/base/ClientMsg;-><init>(Ljava/lang/Class;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 410
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/generated/MsgClientJoinChat;

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/generated/MsgClientJoinChat;->setSteamIdChat(Lin/dragonbra/javasteam/types/SteamID;)V

    .line 411
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    return-void
.end method

.method public final kickChatMember(Lin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 8

    const-string v0, "steamIdChat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "steamIdMember"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->fixChatID(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/types/SteamID;

    move-result-object p1

    .line 493
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsg;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-class v3, Lin/dragonbra/javasteam/generated/MsgClientChatAction;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lin/dragonbra/javasteam/base/ClientMsg;-><init>(Ljava/lang/Class;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 494
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/generated/MsgClientChatAction;

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/generated/MsgClientChatAction;->setSteamIdChat(Lin/dragonbra/javasteam/types/SteamID;)V

    .line 495
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/generated/MsgClientChatAction;

    invoke-virtual {p1, p2}, Lin/dragonbra/javasteam/generated/MsgClientChatAction;->setSteamIdUserToActOn(Lin/dragonbra/javasteam/types/SteamID;)V

    .line 497
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/generated/MsgClientChatAction;

    sget-object p2, Lin/dragonbra/javasteam/enums/EChatAction;->Kick:Lin/dragonbra/javasteam/enums/EChatAction;

    invoke-virtual {p1, p2}, Lin/dragonbra/javasteam/generated/MsgClientChatAction;->setChatAction(Lin/dragonbra/javasteam/enums/EChatAction;)V

    .line 498
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    return-void
.end method

.method public final leaveChat(Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 7

    const-string v0, "steamID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->fixChatID(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/types/SteamID;

    move-result-object p1

    .line 422
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsg;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-class v3, Lin/dragonbra/javasteam/generated/MsgClientChatMemberInfo;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lin/dragonbra/javasteam/base/ClientMsg;-><init>(Ljava/lang/Class;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 423
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/generated/MsgClientChatMemberInfo;

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/generated/MsgClientChatMemberInfo;->setSteamIdChat(Lin/dragonbra/javasteam/types/SteamID;)V

    .line 424
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/generated/MsgClientChatMemberInfo;

    sget-object v1, Lin/dragonbra/javasteam/enums/EChatInfoType;->StateChange:Lin/dragonbra/javasteam/enums/EChatInfoType;

    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/generated/MsgClientChatMemberInfo;->setType(Lin/dragonbra/javasteam/enums/EChatInfoType;)V

    .line 427
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/CMClient;->getSteamID()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object p1

    if-eqz p1, :cond_36

    :goto_31
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v1

    goto :goto_3c

    :cond_36
    new-instance p1, Lin/dragonbra/javasteam/types/SteamID;

    invoke-direct {p1}, Lin/dragonbra/javasteam/types/SteamID;-><init>()V

    goto :goto_31

    .line 430
    :goto_3c
    :try_start_3c
    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/base/AbstractMsgBase;->writeLong(J)V

    .line 431
    sget-object p1, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;->Left:Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;->code()I

    move-result p1

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/base/AbstractMsgBase;->writeInt(I)V

    .line 432
    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/base/AbstractMsgBase;->writeLong(J)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_4b} :catch_4c

    goto :goto_52

    :catch_4c
    move-exception p1

    .line 434
    sget-object v1, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 436
    :goto_52
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    return-void
.end method

.method public final removeFriend(Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 9

    const-string v0, "steamID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 395
    sget-object v3, Lin/dragonbra/javasteam/enums/EMsg;->ClientRemoveFriend:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 393
    const-class v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientRemoveFriend;

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 397
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientRemoveFriend$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientRemoveFriend$Builder;->setFriendid(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientRemoveFriend$Builder;

    .line 398
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    return-void
.end method

.method public final requestAliasHistory(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/types/JobID;
    .registers 3

    const-string v0, "steamID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 675
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->requestAliasHistory(Ljava/util/List;)Lin/dragonbra/javasteam/types/JobID;

    move-result-object p0

    return-object p0
.end method

.method public final requestAliasHistory(Ljava/util/List;)Lin/dragonbra/javasteam/types/JobID;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/types/SteamID;",
            ">;)",
            "Lin/dragonbra/javasteam/types/JobID;"
        }
    .end annotation

    const-string v0, "steamIDs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getNextJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    .line 686
    new-instance v7, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 688
    sget-object v3, Lin/dragonbra/javasteam/enums/EMsg;->ClientAMGetPersonaNameHistory:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 686
    const-class v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAMGetPersonaNameHistory;

    const/4 v4, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 690
    invoke-virtual {v7, v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->setSourceJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 692
    invoke-virtual {v7}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAMGetPersonaNameHistory$Builder;

    .line 1563
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1635
    check-cast v3, Lin/dragonbra/javasteam/types/SteamID;

    .line 694
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAMGetPersonaNameHistory$IdInstance;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAMGetPersonaNameHistory$IdInstance$Builder;

    move-result-object v4

    invoke-virtual {v3}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAMGetPersonaNameHistory$IdInstance$Builder;->setSteamid(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAMGetPersonaNameHistory$IdInstance$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAMGetPersonaNameHistory$IdInstance$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAMGetPersonaNameHistory$IdInstance;

    move-result-object v3

    .line 1635
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 692
    :cond_52
    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAMGetPersonaNameHistory$Builder;->addAllIds(Ljava/lang/Iterable;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAMGetPersonaNameHistory$Builder;

    .line 698
    invoke-virtual {v7}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAMGetPersonaNameHistory$Builder;

    invoke-virtual {v7}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAMGetPersonaNameHistory$Builder;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAMGetPersonaNameHistory$Builder;->getIdsCount()I

    move-result v1

    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAMGetPersonaNameHistory$Builder;->setIdCount(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAMGetPersonaNameHistory$Builder;

    .line 701
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v7}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    return-object v0
.end method

.method public final requestFriendInfo(Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 5

    .line 0
    const-string v0, "steamID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->requestFriendInfo$default(Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;Lin/dragonbra/javasteam/types/SteamID;IILjava/lang/Object;)V

    return-void
.end method

.method public final requestFriendInfo(Lin/dragonbra/javasteam/types/SteamID;I)V
    .registers 4

    const-string v0, "steamID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 568
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->requestFriendInfo(Ljava/util/List;I)V

    return-void
.end method

.method public final requestFriendInfo(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/types/SteamID;",
            ">;)V"
        }
    .end annotation

    .line 0
    const-string v0, "steamIdList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->requestFriendInfo$default(Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;Ljava/util/List;IILjava/lang/Object;)V

    return-void
.end method

.method public final requestFriendInfo(Ljava/util/List;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/types/SteamID;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "steamIdList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_17

    .line 547
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p2

    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/CMClient;->getConfiguration()Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->getDefaultPersonaStateFlags()Ljava/util/EnumSet;

    move-result-object p2

    invoke-static {p2}, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->code(Ljava/util/EnumSet;)I

    move-result p2

    .line 550
    :cond_17
    new-instance v6, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 552
    sget-object v2, Lin/dragonbra/javasteam/enums/EMsg;->ClientRequestFriendData:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 550
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientRequestFriendData;

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 554
    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientRequestFriendData$Builder;

    .line 1563
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1635
    check-cast v2, Lin/dragonbra/javasteam/types/SteamID;

    .line 554
    invoke-virtual {v2}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1635
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 554
    :cond_51
    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientRequestFriendData$Builder;->addAllFriends(Ljava/lang/Iterable;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientRequestFriendData$Builder;

    .line 555
    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientRequestFriendData$Builder;

    invoke-virtual {p1, p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientRequestFriendData$Builder;->setPersonaStateRequested(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientRequestFriendData$Builder;

    .line 556
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v6}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    return-void
.end method

.method public final requestMessageHistory(Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 9

    const-string v0, "steamID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 625
    sget-object v3, Lin/dragonbra/javasteam/enums/EMsg;->ClientChatGetFriendMessageHistory:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 623
    const-class v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientChatGetFriendMessageHistory;

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 627
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientChatGetFriendMessageHistory$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientChatGetFriendMessageHistory$Builder;->setSteamid(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientChatGetFriendMessageHistory$Builder;

    .line 628
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    return-void
.end method

.method public final requestOfflineMessages()V
    .registers 8

    .line 637
    new-instance v6, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 639
    sget-object v2, Lin/dragonbra/javasteam/enums/EMsg;->ClientChatGetFriendMessageHistoryForOfflineMessages:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 637
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientChatGetFriendMessageHistoryForOfflineMessages;

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 640
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v6}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    return-void
.end method

.method public final requestProfileInfo(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/types/SteamID;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ProfileInfoCallback;",
            ">;"
        }
    .end annotation

    const-string v0, "steamID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 604
    sget-object v3, Lin/dragonbra/javasteam/enums/EMsg;->ClientFriendProfileInfo:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 602
    const-class v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendProfileInfo;

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 606
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getNextJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->setSourceJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 608
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendProfileInfo$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendProfileInfo$Builder;->setSteamidFriend(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendProfileInfo$Builder;

    .line 611
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p1

    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    .line 613
    new-instance p1, Lin/dragonbra/javasteam/types/AsyncJobSingle;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getSourceJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lin/dragonbra/javasteam/types/JobID;)V

    return-object p1
.end method

.method public final resetPersonaStateFlag()V
    .registers 8

    .line 191
    new-instance v6, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 193
    sget-object v2, Lin/dragonbra/javasteam/enums/EMsg;->ClientChangeStatus:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 191
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientChangeStatus;

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 195
    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientChangeStatus$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientChangeStatus$Builder;->setPersonaSetByUser(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientChangeStatus$Builder;

    .line 196
    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientChangeStatus$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientChangeStatus$Builder;->setPersonaStateFlags(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientChangeStatus$Builder;

    .line 197
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v6}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    return-void
.end method

.method public final sendChatMessage(Lin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/enums/EChatEntryType;Ljava/lang/String;)V
    .registers 11

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 351
    sget-object v3, Lin/dragonbra/javasteam/enums/EMsg;->ClientFriendMsg:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 349
    const-class v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendMsg;

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 353
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendMsg$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendMsg$Builder;->setSteamid(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendMsg$Builder;

    .line 354
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendMsg$Builder;

    invoke-virtual {p2}, Lin/dragonbra/javasteam/enums/EChatEntryType;->code()I

    move-result p2

    invoke-virtual {p1, p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendMsg$Builder;->setChatEntryType(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendMsg$Builder;

    .line 355
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendMsg$Builder;

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p3, p2}, Lcom/google/protobuf/ByteString;->copyFrom(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendMsg$Builder;->setMessage(Lcom/google/protobuf/ByteString;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendMsg$Builder;

    .line 356
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    return-void
.end method

.method public final sendChatRoomMessage(Lin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/enums/EChatEntryType;Ljava/lang/String;)V
    .registers 9

    const-string v0, "steamIdChat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->fixChatID(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/types/SteamID;

    move-result-object p1

    .line 449
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsg;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-class v3, Lin/dragonbra/javasteam/generated/MsgClientChatMsg;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lin/dragonbra/javasteam/base/ClientMsg;-><init>(Ljava/lang/Class;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 450
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/generated/MsgClientChatMsg;

    invoke-virtual {v1, p2}, Lin/dragonbra/javasteam/generated/MsgClientChatMsg;->setChatMsgType(Lin/dragonbra/javasteam/enums/EChatEntryType;)V

    .line 451
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object p2

    check-cast p2, Lin/dragonbra/javasteam/generated/MsgClientChatMsg;

    invoke-virtual {p2, p1}, Lin/dragonbra/javasteam/generated/MsgClientChatMsg;->setSteamIdChatRoom(Lin/dragonbra/javasteam/types/SteamID;)V

    .line 452
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/generated/MsgClientChatMsg;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p2

    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/CMClient;->getSteamID()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object p2

    invoke-virtual {p1, p2}, Lin/dragonbra/javasteam/generated/MsgClientChatMsg;->setSteamIdChatter(Lin/dragonbra/javasteam/types/SteamID;)V

    .line 455
    :try_start_40
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string p2, "UTF_8"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p3, p1}, Lin/dragonbra/javasteam/base/AbstractMsgBase;->writeNullTermString(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_4a} :catch_4b

    goto :goto_51

    :catch_4b
    move-exception p1

    .line 457
    sget-object p2, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p2, p1}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 459
    :goto_51
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    return-void
.end method

.method public final setFriendNickname(Lin/dragonbra/javasteam/types/SteamID;Ljava/lang/String;)Lin/dragonbra/javasteam/types/JobID;
    .registers 11

    const-string v0, "friendID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nickname"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getNextJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    .line 653
    new-instance v7, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 655
    sget-object v3, Lin/dragonbra/javasteam/enums/EMsg;->AMClientSetPlayerNickname:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 653
    const-class v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientSetPlayerNickname;

    const/4 v4, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 657
    invoke-virtual {v7, v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->setSourceJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 659
    invoke-virtual {v7}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientSetPlayerNickname$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientSetPlayerNickname$Builder;->setSteamid(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientSetPlayerNickname$Builder;

    .line 660
    invoke-virtual {v7}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientSetPlayerNickname$Builder;

    invoke-virtual {p1, p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientSetPlayerNickname$Builder;->setNickname(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientSetPlayerNickname$Builder;

    .line 663
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v7}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    return-object v0
.end method

.method public final setPersonaName(Ljava/lang/String;)V
    .registers 9

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->cache:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->getLocalUser()Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;

    move-result-object v0

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;->setName(Ljava/lang/String;)V

    .line 153
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 155
    sget-object v3, Lin/dragonbra/javasteam/enums/EMsg;->ClientChangeStatus:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 153
    const-class v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientChangeStatus;

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 157
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientChangeStatus$Builder;

    iget-object v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->cache:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;

    invoke-virtual {v2}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->getLocalUser()Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;

    move-result-object v2

    invoke-virtual {v2}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->getPersonaState()Lin/dragonbra/javasteam/enums/EPersonaState;

    move-result-object v2

    invoke-virtual {v2}, Lin/dragonbra/javasteam/enums/EPersonaState;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientChangeStatus$Builder;->setPersonaState(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientChangeStatus$Builder;

    .line 158
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientChangeStatus$Builder;

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientChangeStatus$Builder;->setPlayerName(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientChangeStatus$Builder;

    .line 159
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    return-void
.end method

.method public final setPersonaState(Lin/dragonbra/javasteam/enums/EPersonaState;)V
    .registers 9

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->cache:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->getLocalUser()Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;

    move-result-object v0

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->setPersonaState(Lin/dragonbra/javasteam/enums/EPersonaState;)V

    .line 177
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 179
    sget-object v3, Lin/dragonbra/javasteam/enums/EMsg;->ClientChangeStatus:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 177
    const-class v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientChangeStatus;

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 181
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientChangeStatus$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/enums/EPersonaState;->code()I

    move-result p1

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientChangeStatus$Builder;->setPersonaState(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientChangeStatus$Builder;

    .line 182
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientChangeStatus$Builder;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientChangeStatus$Builder;->setPersonaSetByUser(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientChangeStatus$Builder;

    .line 183
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    return-void
.end method

.method public final setPersonaStateFlag(Lin/dragonbra/javasteam/enums/EPersonaStateFlag;)V
    .registers 10

    const-string v0, "flag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1}, Lin/dragonbra/javasteam/enums/EPersonaStateFlag;->code()I

    move-result v0

    sget-object v1, Lin/dragonbra/javasteam/enums/EPersonaStateFlag;->ClientTypeWeb:Lin/dragonbra/javasteam/enums/EPersonaStateFlag;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/enums/EPersonaStateFlag;->code()I

    move-result v1

    if-lt v0, v1, :cond_49

    invoke-virtual {p1}, Lin/dragonbra/javasteam/enums/EPersonaStateFlag;->code()I

    move-result v0

    sget-object v1, Lin/dragonbra/javasteam/enums/EPersonaStateFlag;->ClientTypeVR:Lin/dragonbra/javasteam/enums/EPersonaStateFlag;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/enums/EPersonaStateFlag;->code()I

    move-result v1

    if-gt v0, v1, :cond_49

    .line 212
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 214
    sget-object v4, Lin/dragonbra/javasteam/enums/EMsg;->ClientChangeStatus:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 212
    const-class v3, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientChangeStatus;

    const/4 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 216
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientChangeStatus$Builder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientChangeStatus$Builder;->setPersonaSetByUser(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientChangeStatus$Builder;

    .line 217
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientChangeStatus$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/enums/EPersonaStateFlag;->code()I

    move-result p1

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientChangeStatus$Builder;->setPersonaStateFlags(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientChangeStatus$Builder;

    .line 218
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    return-void

    .line 210
    :cond_49
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Persona State Flag was not a valid ClientType"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final unbanChatMember(Lin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 8

    const-string v0, "steamIdChat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "steamIdMember"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->fixChatID(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/types/SteamID;

    move-result-object p1

    .line 527
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsg;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-class v3, Lin/dragonbra/javasteam/generated/MsgClientChatAction;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lin/dragonbra/javasteam/base/ClientMsg;-><init>(Ljava/lang/Class;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 528
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/generated/MsgClientChatAction;

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/generated/MsgClientChatAction;->setSteamIdChat(Lin/dragonbra/javasteam/types/SteamID;)V

    .line 529
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/generated/MsgClientChatAction;

    invoke-virtual {p1, p2}, Lin/dragonbra/javasteam/generated/MsgClientChatAction;->setSteamIdUserToActOn(Lin/dragonbra/javasteam/types/SteamID;)V

    .line 531
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/generated/MsgClientChatAction;

    sget-object p2, Lin/dragonbra/javasteam/enums/EChatAction;->UnBan:Lin/dragonbra/javasteam/enums/EChatAction;

    invoke-virtual {p1, p2}, Lin/dragonbra/javasteam/generated/MsgClientChatAction;->setChatAction(Lin/dragonbra/javasteam/enums/EChatAction;)V

    .line 532
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.SteamFriends.Companion (in.dragonbra.javasteam.steam.handlers.steamfriends.SteamFriends$Companion)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends$Companion;
.super Ljava/lang/Object;
.source "SteamFriends.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends$Companion$WhenMappings;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCallback(Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends$Companion;Lin/dragonbra/javasteam/base/IPacketMsg;)Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
    .registers 2

    .line 900
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends$Companion;->getCallback(Lin/dragonbra/javasteam/base/IPacketMsg;)Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;

    move-result-object p0

    return-object p0
.end method

.method private final getCallback(Lin/dragonbra/javasteam/base/IPacketMsg;)Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
    .registers 3

    .line 904
    invoke-interface {p1}, Lin/dragonbra/javasteam/base/IPacketMsg;->getMsgType()Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object p0

    sget-object v0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_6c

    const/4 p0, 0x0

    goto :goto_6a

    .line 919
    :pswitch_11
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/NicknameCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/NicknameCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_6a

    .line 918
    :pswitch_17
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/NicknameListCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/NicknameListCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_6a

    .line 917
    :pswitch_1d
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/AliasHistoryCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/AliasHistoryCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_6a

    .line 916
    :pswitch_23
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ProfileInfoCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ProfileInfoCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_6a

    .line 915
    :pswitch_29
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/IgnoreFriendCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/IgnoreFriendCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_6a

    .line 914
    :pswitch_2f
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatInviteCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatInviteCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_6a

    .line 913
    :pswitch_35
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatActionResultCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatActionResultCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_6a

    .line 912
    :pswitch_3b
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatRoomInfoCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatRoomInfoCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_6a

    .line 911
    :pswitch_41
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_6a

    .line 910
    :pswitch_47
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMsgCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMsgCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_6a

    .line 909
    :pswitch_4d
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_6a

    .line 908
    :pswitch_53
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendAddedCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendAddedCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_6a

    .line 907
    :pswitch_59
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendMsgEchoCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendMsgEchoCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_6a

    .line 906
    :pswitch_5f
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendMsgCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendMsgCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_6a

    .line 905
    :pswitch_65
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ClanStateCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ClanStateCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    :goto_6a
    return-object p0

    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_65
        :pswitch_5f
        :pswitch_59
        :pswitch_53
        :pswitch_4d
        :pswitch_47
        :pswitch_41
        :pswitch_3b
        :pswitch_35
        :pswitch_2f
        :pswitch_29
        :pswitch_23
        :pswitch_1d
        :pswitch_17
        :pswitch_11
    .end packed-switch
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.SteamFriends.Companion.WhenMappings (in.dragonbra.javasteam.steam.handlers.steamfriends.SteamFriends$Companion$WhenMappings)
.class public final synthetic Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends$Companion$WhenMappings;
.super Ljava/lang/Object;
.source "SteamFriends.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lin/dragonbra/javasteam/enums/EMsg;->values()[Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientClanState:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientFriendMsgIncoming:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientFriendMsgEchoToSender:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientAddFriendResponse:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2b
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientChatEnter:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_34} :catch_34

    :catch_34
    :try_start_34
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientChatMsg:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3d
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientChatMemberInfo:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_46} :catch_46

    :catch_46
    :try_start_46
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientChatRoomInfo:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_50} :catch_50

    :catch_50
    :try_start_50
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientChatActionResult:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_5a} :catch_5a

    :catch_5a
    :try_start_5a
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientChatInvite:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_64} :catch_64

    :catch_64
    :try_start_64
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientSetIgnoreFriendResponse:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_6e} :catch_6e

    :catch_6e
    :try_start_6e
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientFriendProfileInfoResponse:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientAMGetPersonaNameHistoryResponse:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_82
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_82} :catch_82

    :catch_82
    :try_start_82
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientPlayerNicknameList:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_82 .. :try_end_8c} :catch_8c

    :catch_8c
    :try_start_8c
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->AMClientSetPlayerNicknameResponse:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_96} :catch_96

    :catch_96
    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.SteamFriends.WhenMappings (in.dragonbra.javasteam.steam.handlers.steamfriends.SteamFriends$WhenMappings)
.class public final synthetic Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends$WhenMappings;
.super Ljava/lang/Object;
.source "SteamFriends.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lin/dragonbra/javasteam/enums/EMsg;->values()[Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientPersonaState:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientFriendsList:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientChatGetFriendMessageHistoryResponse:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientAccountInfo:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2b
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientPersonaChangeResponse:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_34} :catch_34

    :catch_34
    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
