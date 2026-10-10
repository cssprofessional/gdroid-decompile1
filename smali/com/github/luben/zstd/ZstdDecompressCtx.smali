###### Class com.github.luben.zstd.ZstdDecompressCtx (com.github.luben.zstd.ZstdDecompressCtx)
.class public Lcom/github/luben/zstd/ZstdDecompressCtx;
.super Lcom/github/luben/zstd/AutoCloseBase;
.source "ZstdDecompressCtx.java"


# instance fields
.field private decompression_dict:Lcom/github/luben/zstd/ZstdDictDecompress;

.field private nativePtr:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 11
    invoke-static {}, Lcom/github/luben/zstd/util/Native;->load()V

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 26
    invoke-direct {p0}, Lcom/github/luben/zstd/AutoCloseBase;-><init>()V

    const-wide/16 v0, 0x0

    .line 14
    iput-wide v0, p0, Lcom/github/luben/zstd/ZstdDecompressCtx;->nativePtr:J

    const/4 v2, 0x0

    .line 16
    iput-object v2, p0, Lcom/github/luben/zstd/ZstdDecompressCtx;->decompression_dict:Lcom/github/luben/zstd/ZstdDictDecompress;

    .line 27
    invoke-static {}, Lcom/github/luben/zstd/ZstdDecompressCtx;->init()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/github/luben/zstd/ZstdDecompressCtx;->nativePtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    .line 31
    invoke-virtual {p0}, Lcom/github/luben/zstd/AutoCloseBase;->storeFence()V

    return-void

    .line 29
    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "ZSTD_createDeCompressCtx failed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native decompressByteArray0(J[BII[BII)J
.end method

