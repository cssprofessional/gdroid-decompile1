###### Class in.dragonbra.javasteam.steam.handlers.steamuser.SteamUser (in.dragonbra.javasteam.steam.handlers.steamuser.SteamUser)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser;
.super Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;
.source "SteamUser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser;->Companion:Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;-><init>()V

    return-void
.end method

.method public static synthetic kickPlayingSession$default(Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser;ZILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 197
    :cond_5
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser;->kickPlayingSession(Z)V

    return-void
.end method

.method public static synthetic logOnAnonymous$default(Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser;Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;ILjava/lang/Object;)V
    .registers 10

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_f

    .line 154
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;-><init>(Ljava/lang/Integer;Lin/dragonbra/javasteam/enums/EOSType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_f
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser;->logOnAnonymous(Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;)V

    return-void
.end method


# virtual methods
.method public final getSteamID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 41
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/CMClient;->getSteamID()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object p0

    return-object p0
.end method

.method public handleMsg(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 3

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser;->Companion:Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser$Companion;

    invoke-static {v0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser$Companion;->access$getCallback(Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser$Companion;Lin/dragonbra/javasteam/base/IPacketMsg;)Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;

    move-result-object p1

    if-nez p1, :cond_e

    return-void

    .line 51
    :cond_e
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->postCallback(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V

    return-void
.end method

.method public final kickPlayingSession(Z)V
    .registers 9

    .line 200
    new-instance v6, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 202
    sget-object v2, Lin/dragonbra/javasteam/enums/EMsg;->ClientKickPlayingSession:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 200
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientKickPlayingSession;

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 204
    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientKickPlayingSession$Builder;

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientKickPlayingSession$Builder;->setOnlyStopGame(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientKickPlayingSession$Builder;

    .line 206
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v6}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    return-void
.end method

.method public final logOff()V
    .registers 8

    const/4 v0, 0x1

    .line 182
    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->setExpectDisconnection(Z)V

    .line 184
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    sget-object v3, Lin/dragonbra/javasteam/enums/EMsg;->ClientLogOff:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-class v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogOff;

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 185
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    .line 188
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/CMClient;->disconnect()V

    return-void
.end method

.method public final logOn(Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;)V
    .registers 16

    const-string v0, "details"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_237

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->getPassword()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_27

    :cond_1b
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_237

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_237

    .line 66
    :cond_27
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/CMClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_40

    .line 67
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;

    sget-object v0, Lin/dragonbra/javasteam/enums/EResult;->NoConnection:Lin/dragonbra/javasteam/enums/EResult;

    invoke-direct {p1, v0}, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;-><init>(Lin/dragonbra/javasteam/enums/EResult;)V

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->postCallback(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V

    return-void

    .line 71
    :cond_40
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    sget-object v3, Lin/dragonbra/javasteam/enums/EMsg;->ClientLogon:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-class v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon;

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 73
    new-instance v1, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->getAccountID()J

    move-result-wide v8

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->getAccountInstance()J

    move-result-wide v10

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v2

    invoke-virtual {v2}, Lin/dragonbra/javasteam/steam/CMClient;->getUniverse()Lin/dragonbra/javasteam/enums/EUniverse;

    move-result-object v12

    const-string v2, "getUniverse(...)"

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v13, Lin/dragonbra/javasteam/enums/EAccountType;->Individual:Lin/dragonbra/javasteam/enums/EAccountType;

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Lin/dragonbra/javasteam/types/SteamID;-><init>(JJLin/dragonbra/javasteam/enums/EUniverse;Lin/dragonbra/javasteam/enums/EAccountType;)V

    .line 75
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->getLoginID()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 77
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v2

    check-cast v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgIPAddress;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgIPAddress$Builder;

    move-result-object v3

    .line 78
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->getLoginID()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgIPAddress$Builder;->setV4(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgIPAddress$Builder;

    .line 79
    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgIPAddress$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgIPAddress;

    move-result-object v3

    .line 77
    invoke-virtual {v2, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;->setObfuscatedPrivateIp(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgIPAddress;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    goto :goto_ab

    .line 81
    :cond_90
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v2

    invoke-virtual {v2}, Lin/dragonbra/javasteam/steam/CMClient;->getLocalIP()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_ab

    .line 82
    invoke-static {v2}, Lin/dragonbra/javasteam/util/NetHelpers;->getMsgIPAddress(Ljava/net/InetAddress;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgIPAddress;

    move-result-object v2

    .line 83
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v3

    check-cast v3, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    invoke-static {v2}, Lin/dragonbra/javasteam/util/NetHelpers;->obfuscatePrivateIP(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgIPAddress;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgIPAddress;

    move-result-object v2

    invoke-virtual {v3, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;->setObfuscatedPrivateIp(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgIPAddress;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    .line 88
    :cond_ab
    :goto_ab
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v2

    check-cast v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    invoke-virtual {v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;->getObfuscatedPrivateIp()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgIPAddress;

    move-result-object v2

    invoke-virtual {v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgIPAddress;->hasV4()Z

    move-result v2

    if-eqz v2, :cond_d2

    .line 89
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v2

    check-cast v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v3

    check-cast v3, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;->getObfuscatedPrivateIp()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgIPAddress;

    move-result-object v3

    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgIPAddress;->getV4()I

    move-result v3

    invoke-virtual {v2, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;->setDeprecatedObfustucatedPrivateIp(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    .line 92
    :cond_d2
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getProtoHeader()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;->setClientSessionid(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    .line 93
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getProtoHeader()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    move-result-object v2

    invoke-virtual {v1}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;->setSteamid(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    .line 95
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;->setAccountName(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    .line 96
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->getPassword()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_105

    .line 97
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;->setPassword(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    .line 99
    :cond_105
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->getShouldRememberPassword()Z

    move-result v2

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;->setShouldRememberPassword(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    .line 101
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    const v2, 0x1002d

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;->setProtocolVersion(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    .line 102
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->getClientOSType()Lin/dragonbra/javasteam/enums/EOSType;

    move-result-object v2

    invoke-virtual {v2}, Lin/dragonbra/javasteam/enums/EOSType;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;->setClientOsType(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    .line 103
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->getClientLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;->setClientLanguage(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    .line 104
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->getCellID()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_14d

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_159

    :cond_14d
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v2

    invoke-virtual {v2}, Lin/dragonbra/javasteam/steam/CMClient;->getConfiguration()Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->getCellID()I

    move-result v2

    :goto_159
    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;->setCellId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    .line 106
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->getRequestSteam2Ticket()Z

    move-result v2

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;->setSteam2TicketRequest(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    .line 109
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    const/16 v2, 0x6eb

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;->setClientPackageVersion(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    .line 110
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;->setSupportsRateLimitResponse(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    .line 111
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->getMachineName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;->setMachineName(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    .line 112
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    invoke-static {}, Lin/dragonbra/javasteam/util/HardwareUtils;->getMachineID()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;->setMachineId(Lcom/google/protobuf/ByteString;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    .line 114
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->getChatMode()Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;

    move-result-object v1

    sget-object v3, Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;->DEFAULT:Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;

    if-eq v1, v3, :cond_1b5

    .line 115
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->getChatMode()Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;

    move-result-object v3

    invoke-virtual {v3}, Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;->getMode()I

    move-result v3

    invoke-virtual {v1, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;->setChatMode(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    .line 118
    :cond_1b5
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->getUiMode()Lin/dragonbra/javasteam/enums/EUIMode;

    move-result-object v1

    sget-object v3, Lin/dragonbra/javasteam/enums/EUIMode;->Unknown:Lin/dragonbra/javasteam/enums/EUIMode;

    if-eq v1, v3, :cond_1ce

    .line 119
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->getUiMode()Lin/dragonbra/javasteam/enums/EUIMode;

    move-result-object v3

    invoke-virtual {v3}, Lin/dragonbra/javasteam/enums/EUIMode;->code()I

    move-result v3

    invoke-virtual {v1, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;->setUiMode(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    .line 122
    :cond_1ce
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->getGamingDeviceType()Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    move-result-object v1

    sget-object v3, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->Unknown:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    if-eq v1, v3, :cond_1e7

    .line 123
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->getGamingDeviceType()Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    move-result-object v3

    invoke-virtual {v3}, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->code()I

    move-result v3

    invoke-virtual {v1, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;->setGamingDeviceType(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    .line 127
    :cond_1e7
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->isSteamDeck()Z

    move-result v1

    if-eqz v1, :cond_1f6

    .line 128
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;->setIsSteamDeckDeprecated(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    .line 132
    :cond_1f6
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->getAuthCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_209

    .line 133
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->getAuthCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;->setAuthCode(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    .line 135
    :cond_209
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->getTwoFactorCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21c

    .line 136
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->getTwoFactorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;->setTwoFactorCode(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    .line 139
    :cond_21c
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_22f

    .line 140
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;->setAccessToken(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    .line 143
    :cond_22f
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    return-void

    .line 63
    :cond_237
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "LogOn requires a username and password or access token to be set in \'details\'."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final logOnAnonymous()V
    .registers 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser;->logOnAnonymous$default(Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser;Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;ILjava/lang/Object;)V

    return-void
.end method

.method public final logOnAnonymous(Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;)V
    .registers 16

    const-string v0, "details"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/CMClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 156
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;

    sget-object v0, Lin/dragonbra/javasteam/enums/EResult;->NoConnection:Lin/dragonbra/javasteam/enums/EResult;

    invoke-direct {p1, v0}, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;-><init>(Lin/dragonbra/javasteam/enums/EResult;)V

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->postCallback(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V

    return-void

    .line 160
    :cond_1e
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    sget-object v3, Lin/dragonbra/javasteam/enums/EMsg;->ClientLogon:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-class v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon;

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 162
    new-instance v1, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v2

    invoke-virtual {v2}, Lin/dragonbra/javasteam/steam/CMClient;->getUniverse()Lin/dragonbra/javasteam/enums/EUniverse;

    move-result-object v12

    const-string v2, "getUniverse(...)"

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v13, Lin/dragonbra/javasteam/enums/EAccountType;->AnonUser:Lin/dragonbra/javasteam/enums/EAccountType;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Lin/dragonbra/javasteam/types/SteamID;-><init>(JJLin/dragonbra/javasteam/enums/EUniverse;Lin/dragonbra/javasteam/enums/EAccountType;)V

    .line 164
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getProtoHeader()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;->setClientSessionid(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    .line 165
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getProtoHeader()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    move-result-object v2

    invoke-virtual {v1}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;->setSteamid(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    .line 167
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    const v2, 0x1002d

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;->setProtocolVersion(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    .line 168
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;->getClientOSType()Lin/dragonbra/javasteam/enums/EOSType;

    move-result-object v2

    invoke-virtual {v2}, Lin/dragonbra/javasteam/enums/EOSType;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;->setClientOsType(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    .line 169
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;->getClientLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;->setClientLanguage(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    .line 170
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;->getCellID()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_92

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_9e

    :cond_92
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/CMClient;->getConfiguration()Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->getCellID()I

    move-result p1

    :goto_9e
    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;->setCellId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    .line 172
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    invoke-static {}, Lin/dragonbra/javasteam/util/HardwareUtils;->getMachineID()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;->setMachineId(Lcom/google/protobuf/ByteString;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogon$Builder;

    .line 174
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamuser.SteamUser.Companion (in.dragonbra.javasteam.steam.handlers.steamuser.SteamUser$Companion)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser$Companion;
.super Ljava/lang/Object;
.source "SteamUser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser$Companion$WhenMappings;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCallback(Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser$Companion;Lin/dragonbra/javasteam/base/IPacketMsg;)Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
    .registers 2

    .line 209
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser$Companion;->getCallback(Lin/dragonbra/javasteam/base/IPacketMsg;)Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;

    move-result-object p0

    return-object p0
.end method

.method private final getCallback(Lin/dragonbra/javasteam/base/IPacketMsg;)Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
    .registers 3

    .line 210
    invoke-interface {p1}, Lin/dragonbra/javasteam/base/IPacketMsg;->getMsgType()Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object p0

    sget-object v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_4e

    const/4 p0, 0x0

    goto :goto_4c

    .line 220
    :pswitch_11
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/PlayingSessionStateCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/PlayingSessionStateCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_4c

    .line 219
    :pswitch_17
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_4c

    .line 218
    :pswitch_1d
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/VanityURLChangedCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/VanityURLChangedCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_4c

    .line 217
    :pswitch_23
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/WebAPIUserNonceCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/WebAPIUserNonceCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_4c

    .line 216
    :pswitch_29
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/WalletInfoCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/WalletInfoCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_4c

    .line 215
    :pswitch_2f
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/EmailAddrInfoCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/EmailAddrInfoCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_4c

    .line 214
    :pswitch_35
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/AccountInfoCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/AccountInfoCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_4c

    .line 213
    :pswitch_3b
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/SessionTokenCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/SessionTokenCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_4c

    .line 212
    :pswitch_41
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOffCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOffCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_4c

    .line 211
    :pswitch_47
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    :goto_4c
    return-object p0

    nop

    :pswitch_data_4e
    .packed-switch 0x1
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

###### Class in.dragonbra.javasteam.steam.handlers.steamuser.SteamUser.Companion.WhenMappings (in.dragonbra.javasteam.steam.handlers.steamuser.SteamUser$Companion$WhenMappings)
.class public final synthetic Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser$Companion$WhenMappings;
.super Ljava/lang/Object;
.source "SteamUser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser$Companion;
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
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientLogOnResponse:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientLoggedOff:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientSessionToken:Lin/dragonbra/javasteam/enums/EMsg;

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
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientEmailAddrInfo:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_34} :catch_34

    :catch_34
    :try_start_34
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientWalletInfoUpdate:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3d
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientRequestWebAPIAuthenticateUserNonceResponse:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_46} :catch_46

    :catch_46
    :try_start_46
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientVanityURLChangedNotification:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_50} :catch_50

    :catch_50
    :try_start_50
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientMarketingMessageUpdate2:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_5a} :catch_5a

    :catch_5a
    :try_start_5a
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientPlayingSessionState:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_64} :catch_64

    :catch_64
    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
