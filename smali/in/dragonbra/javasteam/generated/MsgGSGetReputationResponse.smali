###### Class in.dragonbra.javasteam.generated.MsgGSGetReputationResponse (in.dragonbra.javasteam.generated.MsgGSGetReputationResponse)
.class public Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;
.super Ljava/lang/Object;
.source "MsgGSGetReputationResponse.java"

# interfaces
.implements Lin/dragonbra/javasteam/base/ISteamSerializableMessage;


# instance fields
.field private banned:Z

.field private bannedGameId:J

.field private bannedIp:I

.field private bannedPort:S

.field private reputationScore:I

.field private result:Lin/dragonbra/javasteam/enums/EResult;

.field private timeBanExpires:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v1

    iput-object v1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->result:Lin/dragonbra/javasteam/enums/EResult;

    .line 17
    iput v0, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->reputationScore:I

    .line 19
    iput-boolean v0, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->banned:Z

    .line 21
    iput v0, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->bannedIp:I

    .line 23
    iput-short v0, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->bannedPort:S

    const-wide/16 v1, 0x0

    .line 25
    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->bannedGameId:J

    .line 27
    iput v0, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->timeBanExpires:I

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

    .line 105
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    .line 106
    :try_start_5
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    invoke-static {p1}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->result:Lin/dragonbra/javasteam/enums/EResult;

    .line 107
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->reputationScore:I

    .line 108
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->banned:Z

    .line 109
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->bannedIp:I

    .line 110
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readShort()S

    move-result p1

    iput-short p1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->bannedPort:S

    .line 111
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->bannedGameId:J

    .line 112
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->timeBanExpires:I
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_37

    .line 113
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_37
    move-exception p0

    .line 105
    :try_start_38
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_40
    throw p0
.end method

.method public getBanned()Z
    .registers 1

    .line 51
    iget-boolean p0, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->banned:Z

    return p0
.end method

.method public getBannedGameId()J
    .registers 3

    .line 75
    iget-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->bannedGameId:J

    return-wide v0
.end method

.method public getBannedIp()I
    .registers 1

    .line 59
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->bannedIp:I

    return p0
.end method

.method public getBannedPort()S
    .registers 1

    .line 67
    iget-short p0, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->bannedPort:S

    return p0
.end method

.method public getEMsg()Lin/dragonbra/javasteam/enums/EMsg;
    .registers 1

    .line 31
    sget-object p0, Lin/dragonbra/javasteam/enums/EMsg;->GSGetReputationResponse:Lin/dragonbra/javasteam/enums/EMsg;

    return-object p0
.end method

.method public getReputationScore()I
    .registers 1

    .line 43
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->reputationScore:I

    return p0
.end method

.method public getResult()Lin/dragonbra/javasteam/enums/EResult;
    .registers 1

    .line 35
    iget-object p0, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-object p0
.end method

.method public getTimeBanExpires()I
    .registers 1

    .line 83
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->timeBanExpires:I

    return p0
.end method

.method public serialize(Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;-><init>(Ljava/io/OutputStream;)V

    .line 93
    :try_start_5
    iget-object p1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->result:Lin/dragonbra/javasteam/enums/EResult;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/enums/EResult;->code()I

    move-result p1

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 94
    iget p1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->reputationScore:I

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 95
    iget-boolean p1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->banned:Z

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeBoolean(Z)V

    .line 96
    iget p1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->bannedIp:I

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 97
    iget-short p1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->bannedPort:S

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeShort(S)V

    .line 98
    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->bannedGameId:J

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V

    .line 99
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->timeBanExpires:I

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_30

    .line 100
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_30
    move-exception p0

    .line 92
    :try_start_31
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_39

    :catchall_35
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_39
    throw p0
.end method

.method public setBanned(Z)V
    .registers 2

    .line 55
    iput-boolean p1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->banned:Z

    return-void
.end method

.method public setBannedGameId(J)V
    .registers 3

    .line 79
    iput-wide p1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->bannedGameId:J

    return-void
.end method

.method public setBannedIp(I)V
    .registers 2

    .line 63
    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->bannedIp:I

    return-void
.end method

.method public setBannedPort(S)V
    .registers 2

    .line 71
    iput-short p1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->bannedPort:S

    return-void
.end method

.method public setReputationScore(I)V
    .registers 2

    .line 47
    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->reputationScore:I

    return-void
.end method

.method public setResult(Lin/dragonbra/javasteam/enums/EResult;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-void
.end method

.method public setTimeBanExpires(I)V
    .registers 2

    .line 87
    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetReputationResponse;->timeBanExpires:I

    return-void
.end method
