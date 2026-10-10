###### Class org.libsdl.app.SurfaceSizePolicy (org.libsdl.app.SurfaceSizePolicy)
.class public final Lorg/libsdl/app/SurfaceSizePolicy;
.super Ljava/lang/Object;
.source "SurfaceSizePolicy.java"


# static fields
.field static final SQUARE_ASPECT:D = 1.2


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLandscape(I)Z
    .registers 2

    .line 0
    if-eqz p0, :cond_f

    const/4 v0, 0x6

    if-eq p0, v0, :cond_f

    const/16 v0, 0x8

    if-eq p0, v0, :cond_f

    const/16 v0, 0xb

    if-eq p0, v0, :cond_f

    const/4 p0, 0x0

    return p0

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method public static isPortrait(I)Z
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v1, 0x7

    if-eq p0, v1, :cond_10

    const/16 v1, 0x9

    if-eq p0, v1, :cond_10

    const/16 v1, 0xc

    if-eq p0, v1, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    return v0
.end method

.method public static isTransient(IIIZ)Z
    .registers 9

    const/4 v0, 0x1

    if-lez p1, :cond_33

    if-gtz p2, :cond_6

    goto :goto_33

    .line 56
    :cond_6
    invoke-static {p0}, Lorg/libsdl/app/SurfaceSizePolicy;->isLandscape(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    if-ge p1, p2, :cond_32

    goto :goto_18

    .line 57
    :cond_10
    invoke-static {p0}, Lorg/libsdl/app/SurfaceSizePolicy;->isPortrait(I)Z

    move-result p0

    if-eqz p0, :cond_32

    if-le p1, p2, :cond_32

    :goto_18
    if-eqz p3, :cond_1b

    goto :goto_32

    .line 60
    :cond_1b
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-double v3, p0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-double p0, p0

    div-double/2addr p0, v3

    const-wide p2, 0x3ff3333333333333L    # 1.2

    cmpl-double p0, p0, p2

    if-ltz p0, :cond_30

    goto :goto_31

    :cond_30
    move v0, v2

    :goto_31
    return v0

    :cond_32
    :goto_32
    return v2

    :cond_33
    :goto_33
    return v0
.end method
