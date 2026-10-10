###### Class org.tukaani.xz.common.DecoderUtil (org.tukaani.xz.common.DecoderUtil)
.class public Lorg/tukaani/xz/common/DecoderUtil;
.super Lorg/tukaani/xz/common/Util;
.source "DecoderUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lorg/tukaani/xz/common/Util;-><init>()V

    return-void
.end method

.method public static areStreamFlagsEqual(Lorg/tukaani/xz/common/StreamFlags;Lorg/tukaani/xz/common/StreamFlags;)Z
    .registers 2

    .line 89
    iget p0, p0, Lorg/tukaani/xz/common/StreamFlags;->checkType:I

    iget p1, p1, Lorg/tukaani/xz/common/StreamFlags;->checkType:I

    if-ne p0, p1, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private static decodeStreamFlags([BI)Lorg/tukaani/xz/common/StreamFlags;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    .line 78
    aget-byte v0, p0, p1

    if-nez v0, :cond_18

    add-int/lit8 p1, p1, 0x1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x10

    if-ge v0, v1, :cond_18

    .line 81
    new-instance v0, Lorg/tukaani/xz/common/StreamFlags;

    invoke-direct {v0}, Lorg/tukaani/xz/common/StreamFlags;-><init>()V

    .line 82
    aget-byte p0, p0, p1

    iput p0, v0, Lorg/tukaani/xz/common/StreamFlags;->checkType:I

    return-object v0

    .line 79
    :cond_18
    new-instance p0, Lorg/tukaani/xz/UnsupportedOptionsException;

    invoke-direct {p0}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>()V

    throw p0
.end method

.method public static decodeStreamFooter([B)Lorg/tukaani/xz/common/StreamFlags;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 50
    aget-byte v0, p0, v0

    sget-object v1, Lorg/tukaani/xz/XZ;->FOOTER_MAGIC:[B

    const/4 v2, 0x0

    aget-byte v3, v1, v2

    const-string v4, "XZ Stream Footer is corrupt"

    if-ne v0, v3, :cond_55

    const/16 v0, 0xb

    aget-byte v0, p0, v0

    const/4 v3, 0x1

    aget-byte v1, v1, v3

    if-ne v0, v1, :cond_55

    const/4 v0, 0x6

    const/4 v1, 0x4

    .line 56
    invoke-static {p0, v1, v0, v2}, Lorg/tukaani/xz/common/DecoderUtil;->isCRC32Valid([BIII)Z

    move-result v0

    if-eqz v0, :cond_4f

    const/16 v0, 0x8

    .line 61
    :try_start_20
    invoke-static {p0, v0}, Lorg/tukaani/xz/common/DecoderUtil;->decodeStreamFlags([BI)Lorg/tukaani/xz/common/StreamFlags;

    move-result-object v0
    :try_end_24
    .catch Lorg/tukaani/xz/UnsupportedOptionsException; {:try_start_20 .. :try_end_24} :catch_47

    const-wide/16 v3, 0x0

    .line 67
    iput-wide v3, v0, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    :goto_28
    if-ge v2, v1, :cond_3c

    .line 69
    iget-wide v3, v0, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    add-int/lit8 v5, v2, 0x4

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v6, v2, 0x8

    shl-int/2addr v5, v6

    int-to-long v5, v5

    or-long/2addr v3, v5

    iput-wide v3, v0, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 71
    :cond_3c
    iget-wide v1, v0, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    const-wide/16 v3, 0x4

    mul-long/2addr v1, v3

    iput-wide v1, v0, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    return-object v0

    .line 63
    :catch_47
    new-instance p0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v0, "Unsupported options in XZ Stream Footer"

    invoke-direct {p0, v0}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :cond_4f
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p0, v4}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 53
    :cond_55
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p0, v4}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decodeStreamHeader([B)Lorg/tukaani/xz/common/StreamFlags;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 32
    :goto_1
    sget-object v1, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    array-length v2, v1

    if-ge v0, v2, :cond_15

    .line 33
    aget-byte v2, p0, v0

    aget-byte v1, v1, v0

    if-ne v2, v1, :cond_f

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 34
    :cond_f
    new-instance p0, Lorg/tukaani/xz/XZFormatException;

    invoke-direct {p0}, Lorg/tukaani/xz/XZFormatException;-><init>()V

    throw p0

    .line 36
    :cond_15
    array-length v0, v1

    array-length v2, v1

    const/4 v3, 0x2

    add-int/2addr v2, v3

    invoke-static {p0, v0, v3, v2}, Lorg/tukaani/xz/common/DecoderUtil;->isCRC32Valid([BIII)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 41
    :try_start_1f
    array-length v0, v1

    invoke-static {p0, v0}, Lorg/tukaani/xz/common/DecoderUtil;->decodeStreamFlags([BI)Lorg/tukaani/xz/common/StreamFlags;

    move-result-object p0
    :try_end_24
    .catch Lorg/tukaani/xz/UnsupportedOptionsException; {:try_start_1f .. :try_end_24} :catch_25

    return-object p0

    .line 43
    :catch_25
    new-instance p0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v0, "Unsupported options in XZ Stream Header"

    invoke-direct {p0, v0}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_2d
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    const-string v0, "XZ Stream Header is corrupt"

    invoke-direct {p0, v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decodeVLI(Ljava/io/InputStream;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_38

    and-int/lit8 v2, v0, 0x7f

    int-to-long v2, v2

    const/4 v4, 0x0

    :goto_b
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_37

    add-int/lit8 v4, v4, 0x1

    const/16 v0, 0x9

    if-ge v4, v0, :cond_31

    .line 104
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v1, :cond_2b

    if-eqz v0, :cond_25

    and-int/lit8 v5, v0, 0x7f

    int-to-long v5, v5

    mul-int/lit8 v7, v4, 0x7

    shl-long/2addr v5, v7

    or-long/2addr v2, v5

    goto :goto_b

    .line 109
    :cond_25
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p0

    .line 106
    :cond_2b
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 102
    :cond_31
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p0

    :cond_37
    return-wide v2

    .line 95
    :cond_38
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static isCRC32Valid([BIII)Z
    .registers 8

    .line 19
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 20
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 21
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide p1

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    const/4 v2, 0x4

    if-ge v1, v2, :cond_21

    mul-int/lit8 v2, v1, 0x8

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    add-int v3, p3, v1

    .line 24
    aget-byte v3, p0, v3

    if-eq v2, v3, :cond_1e

    return v0

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_21
    const/4 p0, 0x1

    return p0
.end method
