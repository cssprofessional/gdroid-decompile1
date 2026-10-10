###### Class org.tukaani.xz.lz.LZEncoder (org.tukaani.xz.lz.LZEncoder)
.class public abstract Lorg/tukaani/xz/lz/LZEncoder;
.super Ljava/lang/Object;
.source "LZEncoder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final MF_BT4:I = 0x14

.field public static final MF_HC4:I = 0x4


# instance fields
.field final buf:[B

.field final bufSize:I

.field private finishing:Z

.field private final keepSizeAfter:I

.field private final keepSizeBefore:I

.field final matchLenMax:I

.field final niceLen:I

.field private pendingSize:I

.field private readLimit:I

.field readPos:I

.field private writePos:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(IIIIILorg/tukaani/xz/ArrayCache;)V
    .registers 9

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    .line 37
    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readLimit:I

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->finishing:Z

    .line 39
    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    .line 40
    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->pendingSize:I

    .line 137
    invoke-static {p1, p2, p3, p5}, Lorg/tukaani/xz/lz/LZEncoder;->getBufSize(IIII)I

    move-result v1

    iput v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->bufSize:I

    .line 142
    invoke-virtual {p6, v1, v0}, Lorg/tukaani/xz/ArrayCache;->getByteArray(IZ)[B

    move-result-object p6

    iput-object p6, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    add-int/2addr p2, p1

    .line 144
    iput p2, p0, Lorg/tukaani/xz/lz/LZEncoder;->keepSizeBefore:I

    add-int/2addr p3, p5

    .line 145
    iput p3, p0, Lorg/tukaani/xz/lz/LZEncoder;->keepSizeAfter:I

    .line 147
    iput p5, p0, Lorg/tukaani/xz/lz/LZEncoder;->matchLenMax:I

    .line 148
    iput p4, p0, Lorg/tukaani/xz/lz/LZEncoder;->niceLen:I

    return-void
.end method

.method private static getBufSize(IIII)I
    .registers 4

    add-int/2addr p1, p0

    add-int/2addr p2, p3

    .line 60
    div-int/lit8 p0, p0, 0x2

    const/high16 p3, 0x40000

    add-int/2addr p0, p3

    const/high16 p3, 0x20000000

    invoke-static {p0, p3}, Ljava/lang/Math;->min(II)I

    move-result p0

    add-int/2addr p1, p2

    add-int/2addr p1, p0

    return p1
.end method

.method public static getInstance(IIIIIIILorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/lz/LZEncoder;
    .registers 18

    move v0, p5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x14

    if-ne v0, v1, :cond_18

    .line 125
    new-instance v0, Lorg/tukaani/xz/lz/BT4;

    move-object v2, v0

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lorg/tukaani/xz/lz/BT4;-><init>(IIIIIILorg/tukaani/xz/ArrayCache;)V

    return-object v0

    .line 129
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 121
    :cond_1e
    new-instance v0, Lorg/tukaani/xz/lz/HC4;

    move-object v1, v0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lorg/tukaani/xz/lz/HC4;-><init>(IIIIIILorg/tukaani/xz/ArrayCache;)V

    return-object v0
.end method

.method public static getMemoryUsage(IIIII)I
    .registers 5

    .line 72
    invoke-static {p0, p1, p2, p3}, Lorg/tukaani/xz/lz/LZEncoder;->getBufSize(IIII)I

    move-result p1

    div-int/lit16 p1, p1, 0x400

    add-int/lit8 p1, p1, 0xa

    const/4 p2, 0x4

    if-eq p4, p2, :cond_1b

    const/16 p2, 0x14

    if-ne p4, p2, :cond_15

    .line 81
    invoke-static {p0}, Lorg/tukaani/xz/lz/BT4;->getMemoryUsage(I)I

    move-result p0

    :goto_13
    add-int/2addr p1, p0

    goto :goto_20

    .line 85
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 77
    :cond_1b
    invoke-static {p0}, Lorg/tukaani/xz/lz/HC4;->getMemoryUsage(I)I

    move-result p0

    goto :goto_13

    :goto_20
    return p1
.end method

.method private moveWindow()V
    .registers 5

    .line 183
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->keepSizeBefore:I

    sub-int/2addr v0, v1

    and-int/lit8 v0, v0, -0x10

    .line 184
    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    sub-int/2addr v1, v0

    .line 185
    iget-object v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    const/4 v3, 0x0

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    .line 188
    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readLimit:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readLimit:I

    .line 189
    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    return-void
.end method

.method public static normalize([III)V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p1, :cond_11

    .line 45
    aget v2, p0, v1

    if-gt v2, p2, :cond_b

    .line 46
    aput v0, p0, v1

    goto :goto_e

    :cond_b
    sub-int/2addr v2, p2

    .line 48
    aput v2, p0, v1

    :goto_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    return-void
.end method

.method private processPendingBytes()V
    .registers 4

    .line 235
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->pendingSize:I

    if-lez v0, :cond_13

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    iget v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->readLimit:I

    if-ge v1, v2, :cond_13

    sub-int/2addr v1, v0

    .line 236
    iput v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    const/4 v1, 0x0

    .line 238
    iput v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->pendingSize:I

    .line 239
    invoke-virtual {p0, v0}, Lorg/tukaani/xz/lz/LZEncoder;->skip(I)V

    :cond_13
    return-void
.end method


# virtual methods
.method public copyUncompressed(Ljava/io/OutputStream;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget p0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/lit8 p0, p0, 0x1

    sub-int/2addr p0, p2

    invoke-virtual {p1, v0, p0, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public fillWindow([BII)I
    .registers 7

    .line 199
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->bufSize:I

    iget v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->keepSizeAfter:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_c

    .line 200
    invoke-direct {p0}, Lorg/tukaani/xz/lz/LZEncoder;->moveWindow()V

    .line 204
    :cond_c
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->bufSize:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    sub-int v2, v0, v1

    if-le p3, v2, :cond_16

    sub-int p3, v0, v1

    .line 207
    :cond_16
    iget-object v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    iget p1, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    .line 212
    iget p2, p0, Lorg/tukaani/xz/lz/LZEncoder;->keepSizeAfter:I

    if-lt p1, p2, :cond_27

    sub-int/2addr p1, p2

    .line 213
    iput p1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readLimit:I

    .line 215
    :cond_27
    invoke-direct {p0}, Lorg/tukaani/xz/lz/LZEncoder;->processPendingBytes()V

    return p3
.end method

.method public getAvail()I
    .registers 2

    .line 293
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    iget p0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getByte(I)I
    .registers 3

    .line 314
    iget-object v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget p0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    sub-int/2addr p0, p1

    aget-byte p0, v0, p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public getByte(II)I
    .registers 4

    .line 323
    iget-object v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget p0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/2addr p0, p1

    sub-int/2addr p0, p2

    aget-byte p0, v0, p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public getMatchLen(II)I
    .registers 5

    .line 335
    iget-object v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget p0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Lorg/tukaani/xz/lz/MatchLength;->getLen([BIIII)I

    move-result p0

    return p0
.end method

.method public getMatchLen(III)I
    .registers 5

    .line 348
    iget-object v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget p0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/2addr p0, p1

    add-int/lit8 p2, p2, 0x1

    const/4 p1, 0x0

    invoke-static {v0, p0, p2, p1, p3}, Lorg/tukaani/xz/lz/MatchLength;->getLen([BIIII)I

    move-result p0

    return p0
.end method

.method public abstract getMatches()Lorg/tukaani/xz/lz/Matches;
.end method

.method public getPos()I
    .registers 1

    .line 301
    iget p0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    return p0
.end method

.method public hasEnoughData(I)Z
    .registers 3

    .line 276
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    sub-int/2addr v0, p1

    iget p0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readLimit:I

    if-ge v0, p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public isStarted()Z
    .registers 2

    .line 249
    iget p0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public movePos(II)I
    .registers 5

    .line 392
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    .line 393
    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    sub-int/2addr v1, v0

    if-ge v1, p1, :cond_18

    if-lt v1, p2, :cond_11

    .line 396
    iget-boolean p1, p0, Lorg/tukaani/xz/lz/LZEncoder;->finishing:Z

    if-nez p1, :cond_18

    .line 397
    :cond_11
    iget p1, p0, Lorg/tukaani/xz/lz/LZEncoder;->pendingSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/tukaani/xz/lz/LZEncoder;->pendingSize:I

    const/4 v1, 0x0

    :cond_18
    return v1
.end method

.method public putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V
    .registers 2

    .line 152
    iget-object p0, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    invoke-virtual {p1, p0}, Lorg/tukaani/xz/ArrayCache;->putArray([B)V

    return-void
.end method

.method public setFinishing()V
    .registers 3

    .line 266
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readLimit:I

    .line 267
    iput-boolean v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->finishing:Z

    .line 268
    invoke-direct {p0}, Lorg/tukaani/xz/lz/LZEncoder;->processPendingBytes()V

    return-void
.end method

.method public setFlushing()V
    .registers 2

    .line 257
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readLimit:I

    .line 258
    invoke-direct {p0}, Lorg/tukaani/xz/lz/LZEncoder;->processPendingBytes()V

    return-void
.end method

.method public setPresetDict(I[B)V
    .registers 6

    if-eqz p2, :cond_17

    .line 167
    array-length v0, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 168
    array-length v0, p2

    sub-int/2addr v0, p1

    .line 169
    iget-object v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    iget p2, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    add-int/2addr p2, p1

    iput p2, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    .line 171
    invoke-virtual {p0, p1}, Lorg/tukaani/xz/lz/LZEncoder;->skip(I)V

    :cond_17
    return-void
.end method

.method public abstract skip(I)V
.end method

.method public verifyMatches(Lorg/tukaani/xz/lz/Matches;)Z
    .registers 7

    .line 363
    invoke-virtual {p0}, Lorg/tukaani/xz/lz/LZEncoder;->getAvail()I

    move-result v0

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->matchLenMax:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 365
    :goto_c
    iget v3, p1, Lorg/tukaani/xz/lz/Matches;->count:I

    if-ge v2, v3, :cond_22

    .line 366
    iget-object v3, p1, Lorg/tukaani/xz/lz/Matches;->dist:[I

    aget v3, v3, v2

    invoke-virtual {p0, v3, v0}, Lorg/tukaani/xz/lz/LZEncoder;->getMatchLen(II)I

    move-result v3

    iget-object v4, p1, Lorg/tukaani/xz/lz/Matches;->len:[I

    aget v4, v4, v2

    if-eq v3, v4, :cond_1f

    return v1

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_22
    const/4 p0, 0x1

    return p0
.end method
