###### Class org.tukaani.xz.delta.DeltaEncoder (org.tukaani.xz.delta.DeltaEncoder)
.class public Lorg/tukaani/xz/delta/DeltaEncoder;
.super Lorg/tukaani/xz/delta/DeltaCoder;
.source "DeltaEncoder.java"


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
.method public encode([BII[B)V
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
    aget-byte v3, p1, v3

    iget-object v4, p0, Lorg/tukaani/xz/delta/DeltaCoder;->history:[B

    aget-byte v4, v4, v2

    sub-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 23
    :cond_19
    iget v0, p0, Lorg/tukaani/xz/delta/DeltaCoder;->distance:I

    if-lt p3, v0, :cond_26

    add-int v3, p2, p3

    sub-int/2addr v3, v0

    .line 24
    iget-object v4, p0, Lorg/tukaani/xz/delta/DeltaCoder;->history:[B

    invoke-static {p1, v3, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_34

    .line 30
    :cond_26
    iget-object v3, p0, Lorg/tukaani/xz/delta/DeltaCoder;->history:[B

    sub-int/2addr v0, v2

    invoke-static {v3, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    iget-object v0, p0, Lorg/tukaani/xz/delta/DeltaCoder;->history:[B

    iget v1, p0, Lorg/tukaani/xz/delta/DeltaCoder;->distance:I

    sub-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_34
    if-ge v2, p3, :cond_46

    add-int v0, p2, v2

    .line 37
    aget-byte v1, p1, v0

    iget v3, p0, Lorg/tukaani/xz/delta/DeltaCoder;->distance:I

    sub-int/2addr v0, v3

    aget-byte v0, p1, v0

    sub-int/2addr v1, v0

    int-to-byte v0, v1

    aput-byte v0, p4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_46
    return-void
.end method
