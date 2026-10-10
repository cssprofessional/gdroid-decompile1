###### Class in.dragonbra.javasteam.generated.MsgHdr (in.dragonbra.javasteam.generated.MsgHdr)
.class public Lin/dragonbra/javasteam/generated/MsgHdr;
.super Ljava/lang/Object;
.source "MsgHdr.java"

# interfaces
.implements Lin/dragonbra/javasteam/base/ISteamSerializableHeader;


# instance fields
.field private msg:Lin/dragonbra/javasteam/enums/EMsg;

.field private sourceJobID:J

.field private targetJobID:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lin/dragonbra/javasteam/enums/EMsg;->Invalid:Lin/dragonbra/javasteam/enums/EMsg;

    iput-object v0, p0, Lin/dragonbra/javasteam/generated/MsgHdr;->msg:Lin/dragonbra/javasteam/enums/EMsg;

    const-wide v0, 0x7fffffffffffffffL

    .line 16
    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgHdr;->targetJobID:J

    .line 18
    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgHdr;->sourceJobID:J

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

    .line 60
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    .line 61
    :try_start_5
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    invoke-static {p1}, Lin/dragonbra/javasteam/enums/EMsg;->from(I)Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgHdr;->msg:Lin/dragonbra/javasteam/enums/EMsg;

    .line 62
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgHdr;->targetJobID:J

    .line 63
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgHdr;->sourceJobID:J
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1f

    .line 64
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_1f
    move-exception p0

    .line 60
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

.method public getMsg()Lin/dragonbra/javasteam/enums/EMsg;
    .registers 1

    .line 26
    iget-object p0, p0, Lin/dragonbra/javasteam/generated/MsgHdr;->msg:Lin/dragonbra/javasteam/enums/EMsg;

    return-object p0
.end method

.method public getSourceJobID()J
    .registers 3

    .line 42
    iget-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgHdr;->sourceJobID:J

    return-wide v0
.end method

.method public getTargetJobID()J
    .registers 3

    .line 34
    iget-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgHdr;->targetJobID:J

    return-wide v0
.end method

.method public serialize(Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;-><init>(Ljava/io/OutputStream;)V

    .line 52
    :try_start_5
    iget-object p1, p0, Lin/dragonbra/javasteam/generated/MsgHdr;->msg:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/enums/EMsg;->code()I

    move-result p1

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 53
    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgHdr;->targetJobID:J

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V

    .line 54
    iget-wide p0, p0, Lin/dragonbra/javasteam/generated/MsgHdr;->sourceJobID:J

    invoke-virtual {v0, p0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1c

    .line 55
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_1c
    move-exception p0

    .line 51
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

.method public setEMsg(Lin/dragonbra/javasteam/enums/EMsg;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgHdr;->msg:Lin/dragonbra/javasteam/enums/EMsg;

    return-void
.end method

.method public setMsg(Lin/dragonbra/javasteam/enums/EMsg;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgHdr;->msg:Lin/dragonbra/javasteam/enums/EMsg;

    return-void
.end method

.method public setSourceJobID(J)V
    .registers 3

    .line 46
    iput-wide p1, p0, Lin/dragonbra/javasteam/generated/MsgHdr;->sourceJobID:J

    return-void
.end method

.method public setTargetJobID(J)V
    .registers 3

    .line 38
    iput-wide p1, p0, Lin/dragonbra/javasteam/generated/MsgHdr;->targetJobID:J

    return-void
.end method
