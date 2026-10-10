###### Class org.bouncycastle.pqc.legacy.math.linearalgebra.IntegerFunctions (org.bouncycastle.pqc.legacy.math.linearalgebra.IntegerFunctions)
.class public final Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;
.super Ljava/lang/Object;


# static fields
.field private static final FOUR:Ljava/math/BigInteger;

.field private static final ONE:Ljava/math/BigInteger;

.field private static final SMALL_PRIMES:[I

.field private static final SMALL_PRIME_PRODUCT:J = 0x8a5b6470af95L

.field private static final TWO:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;

.field private static final jacobiTable:[I

.field private static sr:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->FOUR:Ljava/math/BigInteger;

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_36

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->SMALL_PRIMES:[I

    const/4 v0, 0x0

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->sr:Ljava/security/SecureRandom;

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_52

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->jacobiTable:[I

    return-void

    :array_36
    .array-data 4
        0x3
        0x5
        0x7
        0xb
        0xd
        0x11
        0x13
        0x17
        0x1d
        0x1f
        0x25
        0x29
    .end array-data

    :array_52
    .array-data 4
        0x0
        0x1
        0x0
        -0x1
        0x0
        -0x1
        0x0
        0x1
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)Ljava/math/BigInteger;
    .registers 6

    .line 0
    sget-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    if-nez p0, :cond_a

    if-nez p1, :cond_7

    return-object v0

    :cond_7
    sget-object p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    return-object p0

    :cond_a
    ushr-int/lit8 v1, p0, 0x1

    if-le p1, v1, :cond_10

    sub-int p1, p0, p1

    :cond_10
    const/4 v1, 0x1

    :goto_11
    if-gt v1, p1, :cond_2c

    add-int/lit8 v2, v1, -0x1

    sub-int v2, p0, v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_2c
    return-object v0
.end method

.method public static bitCount(I)I
    .registers 3

    .line 0
    const/4 v0, 0x0

    :goto_1
    if-eqz p0, :cond_9

    and-int/lit8 v1, p0, 0x1

    add-int/2addr v0, v1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_9
    return v0
.end method

.method public static ceilLog(I)I
    .registers 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_2
    if-ge v1, p0, :cond_9

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    return v0
.end method

.method public static ceilLog(Ljava/math/BigInteger;)I
    .registers 4

    .line 0
    sget-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_11

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_3

    :cond_11
    return v1
.end method

.method public static ceilLog256(I)I
    .registers 2

    .line 0
    if-nez p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    if-gez p0, :cond_7

    neg-int p0, p0

    :cond_7
    const/4 v0, 0x0

    :goto_8
    if-lez p0, :cond_f

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x8

    goto :goto_8

    :cond_f
    return v0
.end method

.method public static ceilLog256(J)I
    .registers 6

    .line 0
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    if-gez v2, :cond_b

    neg-long p0, p0

    :cond_b
    const/4 v2, 0x0

    :goto_c
    cmp-long v3, p0, v0

    if-lez v3, :cond_16

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x8

    ushr-long/2addr p0, v3

    goto :goto_c

    :cond_16
    return v2
.end method

.method public static divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 3

    .line 0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_13

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_13
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_26

    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_26
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static divideAndRound([Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .registers 5

    .line 0
    array-length v0, p0

    new-array v0, v0, [Ljava/math/BigInteger;

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    aget-object v2, p0, v1

    invoke-static {v2, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    return-object v0
.end method

.method public static extGCD(II)[I
    .registers 4

    .line 0
    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->extgcd(Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p1, p0, p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    const/4 v0, 0x1

    aget-object v0, p0, v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    const/4 v1, 0x2

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    filled-new-array {p1, v0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public static extgcd(Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .registers 10

    .line 0
    sget-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    sget-object v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-eqz v2, :cond_38

    move-object v3, p0

    move-object v2, p1

    :goto_c
    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-eqz v4, :cond_2b

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    goto :goto_c

    :cond_2b
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    move-object p0, v3

    :cond_38
    filled-new-array {p0, v0, v1}, [Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static floatPow(FI)F
    .registers 3

    .line 0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    if-lez p1, :cond_8

    mul-float/2addr v0, p0

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_8
    return v0
.end method

.method public static floorLog(I)I
    .registers 2

    .line 0
    if-gtz p0, :cond_4

    const/4 p0, -0x1

    return p0

    :cond_4
    ushr-int/lit8 p0, p0, 0x1

    const/4 v0, 0x0

    :goto_7
    if-lez p0, :cond_e

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_7

    :cond_e
    return v0
.end method

.method public static floorLog(Ljava/math/BigInteger;)I
    .registers 4

    .line 0
    sget-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    const/4 v1, -0x1

    :goto_3
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gtz v2, :cond_11

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_3

    :cond_11
    return v1
.end method

.method public static gcd(II)I
    .registers 4

    .line 0
    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0
.end method

.method public static intRoot(II)F
    .registers 9

    .line 0
    div-int v0, p0, p1

    int-to-float v0, v0

    const/4 v1, 0x0

    :goto_4
    sub-float v2, v1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_34

    :goto_14
    invoke-static {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->floatPow(FI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-eqz v3, :cond_23

    add-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    goto :goto_14

    :cond_23
    int-to-float v1, p0

    sub-float/2addr v2, v1

    int-to-float v1, p1

    add-int/lit8 v3, p1, -0x1

    invoke-static {v0, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->floatPow(FI)F

    move-result v3

    mul-float/2addr v1, v3

    div-float/2addr v2, v1

    sub-float v1, v0, v2

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_4

    :cond_34
    return v0
.end method

.method public static integerToOctets(Ljava/math/BigInteger;)[B
    .registers 5

    .line 0
    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_11

    return-object v0

    :cond_11
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    shr-int/lit8 p0, p0, 0x3

    new-array v1, p0, [B

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static isIncreasing([I)Z
    .registers 5

    .line 0
    const/4 v0, 0x1

    move v1, v0

    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_12

    add-int/lit8 v2, v1, -0x1

    aget v2, p0, v2

    aget v3, p0, v1

    if-lt v2, v3, :cond_f

    const/4 p0, 0x0

    return p0

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    return v0
.end method

.method public static isPower(II)I
    .registers 5

    .line 0
    const/4 v0, -0x1

    if-gtz p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x1

    if-le p0, v2, :cond_11

    rem-int v2, p0, p1

    if-eqz v2, :cond_d

    return v0

    :cond_d
    div-int/2addr p0, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return v1
.end method

.method public static isPrime(I)Z
    .registers 6

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ge p0, v1, :cond_5

    return v0

    :cond_5
    const/4 v2, 0x1

    if-ne p0, v1, :cond_9

    return v2

    :cond_9
    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_e

    return v0

    :cond_e
    const/16 v1, 0x2a

    if-ge p0, v1, :cond_20

    move v1, v0

    :goto_13
    sget-object v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->SMALL_PRIMES:[I

    array-length v4, v3

    if-ge v1, v4, :cond_20

    aget v3, v3, v1

    if-ne p0, v3, :cond_1d

    return v2

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_20
    rem-int/lit8 v1, p0, 0x3

    if-eqz v1, :cond_5d

    rem-int/lit8 v1, p0, 0x5

    if-eqz v1, :cond_5d

    rem-int/lit8 v1, p0, 0x7

    if-eqz v1, :cond_5d

    rem-int/lit8 v1, p0, 0xb

    if-eqz v1, :cond_5d

    rem-int/lit8 v1, p0, 0xd

    if-eqz v1, :cond_5d

    rem-int/lit8 v1, p0, 0x11

    if-eqz v1, :cond_5d

    rem-int/lit8 v1, p0, 0x13

    if-eqz v1, :cond_5d

    rem-int/lit8 v1, p0, 0x17

    if-eqz v1, :cond_5d

    rem-int/lit8 v1, p0, 0x1d

    if-eqz v1, :cond_5d

    rem-int/lit8 v1, p0, 0x1f

    if-eqz v1, :cond_5d

    rem-int/lit8 v1, p0, 0x25

    if-eqz v1, :cond_5d

    rem-int/lit8 v1, p0, 0x29

    if-nez v1, :cond_51

    goto :goto_5d

    :cond_51
    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result p0

    return p0

    :cond_5d
    :goto_5d
    return v0
.end method

.method public static jacobi(Ljava/math/BigInteger;Ljava/math/BigInteger;)I
    .registers 11

    .line 0
    sget-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p0

    sget-object p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_13
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-nez v2, :cond_21

    return v1

    :cond_21
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v2

    const/4 v3, -0x1

    const-wide/16 v4, 0x1

    if-ne v2, v3, :cond_36

    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-ne v2, v3, :cond_36

    const-wide/16 v4, -0x1

    :cond_36
    :goto_36
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-nez v2, :cond_49

    sget-object v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_36

    :cond_49
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_5b

    sget-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->jacobiTable:[I

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    aget v0, v0, v2

    int-to-long v2, v0

    mul-long/2addr v4, v2

    :cond_5b
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v2, 0x1

    if-gez v0, :cond_6d

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_69

    neg-long v4, v4

    :cond_69
    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    :cond_6d
    :goto_6d
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_ba

    sget-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    :goto_75
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-nez v3, :cond_88

    sget-object v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_75

    :cond_88
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_9a

    sget-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->jacobiTable:[I

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    aget v0, v0, v3

    int-to-long v6, v0

    mul-long/2addr v4, v6

    :cond_9a
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_af

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_b2

    neg-long v3, v4

    move-wide v4, v3

    goto :goto_b2

    :cond_af
    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    :cond_b2
    :goto_b2
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    goto :goto_6d

    :cond_ba
    sget-object p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c3

    long-to-int v1, v4

    :cond_c3
    return v1
.end method

.method public static leastCommonMultiple([Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6

    .line 0
    array-length v0, p0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v2, 0x1

    :goto_5
    if-ge v2, v0, :cond_1a

    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aget-object v4, p0, v2

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_1a
    return-object v1
.end method

.method public static leastDiv(I)I
    .registers 3

    .line 0
    if-gez p0, :cond_3

    neg-int p0, p0

    :cond_3
    if-nez p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_d

    const/4 p0, 0x2

    return p0

    :cond_d
    const/4 v0, 0x3

    :goto_e
    div-int v1, p0, v0

    if-gt v0, v1, :cond_1a

    rem-int v1, p0, v0

    if-nez v1, :cond_17

    return v0

    :cond_17
    add-int/lit8 v0, v0, 0x2

    goto :goto_e

    :cond_1a
    return p0
.end method

.method public static log(D)D
    .registers 10

    .line 0
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-lez v0, :cond_13

    cmpg-double v0, p0, v1

    if-gez v0, :cond_13

    div-double/2addr v1, p0

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->log(D)D

    move-result-wide p0

    neg-double p0, p0

    return-wide p0

    :cond_13
    const/4 v0, 0x0

    move-wide v3, p0

    :goto_15
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_20

    div-double/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    mul-double/2addr v1, v5

    goto :goto_15

    :cond_20
    div-double/2addr p0, v1

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->logBKM(D)D

    move-result-wide p0

    int-to-double v0, v0

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public static log(J)D
    .registers 5

    .line 0
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->floorLog(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    int-to-long v1, v1

    long-to-double p0, p0

    long-to-double v1, v1

    div-double/2addr p0, v1

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->logBKM(D)D

    move-result-wide p0

    int-to-double v0, v0

    add-double/2addr v0, p0

    return-wide v0
.end method

.method private static logBKM(D)D
    .registers 13

    .line 0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/16 v2, 0x64

    new-array v2, v2, [D

    fill-array-data v2, :array_26

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move v7, v5

    move-wide v5, v3

    move-wide v3, v0

    :goto_f
    const/16 v8, 0x35

    if-ge v7, v8, :cond_24

    mul-double v8, v0, v3

    add-double/2addr v8, v0

    cmpg-double v10, v8, p0

    if-gtz v10, :cond_1e

    aget-wide v0, v2, v7

    add-double/2addr v5, v0

    move-wide v0, v8

    :cond_1e
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v3, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :cond_24
    return-wide v5

    nop

    :array_26
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fe2b803473f7ad1L    # 0.5849625007211562
        0x3fd49a784bcd1b8bL    # 0.32192809488736235
        0x3fc5c01a39fbd688L    # 0.16992500144231237
        0x3fb663f6fac91316L    # 0.0874628412503394
        0x3fa6bad3758efd87L    # 0.044394119358453436
        0x3f96e79685c2d22aL    # 0.02236781302845451
        0x3f86fe50b6ef0851L    # 0.01122725542325412
        0x3f7709c46d7aac77L    # 0.005624549193878107
        0x3f670f83ff0a7565L    # 0.0028150156070540383
        0x3f5712653743f454L    # 0.0014081943928083889
        0x3f4713d62f7957c3L    # 7.042690112466433E-4
        0x3f37148ec2a1bfc9L    # 3.5217748030102726E-4
        0x3f2714eb11fa5363L    # 1.7609948644250602E-4
        0x3f1715193b17d35dL    # 8.80524301221769E-5
        0x3f0715305002e4aeL    # 4.4026886827316716E-5
        0x3ef7153bda8f8225L    # 2.2013611360340496E-5
        0x3ee715419fdb9623L    # 1.1006847667481442E-5
        0x3ed7154482831175L    # 5.503434330648604E-6
        0x3ec71545f3d72b72L    # 2.751719789561283E-6
        0x3eb71546ac814f86L    # 1.375860550841138E-6
        0x3ea7154708d66756L    # 6.879304394358497E-7
        0x3e9715473700f4afL    # 3.4396526072176454E-7
        0x3e8715474e163bb8L    # 1.7198264061184464E-7
        0x3e77154759a0df53L    # 8.599132286866321E-8
        0x3e6715475f663127L    # 4.299566207501687E-8
        0x3e5715476248da12L    # 2.1497831197679756E-8
        0x3e47154763ba2e88L    # 1.0748915638882709E-8
        0x3e3715476472d8c3L    # 5.374457829452062E-9
        0x3e27154764cf2de1L    # 2.687228917228708E-9
        0x3e17154764fd586fL    # 1.3436144592400231E-9
        0x3e07154765146db7L    # 6.718072297764289E-10
        0x3df71547651ff85aL
        0x3de715476525bdacL    # 1.6795180747343547E-10
        0x3dd715476528a055L    # 8.397590373916176E-11
        0x3dc71547652a11aaL    # 4.1987951870191886E-11
        0x3db71547652aca54L
        0x3da71547652b26a9L    # 1.0496987967662534E-11
        0x3d971547652b54d4L    # 5.2484939838408146E-12
        0x3d871547652b6be9L    # 2.624246991922794E-12
        0x3d771547652b7773L    # 1.3121234959619935E-12
        0x3d671547652b7d39L    # 6.56061747981146E-13
        0x3d571547652b801bL    # 3.2803087399061026E-13
        0x3d471547652b818dL    # 1.6401543699531447E-13
        0x3d371547652b8245L    # 8.200771849765956E-14
        0x3d271547652b82a2L    # 4.1003859248830365E-14
        0x3d171547652b82d0L    # 2.0501929624415328E-14
        0x3d071547652b82e7L    # 1.02509648122077E-14
        0x3cf71547652b82f3L    # 5.1254824061038595E-15
        0x3ce71547652b82f8L
        0x3cd71547652b82fbL    # 1.2813706015259665E-15
        0x3cc71547652b82fdL    # 6.406853007629834E-16
        0x3cb71547652b82fdL    # 3.203426503814917E-16
        0x3ca71547652b82feL    # 1.6017132519074588E-16
        0x3c971547652b82feL    # 8.008566259537294E-17
        0x3c871547652b82feL    # 4.004283129768647E-17
        0x3c771547652b82feL    # 2.0021415648843235E-17
        0x3c671547652b82feL    # 1.0010707824421618E-17
        0x3c571547652b82feL    # 5.005353912210809E-18
        0x3c471547652b82feL    # 2.5026769561054044E-18
        0x3c371547652b82feL
        0x3c271547652b82feL    # 6.256692390263511E-19
        0x3c171547652b82feL    # 3.1283461951317555E-19
        0x3c071547652b82feL    # 1.5641730975658778E-19
        0x3bf71547652b82feL    # 7.820865487829389E-20
        0x3be71547652b82feL
        0x3bd71547652b82feL    # 1.9552163719573472E-20
        0x3bc71547652b82feL    # 9.776081859786736E-21
        0x3bb71547652b82feL    # 4.888040929893368E-21
        0x3ba71547652b82feL    # 2.444020464946684E-21
        0x3b971547652b82feL    # 1.222010232473342E-21
        0x3b871547652b82feL    # 6.11005116236671E-22
        0x3b771547652b82feL    # 3.055025581183355E-22
        0x3b671547652b82feL    # 1.5275127905916775E-22
        0x3b571547652b82feL    # 7.637563952958387E-23
        0x3b471547652b82feL    # 3.818781976479194E-23
        0x3b371547652b82feL    # 1.909390988239597E-23
        0x3b271547652b82feL    # 9.546954941197984E-24
        0x3b171547652b82feL    # 4.773477470598992E-24
        0x3b071547652b82feL    # 2.386738735299496E-24
        0x3af71547652b82feL    # 1.193369367649748E-24
        0x3ae71547652b82feL    # 5.96684683824874E-25
        0x3ad71547652b82feL    # 2.98342341912437E-25
        0x3ac71547652b82feL    # 1.491711709562185E-25
        0x3ab71547652b82feL    # 7.458558547810925E-26
        0x3aa71547652b82feL
        0x3a971547652b82feL    # 1.8646396369527313E-26
        0x3a871547652b82feL    # 9.323198184763657E-27
        0x3a771547652b82feL    # 4.661599092381828E-27
        0x3a671547652b82feL    # 2.330799546190914E-27
        0x3a571547652b82feL    # 1.165399773095457E-27
        0x3a471547652b82feL    # 5.826998865477285E-28
        0x3a371547652b82feL    # 2.9134994327386427E-28
        0x3a271547652b82feL    # 1.4567497163693213E-28
        0x3a171547652b82feL    # 7.283748581846607E-29
        0x3a071547652b82feL
        0x39f71547652b82feL    # 1.8209371454616517E-29
        0x39e71547652b82feL    # 9.104685727308258E-30
        0x39d71547652b82feL    # 4.552342863654129E-30
        0x39c71547652b82feL    # 2.2761714318270646E-30
    .end array-data
.end method

.method public static maxPower(I)I
    .registers 4

    .line 0
    const/4 v0, 0x0

    if-eqz p0, :cond_d

    const/4 v1, 0x1

    :goto_4
    and-int v2, p0, v1

    if-nez v2, :cond_d

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_d
    return v0
.end method

.method public static mod(JJ)J
    .registers 6

    .line 0
    rem-long/2addr p0, p2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_8

    add-long/2addr p0, p2

    :cond_8
    return-wide p0
.end method

.method public static modInverse(II)I
    .registers 4

    .line 0
    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0
.end method

.method public static modInverse(JJ)J
    .registers 4

    .line 0
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static modPow(III)I
    .registers 7

    .line 0
    if-lez p2, :cond_21

    int-to-long v0, p2

    mul-long/2addr v0, v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_21

    if-gez p1, :cond_e

    goto :goto_21

    :cond_e
    rem-int/2addr p0, p2

    add-int/2addr p0, p2

    rem-int/2addr p0, p2

    const/4 v0, 0x1

    move v1, v0

    :goto_13
    if-lez p1, :cond_20

    and-int/lit8 v2, p1, 0x1

    if-ne v2, v0, :cond_1b

    mul-int/2addr v1, p0

    rem-int/2addr v1, p2

    :cond_1b
    mul-int/2addr p0, p0

    rem-int/2addr p0, p2

    ushr-int/lit8 p1, p1, 0x1

    goto :goto_13

    :cond_20
    return v1

    :cond_21
    :goto_21
    const/4 p0, 0x0

    return p0
.end method

.method public static nextPrime(J)Ljava/math/BigInteger;
    .registers 18

    .line 0
    const-wide/16 v0, 0x1

    cmp-long v2, p0, v0

    const-wide/16 v3, 0x2

    if-gtz v2, :cond_d

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_d
    cmp-long v2, p0, v3

    const-wide/16 v5, 0x3

    if-nez v2, :cond_18

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_18
    add-long v7, p0, v0

    and-long v0, p0, v0

    add-long/2addr v7, v0

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v9, v1

    :goto_21
    const/4 v11, 0x1

    shl-long v12, p0, v11

    cmp-long v12, v7, v12

    if-gtz v12, :cond_44

    if-nez v0, :cond_44

    move-wide v12, v5

    :goto_2b
    shr-long v14, v7, v11

    cmp-long v14, v12, v14

    if-gtz v14, :cond_3c

    if-nez v0, :cond_3c

    rem-long v14, v7, v12

    cmp-long v14, v14, v1

    if-nez v14, :cond_3a

    move v0, v11

    :cond_3a
    add-long/2addr v12, v3

    goto :goto_2b

    :cond_3c
    if-eqz v0, :cond_3f

    goto :goto_40

    :cond_3f
    move-wide v9, v7

    :goto_40
    xor-int/lit8 v0, v0, 0x1

    add-long/2addr v7, v3

    goto :goto_21

    :cond_44
    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static nextProbablePrime(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 2

    .line 0
    const/16 v0, 0x14

    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->nextProbablePrime(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static nextProbablePrime(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .registers 8

    .line 0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_b0

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_b0

    sget-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto/16 :goto_b0

    :cond_16
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v1

    if-nez v1, :cond_25

    :goto_21
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    :cond_25
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_a1

    const-wide v0, 0x8a5b6470af95L

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    rem-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9e

    const-wide/16 v2, 0x5

    rem-long v2, v0, v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9e

    const-wide/16 v2, 0x7

    rem-long v2, v0, v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9e

    const-wide/16 v2, 0xb

    rem-long v2, v0, v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9e

    const-wide/16 v2, 0xd

    rem-long v2, v0, v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9e

    const-wide/16 v2, 0x11

    rem-long v2, v0, v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9e

    const-wide/16 v2, 0x13

    rem-long v2, v0, v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9e

    const-wide/16 v2, 0x17

    rem-long v2, v0, v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9e

    const-wide/16 v2, 0x1d

    rem-long v2, v0, v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9e

    const-wide/16 v2, 0x1f

    rem-long v2, v0, v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9e

    const-wide/16 v2, 0x25

    rem-long v2, v0, v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9e

    const-wide/16 v2, 0x29

    rem-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_a1

    :cond_9e
    sget-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    goto :goto_21

    :cond_a1
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_a9

    return-object p0

    :cond_a9
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    if-eqz v0, :cond_9e

    return-object p0

    :cond_b0
    :goto_b0
    sget-object p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    return-object p0
.end method

.method public static nextSmallerPrime(I)I
    .registers 3

    .line 0
    const/4 v0, 0x2

    if-gt p0, v0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 v1, 0x3

    if-ne p0, v1, :cond_9

    return v0

    :cond_9
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_10

    add-int/lit8 p0, p0, -0x1

    goto :goto_12

    :cond_10
    :goto_10
    add-int/lit8 p0, p0, -0x2

    :goto_12
    if-le p0, v1, :cond_1b

    invoke-static {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->isPrime(I)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_10

    :cond_1b
    return p0
.end method

.method public static octetsToInteger([B)Ljava/math/BigInteger;
    .registers 3

    .line 0
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->octetsToInteger([BII)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static octetsToInteger([BII)Ljava/math/BigInteger;
    .registers 5

    .line 0
    add-int/lit8 v0, p2, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>([B)V

    return-object p0
.end method

.method public static order(II)I
    .registers 5

    .line 0
    rem-int v0, p0, p1

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    move v2, v1

    :goto_6
    if-eq v0, v1, :cond_10

    mul-int/2addr v0, p0

    rem-int/2addr v0, p1

    if-gez v0, :cond_d

    add-int/2addr v0, p1

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_10
    return v2

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not an element of Z/("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "Z)^*; it is not meaningful to compute its order."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static passesSmallPrimeTest(Ljava/math/BigInteger;)Z
    .registers 8

    .line 0
    const/4 v0, 0x1

    const/16 v1, 0xef

    new-array v2, v1, [I

    fill-array-data v2, :array_24

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v1, :cond_22

    aget v5, v2, v4

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    return v3

    :cond_20
    add-int/2addr v4, v0

    goto :goto_a

    :cond_22
    return v0

    nop

    :array_24
    .array-data 4
        0x2
        0x3
        0x5
        0x7
        0xb
        0xd
        0x11
        0x13
        0x17
        0x1d
        0x1f
        0x25
        0x29
        0x2b
        0x2f
        0x35
        0x3b
        0x3d
        0x43
        0x47
        0x49
        0x4f
        0x53
        0x59
        0x61
        0x65
        0x67
        0x6b
        0x6d
        0x71
        0x7f
        0x83
        0x89
        0x8b
        0x95
        0x97
        0x9d
        0xa3
        0xa7
        0xad
        0xb3
        0xb5
        0xbf
        0xc1
        0xc5
        0xc7
        0xd3
        0xdf
        0xe3
        0xe5
        0xe9
        0xef
        0xf1
        0xfb
        0x101
        0x107
        0x10d
        0x10f
        0x115
        0x119
        0x11b
        0x125
        0x133
        0x137
        0x139
        0x13d
        0x14b
        0x151
        0x15b
        0x15d
        0x161
        0x167
        0x16f
        0x175
        0x17b
        0x17f
        0x185
        0x18d
        0x191
        0x199
        0x1a3
        0x1a5
        0x1af
        0x1b1
        0x1b7
        0x1bb
        0x1c1
        0x1c9
        0x1cd
        0x1cf
        0x1d3
        0x1df
        0x1e7
        0x1eb
        0x1f3
        0x1f7
        0x1fd
        0x209
        0x20b
        0x21d
        0x223
        0x22d
        0x233
        0x239
        0x23b
        0x241
        0x24b
        0x251
        0x257
        0x259
        0x25f
        0x265
        0x269
        0x26b
        0x277
        0x281
        0x283
        0x287
        0x28d
        0x293
        0x295
        0x2a1
        0x2a5
        0x2ab
        0x2b3
        0x2bd
        0x2c5
        0x2cf
        0x2d7
        0x2dd
        0x2e3
        0x2e7
        0x2ef
        0x2f5
        0x2f9
        0x301
        0x305
        0x313
        0x31d
        0x329
        0x32b
        0x335
        0x337
        0x33b
        0x33d
        0x347
        0x355
        0x359
        0x35b
        0x35f
        0x36d
        0x371
        0x373
        0x377
        0x38b
        0x38f
        0x397
        0x3a1
        0x3a9
        0x3ad
        0x3b3
        0x3b9
        0x3c7
        0x3cb
        0x3d1
        0x3d7
        0x3df
        0x3e5
        0x3f1
        0x3f5
        0x3fb
        0x3fd
        0x407
        0x409
        0x40f
        0x419
        0x41b
        0x425
        0x427
        0x42d
        0x43f
        0x443
        0x445
        0x449
        0x44f
        0x455
        0x45d
        0x463
        0x469
        0x47f
        0x481
        0x48b
        0x493
        0x49d
        0x4a3
        0x4a9
        0x4b1
        0x4bd
        0x4c1
        0x4c7
        0x4cd
        0x4cf
        0x4d5
        0x4e1
        0x4eb
        0x4fd
        0x4ff
        0x503
        0x509
        0x50b
        0x511
        0x515
        0x517
        0x51b
        0x527
        0x529
        0x52f
        0x551
        0x557
        0x55d
        0x565
        0x577
        0x581
        0x58f
        0x593    # 2.0E-42f
        0x595
        0x599
        0x59f
        0x5a7
        0x5ab
        0x5ad
        0x5b3
        0x5bf
        0x5c9
        0x5cb
        0x5cf
        0x5d1
        0x5d5
        0x5db
    .end array-data
.end method

.method public static pow(II)I
    .registers 5

    .line 0
    const/4 v0, 0x1

    move v1, v0

    :goto_2
    if-lez p1, :cond_d

    and-int/lit8 v2, p1, 0x1

    if-ne v2, v0, :cond_9

    mul-int/2addr v1, p0

    :cond_9
    mul-int/2addr p0, p0

    ushr-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_d
    return v1
.end method

.method public static pow(JI)J
    .registers 7

    .line 0
    const-wide/16 v0, 0x1

    :goto_2
    if-lez p2, :cond_e

    and-int/lit8 v2, p2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    mul-long/2addr v0, p0

    :cond_a
    mul-long/2addr p0, p0

    ushr-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_e
    return-wide v0
.end method

.method public static randomize(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 2

    .line 0
    sget-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->sr:Ljava/security/SecureRandom;

    if-nez v0, :cond_a

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->sr:Ljava/security/SecureRandom;

    :cond_a
    sget-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->sr:Ljava/security/SecureRandom;

    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->randomize(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static randomize(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 6

    .line 0
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    if-nez p1, :cond_15

    sget-object p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->sr:Ljava/security/SecureRandom;

    if-eqz p1, :cond_11

    goto :goto_15

    :cond_11
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p1

    :cond_15
    :goto_15
    const/4 v2, 0x0

    :goto_16
    const/16 v3, 0x14

    if-ge v2, v3, :cond_28

    invoke-static {v0, p1}, Lorg/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_25

    return-object v1

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_28
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static reduceInto(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 3

    .line 0
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static squareRoot(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 9

    .line 0
    sget-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_63

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1d

    sget-object v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v1, v1, -0x1

    move v7, v1

    move-object v1, v0

    move-object v0, v2

    move v2, v7

    goto :goto_1f

    :cond_1d
    move v2, v1

    move-object v1, v0

    :cond_1f
    :goto_1f
    if-lez v2, :cond_62

    sget-object v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_31

    const/4 v4, 0x2

    goto :goto_32

    :cond_31
    const/4 v4, 0x0

    :goto_32
    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v5

    add-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1f

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_1f

    :cond_62
    return-object v0

    :cond_63
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot extract root of negative number"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
