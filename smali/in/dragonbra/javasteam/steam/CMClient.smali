###### Class in.dragonbra.javasteam.steam.CMClient (in.dragonbra.javasteam.steam.CMClient)
.class public abstract Lin/dragonbra/javasteam/steam/CMClient;
.super Ljava/lang/Object;
.source "CMClient.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field private cellID:Ljava/lang/Integer;

.field private final configuration:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;

.field private final connected:Lin/dragonbra/javasteam/util/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lin/dragonbra/javasteam/util/event/EventHandler<",
            "Lin/dragonbra/javasteam/util/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private connection:Lin/dragonbra/javasteam/networking/steam3/Connection;

.field private final connectionLock:Ljava/lang/Object;

.field private debugNetworkListener:Lin/dragonbra/javasteam/util/IDebugNetworkListener;

.field private final disconnected:Lin/dragonbra/javasteam/util/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lin/dragonbra/javasteam/util/event/EventHandler<",
            "Lin/dragonbra/javasteam/networking/steam3/DisconnectedEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private expectDisconnection:Z

.field private final heartBeatFunc:Lin/dragonbra/javasteam/util/event/ScheduledFunction;

.field private ipCountryCode:Ljava/lang/String;

.field private isConnected:Z

.field private final netMsgReceived:Lin/dragonbra/javasteam/util/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lin/dragonbra/javasteam/util/event/EventHandler<",
            "Lin/dragonbra/javasteam/networking/steam3/NetMsgEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private publicIP:Ljava/net/InetAddress;

.field private sessionID:Ljava/lang/Integer;

.field private sessionToken:J

.field private steamID:Lin/dragonbra/javasteam/types/SteamID;


