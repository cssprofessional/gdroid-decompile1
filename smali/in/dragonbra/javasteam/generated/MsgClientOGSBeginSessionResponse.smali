###### Class in.dragonbra.javasteam.generated.MsgClientOGSBeginSessionResponse (in.dragonbra.javasteam.generated.MsgClientOGSBeginSessionResponse)
.class public Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSessionResponse;
.super Ljava/lang/Object;
.source "MsgClientOGSBeginSessionResponse.java"

# interfaces
.implements Lin/dragonbra/javasteam/base/ISteamSerializableMessage;


# instance fields
.field private collectingAny:Z

.field private collectingDetails:Z

.field private result:Lin/dragonbra/javasteam/enums/EResult;

.field private sessionId:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v1

    iput-object v1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSessionResponse;->result:Lin/dragonbra/javasteam/enums/EResult;

    .line 17
    iput-boolean v0, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSessionResponse;->collectingAny:Z

    .line 19
    iput-boolean v0, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSessionResponse;->collectingDetails:Z

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSessionResponse;->sessionId:J

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

    .line 72
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    .line 73
    :try_start_5
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    invoke-static {p1}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSessionResponse;->result:Lin/dragonbra/javasteam/enums/EResult;

    .line 74
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSessionResponse;->collectingAny:Z

    .line 75
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSessionResponse;->collectingDetails:Z

    .line 76
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSessionResponse;->sessionId:J
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_25

    .line 77
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_25
    move-exception p0

    .line 72
    :try_start_26
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2e
    throw p0
.end method

.method public getCollectingAny()Z
    .registers 1

    .line 37
    iget-boolean p0, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSessionResponse;->collectingAny:Z

    return p0
.end method

.method public getCollectingDetails()Z
    .registers 1

    .line 45
    iget-boolean p0, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSessionResponse;->collectingDetails:Z

    return p0
.end method

.method public getEMsg()Lin/dragonbra/javasteam/enums/EMsg;
    .registers 1

    .line 25
    sget-object p0, Lin/dragonbra/javasteam/enums/EMsg;->ClientOGSBeginSessionResponse:Lin/dragonbra/javasteam/enums/EMsg;

    return-object p0
.end method

.method public getResult()Lin/dragonbra/javasteam/enums/EResult;
    .registers 1

    .line 29
    iget-object p0, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSessionResponse;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-object p0
.end method

.method public getSessionId()J
    .registers 3

    .line 53
    iget-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSessionResponse;->sessionId:J

    return-wide v0
.end method

.method public serialize(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;-><init>(Ljava/io/OutputStream;)V

    .line 63
    :try_start_5
    iget-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSessionResponse;->result:Lin/dragonbra/javasteam/enums/EResult;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/enums/EResult;->code()I

    move-result p1

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 64
    iget-boolean p1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSessionResponse;->collectingAny:Z

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeBoolean(Z)V

    .line 65
    iget-boolean p1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSessionResponse;->collectingDetails:Z

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeBoolean(Z)V

    .line 66
    iget-wide p0, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSessionResponse;->sessionId:J

    invoke-virtual {v0, p0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_21

    .line 67
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_21
    move-exception p0

    .line 62
    :try_start_22
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2a
    throw p0
.end method

.method public setCollectingAny(Z)V
    .registers 2

    .line 41
    iput-boolean p1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSessionResponse;->collectingAny:Z

    return-void
.end method

.method public setCollectingDetails(Z)V
    .registers 2

    .line 49
    iput-boolean p1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSessionResponse;->collectingDetails:Z

    return-void
.end method

.method public setResult(Lin/dragonbra/javasteam/enums/EResult;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSessionResponse;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-void
.end method

.method public setSessionId(J)V
    .registers 3

    .line 57
    iput-wide p1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSessionResponse;->sessionId:J

    return-void
.end method
