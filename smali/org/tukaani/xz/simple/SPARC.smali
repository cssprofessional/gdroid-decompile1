###### Class org.tukaani.xz.simple.SPARC (org.tukaani.xz.simple.SPARC)
.class public final Lorg/tukaani/xz/simple/SPARC;
.super Ljava/lang/Object;
.source "SPARC.java"

# interfaces
.implements Lorg/tukaani/xz/simple/SimpleFilter;


# instance fields
.field private final isEncoder:Z

.field private pos:I


# direct methods
.method public constructor <init>(ZI)V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p1, p0, Lorg/tukaani/xz/simple/SPARC;->isEncoder:Z

    .line 17
    iput p2, p0, Lorg/tukaani/xz/simple/SPARC;->pos:I

    return-void
.end method


# virtual methods
.method public code([BII)I
    .registers 8

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x4

    move v0, p2

    :goto_4
    if-gt v0, p3, :cond_41

    .line 26
    aget-byte v1, p1, v0

    const/16 v2, 0x40

    const/16 v3, 0xc0

    if-ne v1, v2, :cond_15

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    if-eqz v2, :cond_20

    :cond_15
    const/16 v2, 0x7f

    if-ne v1, v2, :cond_3e

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3e

    .line 28
    :cond_20
    invoke-static {p1, v0}, Lorg/tukaani/xz/common/ByteArrayView;->getIntBE([BI)I

    move-result v1

    .line 30
    iget v2, p0, Lorg/tukaani/xz/simple/SPARC;->pos:I

    add-int/2addr v2, v0

    sub-int/2addr v2, p2

    ushr-int/lit8 v2, v2, 0x2

    .line 31
    iget-boolean v3, p0, Lorg/tukaani/xz/simple/SPARC;->isEncoder:Z

    if-nez v3, :cond_2f

    neg-int v2, v2

    :cond_2f
    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x9

    shr-int/lit8 v1, v1, 0x9

    const v2, 0x3fffffff    # 1.9999999f

    and-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v1, v2

    .line 39
    invoke-static {p1, v0, v1}, Lorg/tukaani/xz/common/ByteArrayView;->setIntBE([BII)V

    :cond_3e
    add-int/lit8 v0, v0, 0x4

    goto :goto_4

    :cond_41
    sub-int/2addr v0, p2

    .line 44
    iget p1, p0, Lorg/tukaani/xz/simple/SPARC;->pos:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/tukaani/xz/simple/SPARC;->pos:I

    return v0
.end method
