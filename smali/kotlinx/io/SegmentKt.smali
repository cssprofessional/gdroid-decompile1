###### Class kotlinx.io.SegmentKt (kotlinx.io.SegmentKt)
.class public final Lkotlinx/io/SegmentKt;
.super Ljava/lang/Object;
.source "Segment.kt"


# direct methods
.method public static final indexOf(Lkotlinx/io/Segment;BII)I
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p2, :cond_3a

    .line 444
    invoke-virtual {p0}, Lkotlinx/io/Segment;->getSize()I

    move-result v0

    if-ge p2, v0, :cond_3a

    if-gt p2, p3, :cond_2c

    .line 447
    invoke-virtual {p0}, Lkotlinx/io/Segment;->getSize()I

    move-result v0

    if-gt p3, v0, :cond_2c

    .line 450
    invoke-virtual {p0}, Lkotlinx/io/Segment;->getPos()I

    move-result v0

    const/4 v1, 0x1

    .line 451
    invoke-virtual {p0, v1}, Lkotlinx/io/Segment;->dataAsByteArray(Z)[B

    move-result-object p0

    :goto_1e
    if-ge p2, p3, :cond_2a

    add-int v1, v0, p2

    .line 453
    aget-byte v1, p0, v1

    if-ne v1, p1, :cond_27

    return p2

    :cond_27
    add-int/lit8 p2, p2, 0x1

    goto :goto_1e

    :cond_2a
    const/4 p0, -0x1

    return p0

    .line 448
    :cond_2c
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 447
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 445
    :cond_3a
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 444
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final isEmpty(Lkotlinx/io/Segment;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0}, Lkotlinx/io/Segment;->getSize()I

    move-result p0

    if-nez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method
