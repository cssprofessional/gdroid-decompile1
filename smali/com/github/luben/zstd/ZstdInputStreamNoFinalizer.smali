###### Class com.github.luben.zstd.ZstdInputStreamNoFinalizer (com.github.luben.zstd.ZstdInputStreamNoFinalizer)
.class public Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;
.super Ljava/io/FilterInputStream;
.source "ZstdInputStreamNoFinalizer.java"


# static fields
.field private static final srcBuffSize:I


# instance fields
.field private final bufferPool:Lcom/github/luben/zstd/BufferPool;

.field private dstPos:J

.field private frameFinished:Z

.field private isClosed:Z

.field private isContinuous:Z

.field private needRead:Z

.field private final src:[B

.field private final srcByteBuffer:Ljava/nio/ByteBuffer;

.field private srcPos:J

.field private srcSize:J

.field private final stream:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    invoke-static {}, Lcom/github/luben/zstd/util/Native;->load()V

    .line 35
    invoke-static {}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->recommendedDInSize()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->srcBuffSize:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    sget-object v0, Lcom/github/luben/zstd/NoPool;->INSTANCE:Lcom/github/luben/zstd/BufferPool;

    invoke-direct {p0, p1, v0}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;-><init>(Ljava/io/InputStream;Lcom/github/luben/zstd/BufferPool;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/github/luben/zstd/BufferPool;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->dstPos:J

    .line 29
    iput-wide v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->srcPos:J

    .line 30
    iput-wide v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->srcSize:J

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->needRead:Z

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->isContinuous:Z

    .line 38
    iput-boolean p1, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->frameFinished:Z

    .line 39
    iput-boolean v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->isClosed:Z

    .line 64
    iput-object p2, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->bufferPool:Lcom/github/luben/zstd/BufferPool;

    .line 65
    sget p1, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->srcBuffSize:I

    invoke-static {p2, p1}, Lcom/github/luben/zstd/Zstd;->getArrayBackedBuffer(Lcom/github/luben/zstd/BufferPool;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->srcByteBuffer:Ljava/nio/ByteBuffer;

    .line 66
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    iput-object p1, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->src:[B

    .line 68
    monitor-enter p0

    .line 69
    :try_start_26
    invoke-static {}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->createDStream()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->stream:J

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->initDStream(J)I

    .line 71
    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_31

    throw p1
.end method

.method private static native createDStream()J
.end method

.method private native decompressStream(J[BI[BI)I
.end method

.method private static native freeDStream(J)I
.end method

.method private native initDStream(J)I
.end method

.method public static native recommendedDInSize()J
.end method

.method public static native recommendedDOutSize()J
.end method


# virtual methods
.method public declared-synchronized available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 217
    :try_start_1
    iget-boolean v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->isClosed:Z

    if-nez v0, :cond_16

    .line 220
    iget-boolean v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->needRead:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_14

    if-nez v0, :cond_c

    .line 221
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 223
    :cond_c
    :try_start_c
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_14

    monitor-exit p0

    return v0

    :catchall_14
    move-exception v0

    goto :goto_1e

    .line 218
    :cond_16
    :try_start_16
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :goto_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_14

    throw v0
.end method

.method public declared-synchronized close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 262
    :try_start_1
    iget-boolean v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->isClosed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1d

    if-eqz v0, :cond_7

    .line 263
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 265
    :try_start_8
    iput-boolean v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->isClosed:Z

    .line 266
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->bufferPool:Lcom/github/luben/zstd/BufferPool;

    iget-object v1, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->srcByteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Lcom/github/luben/zstd/BufferPool;->release(Ljava/nio/ByteBuffer;)V

    .line 267
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->stream:J

    invoke-static {v0, v1}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->freeDStream(J)I

    .line 268
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_1d

    .line 269
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public declared-synchronized getContinuous()Z
    .registers 2

    monitor-enter p0

    .line 85
    :try_start_1
    iget-boolean v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->isContinuous:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public markSupported()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 204
    :try_start_2
    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-nez v3, :cond_f

    .line 207
    invoke-virtual {p0, v1, v2, v0}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->readInternal([BII)I

    move-result v3

    goto :goto_6

    :catchall_d
    move-exception v0

    goto :goto_1a

    :cond_f
    if-ne v3, v0, :cond_17

    .line 210
    aget-byte v0, v1, v2
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_d

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    .line 212
    :cond_17
    monitor-exit p0

    const/4 p0, -0x1

    return p0

    :goto_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_d

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-ltz p2, :cond_17

    .line 127
    :try_start_3
    array-length v0, p1
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_13

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_17

    const/4 v0, 0x0

    if-nez p3, :cond_c

    .line 132
    monitor-exit p0

    return v0

    :cond_c
    :goto_c
    if-nez v0, :cond_15

    .line 136
    :try_start_e
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->readInternal([BII)I

    move-result v0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_13

    goto :goto_c

    :catchall_13
    move-exception p1

    goto :goto_3f

    .line 138
    :cond_15
    monitor-exit p0

    return v0

    .line 128
    :cond_17
    :try_start_17
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " from offset "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " in buffer of size "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_17 .. :try_end_40} :catchall_13

    throw p1
.end method

.method public readInternal([BII)I
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v0, p2

    move/from16 v1, p3

    .line 144
    iget-boolean v2, v7, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->isClosed:Z

    if-nez v2, :cond_e7

    if-ltz v0, :cond_bf

    .line 149
    array-length v2, v8

    sub-int/2addr v2, v0

    if-gt v1, v2, :cond_bf

    add-int v9, v0, v1

    int-to-long v10, v0

    .line 154
    iput-wide v10, v7, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->dstPos:J

    const-wide/16 v0, -0x1

    .line 157
    :goto_19
    iget-wide v2, v7, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->dstPos:J

    int-to-long v12, v9

    cmp-long v4, v2, v12

    if-gez v4, :cond_bc

    cmp-long v0, v0, v2

    if-gez v0, :cond_bc

    .line 160
    iget-boolean v0, v7, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->needRead:Z

    const/4 v14, 0x0

    if-eqz v0, :cond_74

    iget-object v0, v7, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-gtz v0, :cond_37

    iget-wide v0, v7, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->dstPos:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_74

    .line 161
    :cond_37
    iget-object v0, v7, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v1, v7, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->src:[B

    sget v2, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->srcBuffSize:I

    invoke-virtual {v0, v1, v14, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, v7, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->srcSize:J

    const-wide/16 v2, 0x0

    .line 162
    iput-wide v2, v7, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->srcPos:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_72

    .line 164
    iput-wide v2, v7, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->srcSize:J

    .line 165
    iget-boolean v0, v7, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->frameFinished:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_54

    return v1

    .line 167
    :cond_54
    iget-boolean v0, v7, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->isContinuous:Z

    if-eqz v0, :cond_66

    .line 168
    iget-wide v4, v7, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->dstPos:J

    sub-long/2addr v4, v10

    long-to-int v0, v4

    int-to-long v4, v0

    iput-wide v4, v7, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->srcSize:J

    cmp-long v0, v4, v2

    if-lez v0, :cond_65

    long-to-int v0, v4

    return v0

    :cond_65
    return v1

    .line 174
    :cond_66
    new-instance v0, Lcom/github/luben/zstd/ZstdIOException;

    invoke-static {}, Lcom/github/luben/zstd/Zstd;->errCorruptionDetected()J

    move-result-wide v1

    const-string v3, "Truncated source"

    invoke-direct {v0, v1, v2, v3}, Lcom/github/luben/zstd/ZstdIOException;-><init>(JLjava/lang/String;)V

    throw v0

    .line 177
    :cond_72
    iput-boolean v14, v7, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->frameFinished:Z

    .line 180
    :cond_74
    iget-wide v5, v7, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->dstPos:J

    .line 181
    iget-wide v1, v7, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->stream:J

    iget-object v15, v7, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->src:[B

    iget-wide v3, v7, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->srcSize:J

    long-to-int v4, v3

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move/from16 v16, v4

    move v4, v9

    move-wide/from16 v17, v5

    move-object v5, v15

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->decompressStream(J[BI[BI)I

    move-result v0

    int-to-long v1, v0

    .line 183
    invoke-static {v1, v2}, Lcom/github/luben/zstd/Zstd;->isError(J)Z

    move-result v3

    if-nez v3, :cond_b6

    const/4 v1, 0x1

    if-nez v0, :cond_a9

    .line 189
    iput-boolean v1, v7, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->frameFinished:Z

    .line 192
    iget-wide v2, v7, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->srcPos:J

    iget-wide v4, v7, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->srcSize:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_a2

    move v14, v1

    :cond_a2
    iput-boolean v14, v7, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->needRead:Z

    .line 193
    iget-wide v0, v7, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->dstPos:J

    sub-long/2addr v0, v10

    long-to-int v0, v0

    return v0

    .line 197
    :cond_a9
    iget-wide v2, v7, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->dstPos:J

    cmp-long v0, v2, v12

    if-gez v0, :cond_b0

    move v14, v1

    :cond_b0
    iput-boolean v14, v7, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->needRead:Z

    move-wide/from16 v0, v17

    goto/16 :goto_19

    .line 184
    :cond_b6
    new-instance v0, Lcom/github/luben/zstd/ZstdIOException;

    invoke-direct {v0, v1, v2}, Lcom/github/luben/zstd/ZstdIOException;-><init>(J)V

    throw v0

    :cond_bc
    sub-long/2addr v2, v10

    long-to-int v0, v2

    return v0

    .line 150
    :cond_bf
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from offset "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in buffer of size "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    :cond_e7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized setContinuous(Z)Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;
    .registers 2

    monitor-enter p0

    .line 80
    :try_start_1
    iput-boolean p1, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->isContinuous:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 81
    monitor-exit p0

    return-object p0

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public declared-synchronized setDict(Lcom/github/luben/zstd/ZstdDictDecompress;)Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 97
    :try_start_1
    invoke-virtual {p1}, Lcom/github/luben/zstd/AutoCloseBase;->acquireSharedLock()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_16

    .line 99
    :try_start_4
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->stream:J

    invoke-static {v0, v1, p1}, Lcom/github/luben/zstd/Zstd;->loadFastDictDecompress(JLcom/github/luben/zstd/ZstdDictDecompress;)I

    move-result v0

    int-to-long v0, v0

    .line 100
    invoke-static {v0, v1}, Lcom/github/luben/zstd/Zstd;->isError(J)Z

    move-result v2
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_1e

    if-nez v2, :cond_18

    .line 104
    :try_start_11
    invoke-virtual {p1}, Lcom/github/luben/zstd/AutoCloseBase;->releaseSharedLock()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_16

    .line 106
    monitor-exit p0

    return-object p0

    :catchall_16
    move-exception p1

    goto :goto_23

    .line 101
    :cond_18
    :try_start_18
    new-instance v2, Lcom/github/luben/zstd/ZstdIOException;

    invoke-direct {v2, v0, v1}, Lcom/github/luben/zstd/ZstdIOException;-><init>(J)V

    throw v2
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception v0

    .line 104
    :try_start_1f
    invoke-virtual {p1}, Lcom/github/luben/zstd/AutoCloseBase;->releaseSharedLock()V

    .line 105
    throw v0

    :goto_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_16

    throw p1
.end method

.method public declared-synchronized setDict([B)Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 89
    :try_start_1
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->stream:J

    array-length v2, p1

    invoke-static {v0, v1, p1, v2}, Lcom/github/luben/zstd/Zstd;->loadDictDecompress(J[BI)I

    move-result p1

    int-to-long v0, p1

    .line 90
    invoke-static {v0, v1}, Lcom/github/luben/zstd/Zstd;->isError(J)Z

    move-result p1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_17

    if-nez p1, :cond_11

    .line 93
    monitor-exit p0

    return-object p0

    .line 91
    :cond_11
    :try_start_11
    new-instance p1, Lcom/github/luben/zstd/ZstdIOException;

    invoke-direct {p1, v0, v1}, Lcom/github/luben/zstd/ZstdIOException;-><init>(J)V

    throw p1

    :catchall_17
    move-exception p1

    .line 93
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public declared-synchronized setLongMax(I)Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 110
    :try_start_1
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->stream:J

    invoke-static {v0, v1, p1}, Lcom/github/luben/zstd/Zstd;->setDecompressionLongMax(JI)I

    move-result p1

    int-to-long v0, p1

    .line 111
    invoke-static {v0, v1}, Lcom/github/luben/zstd/Zstd;->isError(J)Z

    move-result p1
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    if-nez p1, :cond_10

    .line 114
    monitor-exit p0

    return-object p0

    .line 112
    :cond_10
    :try_start_10
    new-instance p1, Lcom/github/luben/zstd/ZstdIOException;

    invoke-direct {p1, v0, v1}, Lcom/github/luben/zstd/ZstdIOException;-><init>(J)V

    throw p1

    :catchall_16
    move-exception p1

    .line 114
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public declared-synchronized setRefMultipleDDicts(Z)Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 118
    :try_start_1
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->stream:J

    invoke-static {v0, v1, p1}, Lcom/github/luben/zstd/Zstd;->setRefMultipleDDicts(JZ)I

    move-result p1

    int-to-long v0, p1

    .line 119
    invoke-static {v0, v1}, Lcom/github/luben/zstd/Zstd;->isError(J)Z

    move-result p1
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    if-nez p1, :cond_10

    .line 122
    monitor-exit p0

    return-object p0

    .line 120
    :cond_10
    :try_start_10
    new-instance p1, Lcom/github/luben/zstd/ZstdIOException;

    invoke-direct {p1, v0, v1}, Lcom/github/luben/zstd/ZstdIOException;-><init>(J)V

    throw p1

    :catchall_16
    move-exception p1

    .line 122
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public declared-synchronized skip(J)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 234
    :try_start_1
    iget-boolean v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->isClosed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_42

    if-nez v0, :cond_4a

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_d

    .line 238
    monitor-exit p0

    return-wide v0

    .line 240
    :cond_d
    :try_start_d
    invoke-static {}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->recommendedDOutSize()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v3, v2

    cmp-long v3, v3, p1

    if-lez v3, :cond_18

    long-to-int v2, p1

    .line 244
    :cond_18
    iget-object v3, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->bufferPool:Lcom/github/luben/zstd/BufferPool;

    invoke-static {v3, v2}, Lcom/github/luben/zstd/Zstd;->getArrayBackedBuffer(Lcom/github/luben/zstd/BufferPool;I)Ljava/nio/ByteBuffer;

    move-result-object v3
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_42

    .line 247
    :try_start_1e
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    move-wide v5, p1

    :goto_23
    cmp-long v7, v5, v0

    if-lez v7, :cond_3a

    int-to-long v7, v2

    .line 249
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    const/4 v8, 0x0

    invoke-virtual {p0, v4, v8, v7}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->read([BII)I

    move-result v7
    :try_end_32
    .catchall {:try_start_1e .. :try_end_32} :catchall_38

    if-gez v7, :cond_35

    goto :goto_3a

    :cond_35
    int-to-long v7, v7

    sub-long/2addr v5, v7

    goto :goto_23

    :catchall_38
    move-exception p1

    goto :goto_44

    .line 256
    :cond_3a
    :goto_3a
    :try_start_3a
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->bufferPool:Lcom/github/luben/zstd/BufferPool;

    invoke-interface {v0, v3}, Lcom/github/luben/zstd/BufferPool;->release(Ljava/nio/ByteBuffer;)V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_42

    sub-long/2addr p1, v5

    .line 258
    monitor-exit p0

    return-wide p1

    :catchall_42
    move-exception p1

    goto :goto_52

    .line 256
    :goto_44
    :try_start_44
    iget-object p2, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->bufferPool:Lcom/github/luben/zstd/BufferPool;

    invoke-interface {p2, v3}, Lcom/github/luben/zstd/BufferPool;->release(Ljava/nio/ByteBuffer;)V

    .line 257
    throw p1

    .line 235
    :cond_4a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 257
    :goto_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_44 .. :try_end_53} :catchall_42

    throw p1
.end method
