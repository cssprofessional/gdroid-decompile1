###### Class kotlinx.io.SegmentPool (kotlinx.io.SegmentPool)
.class public final Lkotlinx/io/SegmentPool;
.super Ljava/lang/Object;
.source "SegmentPool.kt"


# static fields
.field public static final DEFAULT_SECOND_LEVEL_POOL_TOTAL_SIZE:Ljava/lang/String;

.field public static final HASH_BUCKET_COUNT:I

.field public static final HASH_BUCKET_COUNT_L2:I

.field public static final INSTANCE:Lkotlinx/io/SegmentPool;

.field public static final LOCK:Lkotlinx/io/Segment;

.field public static final MAX_SIZE:I

.field public static final SECOND_LEVEL_POOL_BUCKET_SIZE:I

.field public static final SECOND_LEVEL_POOL_TOTAL_SIZE:I

.field public static final hashBuckets:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lkotlinx/io/Segment;",
            ">;"
        }
    .end annotation
.end field

.field public static final hashBucketsL2:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lkotlinx/io/Segment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lkotlinx/io/SegmentPool;

    invoke-direct {v0}, Lkotlinx/io/SegmentPool;-><init>()V

    sput-object v0, Lkotlinx/io/SegmentPool;->INSTANCE:Lkotlinx/io/SegmentPool;

    const/high16 v0, 0x10000

    .line 104
    sput v0, Lkotlinx/io/SegmentPool;->MAX_SIZE:I

    .line 108
    sget-object v1, Lkotlinx/io/Segment;->Companion:Lkotlinx/io/Segment$Companion;

    const/4 v0, 0x0

    new-array v2, v0, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lkotlinx/io/Segment$Companion;->new$kotlinx_io_core([BIILkotlinx/io/SegmentCopyTracker;Z)Lkotlinx/io/Segment;

    move-result-object v1

    sput-object v1, Lkotlinx/io/SegmentPool;->LOCK:Lkotlinx/io/Segment;

    .line 118
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    sput v1, Lkotlinx/io/SegmentPool;->HASH_BUCKET_COUNT:I

    .line 120
    div-int/lit8 v3, v1, 0x2

    invoke-static {v3, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result v2

    sput v2, Lkotlinx/io/SegmentPool;->HASH_BUCKET_COUNT_L2:I

    .line 124
    const-string v3, "java.vm.name"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    const-string v4, "Dalvik"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    const-string v3, "0"

    goto :goto_47

    .line 126
    :cond_45
    const-string v3, "4194304"

    .line 124
    :goto_47
    sput-object v3, Lkotlinx/io/SegmentPool;->DEFAULT_SECOND_LEVEL_POOL_TOTAL_SIZE:Ljava/lang/String;

    .line 131
    const-string v4, "kotlinx.io.pool.size.bytes"

    invoke-static {v4, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getProperty(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-static {v3}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_62

    .line 131
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 132
    invoke-static {v3, v0}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 131
    :cond_62
    sput v0, Lkotlinx/io/SegmentPool;->SECOND_LEVEL_POOL_TOTAL_SIZE:I

    .line 135
    div-int/2addr v0, v2

    const/16 v3, 0x2000

    invoke-static {v0, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result v0

    sput v0, Lkotlinx/io/SegmentPool;->SECOND_LEVEL_POOL_BUCKET_SIZE:I

    .line 144
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    sput-object v0, Lkotlinx/io/SegmentPool;->hashBuckets:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 145
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    sput-object v0, Lkotlinx/io/SegmentPool;->hashBucketsL2:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final recycle(Lkotlinx/io/Segment;)V
    .registers 7

    const-string v0, "segment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lkotlinx/io/Segment;->getNext()Lkotlinx/io/Segment;

    move-result-object v0

    if-nez v0, :cond_5a

    invoke-virtual {p0}, Lkotlinx/io/Segment;->getPrev()Lkotlinx/io/Segment;

    move-result-object v0

    if-nez v0, :cond_5a

    .line 230
    invoke-virtual {p0}, Lkotlinx/io/Segment;->getCopyTracker$kotlinx_io_core()Lkotlinx/io/SegmentCopyTracker;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lkotlinx/io/SegmentCopyTracker;->removeCopy()Z

    move-result v0

    if-ne v0, v1, :cond_1f

    return-void

    .line 232
    :cond_1f
    sget-object v0, Lkotlinx/io/SegmentPool;->hashBuckets:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 233
    sget-object v2, Lkotlinx/io/SegmentPool;->INSTANCE:Lkotlinx/io/SegmentPool;

    invoke-virtual {v2}, Lkotlinx/io/SegmentPool;->l1BucketId()I

    move-result v2

    const/4 v3, 0x0

    .line 235
    invoke-virtual {p0, v3}, Lkotlinx/io/Segment;->setPos(I)V

    .line 236
    iput-boolean v1, p0, Lkotlinx/io/Segment;->owner:Z

    .line 239
    :cond_2d
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/io/Segment;

    .line 240
    sget-object v4, Lkotlinx/io/SegmentPool;->LOCK:Lkotlinx/io/Segment;

    if-eq v1, v4, :cond_2d

    if-eqz v1, :cond_3e

    .line 241
    invoke-virtual {v1}, Lkotlinx/io/Segment;->getLimit()I

    move-result v4

    goto :goto_3f

    :cond_3e
    move v4, v3

    .line 242
    :goto_3f
    sget v5, Lkotlinx/io/SegmentPool;->MAX_SIZE:I

    if-lt v4, v5, :cond_4b

    .line 244
    sget v0, Lkotlinx/io/SegmentPool;->SECOND_LEVEL_POOL_TOTAL_SIZE:I

    if-lez v0, :cond_4a

    .line 245
    invoke-static {p0}, Lkotlinx/io/SegmentPool;->recycleL2(Lkotlinx/io/Segment;)V

    :cond_4a
    return-void

    .line 250
    :cond_4b
    invoke-virtual {p0, v1}, Lkotlinx/io/Segment;->setNext(Lkotlinx/io/Segment;)V

    add-int/lit16 v4, v4, 0x2000

    .line 251
    invoke-virtual {p0, v4}, Lkotlinx/io/Segment;->setLimit(I)V

    .line 253
    invoke-static {v0, v2, v1, p0}, Lio/ktor/utils/io/pool/DefaultPool$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    return-void

    .line 229
    :cond_5a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final recycleL2(Lkotlinx/io/Segment;)V
    .registers 8

    const/4 v0, 0x0

    .line 261
    invoke-virtual {p0, v0}, Lkotlinx/io/Segment;->setPos(I)V

    const/4 v1, 0x1

    .line 262
    iput-boolean v1, p0, Lkotlinx/io/Segment;->owner:Z

    .line 264
    sget-object v1, Lkotlinx/io/SegmentPool;->INSTANCE:Lkotlinx/io/SegmentPool;

    invoke-virtual {v1}, Lkotlinx/io/SegmentPool;->l2BucketId()I

    move-result v1

    .line 265
    sget-object v2, Lkotlinx/io/SegmentPool;->hashBucketsL2:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move v3, v0

    .line 269
    :cond_10
    :goto_10
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/io/Segment;

    .line 270
    sget-object v5, Lkotlinx/io/SegmentPool;->LOCK:Lkotlinx/io/Segment;

    if-eq v4, v5, :cond_10

    if-eqz v4, :cond_21

    .line 271
    invoke-virtual {v4}, Lkotlinx/io/Segment;->getLimit()I

    move-result v5

    goto :goto_22

    :cond_21
    move v5, v0

    :goto_22
    add-int/lit16 v5, v5, 0x2000

    .line 272
    sget v6, Lkotlinx/io/SegmentPool;->SECOND_LEVEL_POOL_BUCKET_SIZE:I

    if-le v5, v6, :cond_35

    .line 274
    sget v4, Lkotlinx/io/SegmentPool;->HASH_BUCKET_COUNT_L2:I

    if-ge v3, v4, :cond_34

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v1, v4

    goto :goto_10

    :cond_34
    return-void

    .line 283
    :cond_35
    invoke-virtual {p0, v4}, Lkotlinx/io/Segment;->setNext(Lkotlinx/io/Segment;)V

    .line 284
    invoke-virtual {p0, v5}, Lkotlinx/io/Segment;->setLimit(I)V

    .line 286
    invoke-static {v2, v1, v4, p0}, Lio/ktor/utils/io/pool/DefaultPool$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    return-void
.end method

.method public static final take()Lkotlinx/io/Segment;
    .registers 5

    .line 155
    sget-object v0, Lkotlinx/io/SegmentPool;->hashBuckets:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 156
    sget-object v1, Lkotlinx/io/SegmentPool;->INSTANCE:Lkotlinx/io/SegmentPool;

    invoke-virtual {v1}, Lkotlinx/io/SegmentPool;->l1BucketId()I

    move-result v1

    .line 159
    :goto_8
    sget-object v2, Lkotlinx/io/SegmentPool;->LOCK:Lkotlinx/io/Segment;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/io/Segment;

    .line 160
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_8

    :cond_17
    const/4 v2, 0x0

    if-nez v3, :cond_2d

    .line 169
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 171
    sget v0, Lkotlinx/io/SegmentPool;->SECOND_LEVEL_POOL_TOTAL_SIZE:I

    if-lez v0, :cond_26

    .line 172
    invoke-static {}, Lkotlinx/io/SegmentPool;->takeL2()Lkotlinx/io/Segment;

    move-result-object v0

    return-object v0

    .line 175
    :cond_26
    sget-object v0, Lkotlinx/io/Segment;->Companion:Lkotlinx/io/Segment$Companion;

    invoke-virtual {v0}, Lkotlinx/io/Segment$Companion;->new$kotlinx_io_core()Lkotlinx/io/Segment;

    move-result-object v0

    return-object v0

    .line 180
    :cond_2d
    invoke-virtual {v3}, Lkotlinx/io/Segment;->getNext()Lkotlinx/io/Segment;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 181
    invoke-virtual {v3, v2}, Lkotlinx/io/Segment;->setNext(Lkotlinx/io/Segment;)V

    const/4 v0, 0x0

    .line 182
    invoke-virtual {v3, v0}, Lkotlinx/io/Segment;->setLimit(I)V

    return-object v3
.end method

.method public static final takeL2()Lkotlinx/io/Segment;
    .registers 6

    .line 191
    sget-object v0, Lkotlinx/io/SegmentPool;->hashBucketsL2:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 192
    sget-object v1, Lkotlinx/io/SegmentPool;->INSTANCE:Lkotlinx/io/SegmentPool;

    invoke-virtual {v1}, Lkotlinx/io/SegmentPool;->l2BucketId()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 195
    :goto_a
    sget-object v4, Lkotlinx/io/SegmentPool;->LOCK:Lkotlinx/io/Segment;

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/io/Segment;

    .line 196
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    goto :goto_a

    :cond_19
    const/4 v4, 0x0

    if-nez v5, :cond_32

    .line 205
    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 207
    sget v4, Lkotlinx/io/SegmentPool;->HASH_BUCKET_COUNT_L2:I

    if-ge v3, v4, :cond_2b

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 213
    :cond_2b
    sget-object v0, Lkotlinx/io/Segment;->Companion:Lkotlinx/io/Segment$Companion;

    invoke-virtual {v0}, Lkotlinx/io/Segment$Companion;->new$kotlinx_io_core()Lkotlinx/io/Segment;

    move-result-object v0

    return-object v0

    .line 218
    :cond_32
    invoke-virtual {v5}, Lkotlinx/io/Segment;->getNext()Lkotlinx/io/Segment;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 219
    invoke-virtual {v5, v4}, Lkotlinx/io/Segment;->setNext(Lkotlinx/io/Segment;)V

    .line 220
    invoke-virtual {v5, v2}, Lkotlinx/io/Segment;->setLimit(I)V

    return-object v5
.end method

.method public static final tracker()Lkotlinx/io/SegmentCopyTracker;
    .registers 1

    .line 293
    new-instance v0, Lkotlinx/io/RefCountingCopyTracker;

    invoke-direct {v0}, Lkotlinx/io/RefCountingCopyTracker;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final bucketId(J)I
    .registers 5

    .line 302
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    and-long p0, v0, p1

    long-to-int p0, p0

    return p0
.end method

.method public final l1BucketId()I
    .registers 5

    .line 295
    sget v0, Lkotlinx/io/SegmentPool;->HASH_BUCKET_COUNT:I

    int-to-long v0, v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lkotlinx/io/SegmentPool;->bucketId(J)I

    move-result p0

    return p0
.end method

.method public final l2BucketId()I
    .registers 5

    .line 297
    sget v0, Lkotlinx/io/SegmentPool;->HASH_BUCKET_COUNT_L2:I

    int-to-long v0, v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lkotlinx/io/SegmentPool;->bucketId(J)I

    move-result p0

    return p0
.end method
