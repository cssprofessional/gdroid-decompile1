###### Class kotlinx.io.Utf8Kt (kotlinx.io.Utf8Kt)
.class public final Lkotlinx/io/Utf8Kt;
.super Ljava/lang/Object;
.source "Utf8.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtf8.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utf8.kt\nkotlinx/io/Utf8Kt\n+ 2 -Util.kt\nkotlinx/io/_UtilKt\n+ 3 Sinks.kt\nkotlinx/io/SinksKt\n+ 4 UnsafeBufferOperations.kt\nkotlinx/io/unsafe/UnsafeBufferOperations\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 UnsafeBufferOperations.kt\nkotlinx/io/unsafe/UnsafeBufferOperationsKt\n*L\n1#1,624:1\n471#1,7:631\n478#1,15:640\n496#1,57:674\n471#1,7:735\n478#1,15:744\n496#1,57:778\n38#2:625\n38#2:629\n38#2:733\n95#2:838\n95#2:839\n95#2:840\n95#2:841\n95#2:842\n95#2:843\n95#2:844\n95#2:845\n95#2:846\n95#2:847\n374#3,3:626\n374#3:630\n375#3,2:731\n374#3:734\n375#3,2:835\n262#4,2:638\n266#4,19:655\n262#4,2:742\n266#4,19:759\n262#4,23:848\n262#4,23:871\n262#4,23:894\n262#4,23:917\n262#4,23:940\n262#4,23:963\n262#4,23:986\n378#4,3:1009\n381#4,3:1013\n1#5:837\n434#6:1012\n*S KotlinDebug\n*F\n+ 1 Utf8.kt\nkotlinx/io/Utf8Kt\n*L\n173#1:631,7\n173#1:640,15\n173#1:674,57\n194#1:735,7\n194#1:744,15\n194#1:778,57\n89#1:625\n171#1:629\n192#1:733\n395#1:838\n397#1:839\n402#1:840\n404#1:841\n409#1:842\n411#1:843\n416#1:844\n418#1:845\n439#1:846\n442#1:847\n153#1:626,3\n173#1:630\n173#1:731,2\n194#1:734\n194#1:835,2\n173#1:638,2\n173#1:655,19\n194#1:742,2\n194#1:759,19\n477#1:848,23\n498#1:871,23\n511#1:894,23\n538#1:917,23\n570#1:940,23\n584#1:963,23\n594#1:986,23\n610#1:1009,3\n610#1:1013,3\n613#1:1012\n*E\n"
.end annotation


