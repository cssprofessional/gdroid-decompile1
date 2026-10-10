###### Class in.dragonbra.javasteam.generated.MsgClientLogOnResponse (in.dragonbra.javasteam.generated.MsgClientLogOnResponse)
.class public Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;
.super Ljava/lang/Object;
.source "MsgClientLogOnResponse.java"

# interfaces
.implements Lin/dragonbra/javasteam/base/ISteamSerializableMessage;


# instance fields
.field private clientSuppliedSteamId:J

.field private inGameHeartbeatRateSec:I

.field private ipPublic:I

.field private outOfGameHeartbeatRateSec:I

.field private result:Lin/dragonbra/javasteam/enums/EResult;

.field private serverRealTime:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v1

    iput-object v1, p0, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->result:Lin/dragonbra/javasteam/enums/EResult;

    .line 18
    iput v0, p0, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->outOfGameHeartbeatRateSec:I

    .line 20
    iput v0, p0, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->inGameHeartbeatRateSec:I

    const-wide/16 v1, 0x0

    .line 22
    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->clientSuppliedSteamId:J

    .line 24
    iput v0, p0, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->ipPublic:I

    .line 26
    iput v0, p0, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->serverRealTime:I

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

    .line 95
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    .line 96
    :try_start_5
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    invoke-static {p1}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->result:Lin/dragonbra/javasteam/enums/EResult;

    .line 97
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->outOfGameHeartbeatRateSec:I

    .line 98
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->inGameHeartbeatRateSec:I

    .line 99
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->clientSuppliedSteamId:J

    .line 100
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->ipPublic:I

    .line 101
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->serverRealTime:I
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_31

    .line 102
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_31
    move-exception p0

    .line 95
    :try_start_32
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_3a

    :catchall_36
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3a
    throw p0
.end method

.method public getClientSuppliedSteamId()Lin/dragonbra/javasteam/types/SteamID;
    .registers 4

    .line 58
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->clientSuppliedSteamId:J

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    return-object v0
.end method

.method public getEMsg()Lin/dragonbra/javasteam/enums/EMsg;
    .registers 1

    .line 30
    sget-object p0, Lin/dragonbra/javasteam/enums/EMsg;->ClientLogOnResponse:Lin/dragonbra/javasteam/enums/EMsg;

    return-object p0
.end method

.method public getInGameHeartbeatRateSec()I
    .registers 1

    .line 50
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->inGameHeartbeatRateSec:I

    return p0
.end method

.method public getIpPublic()I
    .registers 1

    .line 66
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->ipPublic:I

    return p0
.end method

.method public getOutOfGameHeartbeatRateSec()I
    .registers 1

    .line 42
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->outOfGameHeartbeatRateSec:I

    return p0
.end method

.method public getResult()Lin/dragonbra/javasteam/enums/EResult;
    .registers 1

    .line 34
    iget-object p0, p0, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-object p0
.end method

.method public getServerRealTime()I
    .registers 1

    .line 74
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->serverRealTime:I

    return p0
.end method

.method public serialize(Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;-><init>(Ljava/io/OutputStream;)V

    .line 84
    :try_start_5
    iget-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->result:Lin/dragonbra/javasteam/enums/EResult;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/enums/EResult;->code()I

    move-result p1

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 85
    iget p1, p0, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->outOfGameHeartbeatRateSec:I

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 86
    iget p1, p0, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->inGameHeartbeatRateSec:I

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 87
    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->clientSuppliedSteamId:J

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V

    .line 88
    iget p1, p0, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->ipPublic:I

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 89
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->serverRealTime:I

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_2b

    .line 90
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_2b
    move-exception p0

    .line 83
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_34

    :catchall_30
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_34
    throw p0
.end method

.method public setClientSuppliedSteamId(Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 4

    .line 62
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->clientSuppliedSteamId:J

    return-void
.end method

.method public setInGameHeartbeatRateSec(I)V
    .registers 2

    .line 54
    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->inGameHeartbeatRateSec:I

    return-void
.end method

.method public setIpPublic(I)V
    .registers 2

    .line 70
    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->ipPublic:I

    return-void
.end method

.method public setOutOfGameHeartbeatRateSec(I)V
    .registers 2

    .line 46
    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->outOfGameHeartbeatRateSec:I

    return-void
.end method

.method public setResult(Lin/dragonbra/javasteam/enums/EResult;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-void
.end method

.method public setServerRealTime(I)V
    .registers 2

    .line 78
    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientLogOnResponse;->serverRealTime:I

    return-void
.end method
