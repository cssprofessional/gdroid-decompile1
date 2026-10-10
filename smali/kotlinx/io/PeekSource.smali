###### Class kotlinx.io.PeekSource (kotlinx.io.PeekSource)
.class public final Lkotlinx/io/PeekSource;
.super Ljava/lang/Object;
.source "PeekSource.kt"

# interfaces
.implements Lkotlinx/io/RawSource;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPeekSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PeekSource.kt\nkotlinx/io/PeekSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 -Util.kt\nkotlinx/io/_UtilKt\n*L\n1#1,76:1\n1#2:77\n1#2:79\n52#3:78\n53#3:80\n*S KotlinDebug\n*F\n+ 1 PeekSource.kt\nkotlinx/io/PeekSource\n*L\n46#1:79\n46#1:78\n46#1:80\n*E\n"
.end annotation


# instance fields
.field public final buffer:Lkotlinx/io/Buffer;

.field public closed:Z

.field public expectedPos:I

.field public expectedSegment:Lkotlinx/io/Segment;

.field public pos:J

.field public final upstream:Lkotlinx/io/Source;


# direct methods
.method public constructor <init>(Lkotlinx/io/Source;)V
    .registers 3

    const-string v0, "upstream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lkotlinx/io/PeekSource;->upstream:Lkotlinx/io/Source;

    .line 37
    invoke-interface {p1}, Lkotlinx/io/Source;->getBuffer()Lkotlinx/io/Buffer;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/io/PeekSource;->buffer:Lkotlinx/io/Buffer;

    .line 38
    invoke-virtual {p1}, Lkotlinx/io/Buffer;->getHead()Lkotlinx/io/Segment;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/io/PeekSource;->expectedSegment:Lkotlinx/io/Segment;

    .line 39
    invoke-virtual {p1}, Lkotlinx/io/Buffer;->getHead()Lkotlinx/io/Segment;

    move-result-object p1

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Lkotlinx/io/Segment;->getPos()I

    move-result p1

    goto :goto_22

    :cond_21
    const/4 p1, -0x1

    :goto_22
    iput p1, p0, Lkotlinx/io/PeekSource;->expectedPos:I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lkotlinx/io/PeekSource;->closed:Z

    return-void
.end method

.method public readAtMostTo(Lkotlinx/io/Buffer;J)J
    .registers 10

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-boolean v0, p0, Lkotlinx/io/PeekSource;->closed:Z

    if-nez v0, :cond_a8

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_88

    .line 50
    iget-object v3, p0, Lkotlinx/io/PeekSource;->expectedSegment:Lkotlinx/io/Segment;

    if-eqz v3, :cond_35

    .line 51
    iget-object v4, p0, Lkotlinx/io/PeekSource;->buffer:Lkotlinx/io/Buffer;

    invoke-virtual {v4}, Lkotlinx/io/Buffer;->getHead()Lkotlinx/io/Segment;

    move-result-object v4

    if-ne v3, v4, :cond_2d

    iget v3, p0, Lkotlinx/io/PeekSource;->expectedPos:I

    iget-object v4, p0, Lkotlinx/io/PeekSource;->buffer:Lkotlinx/io/Buffer;

    invoke-virtual {v4}, Lkotlinx/io/Buffer;->getHead()Lkotlinx/io/Segment;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lkotlinx/io/Segment;->getPos()I

    move-result v4

    if-ne v3, v4, :cond_2d

    goto :goto_35

    .line 49
    :cond_2d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Peek source is invalid because upstream source was used"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_35
    :goto_35
    if-nez v2, :cond_38

    return-wide v0

    .line 56
    :cond_38
    iget-object v0, p0, Lkotlinx/io/PeekSource;->upstream:Lkotlinx/io/Source;

    iget-wide v1, p0, Lkotlinx/io/PeekSource;->pos:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lkotlinx/io/Source;->request(J)Z

    move-result v0

    if-nez v0, :cond_48

    const-wide/16 p0, -0x1

    return-wide p0

    .line 58
    :cond_48
    iget-object v0, p0, Lkotlinx/io/PeekSource;->expectedSegment:Lkotlinx/io/Segment;

    if-nez v0, :cond_6b

    iget-object v0, p0, Lkotlinx/io/PeekSource;->buffer:Lkotlinx/io/Buffer;

    invoke-virtual {v0}, Lkotlinx/io/Buffer;->getHead()Lkotlinx/io/Segment;

    move-result-object v0

    if-eqz v0, :cond_6b

    .line 62
    iget-object v0, p0, Lkotlinx/io/PeekSource;->buffer:Lkotlinx/io/Buffer;

    invoke-virtual {v0}, Lkotlinx/io/Buffer;->getHead()Lkotlinx/io/Segment;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/io/PeekSource;->expectedSegment:Lkotlinx/io/Segment;

    .line 63
    iget-object v0, p0, Lkotlinx/io/PeekSource;->buffer:Lkotlinx/io/Buffer;

    invoke-virtual {v0}, Lkotlinx/io/Buffer;->getHead()Lkotlinx/io/Segment;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkotlinx/io/Segment;->getPos()I

    move-result v0

    iput v0, p0, Lkotlinx/io/PeekSource;->expectedPos:I

    .line 66
    :cond_6b
    iget-object v0, p0, Lkotlinx/io/PeekSource;->buffer:Lkotlinx/io/Buffer;

    invoke-virtual {v0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v0

    iget-wide v2, p0, Lkotlinx/io/PeekSource;->pos:J

    sub-long/2addr v0, v2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 67
    iget-object v0, p0, Lkotlinx/io/PeekSource;->buffer:Lkotlinx/io/Buffer;

    iget-wide v2, p0, Lkotlinx/io/PeekSource;->pos:J

    add-long v4, v2, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lkotlinx/io/Buffer;->copyTo(Lkotlinx/io/Buffer;JJ)V

    .line 68
    iget-wide v0, p0, Lkotlinx/io/PeekSource;->pos:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lkotlinx/io/PeekSource;->pos:J

    return-wide p2

    .line 52
    :cond_88
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

    .line 45
    :cond_a8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Source is closed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
