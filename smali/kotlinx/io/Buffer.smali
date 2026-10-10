###### Class kotlinx.io.Buffer (kotlinx.io.Buffer)
.class public final Lkotlinx/io/Buffer;
.super Ljava/lang/Object;
.source "Buffer.kt"

# interfaces
.implements Lkotlinx/io/Source;
.implements Lkotlinx/io/Sink;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nkotlinx/io/Buffer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 -Util.kt\nkotlinx/io/_UtilKt\n+ 4 Buffer.kt\nkotlinx/io/BufferKt\n+ 5 UnsafeBufferOperations.kt\nkotlinx/io/unsafe/UnsafeBufferOperations\n*L\n1#1,686:1\n628#1,14:689\n630#1,12:743\n1#2:687\n1#2:729\n1#2:734\n1#2:737\n1#2:741\n95#3:688\n52#3:728\n53#3:730\n107#3:731\n38#3:732\n52#3:733\n53#3:735\n52#3:736\n53#3:738\n38#3:739\n52#3:740\n53#3:742\n110#3:755\n89#3:759\n95#3:760\n659#4,25:703\n378#5,3:756\n381#5,3:761\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nkotlinx/io/Buffer\n*L\n228#1:689,14\n484#1:743,12\n290#1:729\n322#1:734\n330#1:737\n388#1:741\n118#1:688\n290#1:728\n290#1:730\n295#1:731\n307#1:732\n322#1:733\n322#1:735\n330#1:736\n330#1:738\n376#1:739\n388#1:740\n388#1:742\n562#1:755\n572#1:759\n573#1:760\n270#1:703,25\n566#1:756,3\n566#1:761,3\n*E\n"
.end annotation


# instance fields
.field public head:Lkotlinx/io/Segment;

.field public sizeMut:J

.field public tail:Lkotlinx/io/Segment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 3

    .line 282
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lkotlinx/io/Buffer;->skip(J)V

    return-void
.end method

.method public close()V
    .registers 1

    .line 0
    return-void
.end method

.method public final completeSegmentByteCount$kotlinx_io_core()J
    .registers 6

    .line 241
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    return-wide v2

    .line 245
    :cond_b
    iget-object p0, p0, Lkotlinx/io/Buffer;->tail:Lkotlinx/io/Segment;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 246
    invoke-virtual {p0}, Lkotlinx/io/Segment;->getLimit()I

    move-result v2

    const/16 v3, 0x2000

    if-ge v2, v3, :cond_27

    iget-boolean v2, p0, Lkotlinx/io/Segment;->owner:Z

    if-eqz v2, :cond_27

    .line 247
    invoke-virtual {p0}, Lkotlinx/io/Segment;->getLimit()I

    move-result v2

    invoke-virtual {p0}, Lkotlinx/io/Segment;->getPos()I

    move-result p0

    sub-int/2addr v2, p0

    int-to-long v2, v2

    sub-long/2addr v0, v2

    :cond_27
    return-wide v0
.end method

