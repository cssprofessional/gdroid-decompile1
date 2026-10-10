###### Class in.dragonbra.javasteam.generated.MsgClientAppUsageEvent (in.dragonbra.javasteam.generated.MsgClientAppUsageEvent)
.class public Lin/dragonbra/javasteam/generated/MsgClientAppUsageEvent;
.super Ljava/lang/Object;
.source "MsgClientAppUsageEvent.java"

# interfaces
.implements Lin/dragonbra/javasteam/base/ISteamSerializableMessage;


# instance fields
.field private appUsageEvent:Lin/dragonbra/javasteam/enums/EAppUsageEvent;

.field private gameID:J

.field private offline:S


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EAppUsageEvent;->from(I)Lin/dragonbra/javasteam/enums/EAppUsageEvent;

    move-result-object v1

    iput-object v1, p0, Lin/dragonbra/javasteam/generated/MsgClientAppUsageEvent;->appUsageEvent:Lin/dragonbra/javasteam/enums/EAppUsageEvent;

    const-wide/16 v1, 0x0

    .line 18
    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientAppUsageEvent;->gameID:J

    .line 20
    iput-short v0, p0, Lin/dragonbra/javasteam/generated/MsgClientAppUsageEvent;->offline:S

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

    .line 62
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    .line 63
    :try_start_5
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    invoke-static {p1}, Lin/dragonbra/javasteam/enums/EAppUsageEvent;->from(I)Lin/dragonbra/javasteam/enums/EAppUsageEvent;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientAppUsageEvent;->appUsageEvent:Lin/dragonbra/javasteam/enums/EAppUsageEvent;

    .line 64
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientAppUsageEvent;->gameID:J

    .line 65
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readShort()S

    move-result p1

    iput-short p1, p0, Lin/dragonbra/javasteam/generated/MsgClientAppUsageEvent;->offline:S
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1f

    .line 66
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_1f
    move-exception p0

    .line 62
    :try_start_20
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_28

    :catchall_24
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_28
    throw p0
.end method

.method public getAppUsageEvent()Lin/dragonbra/javasteam/enums/EAppUsageEvent;
    .registers 1

    .line 28
    iget-object p0, p0, Lin/dragonbra/javasteam/generated/MsgClientAppUsageEvent;->appUsageEvent:Lin/dragonbra/javasteam/enums/EAppUsageEvent;

    return-object p0
.end method

.method public getEMsg()Lin/dragonbra/javasteam/enums/EMsg;
    .registers 1

    .line 24
    sget-object p0, Lin/dragonbra/javasteam/enums/EMsg;->ClientAppUsageEvent:Lin/dragonbra/javasteam/enums/EMsg;

    return-object p0
.end method

.method public getGameID()Lin/dragonbra/javasteam/types/GameID;
    .registers 4

    .line 36
    new-instance v0, Lin/dragonbra/javasteam/types/GameID;

    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientAppUsageEvent;->gameID:J

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/GameID;-><init>(J)V

    return-object v0
.end method

.method public getOffline()S
    .registers 1

    .line 44
    iget-short p0, p0, Lin/dragonbra/javasteam/generated/MsgClientAppUsageEvent;->offline:S

    return p0
.end method

.method public serialize(Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;-><init>(Ljava/io/OutputStream;)V

    .line 54
    :try_start_5
    iget-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientAppUsageEvent;->appUsageEvent:Lin/dragonbra/javasteam/enums/EAppUsageEvent;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/enums/EAppUsageEvent;->code()I

    move-result p1

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 55
    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientAppUsageEvent;->gameID:J

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V

    .line 56
    iget-short p0, p0, Lin/dragonbra/javasteam/generated/MsgClientAppUsageEvent;->offline:S

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeShort(S)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1c

    .line 57
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_1c
    move-exception p0

    .line 53
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_25

    :catchall_21
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_25
    throw p0
.end method

.method public setAppUsageEvent(Lin/dragonbra/javasteam/enums/EAppUsageEvent;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientAppUsageEvent;->appUsageEvent:Lin/dragonbra/javasteam/enums/EAppUsageEvent;

    return-void
.end method

.method public setGameID(Lin/dragonbra/javasteam/types/GameID;)V
    .registers 4

    .line 40
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/GameID;->convertToUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientAppUsageEvent;->gameID:J

    return-void
.end method

.method public setOffline(S)V
    .registers 2

    .line 48
    iput-short p1, p0, Lin/dragonbra/javasteam/generated/MsgClientAppUsageEvent;->offline:S

    return-void
.end method
