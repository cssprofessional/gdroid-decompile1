###### Class kotlinx.io.RealSource (kotlinx.io.RealSource)
.class public final Lkotlinx/io/RealSource;
.super Ljava/lang/Object;
.source "RealSource.kt"

# interfaces
.implements Lkotlinx/io/Source;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealSource.kt\nkotlinx/io/RealSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 -Util.kt\nkotlinx/io/_UtilKt\n*L\n1#1,162:1\n159#1:163\n160#1:165\n159#1:167\n160#1:169\n159#1:170\n160#1:172\n159#1:176\n160#1:178\n159#1:180\n160#1:182\n1#2:164\n1#2:166\n1#2:168\n1#2:171\n1#2:173\n1#2:177\n1#2:179\n1#2:181\n1#2:183\n38#3:174\n110#3:175\n*S KotlinDebug\n*F\n+ 1 RealSource.kt\nkotlinx/io/RealSource\n*L\n38#1:163\n38#1:165\n51#1:167\n51#1:169\n60#1:170\n60#1:172\n127#1:176\n127#1:178\n144#1:180\n144#1:182\n38#1:164\n51#1:168\n60#1:171\n127#1:177\n144#1:181\n74#1:174\n80#1:175\n*E\n"
.end annotation


# instance fields
.field public final bufferField:Lkotlinx/io/Buffer;

.field public closed:Z

.field public final source:Lkotlinx/io/RawSource;


# direct methods
.method public constructor <init>(Lkotlinx/io/RawSource;)V
    .registers 3

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lkotlinx/io/RealSource;->source:Lkotlinx/io/RawSource;

    .line 31
    new-instance p1, Lkotlinx/io/Buffer;

    invoke-direct {p1}, Lkotlinx/io/Buffer;-><init>()V

    iput-object p1, p0, Lkotlinx/io/RealSource;->bufferField:Lkotlinx/io/Buffer;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 149
    iget-boolean v0, p0, Lkotlinx/io/RealSource;->closed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lkotlinx/io/RealSource;->closed:Z

    .line 151
    iget-object v0, p0, Lkotlinx/io/RealSource;->source:Lkotlinx/io/RawSource;

    invoke-interface {v0}, Lkotlinx/io/RawSource;->close()V

    .line 152
    iget-object p0, p0, Lkotlinx/io/RealSource;->bufferField:Lkotlinx/io/Buffer;

    invoke-virtual {p0}, Lkotlinx/io/Buffer;->clear()V

    return-void
.end method