.method public final copyTo(Lkotlinx/io/Buffer;JJ)V
    .registers 13

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Lkotlinx/io/_UtilKt;->checkBounds(JJJ)V

    cmp-long v0, p2, p4

    if-nez v0, :cond_13

    return-void

    :cond_13
    sub-long/2addr p4, p2

    .line 214
    iget-wide v0, p1, Lkotlinx/io/Buffer;->sizeMut:J

    add-long/2addr v0, p4

    iput-wide v0, p1, Lkotlinx/io/Buffer;->sizeMut:J

    .line 217
    iget-object p0, p0, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    .line 218
    :goto_1b
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkotlinx/io/Segment;->getLimit()I

    move-result v0

    invoke-virtual {p0}, Lkotlinx/io/Segment;->getPos()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_3c

    .line 219
    invoke-virtual {p0}, Lkotlinx/io/Segment;->getLimit()I

    move-result v0

    invoke-virtual {p0}, Lkotlinx/io/Segment;->getPos()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr p2, v0

    .line 220
    invoke-virtual {p0}, Lkotlinx/io/Segment;->getNext()Lkotlinx/io/Segment;

    move-result-object p0

    goto :goto_1b

    :cond_3c
    :goto_3c
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_8f

    .line 225
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkotlinx/io/Segment;->sharedCopy$kotlinx_io_core()Lkotlinx/io/Segment;

    move-result-object v2

    .line 226
    invoke-virtual {v2}, Lkotlinx/io/Segment;->getPos()I

    move-result v3

    long-to-int p2, p2

    add-int/2addr v3, p2

    invoke-virtual {v2, v3}, Lkotlinx/io/Segment;->setPos(I)V

    .line 227
    invoke-virtual {v2}, Lkotlinx/io/Segment;->getPos()I

    move-result p2

    long-to-int p3, p4

    add-int/2addr p2, p3

    invoke-virtual {v2}, Lkotlinx/io/Segment;->getLimit()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {v2, p2}, Lkotlinx/io/Segment;->setLimit(I)V

    .line 630
    invoke-virtual {p1}, Lkotlinx/io/Buffer;->getHead()Lkotlinx/io/Segment;

    move-result-object p2

    if-nez p2, :cond_70

    .line 631
    invoke-virtual {p1, v2}, Lkotlinx/io/Buffer;->setHead(Lkotlinx/io/Segment;)V

    .line 632
    invoke-virtual {p1, v2}, Lkotlinx/io/Buffer;->setTail(Lkotlinx/io/Segment;)V

    goto :goto_7e

    .line 639
    :cond_70
    invoke-virtual {p1}, Lkotlinx/io/Buffer;->getTail()Lkotlinx/io/Segment;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v2}, Lkotlinx/io/Segment;->push$kotlinx_io_core(Lkotlinx/io/Segment;)Lkotlinx/io/Segment;

    move-result-object p2

    invoke-virtual {p1, p2}, Lkotlinx/io/Buffer;->setTail(Lkotlinx/io/Segment;)V

    .line 229
    :goto_7e
    invoke-virtual {v2}, Lkotlinx/io/Segment;->getLimit()I

    move-result p2

    invoke-virtual {v2}, Lkotlinx/io/Segment;->getPos()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-long p2, p2

    sub-long/2addr p4, p2

    .line 231
    invoke-virtual {p0}, Lkotlinx/io/Segment;->getNext()Lkotlinx/io/Segment;

    move-result-object p0

    move-wide p2, v0

    goto :goto_3c

    :cond_8f
    return-void
.end method

.method public exhausted()Z
    .registers 5

    .line 79
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public flush()V
    .registers 1

    .line 0
    return-void
.end method

.method public final get(J)B
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_80

    .line 264
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-gez v3, :cond_80

    if-nez v2, :cond_1b

    .line 268
    iget-object p0, p0, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lkotlinx/io/Segment;->getUnchecked$kotlinx_io_core(I)B

    move-result p0

    return p0

    .line 659
    :cond_1b
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getHead()Lkotlinx/io/Segment;

    move-result-object v2

    if-eqz v2, :cond_7b

    .line 663
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v2

    sub-long/2addr v2, p1

    cmp-long v2, v2, p1

    if-gez v2, :cond_56

    .line 664
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getTail()Lkotlinx/io/Segment;

    move-result-object v0

    .line 666
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v1

    :goto_32
    if-eqz v0, :cond_4c

    cmp-long p0, v1, p1

    if-lez p0, :cond_4c

    .line 668
    invoke-virtual {v0}, Lkotlinx/io/Segment;->getLimit()I

    move-result p0

    invoke-virtual {v0}, Lkotlinx/io/Segment;->getPos()I

    move-result v3

    sub-int/2addr p0, v3

    int-to-long v3, p0

    sub-long/2addr v1, v3

    cmp-long p0, v1, p1

    if-lez p0, :cond_4c

    .line 670
    invoke-virtual {v0}, Lkotlinx/io/Segment;->getPrev()Lkotlinx/io/Segment;

    move-result-object v0

    goto :goto_32

    .line 271
    :cond_4c
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sub-long/2addr p1, v1

    long-to-int p0, p1

    invoke-virtual {v0, p0}, Lkotlinx/io/Segment;->getUnchecked$kotlinx_io_core(I)B

    move-result p0

    return p0

    .line 674
    :cond_56
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getHead()Lkotlinx/io/Segment;

    move-result-object p0

    :goto_5a
    if-eqz p0, :cond_71

    .line 678
    invoke-virtual {p0}, Lkotlinx/io/Segment;->getLimit()I

    move-result v2

    invoke-virtual {p0}, Lkotlinx/io/Segment;->getPos()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    cmp-long v4, v2, p1

    if-gtz v4, :cond_71

    .line 680
    invoke-virtual {p0}, Lkotlinx/io/Segment;->getNext()Lkotlinx/io/Segment;

    move-result-object p0

    move-wide v0, v2

    goto :goto_5a

    .line 271
    :cond_71
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sub-long/2addr p1, v0

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lkotlinx/io/Segment;->getUnchecked$kotlinx_io_core(I)B

    move-result p0

    return p0

    :cond_7b
    const/4 p0, 0x0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    throw p0

    .line 265
    :cond_80
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") is not within the range [0..size("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "))"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBuffer()Lkotlinx/io/Buffer;
    .registers 1

    .line 0
    return-object p0
