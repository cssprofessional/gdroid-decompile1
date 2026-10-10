###### Class in.dragonbra.javasteam.generated.UdpHeader (in.dragonbra.javasteam.generated.UdpHeader)
.class public Lin/dragonbra/javasteam/generated/UdpHeader;
.super Ljava/lang/Object;
.source "UdpHeader.java"

# interfaces
.implements Lin/dragonbra/javasteam/base/ISteamSerializable;


# static fields
.field public static final MAGIC:I = 0x31305356


# instance fields
.field private destConnID:I

.field private flags:B

.field private magic:I

.field private msgSize:I

.field private msgStartSeq:I

.field private packetType:Lin/dragonbra/javasteam/enums/EUdpPacketType;

.field private packetsInMsg:I

.field private payloadSize:S

.field private seqAck:I

.field private seqThis:I

.field private sourceConnID:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x31305356

    .line 16
    iput v0, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->magic:I

    const/4 v0, 0x0

    .line 18
    iput-short v0, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->payloadSize:S

    .line 20
    sget-object v1, Lin/dragonbra/javasteam/enums/EUdpPacketType;->Invalid:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    iput-object v1, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->packetType:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    .line 22
    iput-byte v0, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->flags:B

    const/16 v1, 0x200

    .line 24
    iput v1, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->sourceConnID:I

    .line 26
    iput v0, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->destConnID:I

    .line 28
    iput v0, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->seqThis:I

    .line 30
    iput v0, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->seqAck:I

    .line 32
    iput v0, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->packetsInMsg:I

    .line 34
    iput v0, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->msgStartSeq:I

    .line 36
    iput v0, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->msgSize:I

    return-void
.end method


# virtual methods
.method public deserialize(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    .line 146
    :try_start_5
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->magic:I

    .line 147
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readShort()S

    move-result p1

    iput-short p1, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->payloadSize:S

    .line 148
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readByte()B

    move-result p1

    invoke-static {p1}, Lin/dragonbra/javasteam/enums/EUdpPacketType;->from(B)Lin/dragonbra/javasteam/enums/EUdpPacketType;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->packetType:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    .line 149
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readByte()B

    move-result p1

    iput-byte p1, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->flags:B

    .line 150
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->sourceConnID:I

    .line 151
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->destConnID:I

    .line 152
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->seqThis:I

    .line 153
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->seqAck:I

    .line 154
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->packetsInMsg:I

    .line 155
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->msgStartSeq:I

    .line 156
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->msgSize:I
    :try_end_4b
    .catchall {:try_start_5 .. :try_end_4b} :catchall_4f

    .line 157
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_4f
    move-exception p0

    .line 145
    :try_start_50
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_58

    :catchall_54
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_58
    throw p0
.end method

.method public getDestConnID()I
    .registers 1

    .line 79
    iget p0, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->destConnID:I

    return p0
.end method

.method public getFlags()B
    .registers 1

    .line 63
    iget-byte p0, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->flags:B

    return p0
.end method

.method public getMagic()I
    .registers 1

    .line 39
    iget p0, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->magic:I

    return p0
.end method

.method public getMsgSize()I
    .registers 1

    .line 119
    iget p0, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->msgSize:I

    return p0
.end method

.method public getMsgStartSeq()I
    .registers 1

    .line 111
    iget p0, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->msgStartSeq:I

    return p0
.end method

.method public getPacketType()Lin/dragonbra/javasteam/enums/EUdpPacketType;
    .registers 1

    .line 55
    iget-object p0, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->packetType:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    return-object p0
.end method

.method public getPacketsInMsg()I
    .registers 1

    .line 103
    iget p0, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->packetsInMsg:I

    return p0
.end method

.method public getPayloadSize()S
    .registers 1

    .line 47
    iget-short p0, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->payloadSize:S

    return p0
.end method

.method public getSeqAck()I
    .registers 1

    .line 95
    iget p0, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->seqAck:I

    return p0
.end method

.method public getSeqThis()I
    .registers 1

    .line 87
    iget p0, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->seqThis:I

    return p0
.end method

.method public getSourceConnID()I
    .registers 1

    .line 71
    iget p0, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->sourceConnID:I

    return p0
.end method

.method public serialize(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;-><init>(Ljava/io/OutputStream;)V

    .line 129
    :try_start_5
    iget p1, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->magic:I

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 130
    iget-short p1, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->payloadSize:S

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeShort(S)V

    .line 131
    iget-object p1, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->packetType:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/enums/EUdpPacketType;->code()B

    move-result p1

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeByte(B)V

    .line 132
    iget-byte p1, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->flags:B

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeByte(B)V

    .line 133
    iget p1, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->sourceConnID:I

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 134
    iget p1, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->destConnID:I

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 135
    iget p1, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->seqThis:I

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 136
    iget p1, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->seqAck:I

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 137
    iget p1, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->packetsInMsg:I

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 138
    iget p1, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->msgStartSeq:I

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 139
    iget p0, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->msgSize:I

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_44

    .line 140
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_44
    move-exception p0

    .line 128
    :try_start_45
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4d

    :catchall_49
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4d
    throw p0
.end method

.method public setDestConnID(I)V
    .registers 2

    .line 83
    iput p1, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->destConnID:I

    return-void
.end method

.method public setFlags(B)V
    .registers 2

    .line 67
    iput-byte p1, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->flags:B

    return-void
.end method

.method public setMagic(I)V
    .registers 2

    .line 43
    iput p1, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->magic:I

    return-void
.end method

.method public setMsgSize(I)V
    .registers 2

    .line 123
    iput p1, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->msgSize:I

    return-void
.end method

.method public setMsgStartSeq(I)V
    .registers 2

    .line 115
    iput p1, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->msgStartSeq:I

    return-void
.end method

.method public setPacketType(Lin/dragonbra/javasteam/enums/EUdpPacketType;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->packetType:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    return-void
.end method

.method public setPacketsInMsg(I)V
    .registers 2

    .line 107
    iput p1, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->packetsInMsg:I

    return-void
.end method

.method public setPayloadSize(S)V
    .registers 2

    .line 51
    iput-short p1, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->payloadSize:S

    return-void
.end method

.method public setSeqAck(I)V
    .registers 2

    .line 99
    iput p1, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->seqAck:I

    return-void
.end method

.method public setSeqThis(I)V
    .registers 2

    .line 91
    iput p1, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->seqThis:I

    return-void
.end method

.method public setSourceConnID(I)V
    .registers 2

    .line 75
    iput p1, p0, Lin/dragonbra/javasteam/generated/UdpHeader;->sourceConnID:I

    return-void
.end method
