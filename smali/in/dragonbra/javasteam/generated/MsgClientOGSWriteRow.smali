###### Class in.dragonbra.javasteam.generated.MsgClientOGSWriteRow (in.dragonbra.javasteam.generated.MsgClientOGSWriteRow)
.class public Lin/dragonbra/javasteam/generated/MsgClientOGSWriteRow;
.super Ljava/lang/Object;
.source "MsgClientOGSWriteRow.java"

# interfaces
.implements Lin/dragonbra/javasteam/base/ISteamSerializableMessage;


# instance fields
.field private countAttributes:I

.field private sessionId:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 14
    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSWriteRow;->sessionId:J

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSWriteRow;->countAttributes:I

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

    .line 49
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    .line 50
    :try_start_5
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSWriteRow;->sessionId:J

    .line 51
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSWriteRow;->countAttributes:I
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    .line 52
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_15
    move-exception p0

    .line 49
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

.method public getCountAttributes()I
    .registers 1

    .line 32
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSWriteRow;->countAttributes:I

    return p0
.end method

.method public getEMsg()Lin/dragonbra/javasteam/enums/EMsg;
    .registers 1

    .line 20
    sget-object p0, Lin/dragonbra/javasteam/enums/EMsg;->ClientOGSWriteRow:Lin/dragonbra/javasteam/enums/EMsg;

    return-object p0
.end method

.method public getSessionId()J
    .registers 3

    .line 24
    iget-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSWriteRow;->sessionId:J

    return-wide v0
.end method

.method public serialize(Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;-><init>(Ljava/io/OutputStream;)V

    .line 42
    :try_start_5
    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSWriteRow;->sessionId:J

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V

    .line 43
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSWriteRow;->countAttributes:I

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_13

    .line 44
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_13
    move-exception p0

    .line 41
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

.method public setCountAttributes(I)V
    .registers 2

    .line 36
    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSWriteRow;->countAttributes:I

    return-void
.end method

.method public setSessionId(J)V
    .registers 3

    .line 28
    iput-wide p1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSWriteRow;->sessionId:J

    return-void
.end method
