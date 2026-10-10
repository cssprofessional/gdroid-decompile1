###### Class org.bouncycastle.pqc.legacy.math.linearalgebra.CharUtils (org.bouncycastle.pqc.legacy.math.linearalgebra.CharUtils)
.class public final Lorg/bouncycastle/pqc/legacy/math/linearalgebra/CharUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clone([C)[C
    .registers 4

    .line 0
    array-length v0, p0

    new-array v0, v0, [C

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static equals([C[C)Z
    .registers 8

    .line 0
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    return v2

    :cond_6
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v3, v1

    :goto_a
    if-ltz v0, :cond_19

    aget-char v4, p0, v0

    aget-char v5, p1, v0

    if-ne v4, v5, :cond_14

    move v4, v1

    goto :goto_15

    :cond_14
    move v4, v2

    :goto_15
    and-int/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_19
    return v3
.end method

.method public static toByteArray([C)[B
    .registers 4

    .line 0
    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_6
    if-ltz v1, :cond_10

    aget-char v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_10
    return-object v0
.end method

.method public static toByteArrayForPBE([C)[B
    .registers 8

    .line 0
    array-length v0, p0

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    array-length v4, p0

    if-ge v3, v4, :cond_10

    aget-char v4, p0, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_10
    mul-int/lit8 p0, v0, 0x2

    add-int/lit8 v3, p0, 0x2

    new-array v3, v3, [B

    move v4, v2

    :goto_17
    if-ge v4, v0, :cond_26

    mul-int/lit8 v5, v4, 0x2

    aput-byte v2, v3, v5

    add-int/lit8 v5, v5, 0x1

    aget-byte v6, v1, v4

    aput-byte v6, v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_26
    aput-byte v2, v3, p0

    add-int/lit8 p0, p0, 0x1

    aput-byte v2, v3, p0

    return-object v3
.end method