# direct methods
.method public static synthetic $r8$lambda$NVaclNG3C2RCUNYD0_6YaEMULEY(Lin/dragonbra/javasteam/steam/CMClient;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/CMClient;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$Qm41l2Yi234PF5S3JfXX4RuHG8g(Lin/dragonbra/javasteam/steam/CMClient;Ljava/lang/Object;Lin/dragonbra/javasteam/util/event/EventArgs;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lin/dragonbra/javasteam/steam/CMClient;->lambda$new$1(Ljava/lang/Object;Lin/dragonbra/javasteam/util/event/EventArgs;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qzPiSSlZ0WomonlEGUYxHvp_aCM(Lin/dragonbra/javasteam/steam/CMClient;Ljava/lang/Object;Lin/dragonbra/javasteam/networking/steam3/NetMsgEventArgs;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lin/dragonbra/javasteam/steam/CMClient;->lambda$new$0(Ljava/lang/Object;Lin/dragonbra/javasteam/networking/steam3/NetMsgEventArgs;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetconnected(Lin/dragonbra/javasteam/steam/CMClient;)Lin/dragonbra/javasteam/util/event/EventHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/CMClient;->connected:Lin/dragonbra/javasteam/util/event/EventHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetconnection(Lin/dragonbra/javasteam/steam/CMClient;)Lin/dragonbra/javasteam/networking/steam3/Connection;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/CMClient;->connection:Lin/dragonbra/javasteam/networking/steam3/Connection;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetexpectDisconnection(Lin/dragonbra/javasteam/steam/CMClient;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/CMClient;->expectDisconnection:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetheartBeatFunc(Lin/dragonbra/javasteam/steam/CMClient;)Lin/dragonbra/javasteam/util/event/ScheduledFunction;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/CMClient;->heartBeatFunc:Lin/dragonbra/javasteam/util/event/ScheduledFunction;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetnetMsgReceived(Lin/dragonbra/javasteam/steam/CMClient;)Lin/dragonbra/javasteam/util/event/EventHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/CMClient;->netMsgReceived:Lin/dragonbra/javasteam/util/event/EventHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputconnection(Lin/dragonbra/javasteam/steam/CMClient;Lin/dragonbra/javasteam/networking/steam3/Connection;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/CMClient;->connection:Lin/dragonbra/javasteam/networking/steam3/Connection;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputisConnected(Lin/dragonbra/javasteam/steam/CMClient;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lin/dragonbra/javasteam/steam/CMClient;->isConnected:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputsessionID(Lin/dragonbra/javasteam/steam/CMClient;Ljava/lang/Integer;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/CMClient;->sessionID:Ljava/lang/Integer;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputsteamID(Lin/dragonbra/javasteam/steam/CMClient;Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/CMClient;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetlogger()Lin/dragonbra/javasteam/util/log/Logger;
    .registers 1

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/steam/CMClient;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 44
    const-class v0, Lin/dragonbra/javasteam/steam/CMClient;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/steam/CMClient;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;)V
    .registers 5

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/CMClient;->connectionLock:Ljava/lang/Object;

    .line 79
    new-instance v0, Lin/dragonbra/javasteam/steam/CMClient$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lin/dragonbra/javasteam/steam/CMClient$$ExternalSyntheticLambda0;-><init>(Lin/dragonbra/javasteam/steam/CMClient;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/CMClient;->netMsgReceived:Lin/dragonbra/javasteam/util/event/EventHandler;

    .line 81
    new-instance v0, Lin/dragonbra/javasteam/steam/CMClient$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lin/dragonbra/javasteam/steam/CMClient$$ExternalSyntheticLambda1;-><init>(Lin/dragonbra/javasteam/steam/CMClient;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/CMClient;->connected:Lin/dragonbra/javasteam/util/event/EventHandler;

    .line 96
    new-instance v0, Lin/dragonbra/javasteam/steam/CMClient$1;

    invoke-direct {v0, p0}, Lin/dragonbra/javasteam/steam/CMClient$1;-><init>(Lin/dragonbra/javasteam/steam/CMClient;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/CMClient;->disconnected:Lin/dragonbra/javasteam/util/event/EventHandler;

    if-eqz p1, :cond_32

    .line 127
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/CMClient;->configuration:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;

    .line 129
    new-instance p1, Lin/dragonbra/javasteam/util/event/ScheduledFunction;

    new-instance v0, Lin/dragonbra/javasteam/steam/CMClient$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lin/dragonbra/javasteam/steam/CMClient$$ExternalSyntheticLambda2;-><init>(Lin/dragonbra/javasteam/steam/CMClient;)V

    const-wide/16 v1, 0x1388

    invoke-direct {p1, v0, v1, v2}, Lin/dragonbra/javasteam/util/event/ScheduledFunction;-><init>(Ljava/lang/Runnable;J)V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/CMClient;->heartBeatFunc:Lin/dragonbra/javasteam/util/event/ScheduledFunction;

    return-void

    .line 124
    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "configuration is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createConnection(Ljava/util/EnumSet;)Lin/dragonbra/javasteam/networking/steam3/Connection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;",
            ">;)",
            "Lin/dragonbra/javasteam/networking/steam3/Connection;"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/CMClient;->configuration:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->getConnectionFactory()Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;

    move-result-object v0

    .line 322
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/CMClient;->configuration:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;

    invoke-interface {v0, p0, p1}, Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;->createConnection(Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;Ljava/util/EnumSet;)Lin/dragonbra/javasteam/networking/steam3/Connection;

    move-result-object p0

    if-eqz p0, :cond_f

    return-object p0

    .line 324
    :cond_f
    sget-object p0, Lin/dragonbra/javasteam/steam/CMClient;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v0, "Connection factory returned null connection for protocols %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/String;)V

    .line 325
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Connection factory returned null connection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private disconnect(Z)V
    .registers 4

    .line 214
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/CMClient;->connectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_3
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/CMClient;->heartBeatFunc:Lin/dragonbra/javasteam/util/event/ScheduledFunction;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/util/event/ScheduledFunction;->stop()V

    .line 217
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/CMClient;->connection:Lin/dragonbra/javasteam/networking/steam3/Connection;

    if-eqz p0, :cond_12

    .line 218
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/Connection;->disconnect(Z)V

    goto :goto_12

    :catchall_10
    move-exception p0

    goto :goto_14

    .line 220
    :cond_12
    :goto_12
    monitor-exit v0

    return-void

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_10

    throw p0
.end method

.method public static getPacketMsg([B)Lin/dragonbra/javasteam/base/IPacketMsg;
    .registers 12

    .line 331
    array-length v0, p0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_29

    .line 332
    sget-object v0, Lin/dragonbra/javasteam/steam/CMClient;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    array-length v1, p0

    invoke-static {p0}, Lin/dragonbra/javasteam/util/Strings;->toHex([B)Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PacketMsg too small to contain a message, was only "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes. Message: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    return-object v2

    :cond_29
    const/4 v0, 0x0

    .line 337
    :try_start_2a
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-virtual {v1, p0}, Lokio/Buffer;->write([B)Lokio/Buffer;

    move-result-object v1
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_33} :catch_3b

    .line 338
    :try_start_33
    invoke-virtual {v1}, Lokio/Buffer;->readIntLe()I

    move-result v0
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_3d

    .line 339
    :try_start_37
    invoke-virtual {v1}, Lokio/Buffer;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_50

    :catch_3b
    move-exception v1

    goto :goto_49

    :catchall_3d
    move-exception v3

    if-eqz v1, :cond_48

    .line 337
    :try_start_40
    invoke-virtual {v1}, Lokio/Buffer;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_48

    :catchall_44
    move-exception v1

    :try_start_45
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_48
    :goto_48
    throw v3
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_49} :catch_3b

    .line 340
    :goto_49
    sget-object v3, Lin/dragonbra/javasteam/steam/CMClient;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v4, "Exception while getting EMsg code"

    invoke-virtual {v3, v4, v1}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 342
    :goto_50
    invoke-static {v0}, Lin/dragonbra/javasteam/util/MsgUtil;->getMsg(I)Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object v1

    .line 344
    sget-object v3, Lin/dragonbra/javasteam/steam/CMClient$2;->$SwitchMap$in$dragonbra$javasteam$enums$EMsg:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x6

    const-string v5, ")."

    const-string v6, " ("

    const-string v7, "Exception deserializing emsg "

    if-eq v3, v4, :cond_6d

    const/4 v4, 0x7

    if-eq v3, v4, :cond_6d

    const/16 v4, 0x8

    if-eq v3, v4, :cond_6d

    goto :goto_99

    .line 349
    :cond_6d
    :try_start_6d
    new-instance v3, Lin/dragonbra/javasteam/base/PacketMsg;

    invoke-direct {v3, v1, p0}, Lin/dragonbra/javasteam/base/PacketMsg;-><init>(Lin/dragonbra/javasteam/enums/EMsg;[B)V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_72} :catch_73

    return-object v3

    :catch_73
    move-exception v3

    .line 351
    sget-object v4, Lin/dragonbra/javasteam/steam/CMClient;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0}, Lin/dragonbra/javasteam/util/MsgUtil;->isProtoBuf(I)Z

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v3}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 356
    :goto_99
    :try_start_99
    invoke-static {v0}, Lin/dragonbra/javasteam/util/MsgUtil;->isProtoBuf(I)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 358
    new-instance v3, Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;

    invoke-direct {v3, v1, p0}, Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;-><init>(Lin/dragonbra/javasteam/enums/EMsg;[B)V

    return-object v3

    :catch_a5
    move-exception p0

    goto :goto_ad

    .line 360
    :cond_a7
    new-instance v3, Lin/dragonbra/javasteam/base/PacketClientMsg;

    invoke-direct {v3, v1, p0}, Lin/dragonbra/javasteam/base/PacketClientMsg;-><init>(Lin/dragonbra/javasteam/enums/EMsg;[B)V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_ac} :catch_a5

    return-object v3

    .line 363
    :goto_ad
    sget-object v3, Lin/dragonbra/javasteam/steam/CMClient;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lin/dragonbra/javasteam/util/MsgUtil;->isProtoBuf(I)Z

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p0}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method private handleLogOnResponse(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 8

    .line 403
    invoke-interface {p1}, Lin/dragonbra/javasteam/base/IPacketMsg;->isProto()Z

    move-result v0

    if-nez v0, :cond_e

    .line 406
    sget-object p0, Lin/dragonbra/javasteam/steam/CMClient;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string p1, "Got non-proto logon response, this is indicative of no logon attempt after connecting."

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    return-void

    .line 410
    :cond_e
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse;

    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 412
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse$Builder;->getEresult()I

    move-result p1

    invoke-static {p1}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p1

    .line 413
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse$Builder;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse$Builder;->getEresultExtended()I

    move-result v1

    invoke-static {v1}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v1

    .line 414
    sget-object v2, Lin/dragonbra/javasteam/steam/CMClient;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleLogOnResponse got response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", extended: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    .line 418
    sget-object v1, Lin/dragonbra/javasteam/enums/EResult;->OK:Lin/dragonbra/javasteam/enums/EResult;

    if-ne p1, v1, :cond_c2

    .line 419
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getProtoHeader()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;->getClientSessionid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/CMClient;->sessionID:Ljava/lang/Integer;

    .line 420
    new-instance p1, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getProtoHeader()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;->getSteamid()J

    move-result-wide v1

    invoke-direct {p1, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/CMClient;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    .line 422
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse$Builder;->getCellId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/CMClient;->cellID:Ljava/lang/Integer;

    .line 423
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse$Builder;->getPublicIp()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgIPAddress;

    move-result-object p1

    invoke-static {p1}, Lin/dragonbra/javasteam/util/NetHelpers;->getIPAddress(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgIPAddress;)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/CMClient;->publicIP:Ljava/net/InetAddress;

    .line 424
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse$Builder;->getIpCountryCode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/CMClient;->ipCountryCode:Ljava/lang/String;

    .line 427
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/CMClient;->heartBeatFunc:Lin/dragonbra/javasteam/util/event/ScheduledFunction;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/event/ScheduledFunction;->stop()V

    .line 428
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/CMClient;->heartBeatFunc:Lin/dragonbra/javasteam/util/event/ScheduledFunction;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse$Builder;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLogonResponse$Builder;->getLegacyOutOfGameHeartbeatSeconds()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lin/dragonbra/javasteam/util/event/ScheduledFunction;->setDelay(J)V

    .line 429
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/CMClient;->heartBeatFunc:Lin/dragonbra/javasteam/util/event/ScheduledFunction;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/event/ScheduledFunction;->start()V

    goto :goto_e5

    .line 430
    :cond_c2
    sget-object v0, Lin/dragonbra/javasteam/enums/EResult;->TryAnotherCM:Lin/dragonbra/javasteam/enums/EResult;

    if-eq p1, v0, :cond_ca

    sget-object v0, Lin/dragonbra/javasteam/enums/EResult;->ServiceUnavailable:Lin/dragonbra/javasteam/enums/EResult;

    if-ne p1, v0, :cond_e5

    .line 431
    :cond_ca
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/CMClient;->connection:Lin/dragonbra/javasteam/networking/steam3/Connection;

    if-eqz p1, :cond_e0

    .line 433
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/CMClient;->getServers()Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;

    move-result-object p0

    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/Connection;->getCurrentEndPoint()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/Connection;->getProtocolTypes()Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    move-result-object p1

    sget-object v1, Lin/dragonbra/javasteam/steam/discovery/ServerQuality;->BAD:Lin/dragonbra/javasteam/steam/discovery/ServerQuality;

    invoke-virtual {p0, v0, p1, v1}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->tryMark(Ljava/net/InetSocketAddress;Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;Lin/dragonbra/javasteam/steam/discovery/ServerQuality;)Z

    goto :goto_e5

    .line 435
    :cond_e0
    const-string p0, "Connection was null trying to mark endpoint bad."

    invoke-virtual {v2, p0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/String;)V

    :cond_e5
    :goto_e5
    return-void
.end method

.method private handleLoggedOff(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 6

    const/4 v0, 0x0

    .line 441
    iput-object v0, p0, Lin/dragonbra/javasteam/steam/CMClient;->sessionID:Ljava/lang/Integer;

    .line 442
    iput-object v0, p0, Lin/dragonbra/javasteam/steam/CMClient;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    .line 444
    iput-object v0, p0, Lin/dragonbra/javasteam/steam/CMClient;->cellID:Ljava/lang/Integer;

    .line 445
    iput-object v0, p0, Lin/dragonbra/javasteam/steam/CMClient;->publicIP:Ljava/net/InetAddress;

    .line 446
    iput-object v0, p0, Lin/dragonbra/javasteam/steam/CMClient;->ipCountryCode:Ljava/lang/String;

    .line 448
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/CMClient;->heartBeatFunc:Lin/dragonbra/javasteam/util/event/ScheduledFunction;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/event/ScheduledFunction;->stop()V

    .line 450
    invoke-interface {p1}, Lin/dragonbra/javasteam/base/IPacketMsg;->isProto()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 451
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLoggedOff;

    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 452
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLoggedOff$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientLoggedOff$Builder;->getEresult()I

    move-result p1

    invoke-static {p1}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p1

    .line 454
    sget-object v0, Lin/dragonbra/javasteam/steam/CMClient;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleLoggedOff got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    .line 456
    sget-object v1, Lin/dragonbra/javasteam/enums/EResult;->TryAnotherCM:Lin/dragonbra/javasteam/enums/EResult;

    if-eq p1, v1, :cond_4d

    sget-object v1, Lin/dragonbra/javasteam/enums/EResult;->ServiceUnavailable:Lin/dragonbra/javasteam/enums/EResult;

    if-ne p1, v1, :cond_87

    .line 457
    :cond_4d
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/CMClient;->connection:Lin/dragonbra/javasteam/networking/steam3/Connection;

    if-eqz p1, :cond_63

    .line 459
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/CMClient;->getServers()Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;

    move-result-object p0

    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/Connection;->getCurrentEndPoint()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/Connection;->getProtocolTypes()Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    move-result-object p1

    sget-object v1, Lin/dragonbra/javasteam/steam/discovery/ServerQuality;->BAD:Lin/dragonbra/javasteam/steam/discovery/ServerQuality;

    invoke-virtual {p0, v0, p1, v1}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->tryMark(Ljava/net/InetSocketAddress;Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;Lin/dragonbra/javasteam/steam/discovery/ServerQuality;)Z

    goto :goto_87

    .line 461
    :cond_63
    const-string p0, "Connection was null trying to mark endpoint bad."

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/String;)V

    goto :goto_87

    .line 465
    :cond_69
    sget-object p0, Lin/dragonbra/javasteam/steam/CMClient;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-interface {p1}, Lin/dragonbra/javasteam/base/IPacketMsg;->getMsgType()Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleLoggedOff got unexpected response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    :cond_87
    :goto_87
    return-void
.end method

.method private handleMulti(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 5

    .line 369
    invoke-interface {p1}, Lin/dragonbra/javasteam/base/IPacketMsg;->isProto()Z

    move-result v0

    if-nez v0, :cond_e

    .line 370
    sget-object p0, Lin/dragonbra/javasteam/steam/CMClient;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string p1, "HandleMulti got non-proto MsgMulti!!"

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    return-void

    .line 374
    :cond_e
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgMulti;

    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 375
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgMulti$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgMulti$Builder;->getMessageBody()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    .line 377
    :try_start_23
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-virtual {v1, p1}, Lokio/Buffer;->write([B)Lokio/Buffer;

    move-result-object p1
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2c} :catch_68

    .line 380
    :try_start_2c
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgMulti$Builder;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgMulti$Builder;->getSizeUnzipped()I

    move-result v0

    if-lez v0, :cond_44

    .line 381
    new-instance v0, Lokio/GzipSource;

    invoke-direct {v0, p1}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0
    :try_end_41
    .catchall {:try_start_2c .. :try_end_41} :catchall_42

    goto :goto_45

    :catchall_42
    move-exception p0

    goto :goto_76

    :cond_44
    move-object v0, p1

    .line 388
    :cond_45
    :goto_45
    :try_start_45
    invoke-interface {v0}, Lokio/BufferedSource;->readIntLe()I

    move-result v1

    int-to-long v1, v1

    .line 389
    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->readByteArray(J)[B

    move-result-object v1

    .line 390
    invoke-static {v1}, Lin/dragonbra/javasteam/steam/CMClient;->getPacketMsg([B)Lin/dragonbra/javasteam/base/IPacketMsg;

    move-result-object v1

    .line 392
    invoke-virtual {p0, v1}, Lin/dragonbra/javasteam/steam/CMClient;->onClientMsgReceived(Lin/dragonbra/javasteam/base/IPacketMsg;)Z

    move-result v1

    if-nez v1, :cond_59

    goto :goto_5f

    .line 395
    :cond_59
    invoke-interface {v0}, Lokio/BufferedSource;->exhausted()Z

    move-result v1
    :try_end_5d
    .catchall {:try_start_45 .. :try_end_5d} :catchall_6a

    if-eqz v1, :cond_45

    .line 396
    :goto_5f
    :try_start_5f
    invoke-interface {v0}, Lokio/Source;->close()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_42

    if-eqz p1, :cond_88

    .line 397
    :try_start_64
    invoke-virtual {p1}, Lokio/Buffer;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_88

    :catch_68
    move-exception p0

    goto :goto_81

    :catchall_6a
    move-exception p0

    if-eqz v0, :cond_75

    .line 386
    :try_start_6d
    invoke-interface {v0}, Lokio/Source;->close()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_71

    goto :goto_75

    :catchall_71
    move-exception v0

    :try_start_72
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_75
    :goto_75
    throw p0
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_42

    :goto_76
    if-eqz p1, :cond_80

    .line 377
    :try_start_78
    invoke-virtual {p1}, Lokio/Buffer;->close()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_7c

    goto :goto_80

    :catchall_7c
    move-exception p1

    :try_start_7d
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_80
    :goto_80
    throw p0
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_81} :catch_68

    .line 398
    :goto_81
    sget-object p1, Lin/dragonbra/javasteam/steam/CMClient;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v0, "error in handleMulti()"

    invoke-virtual {p1, v0, p0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_88
    :goto_88
    return-void
.end method

.method private handleServerUnavailable(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 6

    .line 470
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsg;

    const-class v1, Lin/dragonbra/javasteam/generated/MsgClientServerUnavailable;

    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsg;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 472
    sget-object p1, Lin/dragonbra/javasteam/steam/CMClient;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/generated/MsgClientServerUnavailable;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/generated/MsgClientServerUnavailable;->getEServerTypeUnavailable()Lin/dragonbra/javasteam/enums/EServerType;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 473
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/generated/MsgClientServerUnavailable;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/generated/MsgClientServerUnavailable;->getEMsgSent()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EMsg;->from(I)Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A server of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "was not available for request: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 472
    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 475
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/CMClient;->disconnect(Z)V

    return-void
.end method

.method private handleSessionToken(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 4

    .line 479
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientSessionToken;

    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 481
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientSessionToken$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientSessionToken$Builder;->getToken()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/steam/CMClient;->sessionToken:J

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Object;Lin/dragonbra/javasteam/networking/steam3/NetMsgEventArgs;)V
    .registers 3

    .line 79
    invoke-virtual {p2}, Lin/dragonbra/javasteam/networking/steam3/NetMsgEventArgs;->getData()[B

    move-result-object p1

    invoke-static {p1}, Lin/dragonbra/javasteam/steam/CMClient;->getPacketMsg([B)Lin/dragonbra/javasteam/base/IPacketMsg;

    move-result-object p1

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/CMClient;->onClientMsgReceived(Lin/dragonbra/javasteam/base/IPacketMsg;)Z

    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/Object;Lin/dragonbra/javasteam/util/event/EventArgs;)V
    .registers 5

    .line 82
    sget-object p1, Lin/dragonbra/javasteam/steam/CMClient;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string p2, "EventHandler `connected` called"

    invoke-virtual {p1, p2}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/CMClient;->getServers()Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;

    move-result-object p1

    iget-object p2, p0, Lin/dragonbra/javasteam/steam/CMClient;->connection:Lin/dragonbra/javasteam/networking/steam3/Connection;

    invoke-virtual {p2}, Lin/dragonbra/javasteam/networking/steam3/Connection;->getCurrentEndPoint()Ljava/net/InetSocketAddress;

    move-result-object p2

    iget-object v0, p0, Lin/dragonbra/javasteam/steam/CMClient;->connection:Lin/dragonbra/javasteam/networking/steam3/Connection;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/networking/steam3/Connection;->getProtocolTypes()Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    move-result-object v0

    sget-object v1, Lin/dragonbra/javasteam/steam/discovery/ServerQuality;->GOOD:Lin/dragonbra/javasteam/steam/discovery/ServerQuality;

    invoke-virtual {p1, p2, v0, v1}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->tryMark(Ljava/net/InetSocketAddress;Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;Lin/dragonbra/javasteam/steam/discovery/ServerQuality;)Z

    const/4 p1, 0x1

    .line 86
    iput-boolean p1, p0, Lin/dragonbra/javasteam/steam/CMClient;->isConnected:Z

    .line 89
    :try_start_1f
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/CMClient;->onClientConnected()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_2f

    :catch_23
    move-exception p1

    .line 91
    sget-object p2, Lin/dragonbra/javasteam/steam/CMClient;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v0, "Unhandled exception after connecting: "

    invoke-virtual {p2, v0, p1}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 92
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/CMClient;->disconnect(Z)V

    :goto_2f
    return-void
.end method

.method private synthetic lambda$new$2()V
    .registers 4

    .line 130
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientHeartBeat;

    sget-object v2, Lin/dragonbra/javasteam/enums/EMsg;->ClientHeartBeat:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;)V

    .line 132
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientHeartBeat$Builder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientHeartBeat$Builder;->setSendReply(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientHeartBeat$Builder;

    .line 133
    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    return-void
.end method


# virtual methods
.method public connect()V
    .registers 2

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/CMClient;->connect(Lin/dragonbra/javasteam/steam/discovery/ServerRecord;)V

    return-void
.end method

.method public connect(Lin/dragonbra/javasteam/steam/discovery/ServerRecord;)V
    .registers 9

    .line 174
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/CMClient;->connectionLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 176
    :try_start_5
    invoke-direct {p0, v1}, Lin/dragonbra/javasteam/steam/CMClient;->disconnect(Z)V

    .line 180
    iput-boolean v2, p0, Lin/dragonbra/javasteam/steam/CMClient;->expectDisconnection:Z

    if-nez p1, :cond_1f

    .line 183
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/CMClient;->getServers()Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;

    move-result-object p1

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/CMClient;->configuration:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->getProtocolTypes()Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->getNextServerCandidate(Ljava/util/EnumSet;)Lin/dragonbra/javasteam/steam/discovery/ServerRecord;

    move-result-object p1

    goto :goto_1f

    :catchall_1b
    move-exception p0

    goto :goto_8d

    :catch_1d
    move-exception p1

    goto :goto_81

    :cond_1f
    :goto_1f
    if-nez p1, :cond_2d

    .line 187
    sget-object p1, Lin/dragonbra/javasteam/steam/CMClient;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v1, "No CM servers available to connect to"

    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0, v2}, Lin/dragonbra/javasteam/steam/CMClient;->onClientDisconnected(Z)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2b} :catch_1d
    .catchall {:try_start_5 .. :try_end_2b} :catchall_1b

    .line 189
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_1b

    return-void

    .line 192
    :cond_2d
    :try_start_2d
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->getProtocolTypes()Ljava/util/EnumSet;

    move-result-object v1

    invoke-direct {p0, v1}, Lin/dragonbra/javasteam/steam/CMClient;->createConnection(Ljava/util/EnumSet;)Lin/dragonbra/javasteam/networking/steam3/Connection;

    move-result-object v1

    iput-object v1, p0, Lin/dragonbra/javasteam/steam/CMClient;->connection:Lin/dragonbra/javasteam/networking/steam3/Connection;

    .line 193
    invoke-virtual {v1}, Lin/dragonbra/javasteam/networking/steam3/Connection;->getNetMsgReceived()Lin/dragonbra/javasteam/util/event/Event;

    move-result-object v1

    iget-object v3, p0, Lin/dragonbra/javasteam/steam/CMClient;->netMsgReceived:Lin/dragonbra/javasteam/util/event/EventHandler;

    invoke-virtual {v1, v3}, Lin/dragonbra/javasteam/util/event/Event;->addEventHandler(Lin/dragonbra/javasteam/util/event/EventHandler;)V

    .line 194
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/CMClient;->connection:Lin/dragonbra/javasteam/networking/steam3/Connection;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/networking/steam3/Connection;->getConnected()Lin/dragonbra/javasteam/util/event/Event;

    move-result-object v1

    iget-object v3, p0, Lin/dragonbra/javasteam/steam/CMClient;->connected:Lin/dragonbra/javasteam/util/event/EventHandler;

    invoke-virtual {v1, v3}, Lin/dragonbra/javasteam/util/event/Event;->addEventHandler(Lin/dragonbra/javasteam/util/event/EventHandler;)V

    .line 195
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/CMClient;->connection:Lin/dragonbra/javasteam/networking/steam3/Connection;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/networking/steam3/Connection;->getDisconnected()Lin/dragonbra/javasteam/util/event/Event;

    move-result-object v1

    iget-object v3, p0, Lin/dragonbra/javasteam/steam/CMClient;->disconnected:Lin/dragonbra/javasteam/util/event/EventHandler;

    invoke-virtual {v1, v3}, Lin/dragonbra/javasteam/util/event/Event;->addEventHandler(Lin/dragonbra/javasteam/util/event/EventHandler;)V

    .line 196
    sget-object v1, Lin/dragonbra/javasteam/steam/CMClient;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v3, "Connecting to %s with protocol %s, and with connection impl %s"

    .line 197
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->getEndpoint()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->getProtocolTypes()Ljava/util/EnumSet;

    move-result-object v5

    iget-object v6, p0, Lin/dragonbra/javasteam/steam/CMClient;->connection:Lin/dragonbra/javasteam/networking/steam3/Connection;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    .line 196
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/CMClient;->connection:Lin/dragonbra/javasteam/networking/steam3/Connection;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->getEndpoint()Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/networking/steam3/Connection;->connect(Ljava/net/InetSocketAddress;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_80} :catch_1d
    .catchall {:try_start_2d .. :try_end_80} :catchall_1b

    goto :goto_8b

    .line 200
    :goto_81
    :try_start_81
    sget-object v1, Lin/dragonbra/javasteam/steam/CMClient;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v3, "Failed to connect to Steam network"

    invoke-virtual {v1, v3, p1}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    invoke-virtual {p0, v2}, Lin/dragonbra/javasteam/steam/CMClient;->onClientDisconnected(Z)V

    .line 203
    :goto_8b
    monitor-exit v0

    return-void

    :goto_8d
    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_81 .. :try_end_8e} :catchall_1b

    throw p0
.end method

.method public disconnect()V
    .registers 2

    const/4 v0, 0x1

    .line 210
    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/steam/CMClient;->disconnect(Z)V

    return-void
.end method

.method public getCellID()Ljava/lang/Integer;
    .registers 1

    .line 582
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/CMClient;->cellID:Ljava/lang/Integer;

    return-object p0
.end method

.method public getConfiguration()Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;
    .registers 1

    .line 485
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/CMClient;->configuration:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;

    return-object p0
.end method

.method public getConnectionTimeout()J
    .registers 3

    .line 611
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/CMClient;->configuration:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->getConnectionTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentEndpoint()Ljava/net/InetSocketAddress;
    .registers 1

    .line 514
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/CMClient;->connection:Lin/dragonbra/javasteam/networking/steam3/Connection;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 518
    :cond_6
    invoke-virtual {p0}, Lin/dragonbra/javasteam/networking/steam3/Connection;->getCurrentEndPoint()Ljava/net/InetSocketAddress;

    move-result-object p0

    return-object p0
.end method

.method public getDebugNetworkListener()Lin/dragonbra/javasteam/util/IDebugNetworkListener;
    .registers 1

    .line 619
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/CMClient;->debugNetworkListener:Lin/dragonbra/javasteam/util/IDebugNetworkListener;

    return-object p0
.end method

.method public getIpCountryCode()Ljava/lang/String;
    .registers 1

    .line 538
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/CMClient;->ipCountryCode:Ljava/lang/String;

    return-object p0
.end method

.method public getLocalIP()Ljava/net/InetAddress;
    .registers 1

    .line 501
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/CMClient;->connection:Lin/dragonbra/javasteam/networking/steam3/Connection;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 505
    :cond_6
    invoke-virtual {p0}, Lin/dragonbra/javasteam/networking/steam3/Connection;->getLocalIP()Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method public getPublicIP()Ljava/net/InetAddress;
    .registers 1

    .line 528
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/CMClient;->publicIP:Ljava/net/InetAddress;

    return-object p0
.end method

.method public getServers()Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;
    .registers 1

    .line 492
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/CMClient;->configuration:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->getServerList()Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;

    move-result-object p0

    return-object p0
.end method

.method public getSessionID()Ljava/lang/Integer;
    .registers 1

    .line 592
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/CMClient;->sessionID:Ljava/lang/Integer;

    return-object p0
.end method

.method public getSessionToken()J
    .registers 3

    .line 574
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/CMClient;->sessionToken:J

    return-wide v0
.end method

.method public getSteamID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 602
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/CMClient;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public getUniverse()Lin/dragonbra/javasteam/enums/EUniverse;
    .registers 1

    .line 547
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/CMClient;->configuration:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->getUniverse()Lin/dragonbra/javasteam/enums/EUniverse;

    move-result-object p0

    return-object p0
.end method

.method public isConnected()Z
    .registers 1

    .line 556
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/CMClient;->isConnected:Z

    return p0
.end method

.method public isDisconnected()Z
    .registers 2

    .line 567
    iget-boolean v0, p0, Lin/dragonbra/javasteam/steam/CMClient;->isConnected:Z

    if-nez v0, :cond_a

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/CMClient;->connection:Lin/dragonbra/javasteam/networking/steam3/Connection;

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isExpectDisconnection()Z
    .registers 1

    .line 633
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/CMClient;->expectDisconnection:Z

    return p0
.end method

.method public onClientConnected()V
    .registers 4

    .line 306
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientHello;

    sget-object v2, Lin/dragonbra/javasteam/enums/EMsg;->ClientHello:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;)V

    .line 307
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientHello$Builder;

    const v2, 0x1002d

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientHello$Builder;->setProtocolVersion(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientHello$Builder;

    .line 309
    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    return-void
.end method

.method public onClientDisconnected(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public onClientMsgReceived(Lin/dragonbra/javasteam/base/IPacketMsg;)Z
    .registers 5

    if-nez p1, :cond_e

    .line 265
    sget-object p1, Lin/dragonbra/javasteam/steam/CMClient;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v0, "Packet message failed to parse, shutting down connection"

    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 266
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/CMClient;->disconnect(Z)V

    return p1

    .line 271
    :cond_e
    invoke-interface {p1}, Lin/dragonbra/javasteam/base/IPacketMsg;->getMsgType()Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object v0

    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->Multi:Lin/dragonbra/javasteam/enums/EMsg;

    if-eq v0, v1, :cond_2e

    .line 273
    :try_start_16
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/CMClient;->debugNetworkListener:Lin/dragonbra/javasteam/util/IDebugNetworkListener;

    if-eqz v0, :cond_2e

    .line 274
    invoke-interface {p1}, Lin/dragonbra/javasteam/base/IPacketMsg;->getMsgType()Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object v1

    invoke-interface {p1}, Lin/dragonbra/javasteam/base/IPacketMsg;->getData()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lin/dragonbra/javasteam/util/IDebugNetworkListener;->onIncomingNetworkMessage(Lin/dragonbra/javasteam/enums/EMsg;[B)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_25} :catch_26

    goto :goto_2e

    :catch_26
    move-exception v0

    .line 277
    sget-object v1, Lin/dragonbra/javasteam/steam/CMClient;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v2, "debugNetworkListener threw an exception"

    invoke-virtual {v1, v2, v0}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 281
    :cond_2e
    :goto_2e
    sget-object v0, Lin/dragonbra/javasteam/steam/CMClient$2;->$SwitchMap$in$dragonbra$javasteam$enums$EMsg:[I

    invoke-interface {p1}, Lin/dragonbra/javasteam/base/IPacketMsg;->getMsgType()Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_56

    const/4 v2, 0x3

    if-eq v0, v2, :cond_52

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4e

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4a

    goto :goto_5d

    .line 295
    :cond_4a
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/CMClient;->handleSessionToken(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_5d

    .line 292
    :cond_4e
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/CMClient;->handleServerUnavailable(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_5d

    .line 289
    :cond_52
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/CMClient;->handleLoggedOff(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_5d

    .line 286
    :cond_56
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/CMClient;->handleLogOnResponse(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_5d

    .line 283
    :cond_5a
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/CMClient;->handleMulti(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    :goto_5d
    return v1
.end method

.method public receiveTestPacketMsg(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 2

    .line 142
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/CMClient;->onClientMsgReceived(Lin/dragonbra/javasteam/base/IPacketMsg;)Z

    return-void
.end method

.method public send(Lin/dragonbra/javasteam/base/IClientMsg;)V
    .registers 5

    if-eqz p1, :cond_38

    .line 234
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/CMClient;->sessionID:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    .line 237
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lin/dragonbra/javasteam/base/IClientMsg;->setSessionID(I)V

    .line 240
    :cond_d
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/CMClient;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    if-eqz v0, :cond_14

    .line 243
    invoke-interface {p1, v0}, Lin/dragonbra/javasteam/base/IClientMsg;->setSteamID(Lin/dragonbra/javasteam/types/SteamID;)V

    .line 247
    :cond_14
    :try_start_14
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/CMClient;->debugNetworkListener:Lin/dragonbra/javasteam/util/IDebugNetworkListener;

    if-eqz v0, :cond_2c

    .line 248
    invoke-interface {p1}, Lin/dragonbra/javasteam/base/IClientMsg;->getMsgType()Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object v1

    invoke-interface {p1}, Lin/dragonbra/javasteam/base/IClientMsg;->serialize()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lin/dragonbra/javasteam/util/IDebugNetworkListener;->onOutgoingNetworkMessage(Lin/dragonbra/javasteam/enums/EMsg;[B)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_23} :catch_24

    goto :goto_2c

    :catch_24
    move-exception v0

    .line 251
    sget-object v1, Lin/dragonbra/javasteam/steam/CMClient;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v2, "DebugNetworkListener threw an exception"

    invoke-virtual {v1, v2, v0}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    :cond_2c
    :goto_2c
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/CMClient;->connection:Lin/dragonbra/javasteam/networking/steam3/Connection;

    if-eqz p0, :cond_37

    .line 259
    invoke-interface {p1}, Lin/dragonbra/javasteam/base/IClientMsg;->serialize()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/Connection;->send([B)V

    :cond_37
    return-void

    .line 231
    :cond_38
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A value for \'msg\' must be supplied"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDebugNetworkListener(Lin/dragonbra/javasteam/util/IDebugNetworkListener;)V
    .registers 2

    .line 629
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/CMClient;->debugNetworkListener:Lin/dragonbra/javasteam/util/IDebugNetworkListener;

    return-void
.end method

.method public setExpectDisconnection(Z)V
    .registers 2

    .line 637
    iput-boolean p1, p0, Lin/dragonbra/javasteam/steam/CMClient;->expectDisconnection:Z

    return-void
.end method

.method public setIsConnected(Z)V
    .registers 2

    .line 150
    iput-boolean p1, p0, Lin/dragonbra/javasteam/steam/CMClient;->isConnected:Z

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.CMClient.AnonymousClass1 (in.dragonbra.javasteam.steam.CMClient$1)
.class Lin/dragonbra/javasteam/steam/CMClient$1;
.super Ljava/lang/Object;
.source "CMClient.java"

# interfaces
.implements Lin/dragonbra/javasteam/util/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/CMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lin/dragonbra/javasteam/util/event/EventHandler<",
        "Lin/dragonbra/javasteam/networking/steam3/DisconnectedEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lin/dragonbra/javasteam/steam/CMClient;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/CMClient;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/CMClient$1;->this$0:Lin/dragonbra/javasteam/steam/CMClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEvent(Ljava/lang/Object;Lin/dragonbra/javasteam/networking/steam3/DisconnectedEventArgs;)V
    .registers 7

    .line 99
    invoke-static {}, Lin/dragonbra/javasteam/steam/CMClient;->-$$Nest$sfgetlogger()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object p1

    invoke-virtual {p2}, Lin/dragonbra/javasteam/networking/steam3/DisconnectedEventArgs;->isUserInitiated()Z

    move-result v0

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/CMClient$1;->this$0:Lin/dragonbra/javasteam/steam/CMClient;

    invoke-static {v1}, Lin/dragonbra/javasteam/steam/CMClient;->-$$Nest$fgetexpectDisconnection(Lin/dragonbra/javasteam/steam/CMClient;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EventHandler `disconnected` called. User Initiated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", Expected Disconnection: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/CMClient$1;->this$0:Lin/dragonbra/javasteam/steam/CMClient;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lin/dragonbra/javasteam/steam/CMClient;->-$$Nest$fputisConnected(Lin/dragonbra/javasteam/steam/CMClient;Z)V

    .line 104
    invoke-virtual {p2}, Lin/dragonbra/javasteam/networking/steam3/DisconnectedEventArgs;->isUserInitiated()Z

    move-result p1

    if-nez p1, :cond_5d

    iget-object p1, p0, Lin/dragonbra/javasteam/steam/CMClient$1;->this$0:Lin/dragonbra/javasteam/steam/CMClient;

    invoke-static {p1}, Lin/dragonbra/javasteam/steam/CMClient;->-$$Nest$fgetexpectDisconnection(Lin/dragonbra/javasteam/steam/CMClient;)Z

    move-result p1

    if-nez p1, :cond_5d

    .line 105
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/CMClient$1;->this$0:Lin/dragonbra/javasteam/steam/CMClient;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/CMClient;->getServers()Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;

    move-result-object p1

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/CMClient$1;->this$0:Lin/dragonbra/javasteam/steam/CMClient;

    invoke-static {v1}, Lin/dragonbra/javasteam/steam/CMClient;->-$$Nest$fgetconnection(Lin/dragonbra/javasteam/steam/CMClient;)Lin/dragonbra/javasteam/networking/steam3/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/networking/steam3/Connection;->getCurrentEndPoint()Ljava/net/InetSocketAddress;

    move-result-object v1

    iget-object v2, p0, Lin/dragonbra/javasteam/steam/CMClient$1;->this$0:Lin/dragonbra/javasteam/steam/CMClient;

    invoke-static {v2}, Lin/dragonbra/javasteam/steam/CMClient;->-$$Nest$fgetconnection(Lin/dragonbra/javasteam/steam/CMClient;)Lin/dragonbra/javasteam/networking/steam3/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lin/dragonbra/javasteam/networking/steam3/Connection;->getProtocolTypes()Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    move-result-object v2

    sget-object v3, Lin/dragonbra/javasteam/steam/discovery/ServerQuality;->BAD:Lin/dragonbra/javasteam/steam/discovery/ServerQuality;

    invoke-virtual {p1, v1, v2, v3}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->tryMark(Ljava/net/InetSocketAddress;Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;Lin/dragonbra/javasteam/steam/discovery/ServerQuality;)Z

    .line 108
    :cond_5d
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/CMClient$1;->this$0:Lin/dragonbra/javasteam/steam/CMClient;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lin/dragonbra/javasteam/steam/CMClient;->-$$Nest$fputsessionID(Lin/dragonbra/javasteam/steam/CMClient;Ljava/lang/Integer;)V

    .line 109
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/CMClient$1;->this$0:Lin/dragonbra/javasteam/steam/CMClient;

    invoke-static {p1, v1}, Lin/dragonbra/javasteam/steam/CMClient;->-$$Nest$fputsteamID(Lin/dragonbra/javasteam/steam/CMClient;Lin/dragonbra/javasteam/types/SteamID;)V

    .line 111
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/CMClient$1;->this$0:Lin/dragonbra/javasteam/steam/CMClient;

    invoke-static {p1}, Lin/dragonbra/javasteam/steam/CMClient;->-$$Nest$fgetconnection(Lin/dragonbra/javasteam/steam/CMClient;)Lin/dragonbra/javasteam/networking/steam3/Connection;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/Connection;->getNetMsgReceived()Lin/dragonbra/javasteam/util/event/Event;

    move-result-object p1

    iget-object v2, p0, Lin/dragonbra/javasteam/steam/CMClient$1;->this$0:Lin/dragonbra/javasteam/steam/CMClient;

    invoke-static {v2}, Lin/dragonbra/javasteam/steam/CMClient;->-$$Nest$fgetnetMsgReceived(Lin/dragonbra/javasteam/steam/CMClient;)Lin/dragonbra/javasteam/util/event/EventHandler;

    move-result-object v2

    invoke-virtual {p1, v2}, Lin/dragonbra/javasteam/util/event/Event;->removeEventHandler(Lin/dragonbra/javasteam/util/event/EventHandler;)V

    .line 112
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/CMClient$1;->this$0:Lin/dragonbra/javasteam/steam/CMClient;

    invoke-static {p1}, Lin/dragonbra/javasteam/steam/CMClient;->-$$Nest$fgetconnection(Lin/dragonbra/javasteam/steam/CMClient;)Lin/dragonbra/javasteam/networking/steam3/Connection;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/Connection;->getConnected()Lin/dragonbra/javasteam/util/event/Event;

    move-result-object p1

    iget-object v2, p0, Lin/dragonbra/javasteam/steam/CMClient$1;->this$0:Lin/dragonbra/javasteam/steam/CMClient;

    invoke-static {v2}, Lin/dragonbra/javasteam/steam/CMClient;->-$$Nest$fgetconnected(Lin/dragonbra/javasteam/steam/CMClient;)Lin/dragonbra/javasteam/util/event/EventHandler;

    move-result-object v2

    invoke-virtual {p1, v2}, Lin/dragonbra/javasteam/util/event/Event;->removeEventHandler(Lin/dragonbra/javasteam/util/event/EventHandler;)V

    .line 113
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/CMClient$1;->this$0:Lin/dragonbra/javasteam/steam/CMClient;

    invoke-static {p1}, Lin/dragonbra/javasteam/steam/CMClient;->-$$Nest$fgetconnection(Lin/dragonbra/javasteam/steam/CMClient;)Lin/dragonbra/javasteam/networking/steam3/Connection;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/Connection;->getDisconnected()Lin/dragonbra/javasteam/util/event/Event;

    move-result-object p1

    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/util/event/Event;->removeEventHandler(Lin/dragonbra/javasteam/util/event/EventHandler;)V

    .line 114
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/CMClient$1;->this$0:Lin/dragonbra/javasteam/steam/CMClient;

    invoke-static {p1, v1}, Lin/dragonbra/javasteam/steam/CMClient;->-$$Nest$fputconnection(Lin/dragonbra/javasteam/steam/CMClient;Lin/dragonbra/javasteam/networking/steam3/Connection;)V

    .line 116
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/CMClient$1;->this$0:Lin/dragonbra/javasteam/steam/CMClient;

    invoke-static {p1}, Lin/dragonbra/javasteam/steam/CMClient;->-$$Nest$fgetheartBeatFunc(Lin/dragonbra/javasteam/steam/CMClient;)Lin/dragonbra/javasteam/util/event/ScheduledFunction;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/event/ScheduledFunction;->stop()V

    .line 118
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/CMClient$1;->this$0:Lin/dragonbra/javasteam/steam/CMClient;

    invoke-virtual {p2}, Lin/dragonbra/javasteam/networking/steam3/DisconnectedEventArgs;->isUserInitiated()Z

    move-result p2

    if-nez p2, :cond_b9

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/CMClient$1;->this$0:Lin/dragonbra/javasteam/steam/CMClient;

    invoke-static {p0}, Lin/dragonbra/javasteam/steam/CMClient;->-$$Nest$fgetexpectDisconnection(Lin/dragonbra/javasteam/steam/CMClient;)Z

    move-result p0

    if-eqz p0, :cond_ba

    :cond_b9
    const/4 v0, 0x1

    :cond_ba
    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/steam/CMClient;->onClientDisconnected(Z)V

    return-void
.end method

.method public bridge synthetic handleEvent(Ljava/lang/Object;Lin/dragonbra/javasteam/util/event/EventArgs;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 96
    check-cast p2, Lin/dragonbra/javasteam/networking/steam3/DisconnectedEventArgs;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/CMClient$1;->handleEvent(Ljava/lang/Object;Lin/dragonbra/javasteam/networking/steam3/DisconnectedEventArgs;)V

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.CMClient.AnonymousClass2 (in.dragonbra.javasteam.steam.CMClient$2)
.class synthetic Lin/dragonbra/javasteam/steam/CMClient$2;
.super Ljava/lang/Object;
.source "CMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/CMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$in$dragonbra$javasteam$enums$EMsg:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 281
    invoke-static {}, Lin/dragonbra/javasteam/enums/EMsg;->values()[Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lin/dragonbra/javasteam/steam/CMClient$2;->$SwitchMap$in$dragonbra$javasteam$enums$EMsg:[I

    :try_start_9
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->Multi:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lin/dragonbra/javasteam/steam/CMClient$2;->$SwitchMap$in$dragonbra$javasteam$enums$EMsg:[I

    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientLogOnResponse:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lin/dragonbra/javasteam/steam/CMClient$2;->$SwitchMap$in$dragonbra$javasteam$enums$EMsg:[I

    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientLoggedOff:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lin/dragonbra/javasteam/steam/CMClient$2;->$SwitchMap$in$dragonbra$javasteam$enums$EMsg:[I

    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientServerUnavailable:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lin/dragonbra/javasteam/steam/CMClient$2;->$SwitchMap$in$dragonbra$javasteam$enums$EMsg:[I

    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientSessionToken:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lin/dragonbra/javasteam/steam/CMClient$2;->$SwitchMap$in$dragonbra$javasteam$enums$EMsg:[I

    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ChannelEncryptRequest:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lin/dragonbra/javasteam/steam/CMClient$2;->$SwitchMap$in$dragonbra$javasteam$enums$EMsg:[I

    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ChannelEncryptResponse:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lin/dragonbra/javasteam/steam/CMClient$2;->$SwitchMap$in$dragonbra$javasteam$enums$EMsg:[I

    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ChannelEncryptResult:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    return-void
.end method

###### Class in.dragonbra.javasteam.steam.CMClient$$ExternalSyntheticLambda0 (in.dragonbra.javasteam.steam.CMClient$$ExternalSyntheticLambda0)
.class public final synthetic Lin/dragonbra/javasteam/steam/CMClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lin/dragonbra/javasteam/util/event/EventHandler;


# instance fields
.field public final synthetic f$0:Lin/dragonbra/javasteam/steam/CMClient;


# direct methods
.method public synthetic constructor <init>(Lin/dragonbra/javasteam/steam/CMClient;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/CMClient$$ExternalSyntheticLambda0;->f$0:Lin/dragonbra/javasteam/steam/CMClient;

    return-void
.end method


# virtual methods
.method public final handleEvent(Ljava/lang/Object;Lin/dragonbra/javasteam/util/event/EventArgs;)V
    .registers 3

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/CMClient$$ExternalSyntheticLambda0;->f$0:Lin/dragonbra/javasteam/steam/CMClient;

    check-cast p2, Lin/dragonbra/javasteam/networking/steam3/NetMsgEventArgs;

    invoke-static {p0, p1, p2}, Lin/dragonbra/javasteam/steam/CMClient;->$r8$lambda$qzPiSSlZ0WomonlEGUYxHvp_aCM(Lin/dragonbra/javasteam/steam/CMClient;Ljava/lang/Object;Lin/dragonbra/javasteam/networking/steam3/NetMsgEventArgs;)V

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.CMClient$$ExternalSyntheticLambda1 (in.dragonbra.javasteam.steam.CMClient$$ExternalSyntheticLambda1)
.class public final synthetic Lin/dragonbra/javasteam/steam/CMClient$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lin/dragonbra/javasteam/util/event/EventHandler;


# instance fields
.field public final synthetic f$0:Lin/dragonbra/javasteam/steam/CMClient;


# direct methods
.method public synthetic constructor <init>(Lin/dragonbra/javasteam/steam/CMClient;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/CMClient$$ExternalSyntheticLambda1;->f$0:Lin/dragonbra/javasteam/steam/CMClient;

    return-void
.end method


# virtual methods
.method public final handleEvent(Ljava/lang/Object;Lin/dragonbra/javasteam/util/event/EventArgs;)V
    .registers 3

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/CMClient$$ExternalSyntheticLambda1;->f$0:Lin/dragonbra/javasteam/steam/CMClient;

    invoke-static {p0, p1, p2}, Lin/dragonbra/javasteam/steam/CMClient;->$r8$lambda$Qm41l2Yi234PF5S3JfXX4RuHG8g(Lin/dragonbra/javasteam/steam/CMClient;Ljava/lang/Object;Lin/dragonbra/javasteam/util/event/EventArgs;)V

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.CMClient$$ExternalSyntheticLambda2 (in.dragonbra.javasteam.steam.CMClient$$ExternalSyntheticLambda2)
.class public final synthetic Lin/dragonbra/javasteam/steam/CMClient$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lin/dragonbra/javasteam/steam/CMClient;


# direct methods
.method public synthetic constructor <init>(Lin/dragonbra/javasteam/steam/CMClient;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/CMClient$$ExternalSyntheticLambda2;->f$0:Lin/dragonbra/javasteam/steam/CMClient;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/CMClient$$ExternalSyntheticLambda2;->f$0:Lin/dragonbra/javasteam/steam/CMClient;

    invoke-static {p0}, Lin/dragonbra/javasteam/steam/CMClient;->$r8$lambda$NVaclNG3C2RCUNYD0_6YaEMULEY(Lin/dragonbra/javasteam/steam/CMClient;)V

    return-void
.end method
