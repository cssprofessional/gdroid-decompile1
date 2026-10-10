###### Class org.tukaani.xz.LZMAInputStream (org.tukaani.xz.LZMAInputStream)
.class public Lorg/tukaani/xz/LZMAInputStream;
.super Ljava/io/InputStream;
.source "LZMAInputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DICT_SIZE_MAX:I = 0x7ffffff0


# instance fields
.field private arrayCache:Lorg/tukaani/xz/ArrayCache;

.field private endReached:Z

.field private exception:Ljava/io/IOException;

.field private in:Ljava/io/InputStream;

.field private lz:Lorg/tukaani/xz/lz/LZDecoder;

.field private lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

.field private rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

.field private relaxedEndCondition:Z

.field private remainingSize:J

.field private final tempBuf:[B


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 177
    invoke-direct {p0, p1, v0}, Lorg/tukaani/xz/LZMAInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDefaultCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/tukaani/xz/LZMAInputStream;-><init>(Ljava/io/InputStream;ILorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILorg/tukaani/xz/ArrayCache;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    .line 52
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->relaxedEndCondition:Z

    const/4 v1, 0x1

    .line 54
    new-array v2, v1, [B

    iput-object v2, p0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    const/4 v2, 0x0

    .line 62
    iput-object v2, p0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    .line 288
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 291
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    move v3, v0

    move v8, v3

    :goto_1b
    const/4 v4, 0x4

    if-ge v3, v4, :cond_29

    .line 296
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    mul-int/lit8 v5, v3, 0x8

    shl-int/2addr v4, v5

    or-int/2addr v8, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_29
    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_2c
    const/16 v3, 0x8

    if-ge v0, v3, :cond_3c

    .line 304
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    int-to-long v3, v3

    mul-int/lit8 v9, v0, 0x8

    shl-long/2addr v3, v9

    or-long/2addr v5, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 307
    :cond_3c
    invoke-static {v8, v7}, Lorg/tukaani/xz/LZMAInputStream;->getMemoryUsage(IB)I

    move-result v0

    const/4 v2, -0x1

    if-eq p2, v2, :cond_4c

    if-gt v0, p2, :cond_46

    goto :goto_4c

    .line 309
    :cond_46
    new-instance p0, Lorg/tukaani/xz/MemoryLimitException;

    invoke-direct {p0, v0, p2}, Lorg/tukaani/xz/MemoryLimitException;-><init>(II)V

    throw p0

    .line 314
    :cond_4c
    :goto_4c
    iput-boolean v1, p0, Lorg/tukaani/xz/LZMAInputStream;->relaxedEndCondition:Z

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v10, p3

    .line 316
    invoke-direct/range {v3 .. v10}, Lorg/tukaani/xz/LZMAInputStream;->initialize(Ljava/io/InputStream;JBI[BLorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JBI)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    .line 52
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->relaxedEndCondition:Z

    const/4 v0, 0x1

    .line 54
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    const/4 v7, 0x0

    .line 368
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDefaultCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    .line 367
    invoke-direct/range {v1 .. v8}, Lorg/tukaani/xz/LZMAInputStream;->initialize(Ljava/io/InputStream;JBI[BLorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JBI[B)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    .line 52
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->relaxedEndCondition:Z

    const/4 v0, 0x1

    .line 54
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    .line 407
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDefaultCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move-object v7, p6

    .line 406
    invoke-direct/range {v1 .. v8}, Lorg/tukaani/xz/LZMAInputStream;->initialize(Ljava/io/InputStream;JBI[BLorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JBI[BLorg/tukaani/xz/ArrayCache;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 453
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    .line 52
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->relaxedEndCondition:Z

    const/4 v0, 0x1

    .line 54
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    .line 454
    invoke-direct/range {p0 .. p7}, Lorg/tukaani/xz/LZMAInputStream;->initialize(Ljava/io/InputStream;JBI[BLorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JIIII[B)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    .line 493
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v1, 0x0

    .line 51
    iput-boolean v1, v0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    .line 52
    iput-boolean v1, v0, Lorg/tukaani/xz/LZMAInputStream;->relaxedEndCondition:Z

    const/4 v1, 0x1

    .line 54
    new-array v1, v1, [B

    iput-object v1, v0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    const/4 v1, 0x0

    .line 62
    iput-object v1, v0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    .line 495
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDefaultCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v9

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 494
    invoke-direct/range {v0 .. v9}, Lorg/tukaani/xz/LZMAInputStream;->initialize(Ljava/io/InputStream;JIIII[BLorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JIIII[BLorg/tukaani/xz/ArrayCache;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 542
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    .line 52
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->relaxedEndCondition:Z

    const/4 v0, 0x1

    .line 54
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    .line 543
    invoke-direct/range {p0 .. p9}, Lorg/tukaani/xz/LZMAInputStream;->initialize(Ljava/io/InputStream;JIIII[BLorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/tukaani/xz/ArrayCache;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 213
    invoke-direct {p0, p1, v0, p2}, Lorg/tukaani/xz/LZMAInputStream;-><init>(Ljava/io/InputStream;ILorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method private static getDictSize(I)I
    .registers 2

    if-ltz p0, :cond_11

    const v0, 0x7ffffff0

    if-gt p0, v0, :cond_11

    const/16 v0, 0x1000

    if-ge p0, v0, :cond_c

    move p0, v0

    :cond_c
    add-int/lit8 p0, p0, 0xf

    and-int/lit8 p0, p0, -0x10

    return p0

    .line 132
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "LZMA dictionary is too big for this implementation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMemoryUsage(IB)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;,
            Lorg/tukaani/xz/CorruptedInputException;
        }
    .end annotation

    if-ltz p0, :cond_21

    const v0, 0x7ffffff0

    if-gt p0, v0, :cond_21

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0xe0

    if-gt p1, v0, :cond_19

    .line 93
    rem-int/lit8 p1, p1, 0x2d

    .line 94
    div-int/lit8 v0, p1, 0x9

    mul-int/lit8 v1, v0, 0x9

    sub-int/2addr p1, v1

    .line 97
    invoke-static {p0, p1, v0}, Lorg/tukaani/xz/LZMAInputStream;->getMemoryUsage(III)I

    move-result p0

    return p0

    .line 91
    :cond_19
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    const-string p1, "Invalid LZMA properties byte"

    invoke-direct {p0, p1}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 86
    :cond_21
    new-instance p0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string p1, "LZMA dictionary is too big for this implementation"

    invoke-direct {p0, p1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMemoryUsage(III)I
    .registers 4

    if-ltz p1, :cond_1c

    const/16 v0, 0x8

    if-gt p1, v0, :cond_1c

    if-ltz p2, :cond_1c

    const/4 v0, 0x4

    if-gt p2, v0, :cond_1c

    .line 126
    invoke-static {p0}, Lorg/tukaani/xz/LZMAInputStream;->getDictSize(I)I

    move-result p0

    div-int/lit16 p0, p0, 0x400

    add-int/lit8 p0, p0, 0xa

    const/16 v0, 0x600

    add-int/2addr p1, p2

    shl-int p1, v0, p1

    div-int/lit16 p1, p1, 0x400

    add-int/2addr p0, p1

    return p0

    .line 117
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid lc or lp"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initialize(Ljava/io/InputStream;JBI[BLorg/tukaani/xz/ArrayCache;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v7, p5

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-ltz v0, :cond_3c

    move v0, p4

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xe0

    if-gt v0, v1, :cond_34

    .line 563
    div-int/lit8 v6, v0, 0x2d

    mul-int/lit8 v1, v6, 0x2d

    sub-int/2addr v0, v1

    .line 565
    div-int/lit8 v5, v0, 0x9

    mul-int/lit8 v1, v5, 0x9

    sub-int v4, v0, v1

    if-ltz v7, :cond_2c

    const v0, 0x7ffffff0

    if-gt v7, v0, :cond_2c

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 574
    invoke-direct/range {v0 .. v9}, Lorg/tukaani/xz/LZMAInputStream;->initialize(Ljava/io/InputStream;JIIII[BLorg/tukaani/xz/ArrayCache;)V

    return-void

    .line 571
    :cond_2c
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v1, "LZMA dictionary is too big for this implementation"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_34
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    const-string v1, "Invalid LZMA properties byte"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_3c
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v1, "Uncompressed size is too big"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initialize(Ljava/io/InputStream;JIIII[BLorg/tukaani/xz/ArrayCache;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v4, p9

    const-wide/16 v5, -0x1

    cmp-long v5, v2, v5

    if-ltz v5, :cond_5f

    if-ltz v7, :cond_5f

    const/16 v5, 0x8

    if-gt v7, v5, :cond_5f

    if-ltz v8, :cond_5f

    const/4 v5, 0x4

    if-gt v8, v5, :cond_5f

    if-ltz v9, :cond_5f

    if-gt v9, v5, :cond_5f

    .line 589
    iput-object v1, v0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    .line 590
    iput-object v4, v0, Lorg/tukaani/xz/LZMAInputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    .line 594
    invoke-static/range {p7 .. p7}, Lorg/tukaani/xz/LZMAInputStream;->getDictSize(I)I

    move-result v5

    const-wide/16 v10, 0x0

    cmp-long v6, v2, v10

    if-ltz v6, :cond_38

    int-to-long v10, v5

    cmp-long v6, v10, v2

    if-lez v6, :cond_38

    long-to-int v5, v2

    .line 596
    invoke-static {v5}, Lorg/tukaani/xz/LZMAInputStream;->getDictSize(I)I

    move-result v5

    .line 598
    :cond_38
    new-instance v6, Lorg/tukaani/xz/lz/LZDecoder;

    invoke-static {v5}, Lorg/tukaani/xz/LZMAInputStream;->getDictSize(I)I

    move-result v5

    move-object/from16 v10, p8

    invoke-direct {v6, v5, v10, v4}, Lorg/tukaani/xz/lz/LZDecoder;-><init>(I[BLorg/tukaani/xz/ArrayCache;)V

    iput-object v6, v0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    .line 599
    new-instance v6, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

    invoke-direct {v6, p1}, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;-><init>(Ljava/io/InputStream;)V

    iput-object v6, v0, Lorg/tukaani/xz/LZMAInputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

    .line 600
    new-instance v1, Lorg/tukaani/xz/lzma/LZMADecoder;

    iget-object v5, v0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    move-object v4, v1

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v4 .. v9}, Lorg/tukaani/xz/lzma/LZMADecoder;-><init>(Lorg/tukaani/xz/lz/LZDecoder;Lorg/tukaani/xz/rangecoder/RangeDecoder;III)V

    iput-object v1, v0, Lorg/tukaani/xz/LZMAInputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    .line 602
    iput-wide v2, v0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    return-void

    .line 587
    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private putArraysToCache()V
    .registers 3

    .line 816
    iget-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    if-eqz v0, :cond_c

    .line 817
    iget-object v1, p0, Lorg/tukaani/xz/LZMAInputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    invoke-virtual {v0, v1}, Lorg/tukaani/xz/lz/LZDecoder;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    const/4 v0, 0x0

    .line 818
    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    :cond_c
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 830
    iget-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_14

    .line 831
    invoke-direct {p0}, Lorg/tukaani/xz/LZMAInputStream;->putArraysToCache()V

    const/4 v0, 0x0

    .line 834
    :try_start_8
    iget-object v1, p0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_10

    .line 836
    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    goto :goto_14

    :catchall_10
    move-exception v1

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    .line 837
    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public enableRelaxedEndCondition()V
    .registers 2

    const/4 v0, 0x1

    .line 626
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->relaxedEndCondition:Z

    return-void
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 650
    iget-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/tukaani/xz/LZMAInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    goto :goto_12

    :cond_c
    iget-object p0, p0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    aget-byte p0, p0, v2

    and-int/lit16 v1, p0, 0xff

    :goto_12
    return v1
.end method

.method public read([BII)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_d8

    if-ltz p3, :cond_d8

    add-int v0, p2, p3

    if-ltz v0, :cond_d8

    .line 678
    array-length v1, p1

    if-gt v0, v1, :cond_d8

    const/4 v0, 0x0

    if-nez p3, :cond_f

    return v0

    .line 684
    :cond_f
    iget-object v1, p0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_d0

    .line 687
    iget-object v1, p0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    if-nez v1, :cond_cf

    .line 690
    iget-boolean v1, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_1d

    return v2

    :cond_1d
    if-lez p3, :cond_ce

    .line 701
    :try_start_1f
    iget-wide v3, p0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_2e

    int-to-long v7, p3

    cmp-long v1, v3, v7

    if-gez v1, :cond_2e

    long-to-int v1, v3

    goto :goto_2f

    :cond_2e
    move v1, p3

    .line 704
    :goto_2f
    iget-object v3, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v3, v1}, Lorg/tukaani/xz/lz/LZDecoder;->setLimit(I)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_34} :catch_3d

    const-wide/16 v3, -0x1

    const/4 v1, 0x1

    .line 708
    :try_start_37
    iget-object v7, p0, Lorg/tukaani/xz/LZMAInputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-virtual {v7}, Lorg/tukaani/xz/lzma/LZMADecoder;->decode()V
    :try_end_3c
    .catch Lorg/tukaani/xz/CorruptedInputException; {:try_start_37 .. :try_end_3c} :catch_40
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3c} :catch_3d

    goto :goto_56

    :catch_3d
    move-exception p1

    goto/16 :goto_cb

    :catch_40
    move-exception v7

    .line 714
    :try_start_41
    iget-wide v8, p0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    cmp-long v8, v8, v3

    if-nez v8, :cond_ca

    iget-object v8, p0, Lorg/tukaani/xz/LZMAInputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-virtual {v8}, Lorg/tukaani/xz/lzma/LZMADecoder;->endMarkerDetected()Z

    move-result v8

    if-eqz v8, :cond_ca

    .line 717
    iput-boolean v1, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    .line 723
    iget-object v7, p0, Lorg/tukaani/xz/LZMAInputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

    invoke-virtual {v7}, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;->normalize()V

    .line 727
    :goto_56
    iget-object v7, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v7, p1, p2}, Lorg/tukaani/xz/lz/LZDecoder;->flush([BI)I

    move-result v7

    add-int/2addr p2, v7

    sub-int/2addr p3, v7

    add-int/2addr v0, v7

    .line 732
    iget-wide v8, p0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    cmp-long v10, v8, v5

    if-ltz v10, :cond_6f

    int-to-long v10, v7

    sub-long/2addr v8, v10

    .line 734
    iput-wide v8, p0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    cmp-long v5, v8, v5

    if-nez v5, :cond_6f

    .line 738
    iput-boolean v1, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    .line 741
    :cond_6f
    iget-boolean v5, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    if-eqz v5, :cond_1d

    .line 747
    iget-object p1, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {p1}, Lorg/tukaani/xz/lz/LZDecoder;->hasPending()Z

    move-result p1

    if-nez p1, :cond_c4

    .line 754
    iget-object p1, p0, Lorg/tukaani/xz/LZMAInputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

    invoke-virtual {p1}, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;->isFinished()Z

    move-result p1

    if-nez p1, :cond_bc

    .line 763
    iget-wide p1, p0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    cmp-long p1, p1, v3

    if-eqz p1, :cond_b6

    iget-boolean p1, p0, Lorg/tukaani/xz/LZMAInputStream;->relaxedEndCondition:Z

    if-eqz p1, :cond_b6

    .line 771
    iget-object p1, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {p1, v1}, Lorg/tukaani/xz/lz/LZDecoder;->setLimit(I)V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_92} :catch_3d

    .line 776
    :try_start_92
    iget-object p1, p0, Lorg/tukaani/xz/LZMAInputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-virtual {p1}, Lorg/tukaani/xz/lzma/LZMADecoder;->decode()V
    :try_end_97
    .catch Lorg/tukaani/xz/CorruptedInputException; {:try_start_92 .. :try_end_97} :catch_98
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_97} :catch_3d

    goto :goto_af

    :catch_98
    move-exception p1

    .line 778
    :try_start_99
    iget-object p2, p0, Lorg/tukaani/xz/LZMAInputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-virtual {p2}, Lorg/tukaani/xz/lzma/LZMADecoder;->endMarkerDetected()Z

    move-result p2

    if-eqz p2, :cond_b5

    .line 785
    iget-object p1, p0, Lorg/tukaani/xz/LZMAInputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

    invoke-virtual {p1}, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;->normalize()V

    .line 791
    iget-object p1, p0, Lorg/tukaani/xz/LZMAInputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

    invoke-virtual {p1}, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_af

    goto :goto_bc

    .line 792
    :cond_af
    :goto_af
    new-instance p1, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p1}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p1

    .line 779
    :cond_b5
    throw p1

    .line 764
    :cond_b6
    new-instance p1, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p1}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p1

    .line 802
    :cond_bc
    :goto_bc
    invoke-direct {p0}, Lorg/tukaani/xz/LZMAInputStream;->putArraysToCache()V

    if-nez v0, :cond_c2

    goto :goto_c3

    :cond_c2
    move v2, v0

    :goto_c3
    return v2

    .line 748
    :cond_c4
    new-instance p1, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p1}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p1

    .line 715
    :cond_ca
    throw v7
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_cb} :catch_3d

    .line 810
    :goto_cb
    iput-object p1, p0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    .line 811
    throw p1

    :cond_ce
    return v0

    .line 688
    :cond_cf
    throw v1

    .line 685
    :cond_d0
    new-instance p0, Lorg/tukaani/xz/XZIOException;

    const-string p1, "Stream closed"

    invoke-direct {p0, p1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 679
    :cond_d8
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
