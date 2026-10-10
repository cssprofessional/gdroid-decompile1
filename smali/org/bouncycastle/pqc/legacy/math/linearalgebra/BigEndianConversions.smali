###### Class org.bouncycastle.pqc.legacy.math.linearalgebra.BigEndianConversions (org.bouncycastle.pqc.legacy.math.linearalgebra.BigEndianConversions)
.class public final Lorg/bouncycastle/pqc/legacy/math/linearalgebra/BigEndianConversions;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static I2OSP(I[BI)V
    .registers 6

    .line 0
    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 v1, p2, 0x2

    ushr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 p2, p2, 0x3

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method public static I2OSP(I[BII)V
    .registers 7

    .line 0
    add-int/lit8 p3, p3, -0x1

    move v0, p3

    :goto_3
    if-ltz v0, :cond_13

    add-int v1, p2, v0

    sub-int v2, p3, v0

    mul-int/lit8 v2, v2, 0x8

    ushr-int v2, p0, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_13
    return-void
.end method

.method public static I2OSP(J[BI)V
    .registers 8

    .line 0
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x38

    ushr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    add-int/lit8 v1, p3, 0x2

    const/16 v2, 0x30

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    add-int/lit8 v0, p3, 0x3

    const/16 v2, 0x28

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    add-int/lit8 v1, p3, 0x4

    const/16 v2, 0x20

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    add-int/lit8 v0, p3, 0x5

    const/16 v2, 0x18

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    add-int/lit8 v1, p3, 0x6

    const/16 v2, 0x10

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    add-int/lit8 p3, p3, 0x7

    const/16 v0, 0x8

    ushr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    aput-byte v0, p2, v1

    long-to-int p0, p0

    int-to-byte p0, p0

    aput-byte p0, p2, p3

    return-void
.end method

.method public static I2OSP(I)[B
    .registers 6

    .line 0
    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    int-to-byte p0, p0

    const/4 v3, 0x4

    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v0, v3, v4

    const/4 v0, 0x1

    aput-byte v1, v3, v0

    const/4 v0, 0x2

    aput-byte v2, v3, v0

    const/4 v0, 0x3

    aput-byte p0, v3, v0

    return-object v3
.end method

.method public static I2OSP(II)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .line 0
    if-gez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-static {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ceilLog256(I)I

    move-result v0

    if-gt v0, p1, :cond_20

    new-array v1, p1, [B

    add-int/lit8 v2, p1, -0x1

    move v3, v2

    :goto_f
    sub-int v4, p1, v0

    if-lt v3, v4, :cond_1f

    sub-int v4, v2, v3

    mul-int/lit8 v4, v4, 0x8

    ushr-int v4, p0, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_f

    :cond_1f
    return-object v1

    :cond_20
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Cannot encode given integer into specified number of octets."

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static I2OSP(J)[B
    .registers 11

    .line 0
    const/16 v0, 0x38

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x30

    ushr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x28

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    const/16 v3, 0x20

    ushr-long v3, p0, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    const/16 v4, 0x18

    ushr-long v4, p0, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    const/16 v5, 0x10

    ushr-long v5, p0, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0x8

    ushr-long v7, p0, v6

    long-to-int v7, v7

    int-to-byte v7, v7

    long-to-int p0, p0

    int-to-byte p0, p0

    new-array p1, v6, [B

    const/4 v6, 0x0

    aput-byte v0, p1, v6

    const/4 v0, 0x1

    aput-byte v1, p1, v0

    const/4 v0, 0x2

    aput-byte v2, p1, v0

    const/4 v0, 0x3

    aput-byte v3, p1, v0

    const/4 v0, 0x4

    aput-byte v4, p1, v0

    const/4 v0, 0x5

    aput-byte v5, p1, v0

    const/4 v0, 0x6

    aput-byte v7, p1, v0

    const/4 v0, 0x7

    aput-byte p0, p1, v0

    return-object p1
.end method

.method public static OS2IP([B)I
    .registers 5

    .line 0
    array-length v0, p0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1d

    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    return v1

    :cond_9
    move v0, v1

    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1c
    return v0

    :cond_1d
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "invalid input length"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static OS2IP([BI)I
    .registers 5

    .line 0
    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static OS2IP([BII)I
    .registers 7

    .line 0
    array-length v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    array-length v0, p0

    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_c

    goto :goto_21

    :cond_c
    move v0, v1

    :goto_d
    if-ge v1, p2, :cond_20

    add-int v2, p1, v1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    sub-int v3, p2, v1

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_20
    return v0

    :cond_21
    :goto_21
    return v1
.end method

.method public static OS2LIP([BI)J
    .registers 10

    .line 0
    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    int-to-long v1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    const/16 v5, 0x38

    shl-long/2addr v1, v5

    add-int/lit8 v5, p1, 0x2

    aget-byte v0, p0, v0

    int-to-long v6, v0

    and-long/2addr v6, v3

    const/16 v0, 0x30

    shl-long/2addr v6, v0

    or-long v0, v1, v6

    add-int/lit8 v2, p1, 0x3

    aget-byte v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x28

    shl-long/2addr v5, v7

    or-long/2addr v0, v5

    add-int/lit8 v5, p1, 0x4

    aget-byte v2, p0, v2

    int-to-long v6, v2

    and-long/2addr v6, v3

    const/16 v2, 0x20

    shl-long/2addr v6, v2

    or-long/2addr v0, v6

    add-int/lit8 v2, p1, 0x5

    aget-byte v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v3, v5

    const/16 v5, 0x18

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    add-int/lit8 v3, p1, 0x6

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    int-to-long v4, v2

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    or-long/2addr v0, v2

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-long p0, p0

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static toByteArray([I)[B
    .registers 5

    .line 0
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_13

    aget v2, p0, v1

    shl-int/lit8 v3, v1, 0x2

    invoke-static {v2, v0, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/BigEndianConversions;->I2OSP(I[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_13
    return-object v0
.end method

.method public static toByteArray([II)[B
    .registers 7

    .line 0
    array-length v0, p0

    new-array v1, p1, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    add-int/lit8 v4, v0, -0x2

    if-gt v2, v4, :cond_13

    aget v4, p0, v2

    invoke-static {v4, v1, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/BigEndianConversions;->I2OSP(I[BI)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x4

    goto :goto_5

    :cond_13
    add-int/lit8 v0, v0, -0x1

    aget p0, p0, v0

    sub-int/2addr p1, v3

    invoke-static {p0, v1, v3, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/BigEndianConversions;->I2OSP(I[BII)V

    return-object v1
.end method

.method public static toIntArray([B)[I
    .registers 7

    .line 0
    array-length v0, p0

    add-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    array-length v1, p0

    and-int/lit8 v1, v1, 0x3

    new-array v2, v0, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    add-int/lit8 v5, v0, -0x2

    if-gt v3, v5, :cond_1b

    invoke-static {p0, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/BigEndianConversions;->OS2IP([BI)I

    move-result v5

    aput v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x4

    goto :goto_c

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    if-eqz v1, :cond_26

    invoke-static {p0, v4, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/BigEndianConversions;->OS2IP([BII)I

    move-result p0

    aput p0, v2, v0

    goto :goto_2c

    :cond_26
    invoke-static {p0, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/BigEndianConversions;->OS2IP([BI)I

    move-result p0

    aput p0, v2, v0

    :goto_2c
    return-object v2
.end method
