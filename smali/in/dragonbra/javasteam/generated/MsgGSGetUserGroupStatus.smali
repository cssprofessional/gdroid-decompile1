###### Class in.dragonbra.javasteam.generated.MsgGSGetUserGroupStatus (in.dragonbra.javasteam.generated.MsgGSGetUserGroupStatus)
.class public Lin/dragonbra/javasteam/generated/MsgGSGetUserGroupStatus;
.super Ljava/lang/Object;
.source "MsgGSGetUserGroupStatus.java"

# interfaces
.implements Lin/dragonbra/javasteam/base/ISteamSerializableMessage;


# instance fields
.field private steamIdGroup:J

.field private steamIdUser:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgGSGetUserGroupStatus;->steamIdUser:J

    .line 17
    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgGSGetUserGroupStatus;->steamIdGroup:J

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

    .line 50
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    .line 51
    :try_start_5
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetUserGroupStatus;->steamIdUser:J

    .line 52
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetUserGroupStatus;->steamIdGroup:J
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    .line 53
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_15
    move-exception p0

    .line 50
    :try_start_16
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    goto :goto_1e

    :catchall_1a
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1e
    throw p0
.end method

.method public getEMsg()Lin/dragonbra/javasteam/enums/EMsg;
    .registers 1

    .line 21
    sget-object p0, Lin/dragonbra/javasteam/enums/EMsg;->GSGetUserGroupStatus:Lin/dragonbra/javasteam/enums/EMsg;

    return-object p0
.end method

.method public getSteamIdGroup()Lin/dragonbra/javasteam/types/SteamID;
    .registers 4

    .line 33
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetUserGroupStatus;->steamIdGroup:J

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    return-object v0
.end method

.method public getSteamIdUser()Lin/dragonbra/javasteam/types/SteamID;
    .registers 4

    .line 25
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetUserGroupStatus;->steamIdUser:J

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

    .line 42
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;-><init>(Ljava/io/OutputStream;)V

    .line 43
    :try_start_5
    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetUserGroupStatus;->steamIdUser:J

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V

    .line 44
    iget-wide p0, p0, Lin/dragonbra/javasteam/generated/MsgGSGetUserGroupStatus;->steamIdGroup:J

    invoke-virtual {v0, p0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_13

    .line 45
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_13
    move-exception p0

    .line 42
    :try_start_14
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_1c

    :catchall_18
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1c
    throw p0
.end method

.method public setSteamIdGroup(Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 4

    .line 37
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgGSGetUserGroupStatus;->steamIdGroup:J

    return-void
.end method

.method public setSteamIdUser(Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 4

    .line 29
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgGSGetUserGroupStatus;->steamIdUser:J

    return-void
.end method
