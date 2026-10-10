###### Class org.tukaani.xz.ResettableArrayCache (org.tukaani.xz.ResettableArrayCache)
.class public Lorg/tukaani/xz/ResettableArrayCache;
.super Lorg/tukaani/xz/ArrayCache;
.source "ResettableArrayCache.java"


# instance fields
.field private final arrayCache:Lorg/tukaani/xz/ArrayCache;

.field private final byteArrays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final intArrays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/tukaani/xz/ArrayCache;)V
    .registers 3

    .line 26
    invoke-direct {p0}, Lorg/tukaani/xz/ArrayCache;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/tukaani/xz/ResettableArrayCache;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    .line 32
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDummyCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v0

    if-ne p1, v0, :cond_11

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    .line 34
    iput-object p1, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    goto :goto_1f

    .line 36
    :cond_11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    :goto_1f
    return-void
.end method


# virtual methods
.method public getByteArray(IZ)[B
    .registers 4

    .line 43
    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    invoke-virtual {v0, p1, p2}, Lorg/tukaani/xz/ArrayCache;->getByteArray(IZ)[B

    move-result-object p1

    .line 45
    iget-object p2, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    if-eqz p2, :cond_15

    .line 46
    monitor-enter p2

    .line 47
    :try_start_b
    iget-object p0, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    monitor-exit p2

    goto :goto_15

    :catchall_12
    move-exception p0

    monitor-exit p2
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_12

    throw p0

    :cond_15
    :goto_15
    return-object p1
.end method

.method public getIntArray(IZ)[I
    .registers 4

    .line 71
    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    invoke-virtual {v0, p1, p2}, Lorg/tukaani/xz/ArrayCache;->getIntArray(IZ)[I

    move-result-object p1

    .line 73
    iget-object p2, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    if-eqz p2, :cond_15

    .line 74
    monitor-enter p2

    .line 75
    :try_start_b
    iget-object p0, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    monitor-exit p2

    goto :goto_15

    :catchall_12
    move-exception p0

    monitor-exit p2
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_12

    throw p0

    :cond_15
    :goto_15
    return-object p1
.end method

.method public putArray([B)V
    .registers 5

    .line 56
    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    if-eqz v0, :cond_1f

    .line 59
    monitor-enter v0

    .line 60
    :try_start_5
    iget-object v1, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_16

    .line 62
    iget-object v2, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_16

    :catchall_14
    move-exception p0

    goto :goto_1d

    .line 63
    :cond_16
    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_14

    .line 65
    iget-object p0, p0, Lorg/tukaani/xz/ResettableArrayCache;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    invoke-virtual {p0, p1}, Lorg/tukaani/xz/ArrayCache;->putArray([B)V

    goto :goto_1f

    .line 63
    :goto_1d
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_14

    throw p0

    :cond_1f
    :goto_1f
    return-void
.end method

.method public putArray([I)V
    .registers 5

    .line 84
    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    if-eqz v0, :cond_1f

    .line 85
    monitor-enter v0

    .line 86
    :try_start_5
    iget-object v1, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_16

    .line 88
    iget-object v2, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_16

    :catchall_14
    move-exception p0

    goto :goto_1d

    .line 89
    :cond_16
    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_14

    .line 91
    iget-object p0, p0, Lorg/tukaani/xz/ResettableArrayCache;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    invoke-virtual {p0, p1}, Lorg/tukaani/xz/ArrayCache;->putArray([I)V

    goto :goto_1f

    .line 89
    :goto_1d
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_14

    throw p0

    :cond_1f
    :goto_1f
    return-void
.end method

.method public reset()V
    .registers 5

    .line 101
    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    if-eqz v0, :cond_51

    .line 104
    monitor-enter v0

    .line 105
    :try_start_5
    iget-object v1, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_d
    if-ltz v1, :cond_21

    .line 106
    iget-object v2, p0, Lorg/tukaani/xz/ResettableArrayCache;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    iget-object v3, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v2, v3}, Lorg/tukaani/xz/ArrayCache;->putArray([B)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    :catchall_1f
    move-exception p0

    goto :goto_4f

    .line 108
    :cond_21
    iget-object v1, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 109
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_1f

    .line 111
    iget-object v1, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    monitor-enter v1

    .line 112
    :try_start_2a
    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_32
    if-ltz v0, :cond_46

    .line 113
    iget-object v2, p0, Lorg/tukaani/xz/ResettableArrayCache;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    iget-object v3, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    invoke-virtual {v2, v3}, Lorg/tukaani/xz/ArrayCache;->putArray([I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_32

    :catchall_44
    move-exception p0

    goto :goto_4d

    .line 115
    :cond_46
    iget-object p0, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 116
    monitor-exit v1

    goto :goto_51

    :goto_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_2a .. :try_end_4e} :catchall_44

    throw p0

    .line 109
    :goto_4f
    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_1f

    throw p0

    :cond_51
    :goto_51
    return-void
.end method