.method public exhausted()Z
    .registers 5

    .line 159
    iget-boolean v0, p0, Lkotlinx/io/RealSource;->closed:Z

    if-nez v0, :cond_20

    .line 52
    iget-object v0, p0, Lkotlinx/io/RealSource;->bufferField:Lkotlinx/io/Buffer;

    invoke-virtual {v0}, Lkotlinx/io/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lkotlinx/io/RealSource;->source:Lkotlinx/io/RawSource;

    iget-object p0, p0, Lkotlinx/io/RealSource;->bufferField:Lkotlinx/io/Buffer;

    const-wide/16 v1, 0x2000

    invoke-interface {v0, p0, v1, v2}, Lkotlinx/io/RawSource;->readAtMostTo(Lkotlinx/io/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0

    .line 159
    :cond_20
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Source is closed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBuffer()Lkotlinx/io/Buffer;
    .registers 1

    .line 35
    iget-object p0, p0, Lkotlinx/io/RealSource;->bufferField:Lkotlinx/io/Buffer;

    return-object p0
.end method

.method public peek()Lkotlinx/io/Source;
    .registers 2

    .line 159
    iget-boolean v0, p0, Lkotlinx/io/RealSource;->closed:Z

    if-nez v0, :cond_e

    .line 145
    new-instance v0, Lkotlinx/io/PeekSource;

    invoke-direct {v0, p0}, Lkotlinx/io/PeekSource;-><init>(Lkotlinx/io/Source;)V

    invoke-static {v0}, Lkotlinx/io/CoreKt;->buffered(Lkotlinx/io/RawSource;)Lkotlinx/io/Source;

    move-result-object p0

    return-object p0

    .line 159
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Source is closed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readAtMostTo([BII)I
    .registers 11

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    .line 38
    invoke-static/range {v1 .. v6}, Lkotlinx/io/_UtilKt;->checkBounds(JJJ)V

    .line 76
    iget-object v0, p0, Lkotlinx/io/RealSource;->bufferField:Lkotlinx/io/Buffer;

    invoke-virtual {v0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    .line 77
    iget-object v0, p0, Lkotlinx/io/RealSource;->source:Lkotlinx/io/RawSource;

    iget-object v1, p0, Lkotlinx/io/RealSource;->bufferField:Lkotlinx/io/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lkotlinx/io/RawSource;->readAtMostTo(Lkotlinx/io/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    const/4 p0, -0x1

    return p0

    :cond_2a
    sub-int/2addr p3, p2

    .line 80
    iget-object v0, p0, Lkotlinx/io/RealSource;->bufferField:Lkotlinx/io/Buffer;

    invoke-virtual {v0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v0

    int-to-long v2, p3

    .line 110
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 81
    iget-object p0, p0, Lkotlinx/io/RealSource;->bufferField:Lkotlinx/io/Buffer;

    add-int/2addr p3, p2

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/io/Buffer;->readAtMostTo([BII)I

    move-result p0

    return p0
.end method

.method public readAtMostTo(Lkotlinx/io/Buffer;J)J
    .registers 8

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-boolean v0, p0, Lkotlinx/io/RealSource;->closed:Z

    if-nez v0, :cond_56

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3b

    .line 41
    iget-object v2, p0, Lkotlinx/io/RealSource;->bufferField:Lkotlinx/io/Buffer;

    invoke-virtual {v2}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_2a

    .line 42
    iget-object v0, p0, Lkotlinx/io/RealSource;->source:Lkotlinx/io/RawSource;

    iget-object v1, p0, Lkotlinx/io/RealSource;->bufferField:Lkotlinx/io/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lkotlinx/io/RawSource;->readAtMostTo(Lkotlinx/io/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    return-wide v2

    .line 46
    :cond_2a
    iget-object v0, p0, Lkotlinx/io/RealSource;->bufferField:Lkotlinx/io/Buffer;

    invoke-virtual {v0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 47
    iget-object p0, p0, Lkotlinx/io/RealSource;->bufferField:Lkotlinx/io/Buffer;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/io/Buffer;->readAtMostTo(Lkotlinx/io/Buffer;J)J

    move-result-wide p0

    return-wide p0

    .line 39
    :cond_3b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "byteCount: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 159
    :cond_56
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Source is closed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readByte()B
    .registers 3

    const-wide/16 v0, 0x1

    .line 69
    invoke-virtual {p0, v0, v1}, Lkotlinx/io/RealSource;->require(J)V

    .line 70
    iget-object p0, p0, Lkotlinx/io/RealSource;->bufferField:Lkotlinx/io/Buffer;

    invoke-virtual {p0}, Lkotlinx/io/Buffer;->readByte()B

    move-result p0

    return p0
.end method

.method public readInt()I
    .registers 3

    const-wide/16 v0, 0x4

    .line 117
    invoke-virtual {p0, v0, v1}, Lkotlinx/io/RealSource;->require(J)V

    .line 118
    iget-object p0, p0, Lkotlinx/io/RealSource;->bufferField:Lkotlinx/io/Buffer;

    invoke-virtual {p0}, Lkotlinx/io/Buffer;->readInt()I

    move-result p0

    return p0
.end method

.method public readLong()J
    .registers 3

    const-wide/16 v0, 0x8

    .line 122
    invoke-virtual {p0, v0, v1}, Lkotlinx/io/RealSource;->require(J)V

    .line 123
    iget-object p0, p0, Lkotlinx/io/RealSource;->bufferField:Lkotlinx/io/Buffer;

    invoke-virtual {p0}, Lkotlinx/io/Buffer;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .registers 3

    const-wide/16 v0, 0x2

    .line 112
    invoke-virtual {p0, v0, v1}, Lkotlinx/io/RealSource;->require(J)V

    .line 113
    iget-object p0, p0, Lkotlinx/io/RealSource;->bufferField:Lkotlinx/io/Buffer;

    invoke-virtual {p0}, Lkotlinx/io/Buffer;->readShort()S

    move-result p0

    return p0
.end method

.method public readTo(Lkotlinx/io/RawSink;J)V
    .registers 6

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    :try_start_5
    invoke-virtual {p0, p2, p3}, Lkotlinx/io/RealSource;->require(J)V
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_8} :catch_e

    .line 92
    iget-object p0, p0, Lkotlinx/io/RealSource;->bufferField:Lkotlinx/io/Buffer;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/io/Buffer;->readTo(Lkotlinx/io/RawSink;J)V

    return-void

    :catch_e
    move-exception p2

    .line 89
    iget-object p3, p0, Lkotlinx/io/RealSource;->bufferField:Lkotlinx/io/Buffer;

    iget-object p0, p0, Lkotlinx/io/RealSource;->bufferField:Lkotlinx/io/Buffer;

    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v0

    invoke-interface {p1, p3, v0, v1}, Lkotlinx/io/RawSink;->write(Lkotlinx/io/Buffer;J)V

    .line 90
    throw p2
.end method

.method public request(J)Z
    .registers 7

    .line 159
    iget-boolean v0, p0, Lkotlinx/io/RealSource;->closed:Z

    if-nez v0, :cond_43

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_28

    .line 62
    :cond_a
    iget-object v0, p0, Lkotlinx/io/RealSource;->bufferField:Lkotlinx/io/Buffer;

    invoke-virtual {v0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gez v0, :cond_26

    .line 63
    iget-object v0, p0, Lkotlinx/io/RealSource;->source:Lkotlinx/io/RawSource;

    iget-object v1, p0, Lkotlinx/io/RealSource;->bufferField:Lkotlinx/io/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lkotlinx/io/RawSource;->readAtMostTo(Lkotlinx/io/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_26
    const/4 p0, 0x1

    return p0

    .line 61
    :cond_28
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

    .line 159
    :cond_43
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Source is closed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public require(J)V
    .registers 5

    .line 56
    invoke-virtual {p0, p1, p2}, Lkotlinx/io/RealSource;->request(J)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Ljava/io/EOFException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source doesn\'t contain required number of bytes ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffered("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lkotlinx/io/RealSource;->source:Lkotlinx/io/RawSource;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transferTo(Lkotlinx/io/RawSink;)J
    .registers 10

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    move-wide v2, v0

    .line 97
    :cond_8
    :goto_8
    iget-object v4, p0, Lkotlinx/io/RealSource;->source:Lkotlinx/io/RawSource;

    iget-object v5, p0, Lkotlinx/io/RealSource;->bufferField:Lkotlinx/io/Buffer;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Lkotlinx/io/RawSource;->readAtMostTo(Lkotlinx/io/Buffer;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_29

    .line 98
    iget-object v4, p0, Lkotlinx/io/RealSource;->bufferField:Lkotlinx/io/Buffer;

    invoke-virtual {v4}, Lkotlinx/io/Buffer;->completeSegmentByteCount$kotlinx_io_core()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_8

    add-long/2addr v2, v4

    .line 101
    iget-object v6, p0, Lkotlinx/io/RealSource;->bufferField:Lkotlinx/io/Buffer;

    invoke-interface {p1, v6, v4, v5}, Lkotlinx/io/RawSink;->write(Lkotlinx/io/Buffer;J)V

    goto :goto_8

    .line 104
    :cond_29
    iget-object v4, p0, Lkotlinx/io/RealSource;->bufferField:Lkotlinx/io/Buffer;

    invoke-virtual {v4}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-lez v0, :cond_43

    .line 105
    iget-object v0, p0, Lkotlinx/io/RealSource;->bufferField:Lkotlinx/io/Buffer;

    invoke-virtual {v0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v0

    add-long/2addr v2, v0

    .line 106
    iget-object p0, p0, Lkotlinx/io/RealSource;->bufferField:Lkotlinx/io/Buffer;

    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/io/RawSink;->write(Lkotlinx/io/Buffer;J)V

    :cond_43
    return-wide v2
.end method