.end method

.method public final synthetic getHead()Lkotlinx/io/Segment;
    .registers 1

    .line 52
    iget-object p0, p0, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    return-object p0
.end method

.method public final getSize()J
    .registers 3

    .line 66
    iget-wide v0, p0, Lkotlinx/io/Buffer;->sizeMut:J

    return-wide v0
.end method

.method public final synthetic getSizeMut()J
    .registers 3

    .line 68
    iget-wide v0, p0, Lkotlinx/io/Buffer;->sizeMut:J

    return-wide v0
.end method

.method public final synthetic getTail()Lkotlinx/io/Segment;
    .registers 1

    .line 57
    iget-object p0, p0, Lkotlinx/io/Buffer;->tail:Lkotlinx/io/Segment;

    return-object p0
.end method

.method public hintEmit()V
    .registers 1

    .line 0
    return-void
.end method

.method public peek()Lkotlinx/io/Source;
    .registers 2

    .line 346
    new-instance v0, Lkotlinx/io/PeekSource;

    invoke-direct {v0, p0}, Lkotlinx/io/PeekSource;-><init>(Lkotlinx/io/Source;)V

    invoke-static {v0}, Lkotlinx/io/CoreKt;->buffered(Lkotlinx/io/RawSource;)Lkotlinx/io/Source;

    move-result-object p0

    return-object p0
.end method

