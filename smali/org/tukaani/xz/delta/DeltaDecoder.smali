###### Class org.tukaani.xz.delta.DeltaDecoder (org.tukaani.xz.delta.DeltaDecoder)
.class public Lorg/tukaani/xz/delta/DeltaDecoder;
.super Lorg/tukaani/xz/delta/DeltaCoder;
.source "DeltaDecoder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 10
    invoke-direct {p0, p1}, Lorg/tukaani/xz/delta/DeltaCoder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public decode([BII)V
    .registers 10

    .line 17
    iget v0, p0, Lorg/tukaani/xz/delta/DeltaCoder;->distance:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_19

    add-int v3, p2, v2

    .line 18
    aget-byte v4, p1, v3

    iget-object v5, p0, Lorg/tukaani/xz/delta/DeltaCoder;->history:[B

    aget-byte v5, v5, v2

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_19
    :goto_19
    if-ge v2, p3, :cond_2c

    add-int v0, p2, v2

    .line 23
    aget-byte v3, p1, v0

    iget v4, p0, Lorg/tukaani/xz/delta/DeltaCoder;->distance:I

    sub-int v4, v0, v4

    aget-byte v4, p1, v4

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 27
    :cond_2c
    iget v0, p0, Lorg/tukaani/xz/delta/DeltaCoder;->distance:I

    if-lt p3, v0, :cond_38

    add-int/2addr p2, p3

    sub-int/2addr p2, v0

    .line 28
    iget-object p0, p0, Lorg/tukaani/xz/delta/DeltaCoder;->history:[B

    invoke-static {p1, p2, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_46

    .line 33
    :cond_38
    iget-object v3, p0, Lorg/tukaani/xz/delta/DeltaCoder;->history:[B

    sub-int/2addr v0, v2

    invoke-static {v3, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    iget-object v0, p0, Lorg/tukaani/xz/delta/DeltaCoder;->history:[B

    iget p0, p0, Lorg/tukaani/xz/delta/DeltaCoder;->distance:I

    sub-int/2addr p0, v2

    invoke-static {p1, p2, v0, p0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_46
    return-void
.end method
