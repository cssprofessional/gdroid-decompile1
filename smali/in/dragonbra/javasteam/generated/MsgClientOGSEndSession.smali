###### Class in.dragonbra.javasteam.generated.MsgClientOGSEndSession (in.dragonbra.javasteam.generated.MsgClientOGSEndSession)
.class public Lin/dragonbra/javasteam/generated/MsgClientOGSEndSession;
.super Ljava/lang/Object;
.source "MsgClientOGSEndSession.java"

# interfaces
.implements Lin/dragonbra/javasteam/base/ISteamSerializableMessage;


# instance fields
.field private countAttributes:I

.field private reasonCode:I

.field private sessionId:J

.field private timeEnded:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 14
    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSEndSession;->sessionId:J

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSEndSession;->timeEnded:I

    .line 18
    iput v0, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSEndSession;->reasonCode:I

    .line 20
    iput v0, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSEndSession;->countAttributes:I

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

    .line 71
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    .line 72
    :try_start_5
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSEndSession;->sessionId:J

    .line 73
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSEndSession;->timeEnded:I

    .line 74
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSEndSession;->reasonCode:I

    .line 75
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSEndSession;->countAttributes:I
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_21

    .line 76
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_21
    move-exception p0

    .line 71
    :try_start_22
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2a
    throw p0
.end method

.method public getCountAttributes()I
    .registers 1

    .line 52
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSEndSession;->countAttributes:I

    return p0
.end method

.method public getEMsg()Lin/dragonbra/javasteam/enums/EMsg;
    .registers 1

    .line 24
    sget-object p0, Lin/dragonbra/javasteam/enums/EMsg;->ClientOGSEndSession:Lin/dragonbra/javasteam/enums/EMsg;

    return-object p0
.end method

.method public getReasonCode()I
    .registers 1

    .line 44
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSEndSession;->reasonCode:I

    return p0
.end method

.method public getSessionId()J
    .registers 3

    .line 28
    iget-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSEndSession;->sessionId:J

    return-wide v0
.end method

.method public getTimeEnded()I
    .registers 1

    .line 36
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSEndSession;->timeEnded:I

    return p0
.end method

.method public serialize(Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;-><init>(Ljava/io/OutputStream;)V

    .line 62
    :try_start_5
    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSEndSession;->sessionId:J

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V

    .line 63
    iget p1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSEndSession;->timeEnded:I

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 64
    iget p1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSEndSession;->reasonCode:I

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 65
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSEndSession;->countAttributes:I

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1d

    .line 66
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_1d
    move-exception p0

    .line 61
    :try_start_1e
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_26
    throw p0
.end method

.method public setCountAttributes(I)V
    .registers 2

    .line 56
    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSEndSession;->countAttributes:I

    return-void
.end method

.method public setReasonCode(I)V
    .registers 2

    .line 48
    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSEndSession;->reasonCode:I

    return-void
.end method

.method public setSessionId(J)V
    .registers 3

    .line 32
    iput-wide p1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSEndSession;->sessionId:J

    return-void
.end method

.method public setTimeEnded(I)V
    .registers 2

    .line 40
    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSEndSession;->timeEnded:I

    return-void
.end method
