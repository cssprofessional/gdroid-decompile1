###### Class in.dragonbra.javasteam.steam.handlers.steamuser.callback.LoggedOnCallback (in.dragonbra.javasteam.steam.handlers.steamuser.callback.LoggedOnCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "LoggedOnCallback.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoggedOnCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoggedOnCallback.kt\nin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback\n+ 2 LogManager.kt\nin/dragonbra/javasteam/util/log/LogManager\n*L\n1#1,219:1\n53#2:220\n*S KotlinDebug\n*F\n+ 1 LoggedOnCallback.kt\nin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback\n*L\n28#1:220\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback$Companion;

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field private accountFlags:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EAccountFlags;",
            ">;"
        }
    .end annotation
.end field

.field private cellID:I

.field private cellIDPingThreshold:I

.field private clientInstanceId:J

.field private clientSteamID:Lin/dragonbra/javasteam/types/SteamID;

.field private emailDomain:Ljava/lang/String;

.field private extendedResult:Lin/dragonbra/javasteam/enums/EResult;

.field private familyGroupId:J

.field private inGameSecsPerHeartbeat:I

.field private ipCountryCode:Ljava/lang/String;

.field private numDisconnectsToMigrate:I

.field private numLoginFailuresToMigrate:I

.field private outOfGameSecsPerHeartbeat:I

.field private parentalSettings:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesParentalObjects$ParentalSettings;

.field private publicIP:Ljava/net/InetAddress;

.field private result:Lin/dragonbra/javasteam/enums/EResult;

.field private serverTime:Ljava/util/Date;

