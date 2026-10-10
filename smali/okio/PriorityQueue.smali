###### Class okio.PriorityQueue (okio.PriorityQueue)
.class public final Lokio/PriorityQueue;
.super Ljava/lang/Object;
.source "AsyncTimeout.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsyncTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncTimeout.kt\nokio/PriorityQueue\n*L\n1#1,514:1\n509#1,3:515\n509#1,3:518\n509#1,3:521\n509#1,3:524\n*S KotlinDebug\n*F\n+ 1 AsyncTimeout.kt\nokio/PriorityQueue\n*L\n415#1:515,3\n448#1:518,3\n481#1:521,3\n491#1:524,3\n*E\n"
.end annotation


# instance fields
.field public array:[Lokio/AsyncTimeout;

.field public size:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 386
    new-array v0, v0, [Lokio/AsyncTimeout;

    iput-object v0, p0, Lokio/PriorityQueue;->array:[Lokio/AsyncTimeout;

    return-void
.end method


# virtual methods
.method public final add(Lokio/AsyncTimeout;)V
    .registers 11

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    iget v0, p0, Lokio/PriorityQueue;->size:I

    add-int/lit8 v0, v0, 0x1

    .line 392
    iput v0, p0, Lokio/PriorityQueue;->size:I

    .line 393
    iget-object v1, p0, Lokio/PriorityQueue;->array:[Lokio/AsyncTimeout;

    array-length v2, v1

    if-ne v0, v2, :cond_20

    mul-int/lit8 v2, v0, 0x2

    .line 394
    new-array v8, v2, [Lokio/AsyncTimeout;

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v8

    .line 395
    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    .line 396
    iput-object v8, p0, Lokio/PriorityQueue;->array:[Lokio/AsyncTimeout;

    .line 399
    :cond_20
    invoke-virtual {p0, v0, p1}, Lokio/PriorityQueue;->heapifyUp(ILokio/AsyncTimeout;)V

    return-void
.end method

.method public final first()Lokio/AsyncTimeout;
    .registers 2

    .line 388
    iget-object p0, p0, Lokio/PriorityQueue;->array:[Lokio/AsyncTimeout;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public final heapifyDown(ILokio/AsyncTimeout;)V
    .registers 12

    :goto_0
    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v1, v0, 0x1

    .line 477
    iget v2, p0, Lokio/PriorityQueue;->size:I

    const-wide/16 v3, 0x0

    if-gt v1, v2, :cond_2a

    .line 478
    iget-object v2, p0, Lokio/PriorityQueue;->array:[Lokio/AsyncTimeout;

    aget-object v0, v2, v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 479
    iget-object v2, p0, Lokio/PriorityQueue;->array:[Lokio/AsyncTimeout;

    aget-object v1, v2, v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 509
    invoke-virtual {v0}, Lokio/AsyncTimeout;->getTimeoutAt$okio()J

    move-result-wide v5

    .line 510
    invoke-virtual {v1}, Lokio/AsyncTimeout;->getTimeoutAt$okio()J

    move-result-wide v7

    sub-long/2addr v7, v5

    .line 511
    invoke-static {v3, v4, v7, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result v2

    if-gez v2, :cond_28

    goto :goto_33

    :cond_28
    move-object v0, v1

    goto :goto_33

    :cond_2a
    if-gt v0, v2, :cond_4c

    .line 486
    iget-object v1, p0, Lokio/PriorityQueue;->array:[Lokio/AsyncTimeout;

    aget-object v0, v1, v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 509
    :goto_33
    invoke-virtual {p2}, Lokio/AsyncTimeout;->getTimeoutAt$okio()J

    move-result-wide v1

    .line 510
    invoke-virtual {v0}, Lokio/AsyncTimeout;->getTimeoutAt$okio()J

    move-result-wide v5

    sub-long/2addr v5, v1

    .line 511
    invoke-static {v3, v4, v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result v1

    if-lez v1, :cond_4c

    .line 494
    iget v1, v0, Lokio/AsyncTimeout;->index:I

    .line 495
    iput p1, v0, Lokio/AsyncTimeout;->index:I

    .line 496
    iget-object v2, p0, Lokio/PriorityQueue;->array:[Lokio/AsyncTimeout;

    aput-object v0, v2, p1

    move p1, v1

    goto :goto_0

    .line 500
    :cond_4c
    iget-object p0, p0, Lokio/PriorityQueue;->array:[Lokio/AsyncTimeout;

    aput-object p2, p0, p1

    .line 501
    iput p1, p2, Lokio/AsyncTimeout;->index:I

    return-void
.end method

.method public final heapifyUp(ILokio/AsyncTimeout;)V
    .registers 11

    :goto_0
    shr-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_24

    .line 447
    iget-object v1, p0, Lokio/PriorityQueue;->array:[Lokio/AsyncTimeout;

    aget-object v1, v1, v0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 509
    invoke-virtual {v1}, Lokio/AsyncTimeout;->getTimeoutAt$okio()J

    move-result-wide v2

    .line 510
    invoke-virtual {p2}, Lokio/AsyncTimeout;->getTimeoutAt$okio()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    sub-long/2addr v4, v2

    .line 511
    invoke-static {v6, v7, v4, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result v2

    if-lez v2, :cond_24

    .line 451
    iput p1, v1, Lokio/AsyncTimeout;->index:I

    .line 452
    iget-object v2, p0, Lokio/PriorityQueue;->array:[Lokio/AsyncTimeout;

    aput-object v1, v2, p1

    move p1, v0

    goto :goto_0

    .line 456
    :cond_24
    iget-object p0, p0, Lokio/PriorityQueue;->array:[Lokio/AsyncTimeout;

    aput-object p2, p0, p1

    .line 457
    iput p1, p2, Lokio/AsyncTimeout;->index:I

    return-void
.end method

.method public final remove(Lokio/AsyncTimeout;)V
    .registers 10

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    iget v0, p1, Lokio/AsyncTimeout;->index:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_43

    .line 404
    iget v2, p0, Lokio/PriorityQueue;->size:I

    .line 408
    iget-object v3, p0, Lokio/PriorityQueue;->array:[Lokio/AsyncTimeout;

    aget-object v3, v3, v2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 409
    iput v1, p1, Lokio/AsyncTimeout;->index:I

    .line 410
    iget-object v1, p0, Lokio/PriorityQueue;->array:[Lokio/AsyncTimeout;

    const/4 v4, 0x0

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, -0x1

    .line 411
    iput v2, p0, Lokio/PriorityQueue;->size:I

    if-ne p1, v3, :cond_21

    return-void

    .line 509
    :cond_21
    invoke-virtual {p1}, Lokio/AsyncTimeout;->getTimeoutAt$okio()J

    move-result-wide v1

    .line 510
    invoke-virtual {v3}, Lokio/AsyncTimeout;->getTimeoutAt$okio()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    sub-long/2addr v4, v1

    .line 511
    invoke-static {v6, v7, v4, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result p1

    if-nez p1, :cond_39

    .line 419
    iget-object p0, p0, Lokio/PriorityQueue;->array:[Lokio/AsyncTimeout;

    aput-object v3, p0, v0

    .line 420
    iput v0, v3, Lokio/AsyncTimeout;->index:I

    goto :goto_42

    :cond_39
    if-gez p1, :cond_3f

    .line 424
    invoke-virtual {p0, v0, v3}, Lokio/PriorityQueue;->heapifyDown(ILokio/AsyncTimeout;)V

    goto :goto_42

    .line 427
    :cond_3f
    invoke-virtual {p0, v0, v3}, Lokio/PriorityQueue;->heapifyUp(ILokio/AsyncTimeout;)V

    :goto_42
    return-void

    .line 403
    :cond_43
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
