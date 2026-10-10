###### Class in.dragonbra.javasteam.generated.MsgClientSetIgnoreFriend (in.dragonbra.javasteam.generated.MsgClientSetIgnoreFriend)
.class public Lin/dragonbra/javasteam/generated/MsgClientSetIgnoreFriend;
.super Ljava/lang/Object;
.source "MsgClientSetIgnoreFriend.java"

# interfaces
.implements Lin/dragonbra/javasteam/base/ISteamSerializableMessage;


# instance fields
.field private ignore:B

.field private mySteamId:J

.field private steamIdFriend:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientSetIgnoreFriend;->mySteamId:J

    .line 17
    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientSetIgnoreFriend;->steamIdFriend:J

    const/4 v0, 0x0

    .line 19
    iput-byte v0, p0, Lin/dragonbra/javasteam/generated/MsgClientSetIgnoreFriend;->ignore:B

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

    .line 61
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    .line 62
    :try_start_5
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientSetIgnoreFriend;->mySteamId:J

    .line 63
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientSetIgnoreFriend;->steamIdFriend:J

    .line 64
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readByte()B

    move-result p1

    iput-byte p1, p0, Lin/dragonbra/javasteam/generated/MsgClientSetIgnoreFriend;->ignore:B
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_1b

    .line 65
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_1b
    move-exception p0

    .line 61
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_24
    throw p0
.end method

.method public getEMsg()Lin/dragonbra/javasteam/enums/EMsg;
    .registers 1

    .line 23
    sget-object p0, Lin/dragonbra/javasteam/enums/EMsg;->ClientSetIgnoreFriend:Lin/dragonbra/javasteam/enums/EMsg;

    return-object p0
.end method

.method public getIgnore()B
    .registers 1

    .line 43
    iget-byte p0, p0, Lin/dragonbra/javasteam/generated/MsgClientSetIgnoreFriend;->ignore:B

    return p0
.end method

.method public getMySteamId()Lin/dragonbra/javasteam/types/SteamID;
    .registers 4

    .line 27
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientSetIgnoreFriend;->mySteamId:J

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    return-object v0
.end method

.method public getSteamIdFriend()Lin/dragonbra/javasteam/types/SteamID;
    .registers 4

    .line 35
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientSetIgnoreFriend;->steamIdFriend:J

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

    .line 52
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;-><init>(Ljava/io/OutputStream;)V

    .line 53
    :try_start_5
    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientSetIgnoreFriend;->mySteamId:J

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V

    .line 54
    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientSetIgnoreFriend;->steamIdFriend:J

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V

    .line 55
    iget-byte p0, p0, Lin/dragonbra/javasteam/generated/MsgClientSetIgnoreFriend;->ignore:B

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeByte(B)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_18

    .line 56
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_18
    move-exception p0

    .line 52
    :try_start_19
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_21
    throw p0
.end method

.method public setIgnore(B)V
    .registers 2

    .line 47
    iput-byte p1, p0, Lin/dragonbra/javasteam/generated/MsgClientSetIgnoreFriend;->ignore:B

    return-void
.end method

.method public setMySteamId(Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 4

    .line 31
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientSetIgnoreFriend;->mySteamId:J

    return-void
.end method

.method public setSteamIdFriend(Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 4

    .line 39
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientSetIgnoreFriend;->steamIdFriend:J

    return-void
.end method
