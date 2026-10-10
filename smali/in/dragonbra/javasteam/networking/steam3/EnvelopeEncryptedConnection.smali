###### Class in.dragonbra.javasteam.networking.steam3.EnvelopeEncryptedConnection (in.dragonbra.javasteam.networking.steam3.EnvelopeEncryptedConnection)
.class public Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;
.super Lin/dragonbra/javasteam/networking/steam3/Connection;
.source "EnvelopeEncryptedConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field private encryption:Lin/dragonbra/javasteam/networking/steam3/INetFilterEncryption;

.field private final inner:Lin/dragonbra/javasteam/networking/steam3/Connection;

.field private final onConnected:Lin/dragonbra/javasteam/util/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lin/dragonbra/javasteam/util/event/EventHandler<",
            "Lin/dragonbra/javasteam/util/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final onDisconnected:Lin/dragonbra/javasteam/util/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lin/dragonbra/javasteam/util/event/EventHandler<",
            "Lin/dragonbra/javasteam/networking/steam3/DisconnectedEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final onNetMsgReceived:Lin/dragonbra/javasteam/util/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lin/dragonbra/javasteam/util/event/EventHandler<",
            "Lin/dragonbra/javasteam/networking/steam3/NetMsgEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

.field private final universe:Lin/dragonbra/javasteam/enums/EUniverse;


