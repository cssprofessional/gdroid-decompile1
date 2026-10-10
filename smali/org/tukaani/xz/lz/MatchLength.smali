###### Class org.tukaani.xz.lz.MatchLength (org.tukaani.xz.lz.MatchLength)
.class final Lorg/tukaani/xz/lz/MatchLength;
.super Ljava/lang/Object;
.source "MatchLength.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final EXTRA_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLen([BIIII)I
    .registers 7

    add-int/2addr p4, p1

    add-int/2addr p3, p1

    :goto_2
    if-ge p3, p4, :cond_f

    .line 20
    aget-byte v0, p0, p3

    sub-int v1, p3, p2

    aget-byte v1, p0, v1

    if-ne v0, v1, :cond_f

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_f
    sub-int/2addr p3, p1

    return p3
.end method