.method private static native decompressByteArrayToDirectByteBuffer0(JLjava/nio/ByteBuffer;II[BII)J
.end method

.method private static native decompressDirectByteBuffer0(JLjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)J
.end method

.method private static native decompressDirectByteBufferStream0(JLjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)J
.end method

.method private static native decompressDirectByteBufferToByteArray0(J[BIILjava/nio/ByteBuffer;II)J
.end method

.method private ensureOpen()V
    .registers 5

    .line 121
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdDecompressCtx;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_9

    return-void

    .line 122
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Decompression context is closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native free(J)V
.end method

.method private static native init()J
.end method

.method private static native loadDDict0(J[B)J
.end method

.method private static native loadDDictFast0(JLcom/github/luben/zstd/ZstdDictDecompress;)J
.end method

.method private static native reset0(J)J
.end method


# virtual methods
.method public bridge synthetic close()V
    .registers 1

    .line 8
    invoke-super {p0}, Lcom/github/luben/zstd/AutoCloseBase;->close()V

    return-void
.end method

.method public decompress(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/luben/zstd/ZstdException;
        }
    .end annotation

    .line 317
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    .line 318
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    sub-int v3, v0, v1

    .line 320
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v5

    .line 321
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v1

    sub-int v6, v0, v1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 316
    invoke-virtual/range {v0 .. v6}, Lcom/github/luben/zstd/ZstdDecompressCtx;->decompressDirectByteBuffer(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

    move-result p0

    .line 322
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 323
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p2

    add-int/2addr p2, p0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return p0
.end method

.method public decompress(Ljava/nio/ByteBuffer;[B)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/luben/zstd/ZstdException;
        }
    .end annotation

    .line 329
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    .line 330
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    sub-int v3, v0, v1

    array-length v6, p2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 328
    invoke-virtual/range {v0 .. v6}, Lcom/github/luben/zstd/ZstdDecompressCtx;->decompressByteArrayToDirectByteBuffer(Ljava/nio/ByteBuffer;II[BII)I

    move-result p0

    .line 334
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p2

    add-int/2addr p2, p0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return p0
.end method

.method public decompress([BLjava/nio/ByteBuffer;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/luben/zstd/ZstdException;
        }
    .end annotation

    .line 339
    array-length v3, p1

    .line 343
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v5

    .line 344
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v1

    sub-int v6, v0, v1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 339
    invoke-virtual/range {v0 .. v6}, Lcom/github/luben/zstd/ZstdDecompressCtx;->decompressDirectByteBufferToByteArray([BIILjava/nio/ByteBuffer;II)I

    move-result p0

    .line 345
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return p0
.end method

.method public decompress([B[B)I
    .registers 10

    .line 359
    array-length v3, p1

    array-length v6, p2

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/github/luben/zstd/ZstdDecompressCtx;->decompressByteArray([BII[BII)I

    move-result p0

    return p0
.end method

.method public decompress(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/luben/zstd/ZstdException;
        }
    .end annotation

    .line 350
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 351
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    sub-int v6, v0, v1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, v7

    move v3, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/github/luben/zstd/ZstdDecompressCtx;->decompressDirectByteBuffer(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

    .line 352
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object v7
.end method

.method public decompress([BI)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/luben/zstd/ZstdException;
        }
    .end annotation

    .line 372
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/github/luben/zstd/ZstdDecompressCtx;->decompress([BIII)[B

    move-result-object p0

    return-object p0
.end method

.method public decompress([BIII)[B
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/luben/zstd/ZstdException;
        }
    .end annotation

    if-ltz p4, :cond_18

    .line 390
    new-array v7, p4, [B

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, v7

    move v3, p4

    move-object v4, p1

    move v5, p2

    move v6, p3

    .line 391
    invoke-virtual/range {v0 .. v6}, Lcom/github/luben/zstd/ZstdDecompressCtx;->decompressByteArray([BII[BII)I

    move-result p0

    if-eq p0, p4, :cond_17

    const/4 p1, 0x0

    .line 393
    invoke-static {v7, p1, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :cond_17
    return-object v7

    .line 388
    :cond_18
    new-instance p0, Lcom/github/luben/zstd/ZstdException;

    invoke-static {}, Lcom/github/luben/zstd/Zstd;->errGeneric()J

    move-result-wide p1

    const-string p3, "Original size should not be negative"

    invoke-direct {p0, p1, p2, p3}, Lcom/github/luben/zstd/ZstdException;-><init>(JLjava/lang/String;)V

    throw p0
.end method

.method public decompressByteArray([BII[BII)I
    .registers 16

    .line 218
    array-length v0, p4

    invoke-static {p5, p6, v0}, Lcom/github/luben/zstd/Objects;->checkFromIndexSize(III)V

    .line 219
    array-length v0, p1

    invoke-static {p2, p3, v0}, Lcom/github/luben/zstd/Objects;->checkFromIndexSize(III)V

    .line 221
    invoke-direct {p0}, Lcom/github/luben/zstd/ZstdDecompressCtx;->ensureOpen()V

    .line 222
    invoke-virtual {p0}, Lcom/github/luben/zstd/AutoCloseBase;->acquireSharedLock()V

    .line 225
    :try_start_e
    iget-wide v1, p0, Lcom/github/luben/zstd/ZstdDecompressCtx;->nativePtr:J

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v1 .. v8}, Lcom/github/luben/zstd/ZstdDecompressCtx;->decompressByteArray0(J[BII[BII)J

    move-result-wide p1

    .line 226
    invoke-static {p1, p2}, Lcom/github/luben/zstd/Zstd;->isError(J)Z

    move-result p3
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_38

    if-nez p3, :cond_3a

    const-wide/32 p3, 0x7fffffff

    cmp-long p3, p1, p3

    if-gtz p3, :cond_2c

    long-to-int p1, p1

    .line 234
    invoke-virtual {p0}, Lcom/github/luben/zstd/AutoCloseBase;->releaseSharedLock()V

    return p1

    .line 230
    :cond_2c
    :try_start_2c
    new-instance p1, Lcom/github/luben/zstd/ZstdException;

    invoke-static {}, Lcom/github/luben/zstd/Zstd;->errGeneric()J

    move-result-wide p2

    const-string p4, "Output size is greater than MAX_INT"

    invoke-direct {p1, p2, p3, p4}, Lcom/github/luben/zstd/ZstdException;-><init>(JLjava/lang/String;)V

    throw p1

    :catchall_38
    move-exception p1

    goto :goto_40

    .line 227
    :cond_3a
    new-instance p3, Lcom/github/luben/zstd/ZstdException;

    invoke-direct {p3, p1, p2}, Lcom/github/luben/zstd/ZstdException;-><init>(J)V

    throw p3
    :try_end_40
    .catchall {:try_start_2c .. :try_end_40} :catchall_38

    .line 234
    :goto_40
    invoke-virtual {p0}, Lcom/github/luben/zstd/AutoCloseBase;->releaseSharedLock()V

    .line 235
    throw p1
.end method

.method public decompressByteArrayToDirectByteBuffer(Ljava/nio/ByteBuffer;II[BII)I
    .registers 16

    .line 241
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 245
    array-length v0, p4

    invoke-static {p5, p6, v0}, Lcom/github/luben/zstd/Objects;->checkFromIndexSize(III)V

    .line 246
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-static {p2, p3, v0}, Lcom/github/luben/zstd/Objects;->checkFromIndexSize(III)V

    .line 248
    invoke-direct {p0}, Lcom/github/luben/zstd/ZstdDecompressCtx;->ensureOpen()V

    .line 249
    invoke-virtual {p0}, Lcom/github/luben/zstd/AutoCloseBase;->acquireSharedLock()V

    .line 252
    :try_start_17
    iget-wide v1, p0, Lcom/github/luben/zstd/ZstdDecompressCtx;->nativePtr:J

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v1 .. v8}, Lcom/github/luben/zstd/ZstdDecompressCtx;->decompressByteArrayToDirectByteBuffer0(JLjava/nio/ByteBuffer;II[BII)J

    move-result-wide p1

    .line 253
    invoke-static {p1, p2}, Lcom/github/luben/zstd/Zstd;->isError(J)Z

    move-result p3
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_41

    if-nez p3, :cond_43

    const-wide/32 p3, 0x7fffffff

    cmp-long p3, p1, p3

    if-gtz p3, :cond_35

    long-to-int p1, p1

    .line 261
    invoke-virtual {p0}, Lcom/github/luben/zstd/AutoCloseBase;->releaseSharedLock()V

    return p1

    .line 257
    :cond_35
    :try_start_35
    new-instance p1, Lcom/github/luben/zstd/ZstdException;

    invoke-static {}, Lcom/github/luben/zstd/Zstd;->errGeneric()J

    move-result-wide p2

    const-string p4, "Output size is greater than MAX_INT"

    invoke-direct {p1, p2, p3, p4}, Lcom/github/luben/zstd/ZstdException;-><init>(JLjava/lang/String;)V

    throw p1

    :catchall_41
    move-exception p1

    goto :goto_49

    .line 254
    :cond_43
    new-instance p3, Lcom/github/luben/zstd/ZstdException;

    invoke-direct {p3, p1, p2}, Lcom/github/luben/zstd/ZstdException;-><init>(J)V

    throw p3
    :try_end_49
    .catchall {:try_start_35 .. :try_end_49} :catchall_41

    .line 261
    :goto_49
    invoke-virtual {p0}, Lcom/github/luben/zstd/AutoCloseBase;->releaseSharedLock()V

    .line 262
    throw p1

    .line 242
    :cond_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "dstBuff must be a direct buffer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public decompressDirectByteBuffer(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I
    .registers 16

    .line 176
    invoke-direct {p0}, Lcom/github/luben/zstd/ZstdDecompressCtx;->ensureOpen()V

    .line 177
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 180
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 183
    invoke-virtual {p4}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-static {p5, p6, v0}, Lcom/github/luben/zstd/Objects;->checkFromIndexSize(III)V

    .line 184
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-static {p2, p3, v0}, Lcom/github/luben/zstd/Objects;->checkFromIndexSize(III)V

    .line 186
    invoke-virtual {p0}, Lcom/github/luben/zstd/AutoCloseBase;->acquireSharedLock()V

    .line 189
    :try_start_20
    iget-wide v1, p0, Lcom/github/luben/zstd/ZstdDecompressCtx;->nativePtr:J

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v1 .. v8}, Lcom/github/luben/zstd/ZstdDecompressCtx;->decompressDirectByteBuffer0(JLjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)J

    move-result-wide p1

    .line 190
    invoke-static {p1, p2}, Lcom/github/luben/zstd/Zstd;->isError(J)Z

    move-result p3
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_4a

    if-nez p3, :cond_4c

    const-wide/32 p3, 0x7fffffff

    cmp-long p3, p1, p3

    if-gtz p3, :cond_3e

    long-to-int p1, p1

    .line 198
    invoke-virtual {p0}, Lcom/github/luben/zstd/AutoCloseBase;->releaseSharedLock()V

    return p1

    .line 194
    :cond_3e
    :try_start_3e
    new-instance p1, Lcom/github/luben/zstd/ZstdException;

    invoke-static {}, Lcom/github/luben/zstd/Zstd;->errGeneric()J

    move-result-wide p2

    const-string p4, "Output size is greater than MAX_INT"

    invoke-direct {p1, p2, p3, p4}, Lcom/github/luben/zstd/ZstdException;-><init>(JLjava/lang/String;)V

    throw p1

    :catchall_4a
    move-exception p1

    goto :goto_52

    .line 191
    :cond_4c
    new-instance p3, Lcom/github/luben/zstd/ZstdException;

    invoke-direct {p3, p1, p2}, Lcom/github/luben/zstd/ZstdException;-><init>(J)V

    throw p3
    :try_end_52
    .catchall {:try_start_3e .. :try_end_52} :catchall_4a

    .line 198
    :goto_52
    invoke-virtual {p0}, Lcom/github/luben/zstd/AutoCloseBase;->releaseSharedLock()V

    .line 199
    throw p1

    .line 181
    :cond_56
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "dstBuff must be a direct buffer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 178
    :cond_5e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "srcBuff must be a direct buffer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public decompressDirectByteBufferStream(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .registers 11

    .line 135
    invoke-direct {p0}, Lcom/github/luben/zstd/ZstdDecompressCtx;->ensureOpen()V

    .line 136
    invoke-virtual {p0}, Lcom/github/luben/zstd/AutoCloseBase;->acquireSharedLock()V

    .line 138
    :try_start_6
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdDecompressCtx;->nativePtr:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v4

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v6

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result v7

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v7}, Lcom/github/luben/zstd/ZstdDecompressCtx;->decompressDirectByteBufferStream0(JLjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)J

    move-result-wide v0

    const-wide v2, 0x80000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_51

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v2, v0

    long-to-int v2, v2

    .line 143
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 p2, 0x20

    ushr-long v2, v0, p2

    long-to-int p2, v2

    const v2, 0x7fffffff

    and-int/2addr p2, v2

    .line 144
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_3e
    .catchall {:try_start_6 .. :try_end_3e} :catchall_4f

    const/16 p1, 0x3f

    ushr-long p1, v0, p1

    const-wide/16 v0, 0x1

    cmp-long p1, p1, v0

    if-nez p1, :cond_4a

    const/4 p1, 0x1

    goto :goto_4b

    :cond_4a
    const/4 p1, 0x0

    .line 147
    :goto_4b
    invoke-virtual {p0}, Lcom/github/luben/zstd/AutoCloseBase;->releaseSharedLock()V

    return p1

    :catchall_4f
    move-exception p1

    goto :goto_5f

    :cond_51
    const-wide/16 p1, 0xff

    and-long/2addr p1, v0

    neg-long p1, p1

    .line 141
    :try_start_55
    new-instance v0, Lcom/github/luben/zstd/ZstdException;

    invoke-static {p1, p2}, Lcom/github/luben/zstd/Zstd;->getErrorName(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/github/luben/zstd/ZstdException;-><init>(JLjava/lang/String;)V

    throw v0
    :try_end_5f
    .catchall {:try_start_55 .. :try_end_5f} :catchall_4f

    .line 147
    :goto_5f
    invoke-virtual {p0}, Lcom/github/luben/zstd/AutoCloseBase;->releaseSharedLock()V

    .line 148
    throw p1
.end method

.method public decompressDirectByteBufferToByteArray([BIILjava/nio/ByteBuffer;II)I
    .registers 16

    .line 268
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 272
    invoke-virtual {p4}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-static {p5, p6, v0}, Lcom/github/luben/zstd/Objects;->checkFromIndexSize(III)V

    .line 273
    array-length v0, p1

    invoke-static {p2, p3, v0}, Lcom/github/luben/zstd/Objects;->checkFromIndexSize(III)V

    .line 275
    invoke-direct {p0}, Lcom/github/luben/zstd/ZstdDecompressCtx;->ensureOpen()V

    .line 276
    invoke-virtual {p0}, Lcom/github/luben/zstd/AutoCloseBase;->acquireSharedLock()V

    .line 279
    :try_start_17
    iget-wide v1, p0, Lcom/github/luben/zstd/ZstdDecompressCtx;->nativePtr:J

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v1 .. v8}, Lcom/github/luben/zstd/ZstdDecompressCtx;->decompressDirectByteBufferToByteArray0(J[BIILjava/nio/ByteBuffer;II)J

    move-result-wide p1

    .line 280
    invoke-static {p1, p2}, Lcom/github/luben/zstd/Zstd;->isError(J)Z

    move-result p3
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_41

    if-nez p3, :cond_43

    const-wide/32 p3, 0x7fffffff

    cmp-long p3, p1, p3

    if-gtz p3, :cond_35

    long-to-int p1, p1

    .line 288
    invoke-virtual {p0}, Lcom/github/luben/zstd/AutoCloseBase;->releaseSharedLock()V

    return p1

    .line 284
    :cond_35
    :try_start_35
    new-instance p1, Lcom/github/luben/zstd/ZstdException;

    invoke-static {}, Lcom/github/luben/zstd/Zstd;->errGeneric()J

    move-result-wide p2

    const-string p4, "Output size is greater than MAX_INT"

    invoke-direct {p1, p2, p3, p4}, Lcom/github/luben/zstd/ZstdException;-><init>(JLjava/lang/String;)V

    throw p1

    :catchall_41
    move-exception p1

    goto :goto_49

    .line 281
    :cond_43
    new-instance p3, Lcom/github/luben/zstd/ZstdException;

    invoke-direct {p3, p1, p2}, Lcom/github/luben/zstd/ZstdException;-><init>(J)V

    throw p3
    :try_end_49
    .catchall {:try_start_35 .. :try_end_49} :catchall_41

    .line 288
    :goto_49
    invoke-virtual {p0}, Lcom/github/luben/zstd/AutoCloseBase;->releaseSharedLock()V

    .line 289
    throw p1

    .line 269
    :cond_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "srcBuff must be a direct buffer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public doClose()V
    .registers 6

    .line 35
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdDecompressCtx;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    .line 36
    invoke-static {v0, v1}, Lcom/github/luben/zstd/ZstdDecompressCtx;->free(J)V

    .line 37
    iput-wide v2, p0, Lcom/github/luben/zstd/ZstdDecompressCtx;->nativePtr:J

    :cond_d
    return-void
.end method

.method public loadDict(Lcom/github/luben/zstd/ZstdDictDecompress;)Lcom/github/luben/zstd/ZstdDecompressCtx;
    .registers 5

    .line 59
    invoke-direct {p0}, Lcom/github/luben/zstd/ZstdDecompressCtx;->ensureOpen()V

    .line 60
    invoke-virtual {p0}, Lcom/github/luben/zstd/AutoCloseBase;->acquireSharedLock()V

    .line 61
    invoke-virtual {p1}, Lcom/github/luben/zstd/AutoCloseBase;->acquireSharedLock()V

    .line 63
    :try_start_9
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdDecompressCtx;->nativePtr:J

    invoke-static {v0, v1, p1}, Lcom/github/luben/zstd/ZstdDecompressCtx;->loadDDictFast0(JLcom/github/luben/zstd/ZstdDictDecompress;)J

    move-result-wide v0

    .line 64
    invoke-static {v0, v1}, Lcom/github/luben/zstd/Zstd;->isError(J)Z

    move-result v2

    if-nez v2, :cond_20

    .line 68
    iput-object p1, p0, Lcom/github/luben/zstd/ZstdDecompressCtx;->decompression_dict:Lcom/github/luben/zstd/ZstdDictDecompress;
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_1e

    .line 70
    invoke-virtual {p1}, Lcom/github/luben/zstd/AutoCloseBase;->releaseSharedLock()V

    .line 71
    invoke-virtual {p0}, Lcom/github/luben/zstd/AutoCloseBase;->releaseSharedLock()V

    return-object p0

    :catchall_1e
    move-exception v0

    goto :goto_26

    .line 65
    :cond_20
    :try_start_20
    new-instance v2, Lcom/github/luben/zstd/ZstdException;

    invoke-direct {v2, v0, v1}, Lcom/github/luben/zstd/ZstdException;-><init>(J)V

    throw v2
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_1e

    .line 70
    :goto_26
    invoke-virtual {p1}, Lcom/github/luben/zstd/AutoCloseBase;->releaseSharedLock()V

    .line 71
    invoke-virtual {p0}, Lcom/github/luben/zstd/AutoCloseBase;->releaseSharedLock()V

    .line 72
    throw v0
.end method

.method public loadDict([B)Lcom/github/luben/zstd/ZstdDecompressCtx;
    .registers 4

    .line 84
    invoke-direct {p0}, Lcom/github/luben/zstd/ZstdDecompressCtx;->ensureOpen()V

    .line 85
    invoke-virtual {p0}, Lcom/github/luben/zstd/AutoCloseBase;->acquireSharedLock()V

    .line 87
    :try_start_6
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdDecompressCtx;->nativePtr:J

    invoke-static {v0, v1, p1}, Lcom/github/luben/zstd/ZstdDecompressCtx;->loadDDict0(J[B)J

    move-result-wide v0

    .line 88
    invoke-static {v0, v1}, Lcom/github/luben/zstd/Zstd;->isError(J)Z

    move-result p1

    if-nez p1, :cond_1b

    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, Lcom/github/luben/zstd/ZstdDecompressCtx;->decompression_dict:Lcom/github/luben/zstd/ZstdDictDecompress;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_19

    .line 93
    invoke-virtual {p0}, Lcom/github/luben/zstd/AutoCloseBase;->releaseSharedLock()V

    return-object p0

    :catchall_19
    move-exception p1

    goto :goto_21

    .line 89
    :cond_1b
    :try_start_1b
    new-instance p1, Lcom/github/luben/zstd/ZstdException;

    invoke-direct {p1, v0, v1}, Lcom/github/luben/zstd/ZstdException;-><init>(J)V

    throw p1
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_19

    .line 93
    :goto_21
    invoke-virtual {p0}, Lcom/github/luben/zstd/AutoCloseBase;->releaseSharedLock()V

    .line 94
    throw p1
.end method

.method public reset()V
    .registers 4

    .line 105
    invoke-direct {p0}, Lcom/github/luben/zstd/ZstdDecompressCtx;->ensureOpen()V

    .line 106
    invoke-virtual {p0}, Lcom/github/luben/zstd/AutoCloseBase;->acquireSharedLock()V

    .line 108
    :try_start_6
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdDecompressCtx;->nativePtr:J

    invoke-static {v0, v1}, Lcom/github/luben/zstd/ZstdDecompressCtx;->reset0(J)J

    move-result-wide v0

    .line 109
    invoke-static {v0, v1}, Lcom/github/luben/zstd/Zstd;->isError(J)Z

    move-result v2
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_1c

    if-nez v2, :cond_16

    .line 113
    invoke-virtual {p0}, Lcom/github/luben/zstd/AutoCloseBase;->releaseSharedLock()V

    return-void

    .line 110
    :cond_16
    :try_start_16
    new-instance v2, Lcom/github/luben/zstd/ZstdException;

    invoke-direct {v2, v0, v1}, Lcom/github/luben/zstd/ZstdException;-><init>(J)V

    throw v2
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception v0

    .line 113
    invoke-virtual {p0}, Lcom/github/luben/zstd/AutoCloseBase;->releaseSharedLock()V

    .line 114
    throw v0
.end method

.method public setMagicless(Z)Lcom/github/luben/zstd/ZstdDecompressCtx;
    .registers 4

    .line 46
    invoke-direct {p0}, Lcom/github/luben/zstd/ZstdDecompressCtx;->ensureOpen()V

    .line 47
    invoke-virtual {p0}, Lcom/github/luben/zstd/AutoCloseBase;->acquireSharedLock()V

    .line 48
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdDecompressCtx;->nativePtr:J

    invoke-static {v0, v1, p1}, Lcom/github/luben/zstd/Zstd;->setDecompressionMagicless(JZ)I

    .line 49
    invoke-virtual {p0}, Lcom/github/luben/zstd/AutoCloseBase;->releaseSharedLock()V

    return-object p0
.end method