.method public readAtMostTo([BII)I
    .registers 11

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    .line 38
    invoke-static/range {v1 .. v6}, Lkotlinx/io/_UtilKt;->checkBounds(JJJ)V

    .line 309
    iget-object v0, p0, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    if-nez v0, :cond_12

    const/4 p0, -0x1

    return p0

    :cond_12
    sub-int/2addr p3, p2

    .line 310
    invoke-virtual {v0}, Lkotlinx/io/Segment;->getSize()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    add-int v1, p2, p3

    .line 311
    invoke-virtual {v0, p1, p2, v1}, Lkotlinx/io/Segment;->readTo$kotlinx_io_core([BII)V

    .line 312
    iget-wide p1, p0, Lkotlinx/io/Buffer;->sizeMut:J

    int-to-long v1, p3

    sub-long/2addr p1, v1

    iput-wide p1, p0, Lkotlinx/io/Buffer;->sizeMut:J

    .line 314
    invoke-static {v0}, Lkotlinx/io/SegmentKt;->isEmpty(Lkotlinx/io/Segment;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 315
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->recycleHead$kotlinx_io_core()V

    :cond_2f
    return p3
.end method

.method public readAtMostTo(Lkotlinx/io/Buffer;J)J
    .registers 8

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_26

    .line 323
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_16

    const-wide/16 p0, -0x1

    return-wide p0

    .line 324
    :cond_16
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-lez v0, :cond_22

    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide p2

    .line 325
    :cond_22
    invoke-virtual {p1, p0, p2, p3}, Lkotlinx/io/Buffer;->write(Lkotlinx/io/Buffer;J)V

    return-wide p2

    .line 52
    :cond_26
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "byteCount ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") < 0"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readByte()B
    .registers 7

    .line 94
    iget-object v0, p0, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_24

    .line 95
    invoke-virtual {v0}, Lkotlinx/io/Segment;->getSize()I

    move-result v3

    if-nez v3, :cond_14

    .line 97
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->recycleHead$kotlinx_io_core()V

    .line 98
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->readByte()B

    move-result p0

    return p0

    .line 100
    :cond_14
    invoke-virtual {v0}, Lkotlinx/io/Segment;->readByte$kotlinx_io_core()B

    move-result v0

    .line 101
    iget-wide v4, p0, Lkotlinx/io/Buffer;->sizeMut:J

    sub-long/2addr v4, v1

    iput-wide v4, p0, Lkotlinx/io/Buffer;->sizeMut:J

    const/4 v1, 0x1

    if-ne v3, v1, :cond_23

    .line 103
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->recycleHead$kotlinx_io_core()V

    :cond_23
    return v0

    .line 94
    :cond_24
    invoke-virtual {p0, v1, v2}, Lkotlinx/io/Buffer;->throwEof(J)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public readInt()I
    .registers 8

    .line 129
    iget-object v0, p0, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    const-wide/16 v1, 0x4

    if-eqz v0, :cond_39

    .line 130
    invoke-virtual {v0}, Lkotlinx/io/Segment;->getSize()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_2a

    .line 133
    invoke-virtual {p0, v1, v2}, Lkotlinx/io/Buffer;->require(J)V

    if-nez v3, :cond_1a

    .line 135
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->recycleHead$kotlinx_io_core()V

    .line 136
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->readInt()I

    move-result p0

    return p0

    .line 138
    :cond_1a
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->readShort()S

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p0}, Lkotlinx/io/Buffer;->readShort()S

    move-result p0

    const v1, 0xffff

    and-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0

    .line 140
    :cond_2a
    invoke-virtual {v0}, Lkotlinx/io/Segment;->readInt$kotlinx_io_core()I

    move-result v0

    .line 141
    iget-wide v5, p0, Lkotlinx/io/Buffer;->sizeMut:J

    sub-long/2addr v5, v1

    iput-wide v5, p0, Lkotlinx/io/Buffer;->sizeMut:J

    if-ne v3, v4, :cond_38

    .line 143
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->recycleHead$kotlinx_io_core()V

    :cond_38
    return v0

    .line 129
    :cond_39
    invoke-virtual {p0, v1, v2}, Lkotlinx/io/Buffer;->throwEof(J)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public readLong()J
    .registers 10

    .line 149
    iget-object v0, p0, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    const-wide/16 v1, 0x8

    if-eqz v0, :cond_3f

    .line 150
    invoke-virtual {v0}, Lkotlinx/io/Segment;->getSize()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_30

    .line 153
    invoke-virtual {p0, v1, v2}, Lkotlinx/io/Buffer;->require(J)V

    if-nez v3, :cond_1b

    .line 155
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->recycleHead$kotlinx_io_core()V

    .line 156
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->readLong()J

    move-result-wide v0

    return-wide v0

    .line 158
    :cond_1b
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->readInt()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Lkotlinx/io/Buffer;->readInt()I

    move-result p0

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0

    .line 160
    :cond_30
    invoke-virtual {v0}, Lkotlinx/io/Segment;->readLong$kotlinx_io_core()J

    move-result-wide v5

    .line 161
    iget-wide v7, p0, Lkotlinx/io/Buffer;->sizeMut:J

    sub-long/2addr v7, v1

    iput-wide v7, p0, Lkotlinx/io/Buffer;->sizeMut:J

    if-ne v3, v4, :cond_3e

    .line 163
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->recycleHead$kotlinx_io_core()V

    :cond_3e
    return-wide v5

    .line 149
    :cond_3f
    invoke-virtual {p0, v1, v2}, Lkotlinx/io/Buffer;->throwEof(J)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public readShort()S
    .registers 8

    .line 109
    iget-object v0, p0, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    const-wide/16 v1, 0x2

    if-eqz v0, :cond_3a

    .line 110
    invoke-virtual {v0}, Lkotlinx/io/Segment;->getSize()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2b

    .line 113
    invoke-virtual {p0, v1, v2}, Lkotlinx/io/Buffer;->require(J)V

    if-nez v3, :cond_1a

    .line 115
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->recycleHead$kotlinx_io_core()V

    .line 116
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->readShort()S

    move-result p0

    return p0

    .line 118
    :cond_1a
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lkotlinx/io/Buffer;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0

    .line 120
    :cond_2b
    invoke-virtual {v0}, Lkotlinx/io/Segment;->readShort$kotlinx_io_core()S

    move-result v0

    .line 121
    iget-wide v5, p0, Lkotlinx/io/Buffer;->sizeMut:J

    sub-long/2addr v5, v1

    iput-wide v5, p0, Lkotlinx/io/Buffer;->sizeMut:J

    if-ne v3, v4, :cond_39

    .line 123
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->recycleHead$kotlinx_io_core()V

    :cond_39
    return v0

    .line 109
    :cond_3a
    invoke-virtual {p0, v1, v2}, Lkotlinx/io/Buffer;->throwEof(J)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public readTo(Lkotlinx/io/RawSink;J)V
    .registers 6

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_46

    .line 331
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-ltz v0, :cond_17

    .line 335
    invoke-interface {p1, p0, p2, p3}, Lkotlinx/io/RawSink;->write(Lkotlinx/io/Buffer;J)V

    return-void

    .line 332
    :cond_17
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/io/RawSink;->write(Lkotlinx/io/Buffer;J)V

    .line 333
    new-instance p1, Ljava/io/EOFException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Buffer exhausted before writing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " bytes. Only "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " bytes were written."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_46
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "byteCount ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") < 0"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final recycleHead$kotlinx_io_core()V
    .registers 4

    .line 593
    iget-object v0, p0, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 594
    invoke-virtual {v0}, Lkotlinx/io/Segment;->getNext()Lkotlinx/io/Segment;

    move-result-object v1

    .line 595
    iput-object v1, p0, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    const/4 v2, 0x0

    if-nez v1, :cond_11

    .line 597
    iput-object v2, p0, Lkotlinx/io/Buffer;->tail:Lkotlinx/io/Segment;

    goto :goto_14

    .line 599
    :cond_11
    invoke-virtual {v1, v2}, Lkotlinx/io/Segment;->setPrev(Lkotlinx/io/Segment;)V

    .line 601
    :goto_14
    invoke-virtual {v0, v2}, Lkotlinx/io/Segment;->setNext(Lkotlinx/io/Segment;)V

    .line 602
    invoke-static {v0}, Lkotlinx/io/SegmentPool;->recycle(Lkotlinx/io/Segment;)V

    return-void
