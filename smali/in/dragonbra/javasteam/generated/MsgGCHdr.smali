###### Class in.dragonbra.javasteam.generated.MsgGCHdr (in.dragonbra.javasteam.generated.MsgGCHdr)
.class public Lin/dragonbra/javasteam/generated/MsgGCHdr;
.super Ljava/lang/Object;
.source "MsgGCHdr.java"

# interfaces
.implements Lin/dragonbra/javasteam/base/gc/IGCSerializableHeader;


# instance fields
.field private headerVersion:S

.field private sourceJobID:J

.field private targetJobID:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput-short v0, p0, Lin/dragonbra/javasteam/generated/MsgGCHdr;->headerVersion:S

    const-wide v0, 0x7fffffffffffffffL

    .line 15
    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgGCHdr;->targetJobID:J

    .line 17
    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgGCHdr;->sourceJobID:J

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

    .line 57
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    .line 58
    :try_start_5
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readShort()S

    move-result p1

    iput-short p1, p0, Lin/dragonbra/javasteam/generated/MsgGCHdr;->headerVersion:S

    .line 59
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgGCHdr;->targetJobID:J

    .line 60
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgGCHdr;->sourceJobID:J
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_1b

    .line 61
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_1b
    move-exception p0

    .line 57
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

.method public getHeaderVersion()S
    .registers 1

    .line 23
    iget-short p0, p0, Lin/dragonbra/javasteam/generated/MsgGCHdr;->headerVersion:S

    return p0
.end method

.method public getSourceJobID()J
    .registers 3

    .line 39
    iget-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgGCHdr;->sourceJobID:J

    return-wide v0
.end method

.method public getTargetJobID()J
    .registers 3

    .line 31
    iget-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgGCHdr;->targetJobID:J

    return-wide v0
.end method

.method public serialize(Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;-><init>(Ljava/io/OutputStream;)V

    .line 49
    :try_start_5
    iget-short p1, p0, Lin/dragonbra/javasteam/generated/MsgGCHdr;->headerVersion:S

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeShort(S)V

    .line 50
    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgGCHdr;->targetJobID:J

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V

    .line 51
    iget-wide p0, p0, Lin/dragonbra/javasteam/generated/MsgGCHdr;->sourceJobID:J

    invoke-virtual {v0, p0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_18

    .line 52
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_18
    move-exception p0

    .line 48
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

.method public setEMsg(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public setHeaderVersion(S)V
    .registers 2

    .line 27
    iput-short p1, p0, Lin/dragonbra/javasteam/generated/MsgGCHdr;->headerVersion:S

    return-void
.end method

.method public setSourceJobID(J)V
    .registers 3

    .line 43
    iput-wide p1, p0, Lin/dragonbra/javasteam/generated/MsgGCHdr;->sourceJobID:J

    return-void
.end method

.method public setTargetJobID(J)V
    .registers 3

    .line 35
    iput-wide p1, p0, Lin/dragonbra/javasteam/generated/MsgGCHdr;->targetJobID:J

    return-void
.end method
