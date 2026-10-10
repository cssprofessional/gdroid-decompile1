###### Class in.dragonbra.javasteam.generated.MsgClientP2PIntroducerMessage (in.dragonbra.javasteam.generated.MsgClientP2PIntroducerMessage)
.class public Lin/dragonbra/javasteam/generated/MsgClientP2PIntroducerMessage;
.super Ljava/lang/Object;
.source "MsgClientP2PIntroducerMessage.java"

# interfaces
.implements Lin/dragonbra/javasteam/base/ISteamSerializableMessage;


# instance fields
.field private data:[B

.field private dataLen:I

.field private routingType:Lin/dragonbra/javasteam/enums/EIntroducerRouting;

.field private steamID:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientP2PIntroducerMessage;->steamID:J

    const/4 v0, 0x0

    .line 18
    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EIntroducerRouting;->from(I)Lin/dragonbra/javasteam/enums/EIntroducerRouting;

    move-result-object v1

    iput-object v1, p0, Lin/dragonbra/javasteam/generated/MsgClientP2PIntroducerMessage;->routingType:Lin/dragonbra/javasteam/enums/EIntroducerRouting;

    const/16 v1, 0x5aa

    .line 20
    new-array v1, v1, [B

    iput-object v1, p0, Lin/dragonbra/javasteam/generated/MsgClientP2PIntroducerMessage;->data:[B

    .line 22
    iput v0, p0, Lin/dragonbra/javasteam/generated/MsgClientP2PIntroducerMessage;->dataLen:I

    return-void
.end method


# virtual methods
.method public deserialize(Ljava/io/InputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    .line 75
    :try_start_5
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientP2PIntroducerMessage;->steamID:J

    .line 76
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    invoke-static {p1}, Lin/dragonbra/javasteam/enums/EIntroducerRouting;->from(I)Lin/dragonbra/javasteam/enums/EIntroducerRouting;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientP2PIntroducerMessage;->routingType:Lin/dragonbra/javasteam/enums/EIntroducerRouting;

    .line 77
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readBytes(I)[B

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientP2PIntroducerMessage;->data:[B

    .line 78
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientP2PIntroducerMessage;->dataLen:I
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_29

    .line 79
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_29
    move-exception p0

    .line 74
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_32
    throw p0
.end method

.method public getData()[B
    .registers 1

    .line 46
    iget-object p0, p0, Lin/dragonbra/javasteam/generated/MsgClientP2PIntroducerMessage;->data:[B

    return-object p0
.end method

.method public getDataLen()I
    .registers 1

    .line 54
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgClientP2PIntroducerMessage;->dataLen:I

    return p0
.end method

.method public getEMsg()Lin/dragonbra/javasteam/enums/EMsg;
    .registers 1

    .line 26
    sget-object p0, Lin/dragonbra/javasteam/enums/EMsg;->ClientP2PIntroducerMessage:Lin/dragonbra/javasteam/enums/EMsg;

    return-object p0
.end method

.method public getRoutingType()Lin/dragonbra/javasteam/enums/EIntroducerRouting;
    .registers 1

    .line 38
    iget-object p0, p0, Lin/dragonbra/javasteam/generated/MsgClientP2PIntroducerMessage;->routingType:Lin/dragonbra/javasteam/enums/EIntroducerRouting;

    return-object p0
.end method

.method public getSteamID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 4

    .line 30
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientP2PIntroducerMessage;->steamID:J

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    return-object v0
.end method

.method public serialize(Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;-><init>(Ljava/io/OutputStream;)V

    .line 64
    :try_start_5
    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientP2PIntroducerMessage;->steamID:J

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V

    .line 65
    iget-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientP2PIntroducerMessage;->routingType:Lin/dragonbra/javasteam/enums/EIntroducerRouting;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/enums/EIntroducerRouting;->code()I

    move-result p1

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 66
    iget-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientP2PIntroducerMessage;->data:[B

    array-length p1, p1

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 67
    iget-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientP2PIntroducerMessage;->data:[B

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 68
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgClientP2PIntroducerMessage;->dataLen:I

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_27

    .line 69
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_27
    move-exception p0

    .line 63
    :try_start_28
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_30
    throw p0
.end method

.method public setData([B)V
    .registers 2

    .line 50
    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientP2PIntroducerMessage;->data:[B

    return-void
.end method

.method public setDataLen(I)V
    .registers 2

    .line 58
    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientP2PIntroducerMessage;->dataLen:I

    return-void
.end method

.method public setRoutingType(Lin/dragonbra/javasteam/enums/EIntroducerRouting;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientP2PIntroducerMessage;->routingType:Lin/dragonbra/javasteam/enums/EIntroducerRouting;

    return-void
.end method

.method public setSteamID(Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 4

    .line 34
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientP2PIntroducerMessage;->steamID:J

    return-void
.end method
