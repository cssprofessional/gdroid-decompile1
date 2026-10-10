###### Class in.dragonbra.javasteam.generated.ExtendedClientMsgHdr (in.dragonbra.javasteam.generated.ExtendedClientMsgHdr)
.class public Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;
.super Ljava/lang/Object;
.source "ExtendedClientMsgHdr.java"

# interfaces
.implements Lin/dragonbra/javasteam/base/ISteamSerializableHeader;


# instance fields
.field private headerCanary:B

.field private headerSize:B

.field private headerVersion:S

.field private msg:Lin/dragonbra/javasteam/enums/EMsg;

.field private sessionID:I

.field private sourceJobID:J

.field private steamID:J

.field private targetJobID:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lin/dragonbra/javasteam/enums/EMsg;->Invalid:Lin/dragonbra/javasteam/enums/EMsg;

    iput-object v0, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->msg:Lin/dragonbra/javasteam/enums/EMsg;

    const/16 v0, 0x24

    .line 17
    iput-byte v0, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->headerSize:B

    const/4 v0, 0x2

    .line 19
    iput-short v0, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->headerVersion:S

    const-wide v0, 0x7fffffffffffffffL

    .line 21
    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->targetJobID:J

    .line 23
    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->sourceJobID:J

    const/16 v0, -0x11

    .line 25
    iput-byte v0, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->headerCanary:B

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->steamID:J

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->sessionID:I

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

    .line 116
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    .line 117
    :try_start_5
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    invoke-static {p1}, Lin/dragonbra/javasteam/enums/EMsg;->from(I)Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->msg:Lin/dragonbra/javasteam/enums/EMsg;

    .line 118
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readByte()B

    move-result p1

    iput-byte p1, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->headerSize:B

    .line 119
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readShort()S

    move-result p1

    iput-short p1, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->headerVersion:S

    .line 120
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->targetJobID:J

    .line 121
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->sourceJobID:J

    .line 122
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readByte()B

    move-result p1

    iput-byte p1, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->headerCanary:B

    .line 123
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->steamID:J

    .line 124
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->sessionID:I
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_3d

    .line 125
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_3d
    move-exception p0

    .line 116
    :try_start_3e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_46

    :catchall_42
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_46
    throw p0
.end method

.method public getHeaderCanary()B
    .registers 1

    .line 77
    iget-byte p0, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->headerCanary:B

    return p0
.end method

.method public getHeaderSize()B
    .registers 1

    .line 45
    iget-byte p0, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->headerSize:B

    return p0
.end method

.method public getHeaderVersion()S
    .registers 1

    .line 53
    iget-short p0, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->headerVersion:S

    return p0
.end method

.method public getMsg()Lin/dragonbra/javasteam/enums/EMsg;
    .registers 1

    .line 37
    iget-object p0, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->msg:Lin/dragonbra/javasteam/enums/EMsg;

    return-object p0
.end method

.method public getSessionID()I
    .registers 1

    .line 93
    iget p0, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->sessionID:I

    return p0
.end method

.method public getSourceJobID()J
    .registers 3

    .line 69
    iget-wide v0, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->sourceJobID:J

    return-wide v0
.end method

.method public getSteamID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 4

    .line 85
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->steamID:J

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    return-object v0
.end method

.method public getTargetJobID()J
    .registers 3

    .line 61
    iget-wide v0, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->targetJobID:J

    return-wide v0
.end method

.method public serialize(Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;-><init>(Ljava/io/OutputStream;)V

    .line 103
    :try_start_5
    iget-object p1, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->msg:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/enums/EMsg;->code()I

    move-result p1

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 104
    iget-byte p1, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->headerSize:B

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeByte(B)V

    .line 105
    iget-short p1, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->headerVersion:S

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeShort(S)V

    .line 106
    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->targetJobID:J

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V

    .line 107
    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->sourceJobID:J

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V

    .line 108
    iget-byte p1, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->headerCanary:B

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeByte(B)V

    .line 109
    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->steamID:J

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V

    .line 110
    iget p0, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->sessionID:I

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_35

    .line 111
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_35
    move-exception p0

    .line 102
    :try_start_36
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_3e

    :catchall_3a
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3e
    throw p0
.end method

.method public setEMsg(Lin/dragonbra/javasteam/enums/EMsg;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->msg:Lin/dragonbra/javasteam/enums/EMsg;

    return-void
.end method

.method public setHeaderCanary(B)V
    .registers 2

    .line 81
    iput-byte p1, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->headerCanary:B

    return-void
.end method

.method public setHeaderSize(B)V
    .registers 2

    .line 49
    iput-byte p1, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->headerSize:B

    return-void
.end method

.method public setHeaderVersion(S)V
    .registers 2

    .line 57
    iput-short p1, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->headerVersion:S

    return-void
.end method

.method public setMsg(Lin/dragonbra/javasteam/enums/EMsg;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->msg:Lin/dragonbra/javasteam/enums/EMsg;

    return-void
.end method

.method public setSessionID(I)V
    .registers 2

    .line 97
    iput p1, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->sessionID:I

    return-void
.end method

.method public setSourceJobID(J)V
    .registers 3

    .line 73
    iput-wide p1, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->sourceJobID:J

    return-void
.end method

.method public setSteamID(Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 4

    .line 89
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->steamID:J

    return-void
.end method

.method public setTargetJobID(J)V
    .registers 3

    .line 65
    iput-wide p1, p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->targetJobID:J

    return-void
.end method