# direct methods
.method public static final commonReadUtf8(Lkotlinx/io/Buffer;J)Ljava/lang/String;
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_9

    .line 608
    const-string p0, ""

    return-object p0

    .line 610
    :cond_9
    sget-object v0, Lkotlinx/io/unsafe/UnsafeBufferOperations;->INSTANCE:Lkotlinx/io/unsafe/UnsafeBufferOperations;

    .line 378
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getHead()Lkotlinx/io/Segment;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 380
    invoke-static {}, Lkotlinx/io/unsafe/UnsafeBufferOperationsKt;->getSegmentReadContextImpl()Lkotlinx/io/unsafe/SegmentReadContext;

    .line 611
    invoke-virtual {v0}, Lkotlinx/io/Segment;->getSize()I

    move-result v1

    int-to-long v1, v1

    cmp-long v1, v1, p1

    if-ltz v1, :cond_38

    const/4 v1, 0x1

    .line 434
    invoke-virtual {v0, v1}, Lkotlinx/io/Segment;->dataAsByteArray(Z)[B

    move-result-object v1

    invoke-virtual {v0}, Lkotlinx/io/Segment;->getPos()I

    move-result v2

    invoke-virtual {v0}, Lkotlinx/io/Segment;->getLimit()I

    move-result v0

    long-to-int v3, p1

    add-int/2addr v3, v2

    .line 614
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v2, v0}, Lkotlinx/io/internal/_Utf8Kt;->commonToUtf8String([BII)Ljava/lang/String;

    move-result-object v0

    .line 615
    invoke-virtual {p0, p1, p2}, Lkotlinx/io/Buffer;->skip(J)V

    return-object v0

    :cond_38
    long-to-int p1, p1

    .line 620
    invoke-static {p0, p1}, Lkotlinx/io/SourcesKt;->readByteArray(Lkotlinx/io/Source;I)[B

    move-result-object p0

    const/4 p1, 0x3

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1, p2}, Lkotlinx/io/internal/_Utf8Kt;->commonToUtf8String$default([BIIILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 383
    :cond_45
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 622
    const-string p1, "Unreacheable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final readString(Lkotlinx/io/Buffer;)Ljava/lang/String;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lkotlinx/io/Utf8Kt;->commonReadUtf8(Lkotlinx/io/Buffer;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final readString(Lkotlinx/io/Source;)Ljava/lang/String;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 209
    invoke-interface {p0, v0, v1}, Lkotlinx/io/Source;->request(J)Z

    .line 210
    invoke-interface {p0}, Lkotlinx/io/Source;->getBuffer()Lkotlinx/io/Buffer;

    move-result-object v0

    invoke-interface {p0}, Lkotlinx/io/Source;->getBuffer()Lkotlinx/io/Buffer;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lkotlinx/io/Utf8Kt;->commonReadUtf8(Lkotlinx/io/Buffer;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final readString(Lkotlinx/io/Source;J)Ljava/lang/String;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-interface {p0, p1, p2}, Lkotlinx/io/Source;->require(J)V

    .line 239
    invoke-interface {p0}, Lkotlinx/io/Source;->getBuffer()Lkotlinx/io/Buffer;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lkotlinx/io/Utf8Kt;->commonReadUtf8(Lkotlinx/io/Buffer;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final writeString(Lkotlinx/io/Sink;Ljava/lang/String;II)V
    .registers 24

    move-object/from16 v0, p1

    move/from16 v1, p3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "<this>"

    move-object/from16 v5, p0

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "string"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v6, v4

    move/from16 v4, p2

    int-to-long v8, v4

    int-to-long v10, v1

    .line 38
    invoke-static/range {v6 .. v11}, Lkotlinx/io/_UtilKt;->checkBounds(JJJ)V

    .line 374
    invoke-interface/range {p0 .. p0}, Lkotlinx/io/Sink;->getBuffer()Lkotlinx/io/Buffer;

    move-result-object v6

    :cond_22
    :goto_22
    if-ge v4, v1, :cond_1a6

    .line 473
    new-instance v7, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 173
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 473
    iput v8, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/16 v9, 0x80

    if-ge v8, v9, :cond_c6

    .line 477
    sget-object v8, Lkotlinx/io/unsafe/UnsafeBufferOperations;->INSTANCE:Lkotlinx/io/unsafe/UnsafeBufferOperations;

    .line 262
    invoke-virtual {v6, v3}, Lkotlinx/io/Buffer;->writableSegment(I)Lkotlinx/io/Segment;

    move-result-object v8

    .line 263
    invoke-static {}, Lkotlinx/io/unsafe/UnsafeBufferOperationsKt;->getSegmentWriteContextImpl()Lkotlinx/io/unsafe/SegmentWriteContext;

    move-result-object v10

    neg-int v11, v4

    .line 479
    invoke-virtual {v8}, Lkotlinx/io/Segment;->getRemainingCapacity()I

    move-result v12

    add-int/2addr v12, v4

    invoke-static {v1, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    add-int/lit8 v13, v4, 0x1

    add-int/2addr v4, v11

    .line 482
    iget v14, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-byte v14, v14

    invoke-interface {v10, v8, v4, v14}, Lkotlinx/io/unsafe/SegmentWriteContext;->setUnchecked(Lkotlinx/io/Segment;IB)V

    move v4, v13

    :goto_51
    if-ge v4, v12, :cond_64

    .line 173
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 487
    iput v13, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-ge v13, v9, :cond_64

    add-int/lit8 v14, v4, 0x1

    add-int/2addr v4, v11

    int-to-byte v13, v13

    .line 489
    invoke-interface {v10, v8, v4, v13}, Lkotlinx/io/unsafe/SegmentWriteContext;->setUnchecked(Lkotlinx/io/Segment;IB)V

    move v4, v14

    goto :goto_51

    :cond_64
    add-int/2addr v11, v4

    if-ne v11, v3, :cond_79

    .line 267
    invoke-virtual {v8}, Lkotlinx/io/Segment;->getLimit()I

    move-result v7

    add-int/2addr v7, v11

    invoke-virtual {v8, v7}, Lkotlinx/io/Segment;->setLimit(I)V

    .line 268
    invoke-virtual {v6}, Lkotlinx/io/Buffer;->getSizeMut()J

    move-result-wide v7

    int-to-long v9, v11

    add-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lkotlinx/io/Buffer;->setSizeMut(J)V

    goto :goto_22

    :cond_79
    if-ltz v11, :cond_9f

    .line 272
    invoke-virtual {v8}, Lkotlinx/io/Segment;->getRemainingCapacity()I

    move-result v7

    if-gt v11, v7, :cond_9f

    if-eqz v11, :cond_95

    .line 276
    invoke-virtual {v8}, Lkotlinx/io/Segment;->getLimit()I

    move-result v7

    add-int/2addr v7, v11

    invoke-virtual {v8, v7}, Lkotlinx/io/Segment;->setLimit(I)V

    .line 277
    invoke-virtual {v6}, Lkotlinx/io/Buffer;->getSizeMut()J

    move-result-wide v7

    int-to-long v9, v11

    add-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lkotlinx/io/Buffer;->setSizeMut(J)V

    goto :goto_22

    .line 281
    :cond_95
    invoke-static {v8}, Lkotlinx/io/SegmentKt;->isEmpty(Lkotlinx/io/Segment;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 282
    invoke-virtual {v6}, Lkotlinx/io/Buffer;->recycleTail()V

    goto :goto_22

    .line 273
    :cond_9f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid number of bytes written: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Should be in 0.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lkotlinx/io/Segment;->getRemainingCapacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c6
    const/16 v10, 0x800

    const/4 v11, 0x0

    const/16 v12, 0x3f

    if-ge v8, v10, :cond_f8

    .line 498
    sget-object v8, Lkotlinx/io/unsafe/UnsafeBufferOperations;->INSTANCE:Lkotlinx/io/unsafe/UnsafeBufferOperations;

    .line 262
    invoke-virtual {v6, v2}, Lkotlinx/io/Buffer;->writableSegment(I)Lkotlinx/io/Segment;

    move-result-object v8

    .line 263
    invoke-static {}, Lkotlinx/io/unsafe/UnsafeBufferOperationsKt;->getSegmentWriteContextImpl()Lkotlinx/io/unsafe/SegmentWriteContext;

    move-result-object v10

    .line 501
    iget v7, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    shr-int/lit8 v13, v7, 0x6

    or-int/lit16 v13, v13, 0xc0

    int-to-byte v13, v13

    and-int/2addr v7, v12

    or-int/2addr v7, v9

    int-to-byte v7, v7

    .line 499
    invoke-interface {v10, v8, v11, v13, v7}, Lkotlinx/io/unsafe/SegmentWriteContext;->setUnchecked(Lkotlinx/io/Segment;IBB)V

    .line 267
    invoke-virtual {v8}, Lkotlinx/io/Segment;->getLimit()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v8, v7}, Lkotlinx/io/Segment;->setLimit(I)V

    .line 268
    invoke-virtual {v6}, Lkotlinx/io/Buffer;->getSizeMut()J

    move-result-wide v7

    int-to-long v9, v2

    add-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lkotlinx/io/Buffer;->setSizeMut(J)V

    :goto_f5
    add-int/2addr v4, v3

    goto/16 :goto_22

    :cond_f8
    const v10, 0xd800

    if-lt v8, v10, :cond_16c

    const v10, 0xdfff

    if-le v8, v10, :cond_103

    goto :goto_16c

    :cond_103
    add-int/lit8 v8, v4, 0x1

    if-ge v8, v1, :cond_10b

    .line 173
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 528
    :cond_10b
    iget v7, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const v10, 0xdbff

    if-gt v7, v10, :cond_166

    const v10, 0xdc00

    if-gt v10, v11, :cond_166

    const v10, 0xe000

    if-ge v11, v10, :cond_166

    and-int/lit16 v7, v7, 0x3ff

    shl-int/lit8 v7, v7, 0xa

    and-int/lit16 v8, v11, 0x3ff

    or-int/2addr v7, v8

    const/high16 v8, 0x10000

    add-int/2addr v7, v8

    .line 538
    sget-object v8, Lkotlinx/io/unsafe/UnsafeBufferOperations;->INSTANCE:Lkotlinx/io/unsafe/UnsafeBufferOperations;

    const/4 v8, 0x4

    .line 262
    invoke-virtual {v6, v8}, Lkotlinx/io/Buffer;->writableSegment(I)Lkotlinx/io/Segment;

    move-result-object v10

    .line 263
    invoke-static {}, Lkotlinx/io/unsafe/UnsafeBufferOperationsKt;->getSegmentWriteContextImpl()Lkotlinx/io/unsafe/SegmentWriteContext;

    move-result-object v13

    shr-int/lit8 v11, v7, 0x12

    or-int/lit16 v11, v11, 0xf0

    int-to-byte v11, v11

    shr-int/lit8 v14, v7, 0xc

    and-int/2addr v14, v12

    or-int/2addr v14, v9

    int-to-byte v15, v14

    shr-int/lit8 v14, v7, 0x6

    and-int/2addr v14, v12

    or-int/2addr v14, v9

    int-to-byte v14, v14

    and-int/2addr v7, v12

    or-int/2addr v7, v9

    int-to-byte v7, v7

    const/4 v9, 0x0

    move v12, v14

    move-object v14, v10

    move/from16 v17, v15

    move v15, v9

    move/from16 v16, v11

    move/from16 v18, v12

    move/from16 v19, v7

    .line 539
    invoke-interface/range {v13 .. v19}, Lkotlinx/io/unsafe/SegmentWriteContext;->setUnchecked(Lkotlinx/io/Segment;IBBBB)V

    .line 267
    invoke-virtual {v10}, Lkotlinx/io/Segment;->getLimit()I

    move-result v7

    add-int/2addr v7, v8

    invoke-virtual {v10, v7}, Lkotlinx/io/Segment;->setLimit(I)V

    .line 268
    invoke-virtual {v6}, Lkotlinx/io/Buffer;->getSizeMut()J

    move-result-wide v9

    int-to-long v7, v8

    add-long/2addr v9, v7

    invoke-virtual {v6, v9, v10}, Lkotlinx/io/Buffer;->setSizeMut(J)V

    add-int/2addr v4, v2

    goto/16 :goto_22

    .line 529
    :cond_166
    invoke-virtual {v6, v12}, Lkotlinx/io/Buffer;->writeByte(B)V

    move v4, v8

    goto/16 :goto_22

    .line 511
    :cond_16c
    :goto_16c
    sget-object v8, Lkotlinx/io/unsafe/UnsafeBufferOperations;->INSTANCE:Lkotlinx/io/unsafe/UnsafeBufferOperations;

    const/4 v8, 0x3

    .line 262
    invoke-virtual {v6, v8}, Lkotlinx/io/Buffer;->writableSegment(I)Lkotlinx/io/Segment;

    move-result-object v10

    .line 263
    invoke-static {}, Lkotlinx/io/unsafe/UnsafeBufferOperationsKt;->getSegmentWriteContextImpl()Lkotlinx/io/unsafe/SegmentWriteContext;

    move-result-object v13

    .line 514
    iget v7, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    shr-int/lit8 v11, v7, 0xc

    or-int/lit16 v11, v11, 0xe0

    int-to-byte v11, v11

    shr-int/lit8 v14, v7, 0x6

    and-int/2addr v14, v12

    or-int/2addr v14, v9

    int-to-byte v15, v14

    and-int/2addr v7, v12

    or-int/2addr v7, v9

    int-to-byte v7, v7

    const/4 v9, 0x0

    move-object v14, v10

    move v12, v15

    move v15, v9

    move/from16 v16, v11

    move/from16 v17, v12

    move/from16 v18, v7

    .line 512
    invoke-interface/range {v13 .. v18}, Lkotlinx/io/unsafe/SegmentWriteContext;->setUnchecked(Lkotlinx/io/Segment;IBBB)V

    .line 267
    invoke-virtual {v10}, Lkotlinx/io/Segment;->getLimit()I

    move-result v7

    add-int/2addr v7, v8

    invoke-virtual {v10, v7}, Lkotlinx/io/Segment;->setLimit(I)V

    .line 268
    invoke-virtual {v6}, Lkotlinx/io/Buffer;->getSizeMut()J

    move-result-wide v9

    int-to-long v7, v8

    add-long/2addr v9, v7

    invoke-virtual {v6, v9, v10}, Lkotlinx/io/Buffer;->setSizeMut(J)V

    goto/16 :goto_f5

    .line 375
    :cond_1a6
    invoke-interface/range {p0 .. p0}, Lkotlinx/io/Sink;->hintEmit()V

    return-void
.end method