.end method

.method public final synthetic recycleTail()V
    .registers 4

    .line 616
    iget-object v0, p0, Lkotlinx/io/Buffer;->tail:Lkotlinx/io/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 617
    invoke-virtual {v0}, Lkotlinx/io/Segment;->getPrev()Lkotlinx/io/Segment;

    move-result-object v1

    .line 618
    iput-object v1, p0, Lkotlinx/io/Buffer;->tail:Lkotlinx/io/Segment;

    const/4 v2, 0x0

    if-nez v1, :cond_11

    .line 620
    iput-object v2, p0, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    goto :goto_14

    .line 622
    :cond_11
    invoke-virtual {v1, v2}, Lkotlinx/io/Segment;->setNext(Lkotlinx/io/Segment;)V

    .line 624
    :goto_14
    invoke-virtual {v0, v2}, Lkotlinx/io/Segment;->setPrev(Lkotlinx/io/Segment;)V

    .line 625
    invoke-static {v0}, Lkotlinx/io/SegmentPool;->recycle(Lkotlinx/io/Segment;)V

    return-void
.end method

.method public request(J)Z
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_12

    .line 90
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-ltz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0

    .line 89
    :cond_12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " < 0"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public require(J)V
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_37

    .line 83
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_f

    return-void

    .line 84
    :cond_f
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer doesn\'t contain required number of bytes (size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", required: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_37
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic setHead(Lkotlinx/io/Segment;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    return-void
.end method

.method public final synthetic setSizeMut(J)V
    .registers 3

    .line 68
    iput-wide p1, p0, Lkotlinx/io/Buffer;->sizeMut:J

    return-void
.end method

.method public final synthetic setTail(Lkotlinx/io/Segment;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lkotlinx/io/Buffer;->tail:Lkotlinx/io/Segment;

    return-void
.end method

.method public skip(J)V
    .registers 13

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_58

    move-wide v2, p1

    :cond_7
    :goto_7
    cmp-long v4, v2, v0

    if-lez v4, :cond_57

    .line 293
    iget-object v4, p0, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    if-eqz v4, :cond_3b

    .line 295
    invoke-virtual {v4}, Lkotlinx/io/Segment;->getLimit()I

    move-result v5

    invoke-virtual {v4}, Lkotlinx/io/Segment;->getPos()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-long v5, v5

    .line 107
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    .line 296
    iget-wide v6, p0, Lkotlinx/io/Buffer;->sizeMut:J

    int-to-long v8, v5

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lkotlinx/io/Buffer;->sizeMut:J

    sub-long/2addr v2, v8

    .line 298
    invoke-virtual {v4}, Lkotlinx/io/Segment;->getPos()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v4, v6}, Lkotlinx/io/Segment;->setPos(I)V

    .line 300
    invoke-virtual {v4}, Lkotlinx/io/Segment;->getPos()I

    move-result v5

    invoke-virtual {v4}, Lkotlinx/io/Segment;->getLimit()I

    move-result v4

    if-ne v5, v4, :cond_7

    .line 301
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->recycleHead$kotlinx_io_core()V

    goto :goto_7

    .line 293
    :cond_3b
    new-instance p0, Ljava/io/EOFException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Buffer exhausted before skipping "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " bytes."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_57
    return-void

    .line 52
    :cond_58
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") < 0"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final throwEof(J)Ljava/lang/Void;
    .registers 7

    .line 169
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer doesn\'t contain required number of bytes (size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", required: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 14

    const/4 v0, 0x1

    .line 559
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_e

    const-string p0, "Buffer(size=0)"

    return-object p0

    .line 562
    :cond_e
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v1

    const/16 v3, 0x40

    int-to-long v3, v3

    .line 110
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 564
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, v1, 0x2

    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v6

    cmp-long v6, v6, v3

    const/4 v7, 0x0

    if-lez v6, :cond_29

    move v6, v0

    goto :goto_2a

    :cond_29
    move v6, v7

    :goto_2a
    add-int/2addr v5, v6

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 566
    sget-object v5, Lkotlinx/io/unsafe/UnsafeBufferOperations;->INSTANCE:Lkotlinx/io/unsafe/UnsafeBufferOperations;

    .line 378
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getHead()Lkotlinx/io/Segment;

    move-result-object v5

    move v6, v7

    :goto_35
    if-eqz v5, :cond_6a

    .line 380
    invoke-static {}, Lkotlinx/io/unsafe/UnsafeBufferOperationsKt;->getSegmentReadContextImpl()Lkotlinx/io/unsafe/SegmentReadContext;

    move-result-object v8

    move v9, v7

    :goto_3c
    if-ge v6, v1, :cond_65

    .line 568
    invoke-virtual {v5}, Lkotlinx/io/Segment;->getSize()I

    move-result v10

    if-ge v9, v10, :cond_65

    add-int/lit8 v10, v9, 0x1

    .line 569
    invoke-interface {v8, v5, v9}, Lkotlinx/io/unsafe/SegmentReadContext;->getUnchecked(Lkotlinx/io/Segment;I)B

    move-result v9

    add-int/2addr v6, v0

    .line 572
    invoke-static {}, Lkotlinx/io/_UtilKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v11

    shr-int/lit8 v12, v9, 0x4

    and-int/lit8 v12, v12, 0xf

    aget-char v11, v11, v12

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 573
    invoke-static {}, Lkotlinx/io/_UtilKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v11

    and-int/lit8 v9, v9, 0xf

    .line 95
    aget-char v9, v11, v9

    .line 573
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v9, v10

    goto :goto_3c

    .line 381
    :cond_65
    invoke-virtual {v5}, Lkotlinx/io/Segment;->getNext()Lkotlinx/io/Segment;

    move-result-object v5

    goto :goto_35

    .line 577
    :cond_6a
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-lez v0, :cond_77

    const/16 v0, 0x2026

    .line 578
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 581
    :cond_77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Buffer(size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " hex="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transferFrom(Lkotlinx/io/RawSource;)J
    .registers 8

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :goto_7
    const-wide/16 v2, 0x2000

    .line 494
    invoke-interface {p1, p0, v2, v3}, Lkotlinx/io/RawSource;->readAtMostTo(Lkotlinx/io/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_15

    add-long/2addr v0, v2

    goto :goto_7

    :cond_15
    return-wide v0
.end method

.method public transferTo(Lkotlinx/io/RawSink;)J
    .registers 6

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_12

    .line 341
    invoke-interface {p1, p0, v0, v1}, Lkotlinx/io/RawSink;->write(Lkotlinx/io/Buffer;J)V

    :cond_12
    return-wide v0
.end method

.method public final synthetic writableSegment(I)Lkotlinx/io/Segment;
    .registers 5

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2f

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_2f

    .line 359
    iget-object v1, p0, Lkotlinx/io/Buffer;->tail:Lkotlinx/io/Segment;

    if-nez v1, :cond_14

    .line 360
    invoke-static {}, Lkotlinx/io/SegmentPool;->take()Lkotlinx/io/Segment;

    move-result-object p1

    .line 361
    iput-object p1, p0, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    .line 362
    iput-object p1, p0, Lkotlinx/io/Buffer;->tail:Lkotlinx/io/Segment;

    return-object p1

    .line 366
    :cond_14
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 367
    invoke-virtual {v1}, Lkotlinx/io/Segment;->getLimit()I

    move-result v2

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_24

    iget-boolean p1, v1, Lkotlinx/io/Segment;->owner:Z

    if-nez p1, :cond_23

    goto :goto_24

    :cond_23
    return-object v1

    .line 368
    :cond_24
    :goto_24
    invoke-static {}, Lkotlinx/io/SegmentPool;->take()Lkotlinx/io/Segment;

    move-result-object p1

    invoke-virtual {v1, p1}, Lkotlinx/io/Segment;->push$kotlinx_io_core(Lkotlinx/io/Segment;)Lkotlinx/io/Segment;

    move-result-object p1

    .line 369
    iput-object p1, p0, Lkotlinx/io/Buffer;->tail:Lkotlinx/io/Segment;

    return-object p1

    .line 356
    :cond_2f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected capacity ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), should be in range [1, 8192]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 355
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lkotlinx/io/Buffer;J)V
    .registers 11

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p1, p0, :cond_bb

    .line 454
    iget-wide v1, p1, Lkotlinx/io/Buffer;->sizeMut:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lkotlinx/io/_UtilKt;->checkOffsetAndCount(JJJ)V

    :goto_f
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_ba

    .line 460
    iget-object v0, p1, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkotlinx/io/Segment;->getSize()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_65

    .line 461
    iget-object v0, p0, Lkotlinx/io/Buffer;->tail:Lkotlinx/io/Segment;

    if-eqz v0, :cond_59

    .line 462
    iget-boolean v1, v0, Lkotlinx/io/Segment;->owner:Z

    if-eqz v1, :cond_59

    .line 463
    invoke-virtual {v0}, Lkotlinx/io/Segment;->getLimit()I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v1, p2

    invoke-virtual {v0}, Lkotlinx/io/Segment;->getShared$kotlinx_io_core()Z

    move-result v3

    if-eqz v3, :cond_39

    const/4 v3, 0x0

    goto :goto_3d

    :cond_39
    invoke-virtual {v0}, Lkotlinx/io/Segment;->getPos()I

    move-result v3

    :goto_3d
    int-to-long v3, v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2000

    cmp-long v1, v1, v3

    if-gtz v1, :cond_59

    .line 466
    iget-object v1, p1, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, Lkotlinx/io/Segment;->writeTo$kotlinx_io_core(Lkotlinx/io/Segment;I)V

    .line 467
    iget-wide v0, p1, Lkotlinx/io/Buffer;->sizeMut:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lkotlinx/io/Buffer;->sizeMut:J

    .line 468
    iget-wide v0, p0, Lkotlinx/io/Buffer;->sizeMut:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lkotlinx/io/Buffer;->sizeMut:J

    return-void

    .line 473
    :cond_59
    iget-object v0, p1, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lkotlinx/io/Segment;->split$kotlinx_io_core(I)Lkotlinx/io/Segment;

    move-result-object v0

    iput-object v0, p1, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    .line 478
    :cond_65
    iget-object v0, p1, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 479
    invoke-virtual {v0}, Lkotlinx/io/Segment;->getSize()I

    move-result v1

    int-to-long v1, v1

    .line 480
    invoke-virtual {v0}, Lkotlinx/io/Segment;->pop$kotlinx_io_core()Lkotlinx/io/Segment;

    move-result-object v3

    iput-object v3, p1, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    if-nez v3, :cond_7a

    const/4 v3, 0x0

    .line 482
    iput-object v3, p1, Lkotlinx/io/Buffer;->tail:Lkotlinx/io/Segment;

    .line 630
    :cond_7a
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getHead()Lkotlinx/io/Segment;

    move-result-object v3

    if-nez v3, :cond_87

    .line 631
    invoke-virtual {p0, v0}, Lkotlinx/io/Buffer;->setHead(Lkotlinx/io/Segment;)V

    .line 632
    invoke-virtual {p0, v0}, Lkotlinx/io/Buffer;->setTail(Lkotlinx/io/Segment;)V

    goto :goto_ad

    .line 634
    :cond_87
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getTail()Lkotlinx/io/Segment;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Lkotlinx/io/Segment;->push$kotlinx_io_core(Lkotlinx/io/Segment;)Lkotlinx/io/Segment;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/io/Segment;->compact$kotlinx_io_core()Lkotlinx/io/Segment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/io/Buffer;->setTail(Lkotlinx/io/Segment;)V

    .line 635
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getTail()Lkotlinx/io/Segment;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkotlinx/io/Segment;->getPrev()Lkotlinx/io/Segment;

    move-result-object v0

    if-nez v0, :cond_ad

    .line 636
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getTail()Lkotlinx/io/Segment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/io/Buffer;->setHead(Lkotlinx/io/Segment;)V

    .line 485
    :cond_ad
    :goto_ad
    iget-wide v3, p1, Lkotlinx/io/Buffer;->sizeMut:J

    sub-long/2addr v3, v1

    iput-wide v3, p1, Lkotlinx/io/Buffer;->sizeMut:J

    .line 486
    iget-wide v3, p0, Lkotlinx/io/Buffer;->sizeMut:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lkotlinx/io/Buffer;->sizeMut:J

    sub-long/2addr p2, v1

    goto/16 :goto_f

    :cond_ba
    return-void

    .line 453
    :cond_bb
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "source == this"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public write(Lkotlinx/io/RawSource;J)V
    .registers 12

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_42

    move-wide v2, p2

    :goto_c
    cmp-long v4, v2, v0

    if-lez v4, :cond_41

    .line 391
    invoke-interface {p1, p0, v2, v3}, Lkotlinx/io/RawSource;->readAtMostTo(Lkotlinx/io/Buffer;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_1c

    sub-long/2addr v2, v4

    goto :goto_c

    .line 393
    :cond_1c
    new-instance p0, Ljava/io/EOFException;

    .line 394
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Source exhausted before reading "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes. Only "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p2, v2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 395
    const-string p2, " were read."

    .line 394
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 393
    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_41
    return-void

    .line 52
    :cond_42
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "byteCount ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") < 0"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)V
    .registers 11

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    .line 38
    invoke-static/range {v1 .. v6}, Lkotlinx/io/_UtilKt;->checkBounds(JJJ)V

    move v0, p2

    :goto_d
    if-ge v0, p3, :cond_24

    const/4 v1, 0x1

    .line 379
    invoke-virtual {p0, v1}, Lkotlinx/io/Buffer;->writableSegment(I)Lkotlinx/io/Segment;

    move-result-object v1

    sub-int v2, p3, v0

    .line 380
    invoke-virtual {v1}, Lkotlinx/io/Segment;->getRemainingCapacity()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v2, v0

    .line 381
    invoke-virtual {v1, p1, v0, v2}, Lkotlinx/io/Segment;->write$kotlinx_io_core([BII)V

    move v0, v2

    goto :goto_d

    .line 384
    :cond_24
    iget-wide v0, p0, Lkotlinx/io/Buffer;->sizeMut:J

    sub-int/2addr p3, p2

    int-to-long p1, p3

    add-long/2addr v0, p1

    iput-wide v0, p0, Lkotlinx/io/Buffer;->sizeMut:J

    return-void
.end method

.method public writeByte(B)V
    .registers 6

    const/4 v0, 0x1

    .line 502
    invoke-virtual {p0, v0}, Lkotlinx/io/Buffer;->writableSegment(I)Lkotlinx/io/Segment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlinx/io/Segment;->writeByte$kotlinx_io_core(B)V

    .line 503
    iget-wide v0, p0, Lkotlinx/io/Buffer;->sizeMut:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lkotlinx/io/Buffer;->sizeMut:J

    return-void
.end method

.method public writeInt(I)V
    .registers 6

    const/4 v0, 0x4

    .line 512
    invoke-virtual {p0, v0}, Lkotlinx/io/Buffer;->writableSegment(I)Lkotlinx/io/Segment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlinx/io/Segment;->writeInt$kotlinx_io_core(I)V

    .line 513
    iget-wide v0, p0, Lkotlinx/io/Buffer;->sizeMut:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lkotlinx/io/Buffer;->sizeMut:J

    return-void
.end method

.method public writeLong(J)V
    .registers 5

    const/16 v0, 0x8

    .line 517
    invoke-virtual {p0, v0}, Lkotlinx/io/Buffer;->writableSegment(I)Lkotlinx/io/Segment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lkotlinx/io/Segment;->writeLong$kotlinx_io_core(J)V

    .line 518
    iget-wide p1, p0, Lkotlinx/io/Buffer;->sizeMut:J

    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    iput-wide p1, p0, Lkotlinx/io/Buffer;->sizeMut:J

    return-void
.end method

.method public writeShort(S)V
    .registers 6

    const/4 v0, 0x2

    .line 507
    invoke-virtual {p0, v0}, Lkotlinx/io/Buffer;->writableSegment(I)Lkotlinx/io/Segment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlinx/io/Segment;->writeShort$kotlinx_io_core(S)V

    .line 508
    iget-wide v0, p0, Lkotlinx/io/Buffer;->sizeMut:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lkotlinx/io/Buffer;->sizeMut:J

    return-void
.end method
