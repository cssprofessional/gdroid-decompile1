###### Class org.tukaani.xz.BlockInputStream (org.tukaani.xz.BlockInputStream)
.class Lorg/tukaani/xz/BlockInputStream;
.super Ljava/io/InputStream;
.source "BlockInputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final check:Lorg/tukaani/xz/check/Check;

.field private compressedSizeInHeader:J

.field private compressedSizeLimit:J

.field private endReached:Z

.field private filterChain:Ljava/io/InputStream;

.field private final headerSize:I

.field private final inCounted:Lorg/tukaani/xz/CountingInputStream;

.field private final inData:Ljava/io/DataInputStream;

.field private final tempBuf:[B

.field private uncompressedSize:J

.field private uncompressedSizeInHeader:J

.field private final verifyCheck:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/tukaani/xz/check/Check;ZIJJLorg/tukaani/xz/ArrayCache;)V
    .registers 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/tukaani/xz/IndexIndicatorException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move-wide/from16 v3, p7

    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v5, -0x1

    .line 22
    iput-wide v5, v0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    .line 23
    iput-wide v5, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    const-wide/16 v7, 0x0

    .line 26
    iput-wide v7, v0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    const/4 v9, 0x0

    .line 27
    iput-boolean v9, v0, Lorg/tukaani/xz/BlockInputStream;->endReached:Z

    const/4 v10, 0x1

    .line 29
    new-array v11, v10, [B

    iput-object v11, v0, Lorg/tukaani/xz/BlockInputStream;->tempBuf:[B

    move-object/from16 v11, p2

    .line 38
    iput-object v11, v0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    move/from16 v12, p3

    .line 39
    iput-boolean v12, v0, Lorg/tukaani/xz/BlockInputStream;->verifyCheck:Z

    .line 40
    new-instance v12, Ljava/io/DataInputStream;

    invoke-direct {v12, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v12, v0, Lorg/tukaani/xz/BlockInputStream;->inData:Ljava/io/DataInputStream;

    .line 43
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v13

    if-eqz v13, :cond_1df

    add-int/lit8 v14, v13, 0x1

    mul-int/lit8 v14, v14, 0x4

    .line 50
    iput v14, v0, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    .line 52
    new-array v15, v14, [B

    int-to-byte v13, v13

    .line 53
    aput-byte v13, v15, v9

    add-int/lit8 v13, v14, -0x1

    .line 54
    invoke-virtual {v12, v15, v10, v13}, Ljava/io/DataInputStream;->readFully([BII)V

    add-int/lit8 v12, v14, -0x4

    add-int/lit8 v13, v14, -0x4

    .line 57
    invoke-static {v15, v9, v12, v13}, Lorg/tukaani/xz/common/DecoderUtil;->isCRC32Valid([BIII)Z

    move-result v12

    const-string v13, "XZ Block Header is corrupt"

    if-eqz v12, :cond_1d8

    .line 61
    aget-byte v12, v15, v10

    and-int/lit8 v16, v12, 0x3c

    const-string v9, "Unsupported options in XZ Block Header"

    if-nez v16, :cond_1d2

    and-int/lit8 v12, v12, 0x3

    add-int/lit8 v5, v12, 0x1

    .line 67
    new-array v6, v5, [J

    .line 68
    new-array v7, v5, [[B

    .line 72
    new-instance v8, Ljava/io/ByteArrayInputStream;

    add-int/lit8 v10, v14, -0x6

    const/4 v11, 0x2

    invoke-direct {v8, v15, v11, v10}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    int-to-long v10, v14

    const-wide v21, 0x7ffffffffffffffcL

    sub-long v21, v21, v10

    .line 79
    :try_start_6e
    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/check/Check;->getSize()I

    move-result v10

    int-to-long v10, v10

    sub-long v10, v21, v10

    iput-wide v10, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    const/4 v10, 0x1

    .line 83
    aget-byte v11, v15, v10

    and-int/lit8 v10, v11, 0x40

    if-eqz v10, :cond_a3

    .line 84
    invoke-static {v8}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v10

    iput-wide v10, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_84} :catch_9f

    const-wide/16 v19, 0x0

    cmp-long v14, v10, v19

    if-eqz v14, :cond_97

    move v14, v12

    move-object/from16 p3, v13

    .line 86
    :try_start_8d
    iget-wide v12, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    cmp-long v12, v10, v12

    if-gtz v12, :cond_99

    .line 90
    iput-wide v10, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    :goto_95
    const/4 v10, 0x1

    goto :goto_a7

    :cond_97
    move-object/from16 p3, v13

    .line 88
    :cond_99
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    :catch_9f
    move-object/from16 p3, v13

    goto/16 :goto_1ca

    :cond_a3
    move v14, v12

    move-object/from16 p3, v13

    goto :goto_95

    .line 95
    :goto_a7
    aget-byte v10, v15, v10

    and-int/lit16 v10, v10, 0x80

    if-eqz v10, :cond_b3

    .line 96
    invoke-static {v8}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v10

    iput-wide v10, v0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    :cond_b3
    const/4 v10, 0x0

    :goto_b4
    if-ge v10, v5, :cond_dc

    .line 100
    invoke-static {v8}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v11

    aput-wide v11, v6, v10

    .line 102
    invoke-static {v8}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v11

    .line 103
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v13

    move v15, v14

    int-to-long v13, v13

    cmp-long v13, v11, v13

    if-gtz v13, :cond_d6

    long-to-int v11, v11

    .line 106
    new-array v11, v11, [B

    aput-object v11, v7, v10

    .line 107
    invoke-virtual {v8, v11}, Ljava/io/InputStream;->read([B)I

    add-int/lit8 v10, v10, 0x1

    move v14, v15

    goto :goto_b4

    .line 104
    :cond_d6
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_dc} :catch_1ca

    :cond_dc
    move v15, v14

    .line 115
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v10

    :goto_e1
    if-lez v10, :cond_f2

    .line 116
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v11

    if-nez v11, :cond_ec

    add-int/lit8 v10, v10, -0x1

    goto :goto_e1

    .line 117
    :cond_ec
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    invoke-direct {v0, v9}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f2
    const-wide/16 v8, -0x1

    cmp-long v10, p5, v8

    if-eqz v10, :cond_13e

    .line 126
    iget v8, v0, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/check/Check;->getSize()I

    move-result v9

    add-int/2addr v8, v9

    int-to-long v8, v8

    cmp-long v10, v8, p5

    .line 127
    const-string v11, "XZ Index does not match a Block Header"

    if-gez v10, :cond_138

    sub-long v8, p5, v8

    .line 136
    iget-wide v12, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    cmp-long v10, v8, v12

    if-gtz v10, :cond_132

    iget-wide v12, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    const-wide/16 v17, -0x1

    cmp-long v10, v12, v17

    if-eqz v10, :cond_11a

    cmp-long v10, v12, v8

    if-nez v10, :cond_132

    .line 145
    :cond_11a
    iget-wide v12, v0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    cmp-long v10, v12, v17

    if-eqz v10, :cond_12b

    cmp-long v10, v12, v3

    if-nez v10, :cond_125

    goto :goto_12b

    .line 147
    :cond_125
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v11}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_12b
    :goto_12b
    iput-wide v8, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    .line 153
    iput-wide v8, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    .line 154
    iput-wide v3, v0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    goto :goto_13e

    .line 139
    :cond_132
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v11}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_138
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v11}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_13e
    :goto_13e
    new-array v3, v5, [Lorg/tukaani/xz/FilterDecoder;

    const/4 v4, 0x0

    :goto_141
    if-ge v4, v5, :cond_192

    .line 163
    aget-wide v8, v6, v4

    const-wide/16 v10, 0x21

    cmp-long v10, v8, v10

    if-nez v10, :cond_155

    .line 164
    new-instance v8, Lorg/tukaani/xz/LZMA2Decoder;

    aget-object v9, v7, v4

    invoke-direct {v8, v9}, Lorg/tukaani/xz/LZMA2Decoder;-><init>([B)V

    aput-object v8, v3, v4

    goto :goto_176

    :cond_155
    const-wide/16 v10, 0x3

    cmp-long v10, v8, v10

    if-nez v10, :cond_165

    .line 167
    new-instance v8, Lorg/tukaani/xz/DeltaDecoder;

    aget-object v9, v7, v4

    invoke-direct {v8, v9}, Lorg/tukaani/xz/DeltaDecoder;-><init>([B)V

    aput-object v8, v3, v4

    goto :goto_176

    .line 169
    :cond_165
    invoke-static {v8, v9}, Lorg/tukaani/xz/BCJCoder;->isBCJFilterID(J)Z

    move-result v8

    if-eqz v8, :cond_179

    .line 170
    new-instance v8, Lorg/tukaani/xz/BCJDecoder;

    aget-wide v9, v6, v4

    aget-object v11, v7, v4

    invoke-direct {v8, v9, v10, v11}, Lorg/tukaani/xz/BCJDecoder;-><init>(J[B)V

    aput-object v8, v3, v4

    :goto_176
    add-int/lit8 v4, v4, 0x1

    goto :goto_141

    .line 173
    :cond_179
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Filter ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v2, v6, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_192
    invoke-static {v3}, Lorg/tukaani/xz/RawCoder;->validate([Lorg/tukaani/xz/FilterCoder;)V

    if-ltz v2, :cond_1ae

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_199
    if-ge v9, v5, :cond_1a5

    .line 183
    aget-object v6, v3, v9

    invoke-interface {v6}, Lorg/tukaani/xz/FilterDecoder;->getMemoryUsage()I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v9, v9, 0x1

    goto :goto_199

    :cond_1a5
    if-gt v4, v2, :cond_1a8

    goto :goto_1ae

    .line 186
    :cond_1a8
    new-instance v0, Lorg/tukaani/xz/MemoryLimitException;

    invoke-direct {v0, v4, v2}, Lorg/tukaani/xz/MemoryLimitException;-><init>(II)V

    throw v0

    .line 191
    :cond_1ae
    :goto_1ae
    new-instance v2, Lorg/tukaani/xz/CountingInputStream;

    invoke-direct {v2, v1}, Lorg/tukaani/xz/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, v0, Lorg/tukaani/xz/BlockInputStream;->inCounted:Lorg/tukaani/xz/CountingInputStream;

    .line 194
    iput-object v2, v0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    move v12, v15

    :goto_1b8
    if-ltz v12, :cond_1c9

    .line 196
    aget-object v1, v3, v12

    iget-object v2, v0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    move-object/from16 v4, p9

    invoke-interface {v1, v2, v4}, Lorg/tukaani/xz/FilterDecoder;->getInputStream(Ljava/io/InputStream;Lorg/tukaani/xz/ArrayCache;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    add-int/lit8 v12, v12, -0x1

    goto :goto_1b8

    :cond_1c9
    return-void

    .line 111
    :catch_1ca
    :goto_1ca
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1d2
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    invoke-direct {v0, v9}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d8
    move-object v1, v13

    .line 58
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1df
    new-instance v0, Lorg/tukaani/xz/IndexIndicatorException;

    invoke-direct {v0}, Lorg/tukaani/xz/IndexIndicatorException;-><init>()V

    throw v0
.end method

.method private validate()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->inCounted:Lorg/tukaani/xz/CountingInputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/CountingInputStream;->getSize()J

    move-result-wide v0

    .line 253
    iget-wide v2, p0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_12

    cmp-long v2, v2, v0

    if-nez v2, :cond_1f

    :cond_12
    iget-wide v2, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_25

    iget-wide v4, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1f

    goto :goto_25

    .line 257
    :cond_1f
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p0

    :cond_25
    :goto_25
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    const-wide/16 v4, 0x3

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_41

    .line 261
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->inData:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    if-nez v0, :cond_3b

    move-wide v0, v2

    goto :goto_25

    .line 262
    :cond_3b
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p0

    .line 265
    :cond_41
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v0}, Lorg/tukaani/xz/check/Check;->getSize()I

    move-result v0

    new-array v0, v0, [B

    .line 266
    iget-object v1, p0, Lorg/tukaani/xz/BlockInputStream;->inData:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 267
    iget-boolean v1, p0, Lorg/tukaani/xz/BlockInputStream;->verifyCheck:Z

    if-eqz v1, :cond_81

    iget-object v1, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v1}, Lorg/tukaani/xz/check/Check;->finish()[B

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_5f

    goto :goto_81

    .line 268
    :cond_5f
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Integrity check ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    .line 269
    invoke-virtual {p0}, Lorg/tukaani/xz/check/Check;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") does not match"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_81
    :goto_81
    return-void
.end method


# virtual methods
.method public available()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    iget-object p0, p0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    return p0
.end method

.method public close()V
    .registers 2

    .line 285
    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    const/4 v0, 0x0

    .line 295
    iput-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    return-void
.end method

.method public getUncompressedSize()J
    .registers 3

    .line 303
    iget-wide v0, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    return-wide v0
.end method

.method public getUnpaddedSize()J
    .registers 5

    .line 299
    iget v0, p0, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    int-to-long v0, v0

    iget-object v2, p0, Lorg/tukaani/xz/BlockInputStream;->inCounted:Lorg/tukaani/xz/CountingInputStream;

    invoke-virtual {v2}, Lorg/tukaani/xz/CountingInputStream;->getSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object p0, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {p0}, Lorg/tukaani/xz/check/Check;->getSize()I

    move-result p0

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->tempBuf:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/tukaani/xz/BlockInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    goto :goto_12

    :cond_c
    iget-object p0, p0, Lorg/tukaani/xz/BlockInputStream;->tempBuf:[B

    aget-byte p0, p0, v2

    and-int/lit16 v1, p0, 0xff

    :goto_12
    return v1
.end method

.method public read([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    iget-boolean v0, p0, Lorg/tukaani/xz/BlockInputStream;->endReached:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    return v1

    .line 209
    :cond_6
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_62

    .line 212
    iget-boolean v3, p0, Lorg/tukaani/xz/BlockInputStream;->verifyCheck:Z

    if-eqz v3, :cond_18

    .line 213
    iget-object v3, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v3, p1, p2, v0}, Lorg/tukaani/xz/check/Check;->update([BII)V

    .line 215
    :cond_18
    iget-wide p1, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    int-to-long v3, v0

    add-long/2addr p1, v3

    iput-wide p1, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    .line 218
    iget-object p1, p0, Lorg/tukaani/xz/BlockInputStream;->inCounted:Lorg/tukaani/xz/CountingInputStream;

    invoke-virtual {p1}, Lorg/tukaani/xz/CountingInputStream;->getSize()J

    move-result-wide p1

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-ltz v5, :cond_5c

    .line 219
    iget-wide v5, p0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    cmp-long p1, p1, v5

    if-gtz p1, :cond_5c

    iget-wide p1, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    cmp-long v3, p1, v3

    if-ltz v3, :cond_5c

    iget-wide v3, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_42

    cmp-long v5, p1, v3

    if-gtz v5, :cond_5c

    :cond_42
    if-lt v0, p3, :cond_48

    cmp-long p1, p1, v3

    if-nez p1, :cond_69

    .line 234
    :cond_48
    iget-object p1, p0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    if-ne p1, v1, :cond_56

    .line 237
    invoke-direct {p0}, Lorg/tukaani/xz/BlockInputStream;->validate()V

    .line 238
    iput-boolean v2, p0, Lorg/tukaani/xz/BlockInputStream;->endReached:Z

    goto :goto_69

    .line 235
    :cond_56
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p0

    .line 224
    :cond_5c
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p0

    :cond_62
    if-ne v0, v1, :cond_69

    .line 241
    invoke-direct {p0}, Lorg/tukaani/xz/BlockInputStream;->validate()V

    .line 242
    iput-boolean v2, p0, Lorg/tukaani/xz/BlockInputStream;->endReached:Z

    :cond_69
    :goto_69
    return v0
.end method
