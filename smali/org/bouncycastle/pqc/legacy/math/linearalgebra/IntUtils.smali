###### Class org.bouncycastle.pqc.legacy.math.linearalgebra.IntUtils (org.bouncycastle.pqc.legacy.math.linearalgebra.IntUtils)
.class public final Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clone([I)[I
    .registers 4

    .line 0
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static equals([I[I)Z
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

    aget v4, p0, v0

    aget v5, p1, v0

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

.method public static fill([II)V
    .registers 3

    .line 0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_a

    aput p1, p0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_a
    return-void
.end method

.method private static partition([IIII)I
    .registers 7

    .line 0
    aget v0, p0, p3

    aget v1, p0, p2

    aput v1, p0, p3

    aput v0, p0, p2

    move p3, p1

    :goto_9
    if-ge p1, p2, :cond_1a

    aget v1, p0, p1

    if-gt v1, v0, :cond_17

    aget v2, p0, p3

    aput v1, p0, p3

    aput v2, p0, p1

    add-int/lit8 p3, p3, 0x1

    :cond_17
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_1a
    aget p1, p0, p3

    aget v0, p0, p2

    aput v0, p0, p3

    aput p1, p0, p2

    return p3
.end method

.method public static quicksort([I)V
    .registers 3

    .line 0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->quicksort([III)V

    return-void
.end method

.method public static quicksort([III)V
    .registers 5

    .line 0
    if-le p2, p1, :cond_10

    invoke-static {p0, p1, p2, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->partition([IIII)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-static {p0, p1, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->quicksort([III)V

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->quicksort([III)V

    :cond_10
    return-void
.end method

.method public static subArray([III)[I
    .registers 5

    .line 0
    sub-int/2addr p2, p1

    new-array v0, p2, [I

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static toHexString([I)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/BigEndianConversions;->toByteArray([I)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/ByteUtils;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString([I)Ljava/lang/String;
    .registers 4

    .line 0
    const-string v0, ""

    const/4 v1, 0x0

    :goto_3
    array-length v2, p0

    if-ge v1, v2, :cond_1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1f
    return-object v0
.end method
