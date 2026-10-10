###### Class in.dragonbra.javasteam.networking.steam3.UdpPacket (in.dragonbra.javasteam.networking.steam3.UdpPacket)
.class Lin/dragonbra/javasteam/networking/steam3/UdpPacket;
.super Ljava/lang/Object;
.source "UdpPacket.java"


# static fields
.field public static final MAX_PAYLOAD:I = 0x4dc


# instance fields
.field private final header:Lin/dragonbra/javasteam/generated/UdpHeader;

.field private payload:Lin/dragonbra/javasteam/util/stream/MemoryStream;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/enums/EUdpPacketType;)V
    .registers 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lin/dragonbra/javasteam/generated/UdpHeader;

    invoke-direct {v0}, Lin/dragonbra/javasteam/generated/UdpHeader;-><init>()V

    iput-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->header:Lin/dragonbra/javasteam/generated/UdpHeader;

    .line 52
    new-instance v1, Lin/dragonbra/javasteam/util/stream/MemoryStream;

    invoke-direct {v1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>()V

    iput-object v1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->payload:Lin/dragonbra/javasteam/util/stream/MemoryStream;

    .line 54
    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/generated/UdpHeader;->setPacketType(Lin/dragonbra/javasteam/enums/EUdpPacketType;)V

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/enums/EUdpPacketType;Lin/dragonbra/javasteam/util/stream/MemoryStream;)V
    .registers 3

    .line 65
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;-><init>(Lin/dragonbra/javasteam/enums/EUdpPacketType;)V

    .line 66
    invoke-virtual {p0, p2}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->setPayload(Lin/dragonbra/javasteam/util/stream/MemoryStream;)V

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/enums/EUdpPacketType;Lin/dragonbra/javasteam/util/stream/MemoryStream;J)V
    .registers 5

    .line 78
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;-><init>(Lin/dragonbra/javasteam/enums/EUdpPacketType;)V

    .line 79
    invoke-virtual {p0, p2, p3, p4}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->setPayload(Lin/dragonbra/javasteam/util/stream/MemoryStream;J)V

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/util/stream/MemoryStream;)V
    .registers 5

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lin/dragonbra/javasteam/generated/UdpHeader;

    invoke-direct {v0}, Lin/dragonbra/javasteam/generated/UdpHeader;-><init>()V

    iput-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->header:Lin/dragonbra/javasteam/generated/UdpHeader;

    .line 32
    :try_start_a
    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/generated/UdpHeader;->deserialize(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_1f

    .line 37
    invoke-virtual {v0}, Lin/dragonbra/javasteam/generated/UdpHeader;->getMagic()I

    move-result v1

    const v2, 0x31305356

    if-eq v1, v2, :cond_17

    return-void

    .line 41
    :cond_17
    invoke-virtual {v0}, Lin/dragonbra/javasteam/generated/UdpHeader;->getPayloadSize()S

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->setPayload(Lin/dragonbra/javasteam/util/stream/MemoryStream;J)V

    :catch_1f
    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 6

    .line 111
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 114
    :try_start_5
    iget-object v1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->header:Lin/dragonbra/javasteam/generated/UdpHeader;

    invoke-virtual {v1, v0}, Lin/dragonbra/javasteam/generated/UdpHeader;->serialize(Ljava/io/OutputStream;)V

    .line 115
    iget-object v1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->payload:Lin/dragonbra/javasteam/util/stream/MemoryStream;

    sget-object v2, Lin/dragonbra/javasteam/util/stream/SeekOrigin;->BEGIN:Lin/dragonbra/javasteam/util/stream/SeekOrigin;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->seek(JLin/dragonbra/javasteam/util/stream/SeekOrigin;)J

    .line 116
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->payload:Lin/dragonbra/javasteam/util/stream/MemoryStream;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1c} :catch_1c

    .line 120
    :catch_1c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;
    .registers 1

    .line 135
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->header:Lin/dragonbra/javasteam/generated/UdpHeader;

    return-object p0
.end method

.method public getPayload()Lin/dragonbra/javasteam/util/stream/MemoryStream;
    .registers 1

    .line 139
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->payload:Lin/dragonbra/javasteam/util/stream/MemoryStream;

    return-object p0
.end method

.method public isValid()Z
    .registers 3

    .line 129
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->header:Lin/dragonbra/javasteam/generated/UdpHeader;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/generated/UdpHeader;->getMagic()I

    move-result v0

    const v1, 0x31305356

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->header:Lin/dragonbra/javasteam/generated/UdpHeader;

    .line 130
    invoke-virtual {v0}, Lin/dragonbra/javasteam/generated/UdpHeader;->getPayloadSize()S

    move-result v0

    const/16 v1, 0x4dc

    if-gt v0, v1, :cond_1b

    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->payload:Lin/dragonbra/javasteam/util/stream/MemoryStream;

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0
.end method

.method public setPayload(Lin/dragonbra/javasteam/util/stream/MemoryStream;)V
    .registers 6

    .line 88
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->getLength()J

    move-result-wide v0

    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->getPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->setPayload(Lin/dragonbra/javasteam/util/stream/MemoryStream;J)V

    return-void
.end method

.method public setPayload(Lin/dragonbra/javasteam/util/stream/MemoryStream;J)V
    .registers 6

    const-wide/16 v0, 0x4dc

    cmp-long v0, p2, v0

    if-gtz v0, :cond_2c

    long-to-int p2, p2

    .line 96
    new-array p3, p2, [B

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p1, p3, v0, p2}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->read([BII)I

    .line 99
    new-instance p1, Lin/dragonbra/javasteam/util/stream/MemoryStream;

    invoke-direct {p1, p3}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>([B)V

    iput-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->payload:Lin/dragonbra/javasteam/util/stream/MemoryStream;

    .line 100
    iget-object p2, p0, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->header:Lin/dragonbra/javasteam/generated/UdpHeader;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->getLength()J

    move-result-wide v0

    long-to-int p1, v0

    int-to-short p1, p1

    invoke-virtual {p2, p1}, Lin/dragonbra/javasteam/generated/UdpHeader;->setPayloadSize(S)V

    .line 101
    iget-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->header:Lin/dragonbra/javasteam/generated/UdpHeader;

    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->payload:Lin/dragonbra/javasteam/util/stream/MemoryStream;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->getLength()J

    move-result-wide p2

    long-to-int p0, p2

    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/generated/UdpHeader;->setMsgSize(I)V

    return-void

    .line 93
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Payload length exceeds 0x4DC maximum"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
