###### Class kotlinx.io.BuffersKt (kotlinx.io.BuffersKt)
.class public final Lkotlinx/io/BuffersKt;
.super Ljava/lang/Object;
.source "Buffers.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuffers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffers.kt\nkotlinx/io/BuffersKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ByteStringBuilder.kt\nkotlinx/io/bytestring/ByteStringBuilderKt\n+ 4 UnsafeBufferOperations.kt\nkotlinx/io/unsafe/UnsafeBufferOperations\n+ 5 UnsafeBufferOperations.kt\nkotlinx/io/unsafe/UnsafeBufferOperationsKt\n+ 6 Buffer.kt\nkotlinx/io/BufferKt\n*L\n1#1,80:1\n1#2:81\n127#3:82\n378#4,3:83\n381#4,3:88\n434#5,2:86\n659#6,25:91\n*S KotlinDebug\n*F\n+ 1 Buffers.kt\nkotlinx/io/BuffersKt\n*L\n24#1:82\n25#1:83,3\n25#1:88,3\n26#1:86,2\n52#1:91,25\n*E\n"
.end annotation


# direct methods
.method public static final indexOf(Lkotlinx/io/Buffer;BJJ)J
    .registers 21

    move/from16 v0, p1

    const-string v1, "<this>"

    move-object v2, p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v3

    move-wide/from16 v5, p4

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 49
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v5

    move-wide/from16 v7, p2

    move-wide v9, v3

    invoke-static/range {v5 .. v10}, Lkotlinx/io/_UtilKt;->checkBounds(JJJ)V

    cmp-long v1, p2, v3

    const-wide/16 v5, -0x1

    if-nez v1, :cond_23

    return-wide v5

    .line 659
    :cond_23
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getHead()Lkotlinx/io/Segment;

    move-result-object v1

    if-nez v1, :cond_2a

    return-wide v5

    .line 663
    :cond_2a
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v7

    sub-long v7, v7, p2

    cmp-long v1, v7, p2

    const/4 v7, -0x1

    const/4 v8, 0x0

    const-string v9, "Check failed."

    if-gez v1, :cond_98

    .line 664
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getTail()Lkotlinx/io/Segment;

    move-result-object v1

    .line 666
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v10

    :goto_40
    if-eqz v1, :cond_5a

    cmp-long v2, v10, p2

    if-lez v2, :cond_5a

    .line 668
    invoke-virtual {v1}, Lkotlinx/io/Segment;->getLimit()I

    move-result v2

    invoke-virtual {v1}, Lkotlinx/io/Segment;->getPos()I

    move-result v12

    sub-int/2addr v2, v12

    int-to-long v12, v2

    sub-long/2addr v10, v12

    cmp-long v2, v10, p2

    if-lez v2, :cond_5a

    .line 670
    invoke-virtual {v1}, Lkotlinx/io/Segment;->getPrev()Lkotlinx/io/Segment;

    move-result-object v1

    goto :goto_40

    :cond_5a
    cmp-long v2, v10, v5

    if-nez v2, :cond_5f

    return-wide v5

    :cond_5f
    cmp-long v2, v3, v10

    if-lez v2, :cond_92

    .line 60
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sub-long v12, p2, v10

    long-to-int v2, v12

    .line 66
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 68
    invoke-virtual {v1}, Lkotlinx/io/Segment;->getSize()I

    move-result v12

    sub-long v13, v3, v10

    long-to-int v13, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 61
    invoke-static {v1, v0, v2, v12}, Lkotlinx/io/SegmentKt;->indexOf(Lkotlinx/io/Segment;BII)I

    move-result v2

    if-eq v2, v7, :cond_81

    :goto_7e
    int-to-long v0, v2

    add-long/2addr v10, v0

    return-wide v10

    .line 74
    :cond_81
    invoke-virtual {v1}, Lkotlinx/io/Segment;->getSize()I

    move-result v2

    int-to-long v12, v2

    add-long/2addr v10, v12

    .line 75
    invoke-virtual {v1}, Lkotlinx/io/Segment;->getNext()Lkotlinx/io/Segment;

    move-result-object v1

    if-eqz v1, :cond_91

    cmp-long v2, v10, v3

    if-ltz v2, :cond_5f

    :cond_91
    return-wide v5

    .line 59
    :cond_92
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :cond_98
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getHead()Lkotlinx/io/Segment;

    move-result-object v1

    const-wide/16 v10, 0x0

    :goto_9e
    if-eqz v1, :cond_b5

    .line 678
    invoke-virtual {v1}, Lkotlinx/io/Segment;->getLimit()I

    move-result v2

    invoke-virtual {v1}, Lkotlinx/io/Segment;->getPos()I

    move-result v12

    sub-int/2addr v2, v12

    int-to-long v12, v2

    add-long/2addr v12, v10

    cmp-long v2, v12, p2

    if-gtz v2, :cond_b5

    .line 680
    invoke-virtual {v1}, Lkotlinx/io/Segment;->getNext()Lkotlinx/io/Segment;

    move-result-object v1

    move-wide v10, v12

    goto :goto_9e

    :cond_b5
    cmp-long v2, v10, v5

    if-nez v2, :cond_ba

    return-wide v5

    :cond_ba
    cmp-long v2, v3, v10

    if-lez v2, :cond_eb

    .line 60
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sub-long v12, p2, v10

    long-to-int v2, v12

    .line 66
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 68
    invoke-virtual {v1}, Lkotlinx/io/Segment;->getSize()I

    move-result v12

    sub-long v13, v3, v10

    long-to-int v13, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 61
    invoke-static {v1, v0, v2, v12}, Lkotlinx/io/SegmentKt;->indexOf(Lkotlinx/io/Segment;BII)I

    move-result v2

    if-eq v2, v7, :cond_da

    goto :goto_7e

    .line 74
    :cond_da
    invoke-virtual {v1}, Lkotlinx/io/Segment;->getSize()I

    move-result v2

    int-to-long v12, v2

    add-long/2addr v10, v12

    .line 75
    invoke-virtual {v1}, Lkotlinx/io/Segment;->getNext()Lkotlinx/io/Segment;

    move-result-object v1

    if-eqz v1, :cond_ea

    cmp-long v2, v10, v3

    if-ltz v2, :cond_ba

    :cond_ea
    return-wide v5

    .line 59
    :cond_eb
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
