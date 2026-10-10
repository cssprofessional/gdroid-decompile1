###### Class org.bouncycastle.util.encoders.HexEncoder (org.bouncycastle.util.encoders.HexEncoder)
.class public Lorg/bouncycastle/util/encoders/HexEncoder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/util/encoders/Encoder;


# instance fields
.field protected final decodingTable:[B

.field protected final encodingTable:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    iput-object v0, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    invoke-virtual {p0}, Lorg/bouncycastle/util/encoders/HexEncoder;->initialiseDecodingTable()V

    return-void

    :array_16
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method private static ignore(C)Z
    .registers 2

    .line 0
    const/16 v0, 0xa

    if-eq p0, v0, :cond_13

    const/16 v0, 0xd

    if-eq p0, v0, :cond_13

    const/16 v0, 0x9

    if-eq p0, v0, :cond_13

    const/16 v0, 0x20

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method


# virtual methods
.method public decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    const/16 v0, 0x24

    new-array v1, v0, [B

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_8
    if-lez v2, :cond_1a

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_1a

    :cond_17
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    :cond_1a
    :goto_1a
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_1e
    if-ge v4, v2, :cond_72

    :goto_20
    if-ge v4, v2, :cond_2f

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v7

    if-eqz v7, :cond_2f

    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_2f
    iget-object v7, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v4, v7, v4

    :goto_39
    if-ge v8, v2, :cond_48

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v7

    if-eqz v7, :cond_48

    add-int/lit8 v8, v8, 0x1

    goto :goto_39

    :cond_48
    iget-object v7, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v7, v7, v8

    or-int v8, v4, v7

    if-ltz v8, :cond_6a

    add-int/lit8 v8, v5, 0x1

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v4, v7

    int-to-byte v4, v4

    aput-byte v4, v1, v5

    if-ne v8, v0, :cond_65

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    move v5, v3

    goto :goto_66

    :cond_65
    move v5, v8

    :goto_66
    add-int/lit8 v6, v6, 0x1

    move v4, v9

    goto :goto_1e

    :cond_6a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid characters encountered in Hex string"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_72
    if-lez v5, :cond_77

    invoke-virtual {p2, v1, v3, v5}, Ljava/io/OutputStream;->write([BII)V

    :cond_77
    return v6
.end method

.method public decode([BIILjava/io/OutputStream;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    const/16 v0, 0x24

    new-array v1, v0, [B

    add-int/2addr p3, p2

    :goto_5
    if-le p3, p2, :cond_16

    add-int/lit8 v2, p3, -0x1

    aget-byte v2, p1, v2

    int-to-char v2, v2

    invoke-static {v2}, Lorg/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_16

    :cond_13
    add-int/lit8 p3, p3, -0x1

    goto :goto_5

    :cond_16
    :goto_16
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_19
    if-ge p2, p3, :cond_67

    :goto_1b
    if-ge p2, p3, :cond_29

    aget-byte v5, p1, p2

    int-to-char v5, v5

    invoke-static {v5}, Lorg/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v5

    if-eqz v5, :cond_29

    add-int/lit8 p2, p2, 0x1

    goto :goto_1b

    :cond_29
    iget-object v5, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v6, p2, 0x1

    aget-byte p2, p1, p2

    aget-byte p2, v5, p2

    :goto_31
    if-ge v6, p3, :cond_3f

    aget-byte v5, p1, v6

    int-to-char v5, v5

    invoke-static {v5}, Lorg/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v5

    if-eqz v5, :cond_3f

    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    :cond_3f
    iget-object v5, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p1, v6

    aget-byte v5, v5, v6

    or-int v6, p2, v5

    if-ltz v6, :cond_5f

    add-int/lit8 v6, v3, 0x1

    shl-int/lit8 p2, p2, 0x4

    or-int/2addr p2, v5

    int-to-byte p2, p2

    aput-byte p2, v1, v3

    if-ne v6, v0, :cond_5a

    invoke-virtual {p4, v1}, Ljava/io/OutputStream;->write([B)V

    move v3, v2

    goto :goto_5b

    :cond_5a
    move v3, v6

    :goto_5b
    add-int/lit8 v4, v4, 0x1

    move p2, v7

    goto :goto_19

    :cond_5f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid characters encountered in Hex data"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_67
    if-lez v3, :cond_6c

    invoke-virtual {p4, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    :cond_6c
    return v4
.end method

.method public decodeStrict(Ljava/lang/String;II)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    if-eqz p1, :cond_50

    if-ltz p2, :cond_48

    if-ltz p3, :cond_48

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_48

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_40

    ushr-int/lit8 p3, p3, 0x1

    new-array v0, p3, [B

    const/4 v1, 0x0

    :goto_16
    if-ge v1, p3, :cond_3f

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v2, v2, v4

    iget-object v4, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v3, v4, v3

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v2, v3

    if-ltz v2, :cond_37

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_37
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid characters encountered in Hex string"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3f
    return-object v0

    :cond_40
    new-instance p0, Ljava/io/IOException;

    const-string p1, "a hexadecimal encoding must have an even number of characters"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_48
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "invalid offset and/or length specified"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_50
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'str\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public encode([BIILjava/io/OutputStream;)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    if-gez p3, :cond_4

    return v0

    :cond_4
    const/16 v1, 0x48

    new-array v1, v1, [B

    move v8, p3

    :goto_9
    if-lez v8, :cond_21

    const/16 v2, 0x24

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, v9

    move-object v6, v1

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/util/encoders/HexEncoder;->encode([BII[BI)I

    move-result v2

    invoke-virtual {p4, v1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr p2, v9

    sub-int/2addr v8, v9

    goto :goto_9

    :cond_21
    mul-int/lit8 p3, p3, 0x2

    return p3
.end method

.method public encode([BII[BI)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    add-int/2addr p3, p2

    move v0, p5

    :goto_2
    if-ge p2, p3, :cond_1e

    add-int/lit8 v1, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 v2, p2, 0xff

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    ushr-int/lit8 v2, v2, 0x4

    aget-byte v2, v4, v2

    aput-byte v2, p4, v0

    add-int/lit8 v0, v0, 0x2

    and-int/lit8 p2, p2, 0xf

    aget-byte p2, v4, p2

    aput-byte p2, p4, v3

    move p2, v1

    goto :goto_2

    :cond_1e
    sub-int/2addr v0, p5

    return v0
.end method

.method public getEncodedLength(I)I
    .registers 2

    .line 0
    mul-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public getMaxDecodedLength(I)I
    .registers 2

    .line 0
    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public initialiseDecodingTable()V
    .registers 5

    .line 0
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    array-length v3, v2

    if-ge v1, v3, :cond_d

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    :goto_d
    iget-object v1, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    array-length v2, v1

    if-ge v0, v2, :cond_1c

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    aget-byte v1, v1, v0

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1c
    iget-object p0, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v0, 0x61

    aget-byte v0, p0, v0

    const/16 v1, 0x41

    aput-byte v0, p0, v1

    const/16 v0, 0x62

    aget-byte v0, p0, v0

    const/16 v1, 0x42

    aput-byte v0, p0, v1

    const/16 v0, 0x63

    aget-byte v0, p0, v0

    const/16 v1, 0x43

    aput-byte v0, p0, v1

    const/16 v0, 0x64

    aget-byte v0, p0, v0

    const/16 v1, 0x44

    aput-byte v0, p0, v1

    const/16 v0, 0x65

    aget-byte v0, p0, v0

    const/16 v1, 0x45

    aput-byte v0, p0, v1

    const/16 v0, 0x66

    aget-byte v0, p0, v0

    const/16 v1, 0x46

    aput-byte v0, p0, v1

    return-void
.end method