# direct methods
.method public static bridge synthetic -$$Nest$fgetencryption(Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;)Lin/dragonbra/javasteam/networking/steam3/INetFilterEncryption;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->encryption:Lin/dragonbra/javasteam/networking/steam3/INetFilterEncryption;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetstate(Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;)Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->state:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputencryption(Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;Lin/dragonbra/javasteam/networking/steam3/INetFilterEncryption;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->encryption:Lin/dragonbra/javasteam/networking/steam3/INetFilterEncryption;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputstate(Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->state:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleEncryptRequest(Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->handleEncryptRequest(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleEncryptResult(Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->handleEncryptResult(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misExpectedEMsg(Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;Lin/dragonbra/javasteam/enums/EMsg;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->isExpectedEMsg(Lin/dragonbra/javasteam/enums/EMsg;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetlogger()Lin/dragonbra/javasteam/util/log/Logger;
    .registers 1

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 30
    const-class v0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/networking/steam3/Connection;Lin/dragonbra/javasteam/enums/EUniverse;)V
    .registers 6

    .line 84
    invoke-direct {p0}, Lin/dragonbra/javasteam/networking/steam3/Connection;-><init>()V

    .line 37
    new-instance v0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$1;

    invoke-direct {v0, p0}, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$1;-><init>(Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->onConnected:Lin/dragonbra/javasteam/util/event/EventHandler;

    .line 45
    new-instance v1, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$2;

    invoke-direct {v1, p0}, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$2;-><init>(Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;)V

    iput-object v1, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->onDisconnected:Lin/dragonbra/javasteam/util/event/EventHandler;

    .line 56
    new-instance v2, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$3;

    invoke-direct {v2, p0}, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$3;-><init>(Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;)V

    iput-object v2, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->onNetMsgReceived:Lin/dragonbra/javasteam/util/event/EventHandler;

    if-eqz p1, :cond_34

    .line 88
    iput-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->inner:Lin/dragonbra/javasteam/networking/steam3/Connection;

    .line 89
    iput-object p2, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->universe:Lin/dragonbra/javasteam/enums/EUniverse;

    .line 91
    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/Connection;->getNetMsgReceived()Lin/dragonbra/javasteam/util/event/Event;

    move-result-object p0

    invoke-virtual {p0, v2}, Lin/dragonbra/javasteam/util/event/Event;->addEventHandler(Lin/dragonbra/javasteam/util/event/EventHandler;)V

    .line 92
    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/Connection;->getConnected()Lin/dragonbra/javasteam/util/event/Event;

    move-result-object p0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/util/event/Event;->addEventHandler(Lin/dragonbra/javasteam/util/event/EventHandler;)V

    .line 93
    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/Connection;->getDisconnected()Lin/dragonbra/javasteam/util/event/Event;

    move-result-object p0

    invoke-virtual {p0, v1}, Lin/dragonbra/javasteam/util/event/Event;->addEventHandler(Lin/dragonbra/javasteam/util/event/EventHandler;)V

    return-void

    .line 86
    :cond_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "inner connection is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private handleEncryptRequest(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 11

    .line 97
    new-instance v0, Lin/dragonbra/javasteam/base/Msg;

    const-class v1, Lin/dragonbra/javasteam/generated/MsgChannelEncryptRequest;

    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/Msg;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 99
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/Msg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/generated/MsgChannelEncryptRequest;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgChannelEncryptRequest;->getUniverse()Lin/dragonbra/javasteam/enums/EUniverse;

    move-result-object p1

    .line 100
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/Msg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/generated/MsgChannelEncryptRequest;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/generated/MsgChannelEncryptRequest;->getProtocolVersion()I

    move-result v1

    int-to-long v1, v1

    .line 102
    sget-object v3, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got encryption request. Universe: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Protocol ver: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    const-wide/16 v5, 0x1

    cmp-long v5, v1, v5

    if-eqz v5, :cond_49

    .line 105
    const-string v5, "Encryption handshake protocol version mismatch!"

    invoke-virtual {v3, v5}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    .line 108
    :cond_49
    iget-object v5, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->universe:Lin/dragonbra/javasteam/enums/EUniverse;

    if-eq p1, v5, :cond_71

    .line 109
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected universe "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " but server reported universe "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    .line 113
    :cond_71
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AbstractMsgBase;->getPayload()Lin/dragonbra/javasteam/util/stream/MemoryStream;

    move-result-object v5

    invoke-virtual {v5}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->getLength()J

    move-result-wide v5

    const-wide/16 v7, 0x10

    cmp-long v5, v5, v7

    if-ltz v5, :cond_88

    .line 114
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AbstractMsgBase;->getPayload()Lin/dragonbra/javasteam/util/stream/MemoryStream;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->toByteArray()[B

    move-result-object v0

    goto :goto_89

    :cond_88
    const/4 v0, 0x0

    .line 117
    :goto_89
    invoke-static {p1}, Lin/dragonbra/javasteam/util/KeyDictionary;->getPublicKey(Lin/dragonbra/javasteam/enums/EUniverse;)[B

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_b1

    .line 120
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HandleEncryptRequest got request for invalid universe! Universe: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v6}, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->disconnect(Z)V

    .line 124
    :cond_b1
    new-instance p1, Lin/dragonbra/javasteam/base/Msg;

    const-class v1, Lin/dragonbra/javasteam/generated/MsgChannelEncryptResponse;

    invoke-direct {p1, v1}, Lin/dragonbra/javasteam/base/Msg;-><init>(Ljava/lang/Class;)V

    const/16 v1, 0x20

    .line 126
    invoke-static {v1}, Lin/dragonbra/javasteam/util/crypto/CryptoHelper;->generateRandomBlock(I)[B

    move-result-object v1

    .line 129
    new-instance v2, Lin/dragonbra/javasteam/util/crypto/RSACrypto;

    invoke-direct {v2, v5}, Lin/dragonbra/javasteam/util/crypto/RSACrypto;-><init>([B)V

    if-eqz v0, :cond_d8

    .line 132
    array-length v3, v1

    array-length v4, v0

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 134
    array-length v4, v1

    invoke-static {v1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    array-length v4, v1

    array-length v5, v0

    invoke-static {v0, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    invoke-virtual {v2, v3}, Lin/dragonbra/javasteam/util/crypto/RSACrypto;->encrypt([B)[B

    move-result-object v2

    goto :goto_dc

    .line 139
    :cond_d8
    invoke-virtual {v2, v1}, Lin/dragonbra/javasteam/util/crypto/RSACrypto;->encrypt([B)[B

    move-result-object v2

    .line 142
    :goto_dc
    invoke-static {v2}, Lin/dragonbra/javasteam/util/crypto/CryptoHelper;->crcHash([B)[B

    move-result-object v3

    .line 145
    :try_start_e0
    invoke-virtual {p1, v2}, Lin/dragonbra/javasteam/base/AbstractMsgBase;->writeBytes([B)V

    .line 146
    invoke-virtual {p1, v3}, Lin/dragonbra/javasteam/base/AbstractMsgBase;->writeBytes([B)V

    .line 147
    invoke-virtual {p1, v6}, Lin/dragonbra/javasteam/base/AbstractMsgBase;->writeInt(I)V
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e9} :catch_ea

    goto :goto_f0

    :catch_ea
    move-exception v2

    .line 149
    sget-object v3, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {v3, v2}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    :goto_f0
    if-eqz v0, :cond_fa

    .line 153
    new-instance v0, Lin/dragonbra/javasteam/networking/steam3/NetFilterEncryptionWithHMAC;

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/networking/steam3/NetFilterEncryptionWithHMAC;-><init>([B)V

    iput-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->encryption:Lin/dragonbra/javasteam/networking/steam3/INetFilterEncryption;

    goto :goto_101

    .line 155
    :cond_fa
    new-instance v0, Lin/dragonbra/javasteam/networking/steam3/NetFilterEncryption;

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/networking/steam3/NetFilterEncryption;-><init>([B)V

    iput-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->encryption:Lin/dragonbra/javasteam/networking/steam3/INetFilterEncryption;

    .line 158
    :goto_101
    sget-object v0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;->CHALLENGED:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

    iput-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->state:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

    .line 160
    invoke-virtual {p1}, Lin/dragonbra/javasteam/base/Msg;->serialize()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->send([B)V

    return-void
.end method

.method private handleEncryptResult(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 6

    .line 164
    new-instance v0, Lin/dragonbra/javasteam/base/Msg;

    const-class v1, Lin/dragonbra/javasteam/generated/MsgChannelEncryptResult;

    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/Msg;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 166
    sget-object p1, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/Msg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/generated/MsgChannelEncryptResult;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/generated/MsgChannelEncryptResult;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encryption result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/Msg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/generated/MsgChannelEncryptResult;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/generated/MsgChannelEncryptResult;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v0

    sget-object v1, Lin/dragonbra/javasteam/enums/EResult;->OK:Lin/dragonbra/javasteam/enums/EResult;

    if-ne v0, v1, :cond_49

    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->encryption:Lin/dragonbra/javasteam/networking/steam3/INetFilterEncryption;

    if-eqz v0, :cond_49

    .line 171
    sget-object p1, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;->ENCRYPTED:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

    iput-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->state:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

    .line 172
    iget-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/Connection;->connected:Lin/dragonbra/javasteam/util/event/Event;

    sget-object v0, Lin/dragonbra/javasteam/util/event/EventArgs;->EMPTY:Lin/dragonbra/javasteam/util/event/EventArgs;

    invoke-virtual {p1, p0, v0}, Lin/dragonbra/javasteam/util/event/Event;->handleEvent(Ljava/lang/Object;Lin/dragonbra/javasteam/util/event/EventArgs;)V

    goto :goto_52

    .line 174
    :cond_49
    const-string v0, "Encryption channel setup failed"

    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 175
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->disconnect(Z)V

    :goto_52
    return-void
.end method

.method private isExpectedEMsg(Lin/dragonbra/javasteam/enums/EMsg;)Z
    .registers 5

    .line 180
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->state:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_26

    const/4 v1, 0x1

    if-eq p0, v1, :cond_21

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1b

    const/4 p1, 0x3

    if-ne p0, p1, :cond_13

    return v1

    .line 190
    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unreachable - landed up in undefined state."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 186
    :cond_1b
    sget-object p0, Lin/dragonbra/javasteam/enums/EMsg;->ChannelEncryptResult:Lin/dragonbra/javasteam/enums/EMsg;

    if-ne p1, p0, :cond_20

    move v0, v1

    :cond_20
    return v0

    .line 184
    :cond_21
    sget-object p0, Lin/dragonbra/javasteam/enums/EMsg;->ChannelEncryptRequest:Lin/dragonbra/javasteam/enums/EMsg;

    if-ne p1, p0, :cond_26

    move v0, v1

    :cond_26
    return v0
.end method


# virtual methods
.method public connect(Ljava/net/InetSocketAddress;I)V
    .registers 3

    .line 196
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->inner:Lin/dragonbra/javasteam/networking/steam3/Connection;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/networking/steam3/Connection;->connect(Ljava/net/InetSocketAddress;I)V

    return-void
.end method

.method public disconnect(Z)V
    .registers 2

    .line 201
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->inner:Lin/dragonbra/javasteam/networking/steam3/Connection;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/Connection;->disconnect(Z)V

    return-void
.end method

.method public getCurrentEndPoint()Ljava/net/InetSocketAddress;
    .registers 1

    .line 220
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->inner:Lin/dragonbra/javasteam/networking/steam3/Connection;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/networking/steam3/Connection;->getCurrentEndPoint()Ljava/net/InetSocketAddress;

    move-result-object p0

    return-object p0
.end method

.method public getLocalIP()Ljava/net/InetAddress;
    .registers 1

    .line 215
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->inner:Lin/dragonbra/javasteam/networking/steam3/Connection;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/networking/steam3/Connection;->getLocalIP()Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method public getProtocolTypes()Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;
    .registers 1

    .line 225
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->inner:Lin/dragonbra/javasteam/networking/steam3/Connection;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/networking/steam3/Connection;->getProtocolTypes()Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    move-result-object p0

    return-object p0
.end method

.method public send([B)V
    .registers 4

    .line 206
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->state:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

    sget-object v1, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;->ENCRYPTED:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

    if-ne v0, v1, :cond_c

    .line 207
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->encryption:Lin/dragonbra/javasteam/networking/steam3/INetFilterEncryption;

    invoke-interface {v0, p1}, Lin/dragonbra/javasteam/networking/steam3/INetFilterEncryption;->processOutgoing([B)[B

    move-result-object p1

    .line 210
    :cond_c
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->inner:Lin/dragonbra/javasteam/networking/steam3/Connection;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/Connection;->send([B)V

    return-void
.end method

###### Class in.dragonbra.javasteam.networking.steam3.EnvelopeEncryptedConnection.AnonymousClass1 (in.dragonbra.javasteam.networking.steam3.EnvelopeEncryptedConnection$1)
.class Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$1;
.super Ljava/lang/Object;
.source "EnvelopeEncryptedConnection.java"

# interfaces
.implements Lin/dragonbra/javasteam/util/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lin/dragonbra/javasteam/util/event/EventHandler<",
        "Lin/dragonbra/javasteam/util/event/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$1;->this$0:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEvent(Ljava/lang/Object;Lin/dragonbra/javasteam/util/event/EventArgs;)V
    .registers 3

    .line 41
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$1;->this$0:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;

    sget-object p1, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;->CONNECTED:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

    invoke-static {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->-$$Nest$fputstate(Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;)V

    return-void
.end method

###### Class in.dragonbra.javasteam.networking.steam3.EnvelopeEncryptedConnection.AnonymousClass2 (in.dragonbra.javasteam.networking.steam3.EnvelopeEncryptedConnection$2)
.class Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$2;
.super Ljava/lang/Object;
.source "EnvelopeEncryptedConnection.java"

# interfaces
.implements Lin/dragonbra/javasteam/util/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;
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
.field final synthetic this$0:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$2;->this$0:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEvent(Ljava/lang/Object;Lin/dragonbra/javasteam/networking/steam3/DisconnectedEventArgs;)V
    .registers 4

    .line 49
    iget-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$2;->this$0:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;

    sget-object v0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;->DISCONNECTED:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

    invoke-static {p1, v0}, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->-$$Nest$fputstate(Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;)V

    .line 50
    iget-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$2;->this$0:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->-$$Nest$fputencryption(Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;Lin/dragonbra/javasteam/networking/steam3/INetFilterEncryption;)V

    .line 52
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$2;->this$0:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;

    iget-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/Connection;->disconnected:Lin/dragonbra/javasteam/util/event/Event;

    invoke-virtual {p1, p0, p2}, Lin/dragonbra/javasteam/util/event/Event;->handleEvent(Ljava/lang/Object;Lin/dragonbra/javasteam/util/event/EventArgs;)V

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

    .line 46
    check-cast p2, Lin/dragonbra/javasteam/networking/steam3/DisconnectedEventArgs;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$2;->handleEvent(Ljava/lang/Object;Lin/dragonbra/javasteam/networking/steam3/DisconnectedEventArgs;)V

    return-void
.end method

###### Class in.dragonbra.javasteam.networking.steam3.EnvelopeEncryptedConnection.AnonymousClass3 (in.dragonbra.javasteam.networking.steam3.EnvelopeEncryptedConnection$3)
.class Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$3;
.super Ljava/lang/Object;
.source "EnvelopeEncryptedConnection.java"

# interfaces
.implements Lin/dragonbra/javasteam/util/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lin/dragonbra/javasteam/util/event/EventHandler<",
        "Lin/dragonbra/javasteam/networking/steam3/NetMsgEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$3;->this$0:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEvent(Ljava/lang/Object;Lin/dragonbra/javasteam/networking/steam3/NetMsgEventArgs;)V
    .registers 4

    .line 60
    iget-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$3;->this$0:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;

    invoke-static {p1}, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->-$$Nest$fgetstate(Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;)Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

    move-result-object p1

    sget-object v0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;->ENCRYPTED:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

    if-ne p1, v0, :cond_24

    .line 61
    iget-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$3;->this$0:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;

    invoke-static {p1}, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->-$$Nest$fgetencryption(Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;)Lin/dragonbra/javasteam/networking/steam3/INetFilterEncryption;

    move-result-object p1

    invoke-virtual {p2}, Lin/dragonbra/javasteam/networking/steam3/NetMsgEventArgs;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lin/dragonbra/javasteam/networking/steam3/INetFilterEncryption;->processIncoming([B)[B

    move-result-object p1

    .line 62
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$3;->this$0:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;

    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/Connection;->netMsgReceived:Lin/dragonbra/javasteam/util/event/Event;

    invoke-virtual {p2, p1}, Lin/dragonbra/javasteam/networking/steam3/NetMsgEventArgs;->withData([B)Lin/dragonbra/javasteam/networking/steam3/NetMsgEventArgs;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lin/dragonbra/javasteam/util/event/Event;->handleEvent(Ljava/lang/Object;Lin/dragonbra/javasteam/util/event/EventArgs;)V

    return-void

    .line 66
    :cond_24
    invoke-virtual {p2}, Lin/dragonbra/javasteam/networking/steam3/NetMsgEventArgs;->getData()[B

    move-result-object p1

    invoke-static {p1}, Lin/dragonbra/javasteam/steam/CMClient;->getPacketMsg([B)Lin/dragonbra/javasteam/base/IPacketMsg;

    move-result-object p1

    .line 68
    iget-object p2, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$3;->this$0:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;

    invoke-interface {p1}, Lin/dragonbra/javasteam/base/IPacketMsg;->getMsgType()Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object v0

    invoke-static {p2, v0}, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->-$$Nest$misExpectedEMsg(Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;Lin/dragonbra/javasteam/enums/EMsg;)Z

    move-result p2

    if-nez p2, :cond_5e

    .line 69
    invoke-static {}, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->-$$Nest$sfgetlogger()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object p0

    invoke-interface {p1}, Lin/dragonbra/javasteam/base/IPacketMsg;->getMsgType()Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Rejected EMsg: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " during channel setup"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    return-void

    .line 73
    :cond_5e
    sget-object p2, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$4;->$SwitchMap$in$dragonbra$javasteam$enums$EMsg:[I

    invoke-interface {p1}, Lin/dragonbra/javasteam/base/IPacketMsg;->getMsgType()Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_77

    const/4 v0, 0x2

    if-eq p2, v0, :cond_71

    goto :goto_7c

    .line 78
    :cond_71
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$3;->this$0:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;

    invoke-static {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->-$$Nest$mhandleEncryptResult(Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_7c

    .line 75
    :cond_77
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$3;->this$0:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;

    invoke-static {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;->-$$Nest$mhandleEncryptRequest(Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    :goto_7c
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

    .line 57
    check-cast p2, Lin/dragonbra/javasteam/networking/steam3/NetMsgEventArgs;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$3;->handleEvent(Ljava/lang/Object;Lin/dragonbra/javasteam/networking/steam3/NetMsgEventArgs;)V

    return-void
.end method

###### Class in.dragonbra.javasteam.networking.steam3.EnvelopeEncryptedConnection.AnonymousClass4 (in.dragonbra.javasteam.networking.steam3.EnvelopeEncryptedConnection$4)
.class synthetic Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$4;
.super Ljava/lang/Object;
.source "EnvelopeEncryptedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;
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

    .line 73
    invoke-static {}, Lin/dragonbra/javasteam/enums/EMsg;->values()[Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$4;->$SwitchMap$in$dragonbra$javasteam$enums$EMsg:[I

    :try_start_9
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ChannelEncryptRequest:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$4;->$SwitchMap$in$dragonbra$javasteam$enums$EMsg:[I

    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ChannelEncryptResult:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method

###### Class in.dragonbra.javasteam.networking.steam3.EnvelopeEncryptedConnection.EncryptionState (in.dragonbra.javasteam.networking.steam3.EnvelopeEncryptedConnection$EncryptionState)
.class final enum Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;
.super Ljava/lang/Enum;
.source "EnvelopeEncryptedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EncryptionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

.field public static final enum CHALLENGED:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

.field public static final enum CONNECTED:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

.field public static final enum DISCONNECTED:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

.field public static final enum ENCRYPTED:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;


# direct methods
.method private static synthetic $values()[Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;
    .registers 4

    .line 228
    sget-object v0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;->DISCONNECTED:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

    sget-object v1, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;->CONNECTED:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

    sget-object v2, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;->CHALLENGED:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

    sget-object v3, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;->ENCRYPTED:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

    filled-new-array {v0, v1, v2, v3}, [Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 229
    new-instance v0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;->DISCONNECTED:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

    .line 230
    new-instance v0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

    const-string v1, "CONNECTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;->CONNECTED:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

    .line 231
    new-instance v0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

    const-string v1, "CHALLENGED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;->CHALLENGED:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

    .line 232
    new-instance v0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

    const-string v1, "ENCRYPTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;->ENCRYPTED:Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

    .line 228
    invoke-static {}, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;->$values()[Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;->$VALUES:[Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 228
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 228
    const-class v0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;
    .registers 1

    .line 228
    sget-object v0, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;->$VALUES:[Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

    invoke-virtual {v0}, [Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection$EncryptionState;

    return-object v0
.end method
