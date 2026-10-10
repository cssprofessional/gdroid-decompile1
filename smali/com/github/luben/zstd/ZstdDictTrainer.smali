###### Class com.github.luben.zstd.ZstdDictTrainer (com.github.luben.zstd.ZstdDictTrainer)
.class public Lcom/github/luben/zstd/ZstdDictTrainer;
.super Ljava/lang/Object;
.source "ZstdDictTrainer.java"


# instance fields
.field private final allocatedSize:I

.field private final dictSize:I

.field private filledSize:J

.field private level:I

.field private final sampleSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final trainingSamples:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 16
    invoke-static {}, Lcom/github/luben/zstd/Zstd;->defaultCompressionLevel()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/luben/zstd/ZstdDictTrainer;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 5

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/github/luben/zstd/ZstdDictTrainer;->trainingSamples:Ljava/nio/ByteBuffer;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/luben/zstd/ZstdDictTrainer;->sampleSizes:Ljava/util/List;

    .line 22
    iput p1, p0, Lcom/github/luben/zstd/ZstdDictTrainer;->allocatedSize:I

    .line 23
    iput p2, p0, Lcom/github/luben/zstd/ZstdDictTrainer;->dictSize:I

    .line 24
    iput p3, p0, Lcom/github/luben/zstd/ZstdDictTrainer;->level:I

    return-void
.end method

.method private copyToIntArray(Ljava/util/List;)[I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 64
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [I

    .line 66
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 67
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_20
    return-object p0
.end method


# virtual methods
.method public declared-synchronized addSample([B)Z
    .registers 6

    monitor-enter p0

    .line 28
    :try_start_1
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdDictTrainer;->filledSize:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Lcom/github/luben/zstd/ZstdDictTrainer;->allocatedSize:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_29

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    .line 29
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 31
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdDictTrainer;->trainingSamples:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 32
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdDictTrainer;->sampleSizes:Ljava/util/List;

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdDictTrainer;->filledSize:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/github/luben/zstd/ZstdDictTrainer;->filledSize:J
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_29

    .line 34
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_29
    move-exception p1

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public trainSamples()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/luben/zstd/ZstdException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v0}, Lcom/github/luben/zstd/ZstdDictTrainer;->trainSamples(Z)[B

    move-result-object p0

    return-object p0
.end method

.method public trainSamples(Z)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/luben/zstd/ZstdException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0, p1}, Lcom/github/luben/zstd/ZstdDictTrainer;->trainSamplesDirect(Z)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 58
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    new-array p1, p1, [B

    .line 59
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public trainSamplesDirect()Ljava/nio/ByteBuffer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/luben/zstd/ZstdException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0}, Lcom/github/luben/zstd/ZstdDictTrainer;->trainSamplesDirect(Z)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized trainSamplesDirect(Z)Ljava/nio/ByteBuffer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/luben/zstd/ZstdException;
        }
    .end annotation

    monitor-enter p0

    .line 42
    :try_start_1
    iget v0, p0, Lcom/github/luben/zstd/ZstdDictTrainer;->dictSize:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/github/luben/zstd/ZstdDictTrainer;->trainingSamples:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/github/luben/zstd/ZstdDictTrainer;->sampleSizes:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/github/luben/zstd/ZstdDictTrainer;->copyToIntArray(Ljava/util/List;)[I

    move-result-object v2

    iget v3, p0, Lcom/github/luben/zstd/ZstdDictTrainer;->level:I

    invoke-static {v1, v2, v0, p1, v3}, Lcom/github/luben/zstd/Zstd;->trainFromBufferDirect(Ljava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;ZI)J

    move-result-wide v1

    .line 44
    invoke-static {v1, v2}, Lcom/github/luben/zstd/Zstd;->isError(J)Z

    move-result p1

    if-nez p1, :cond_2a

    .line 48
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    .line 49
    monitor-exit p0

    return-object v0

    :catchall_28
    move-exception p1

    goto :goto_34

    :cond_2a
    const/4 p1, 0x0

    .line 45
    :try_start_2b
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 46
    new-instance p1, Lcom/github/luben/zstd/ZstdException;

    invoke-direct {p1, v1, v2}, Lcom/github/luben/zstd/ZstdException;-><init>(J)V

    throw p1

    .line 49
    :goto_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_28

    throw p1
.end method
