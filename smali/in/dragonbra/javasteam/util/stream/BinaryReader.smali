###### Class in.dragonbra.javasteam.util.stream.BinaryReader (in.dragonbra.javasteam.util.stream.BinaryReader)
.class public Lin/dragonbra/javasteam/util/stream/BinaryReader;
.super Ljava/io/FilterInputStream;
.source "BinaryReader.java"


# instance fields
.field private position:I

.field private final readBuffer:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 19
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x8

    .line 14
    new-array p1, p1, [B

    iput-object p1, p0, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readBuffer:[B

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lin/dragonbra/javasteam/util/stream/BinaryReader;->position:I

    return-void
.end method

.method private readNullTermUtf8String()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 158
    :goto_5
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eqz v1, :cond_1a

    if-gtz v1, :cond_10

    goto :goto_1a

    .line 162
    :cond_10
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 163
    iget v1, p0, Lin/dragonbra/javasteam/util/stream/BinaryReader;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lin/dragonbra/javasteam/util/stream/BinaryReader;->position:I

    goto :goto_5

    .line 166
    :cond_1a
    :goto_1a
    iget v1, p0, Lin/dragonbra/javasteam/util/stream/BinaryReader;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lin/dragonbra/javasteam/util/stream/BinaryReader;->position:I

    .line 168
    invoke-static {v0}, Lin/dragonbra/javasteam/util/compat/ByteArrayOutputStreamCompat;->toString(Ljava/io/ByteArrayOutputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getPosition()I
    .registers 1

    .line 172
    iget p0, p0, Lin/dragonbra/javasteam/util/stream/BinaryReader;->position:I

    return p0
.end method

.method public readBoolean()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_13

    .line 117
    iget v1, p0, Lin/dragonbra/javasteam/util/stream/BinaryReader;->position:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lin/dragonbra/javasteam/util/stream/BinaryReader;->position:I

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    return v2

    .line 115
    :cond_13
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public readByte()B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_10

    .line 64
    iget v1, p0, Lin/dragonbra/javasteam/util/stream/BinaryReader;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lin/dragonbra/javasteam/util/stream/BinaryReader;->position:I

    int-to-byte p0, v0

    return p0

    .line 62
    :cond_10
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public readBytes(I)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_24

    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 41
    new-array p0, v0, [B

    return-object p0

    .line 44
    :cond_8
    new-array v1, p1, [B

    :goto_a
    if-ge v0, p1, :cond_1e

    .line 48
    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    sub-int v3, p1, v0

    invoke-virtual {v2, v1, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_18

    add-int/2addr v0, v2

    goto :goto_a

    .line 50
    :cond_18
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 55
    :cond_1e
    iget p1, p0, Lin/dragonbra/javasteam/util/stream/BinaryReader;->position:I

    add-int/2addr p1, v0

    iput p1, p0, Lin/dragonbra/javasteam/util/stream/BinaryReader;->position:I

    return-object v1

    .line 37
    :cond_24
    new-instance p0, Ljava/io/IOException;

    const-string p1, "negative length"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readChar()C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_10

    .line 100
    iget v1, p0, Lin/dragonbra/javasteam/util/stream/BinaryReader;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lin/dragonbra/javasteam/util/stream/BinaryReader;->position:I

    int-to-char p0, v0

    return p0

    .line 98
    :cond_10
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public readInt()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readBuffer:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lt v0, v3, :cond_30

    .line 27
    iget v0, p0, Lin/dragonbra/javasteam/util/stream/BinaryReader;->position:I

    add-int/2addr v0, v3

    iput v0, p0, Lin/dragonbra/javasteam/util/stream/BinaryReader;->position:I

    .line 29
    iget-object p0, p0, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readBuffer:[B

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0

    .line 25
    :cond_30
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public readLong()J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readBuffer:[B

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lt v0, v3, :cond_5f

    .line 83
    iget v0, p0, Lin/dragonbra/javasteam/util/stream/BinaryReader;->position:I

    add-int/2addr v0, v3

    iput v0, p0, Lin/dragonbra/javasteam/util/stream/BinaryReader;->position:I

    .line 85
    iget-object p0, p0, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readBuffer:[B

    const/4 v0, 0x7

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    const/4 v4, 0x6

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const/4 v4, 0x5

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const/4 v4, 0x4

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const/4 v4, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const/4 v4, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const/4 v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long v3, v4, v3

    or-long/2addr v0, v3

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0

    .line 81
    :cond_5f
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public readNullTermString()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readNullTermString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public readNullTermString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_35

    .line 130
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 131
    invoke-direct {p0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readNullTermUtf8String()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 134
    :cond_f
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 137
    :goto_16
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_2f

    .line 142
    iget v2, p0, Lin/dragonbra/javasteam/util/stream/BinaryReader;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lin/dragonbra/javasteam/util/stream/BinaryReader;->position:I

    if-nez v1, :cond_2b

    .line 151
    invoke-static {v0, p1}, Lin/dragonbra/javasteam/util/compat/ByteArrayOutputStreamCompat;->toString(Ljava/io/ByteArrayOutputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 148
    :cond_2b
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_16

    .line 139
    :cond_2f
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 127
    :cond_35
    new-instance p0, Ljava/io/IOException;

    const-string p1, "charset is null"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readShort()S
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readBuffer:[B

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lt v0, v3, :cond_21

    .line 73
    iget v0, p0, Lin/dragonbra/javasteam/util/stream/BinaryReader;->position:I

    add-int/2addr v0, v3

    iput v0, p0, Lin/dragonbra/javasteam/util/stream/BinaryReader;->position:I

    .line 75
    iget-object p0, p0, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readBuffer:[B

    const/4 v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0

    .line 71
    :cond_21
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method
