###### Class org.bouncycastle.pqc.legacy.math.linearalgebra.BigIntUtils (org.bouncycastle.pqc.legacy.math.linearalgebra.BigIntUtils)
.class public final Lorg/bouncycastle/pqc/legacy/math/linearalgebra/BigIntUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equals([Ljava/math/BigInteger;[Ljava/math/BigInteger;)Z
    .registers 7

    .line 0
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    return v2

    :cond_6
    move v0, v2

    move v1, v0

    :goto_8
    array-length v3, p0

    if-ge v0, v3, :cond_17

    aget-object v3, p0, v0

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_17
    if-nez v1, :cond_1a

    const/4 v2, 0x1

    :cond_1a
    return v2
.end method

.method public static fill([Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 3

    .line 0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_a

    aput-object p1, p0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_a
    return-void
.end method

.method public static subArray([Ljava/math/BigInteger;II)[Ljava/math/BigInteger;
    .registers 5

    .line 0
    sub-int/2addr p2, p1

    new-array v0, p2, [Ljava/math/BigInteger;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static toIntArray([Ljava/math/BigInteger;)[I
    .registers 4

    .line 0
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    return-object v0
.end method

.method public static toIntArrayModQ(I[Ljava/math/BigInteger;)[I
    .registers 5

    .line 0
    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_1b

    aget-object v2, p1, v1

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1b
    return-object v0
.end method

.method public static toMinimalByteArray(Ljava/math/BigInteger;)[B
    .registers 5

    .line 0
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1e

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_11

    goto :goto_1e

    :cond_11
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    shr-int/lit8 p0, p0, 0x3

    new-array v1, p0, [B

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1e
    :goto_1e
    return-object v0
.end method