.field private steam2Ticket:[B

.field private vanityURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->Companion:Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback$Companion;

    .line 53
    const-class v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    .line 28
    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 7

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 34
    sget-object v0, Lin/dragonbra/javasteam/enums/EResult;->Invalid:Lin/dragonbra/javasteam/enums/EResult;

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    .line 147
    invoke-interface {p1}, Lin/dragonbra/javasteam/base/IPacketMsg;->isProto()Z

    move-result v0

    if-nez v0, :cond_16

    .line 148
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->handleNonProtoLogon(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    return-void

    .line 152
    :cond_16
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 153
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse;

    .line 152
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 156
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse$Builder;

    .line 158
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse$Builder;->getEresult()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v0

    const-string v1, "from(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    .line 159
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse$Builder;->getEresultExtended()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->extendedResult:Lin/dragonbra/javasteam/enums/EResult;

    .line 161
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse$Builder;->getLegacyOutOfGameHeartbeatSeconds()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->outOfGameSecsPerHeartbeat:I

    .line 162
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse$Builder;->getHeartbeatSeconds()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->inGameSecsPerHeartbeat:I

    .line 164
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse$Builder;->getPublicIp()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgIPAddress;

    move-result-object v0

    const-string v1, "getPublicIp(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lin/dragonbra/javasteam/util/NetHelpers;->getIPAddress(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgIPAddress;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->publicIP:Ljava/net/InetAddress;

    .line 166
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse$Builder;->getRtime32ServerTime()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->serverTime:Ljava/util/Date;

    .line 168
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse$Builder;->getAccountFlags()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EAccountFlags;->from(I)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->accountFlags:Ljava/util/EnumSet;

    .line 170
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse$Builder;->getClientSuppliedSteamid()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->clientSteamID:Lin/dragonbra/javasteam/types/SteamID;

    .line 172
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse$Builder;->getEmailDomain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->emailDomain:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse$Builder;->getCellId()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->cellID:I

    .line 175
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse$Builder;->getCellIdPingThreshold()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->cellIDPingThreshold:I

    .line 177
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse$Builder;->getSteam2Ticket()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->steam2Ticket:[B

    .line 179
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse$Builder;->getIpCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->ipCountryCode:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse$Builder;->getVanityUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->vanityURL:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse$Builder;->getCountLoginfailuresToMigrate()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->numLoginFailuresToMigrate:I

    .line 184
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse$Builder;->getCountDisconnectsToMigrate()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->numDisconnectsToMigrate:I

    .line 186
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse$Builder;->getParentalSettings()Lcom/google/protobuf/ByteString;

    move-result-object v0

    if-eqz v0, :cond_c8

    .line 188
    :try_start_b5
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse$Builder;->getParentalSettings()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesParentalObjects$ParentalSettings;->parseFrom(Lcom/google/protobuf/ByteString;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesParentalObjects$ParentalSettings;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->parentalSettings:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesParentalObjects$ParentalSettings;
    :try_end_bf
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_b5 .. :try_end_bf} :catch_c0

    goto :goto_c8

    :catch_c0
    move-exception v0

    .line 190
    sget-object v1, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v2, "Failed to parse parental settings"

    invoke-virtual {v1, v2, v0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    :cond_c8
    :goto_c8
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse$Builder;->getFamilyGroupId()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->familyGroupId:J

    .line 196
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse$Builder;->getClientInstanceId()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->clientInstanceId:J

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/enums/EResult;)V
    .registers 3

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 34
    sget-object v0, Lin/dragonbra/javasteam/enums/EResult;->Invalid:Lin/dragonbra/javasteam/enums/EResult;

    .line 200
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-void
.end method

.method private final handleNonProtoLogon(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 7

    .line 204
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsg;

    const-class v1, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;

    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsg;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 205
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;

    .line 207
    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v0

    const-string v1, "getResult(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    .line 209
    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->getOutOfGameHeartbeatRateSec()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->outOfGameSecsPerHeartbeat:I

    .line 210
    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->getInGameHeartbeatRateSec()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->inGameSecsPerHeartbeat:I

    .line 212
    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->getIpPublic()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/util/NetHelpers;->getIPAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->publicIP:Ljava/net/InetAddress;

    .line 214
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->getServerRealTime()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->serverTime:Ljava/util/Date;

    .line 216
    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->getClientSuppliedSteamId()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->clientSteamID:Lin/dragonbra/javasteam/types/SteamID;

    return-void
.end method


# virtual methods
.method public final getAccountFlags()Ljava/util/EnumSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EAccountFlags;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->accountFlags:Ljava/util/EnumSet;

    return-object p0
.end method

.method public final getCellID()I
    .registers 1

    .line 87
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->cellID:I

    return p0
.end method

.method public final getCellIDPingThreshold()I
    .registers 1

    .line 93
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->cellIDPingThreshold:I

    return p0
.end method

.method public final getClientInstanceId()J
    .registers 3

    .line 143
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->clientInstanceId:J

    return-wide v0
.end method

.method public final getClientSteamID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 76
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->clientSteamID:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public final getEmailDomain()Ljava/lang/String;
    .registers 1

    .line 81
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->emailDomain:Ljava/lang/String;

    return-object p0
.end method

.method public final getExtendedResult()Lin/dragonbra/javasteam/enums/EResult;
    .registers 1

    .line 40
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->extendedResult:Lin/dragonbra/javasteam/enums/EResult;

    return-object p0
.end method

.method public final getFamilyGroupId()J
    .registers 3

    .line 136
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->familyGroupId:J

    return-wide v0
.end method

.method public final getInGameSecsPerHeartbeat()I
    .registers 1

    .line 53
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->inGameSecsPerHeartbeat:I

    return p0
.end method

.method public final getIpCountryCode()Ljava/lang/String;
    .registers 1

    .line 107
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->ipCountryCode:Ljava/lang/String;

    return-object p0
.end method

.method public final getNumDisconnectsToMigrate()I
    .registers 1

    .line 125
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->numDisconnectsToMigrate:I

    return p0
.end method

.method public final getNumLoginFailuresToMigrate()I
    .registers 1

    .line 119
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->numLoginFailuresToMigrate:I

    return p0
.end method

.method public final getOutOfGameSecsPerHeartbeat()I
    .registers 1

    .line 46
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->outOfGameSecsPerHeartbeat:I

    return p0
.end method

.method public final getParentalSettings()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesParentalObjects$ParentalSettings;
    .registers 1

    .line 131
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->parentalSettings:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesParentalObjects$ParentalSettings;

    return-object p0
.end method

.method public final getPublicIP()Ljava/net/InetAddress;
    .registers 1

    .line 59
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->publicIP:Ljava/net/InetAddress;

    return-object p0
.end method

.method public final getResult()Lin/dragonbra/javasteam/enums/EResult;
    .registers 1

    .line 34
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-object p0
.end method

.method public final getServerTime()Ljava/util/Date;
    .registers 1

    .line 65
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->serverTime:Ljava/util/Date;

    return-object p0
.end method

.method public final getSteam2Ticket()[B
    .registers 1

    .line 101
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->steam2Ticket:[B

    return-object p0
.end method

.method public final getVanityURL()Ljava/lang/String;
    .registers 1

    .line 113
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->vanityURL:Ljava/lang/String;

    return-object p0
.end method

.method public final setAccountFlags(Ljava/util/EnumSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EAccountFlags;",
            ">;)V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->accountFlags:Ljava/util/EnumSet;

    return-void
.end method

.method public final setClientSteamID(Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->clientSteamID:Lin/dragonbra/javasteam/types/SteamID;

    return-void
.end method

.method public final setExtendedResult(Lin/dragonbra/javasteam/enums/EResult;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->extendedResult:Lin/dragonbra/javasteam/enums/EResult;

    return-void
.end method

.method public final setParentalSettings(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesParentalObjects$ParentalSettings;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->parentalSettings:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesParentalObjects$ParentalSettings;

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamuser.callback.LoggedOnCallback.Companion (in.dragonbra.javasteam.steam.handlers.steamuser.callback.LoggedOnCallback$Companion)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback$Companion;
.super Ljava/lang/Object;
.source "LoggedOnCallback.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback$Companion;-><init>()V

    return-void
.end method
