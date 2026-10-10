###### Class org.bouncycastle.pqc.legacy.math.ntru.polynomial.LongPolynomial2 (org.bouncycastle.pqc.legacy.math.ntru.polynomial.LongPolynomial2)
.class public Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;
.super Ljava/lang/Object;


# instance fields
.field private coeffs:[J

.field private numCoeffs:I


# direct methods
.method private constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [J

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V
    .registers 11

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v0, v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    const/4 v0, 0x0

    move v1, v0

    :goto_12
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    if-ge v0, v2, :cond_46

    iget-object v2, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v0

    :goto_1c
    if-gez v2, :cond_21

    add-int/lit16 v2, v2, 0x800

    goto :goto_1c

    :cond_21
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    const-wide/16 v5, 0x0

    if-ge v3, v4, :cond_2f

    iget-object v4, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v0, v0, 0x2

    aget v3, v4, v3

    int-to-long v3, v3

    goto :goto_31

    :cond_2f
    move v0, v3

    move-wide v3, v5

    :goto_31
    cmp-long v7, v3, v5

    if-gez v7, :cond_39

    const-wide/16 v7, 0x800

    add-long/2addr v3, v7

    goto :goto_31

    :cond_39
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    int-to-long v6, v2

    const/16 v2, 0x18

    shl-long v2, v3, v2

    add-long/2addr v6, v2

    aput-wide v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_46
    return-void
.end method

.method private constructor <init>([J)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    return-void
.end method

.method private add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)V
    .registers 9

    .line 0
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v3, v2

    if-le v1, v3, :cond_f

    array-length v0, v0

    invoke-static {v2, v0}, Lorg/bouncycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v2, v1

    if-ge v0, v2, :cond_27

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v3, v2, v0

    aget-wide v5, v1, v0

    add-long/2addr v3, v5

    const-wide v5, 0x7ff0007ffL

    and-long/2addr v3, v5

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_27
    return-void
.end method

.method private multRecursive(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;
    .registers 20

    .line 0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    move-object/from16 v1, p1

    iget-object v1, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v2, v1

    const/16 v3, 0x20

    const-wide v4, 0x7ff0007ffL

    const/4 v6, 0x0

    if-gt v2, v3, :cond_61

    mul-int/lit8 v3, v2, 0x2

    new-instance v7, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    new-array v8, v3, [J

    invoke-direct {v7, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    move v8, v6

    :goto_1d
    if-ge v8, v3, :cond_60

    sub-int v9, v8, v2

    add-int/lit8 v9, v9, 0x1

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    :goto_27
    add-int/lit8 v10, v2, -0x1

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-gt v9, v10, :cond_5d

    sub-int v10, v8, v9

    aget-wide v10, v0, v10

    aget-wide v12, v1, v9

    mul-long/2addr v10, v12

    const-wide v12, 0x7ff000000L

    const-wide/16 v14, 0x7ff

    and-long v16, v10, v14

    add-long v16, v16, v12

    and-long v12, v10, v16

    const/16 v16, 0x30

    ushr-long v10, v10, v16

    and-long/2addr v10, v14

    iget-object v14, v7, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v15, v14, v8

    add-long/2addr v15, v12

    and-long v12, v15, v4

    aput-wide v12, v14, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v15, v14, v12

    add-long/2addr v15, v10

    and-long v10, v15, v4

    aput-wide v10, v14, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_27

    :cond_5d
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    :cond_60
    return-object v7

    :cond_61
    div-int/lit8 v3, v2, 0x2

    new-instance v7, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    invoke-static {v0, v3}, Lorg/bouncycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    new-instance v8, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    invoke-static {v0, v3, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([JII)[J

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    invoke-static {v1, v3}, Lorg/bouncycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v9

    invoke-direct {v0, v9}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    new-instance v9, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    invoke-static {v1, v3, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([JII)[J

    move-result-object v1

    invoke-direct {v9, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    invoke-direct {v1, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    invoke-direct {v10, v9}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)V

    invoke-direct {v7, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->multRecursive(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    move-result-object v0

    invoke-direct {v8, v9}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->multRecursive(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    move-result-object v7

    invoke-direct {v1, v10}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->multRecursive(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    move-result-object v1

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->sub(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)V

    invoke-direct {v1, v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->sub(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)V

    new-instance v8, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v8, v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;-><init>(I)V

    move v2, v6

    :goto_b3
    iget-object v9, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v10, v9

    if-ge v2, v10, :cond_c2

    iget-object v10, v8, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v11, v9, v2

    and-long/2addr v11, v4

    aput-wide v11, v10, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b3

    :cond_c2
    move v0, v6

    :goto_c3
    iget-object v2, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v9, v2

    if-ge v0, v9, :cond_d7

    iget-object v9, v8, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    add-int v10, v3, v0

    aget-wide v11, v9, v10

    aget-wide v13, v2, v0

    add-long/2addr v11, v13

    and-long/2addr v11, v4

    aput-wide v11, v9, v10

    add-int/lit8 v0, v0, 0x1

    goto :goto_c3

    :cond_d7
    :goto_d7
    iget-object v0, v7, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v0

    if-ge v6, v1, :cond_ec

    iget-object v1, v8, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    mul-int/lit8 v2, v3, 0x2

    add-int/2addr v2, v6

    aget-wide v9, v1, v2

    aget-wide v11, v0, v6

    add-long/2addr v9, v11

    and-long/2addr v9, v4

    aput-wide v9, v1, v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_d7

    :cond_ec
    return-object v8
.end method

.method private sub(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)V
    .registers 9

    .line 0
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v3, v2

    if-le v1, v3, :cond_f

    array-length v0, v0

    invoke-static {v2, v0}, Lorg/bouncycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v2, v1

    if-ge v0, v2, :cond_2d

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    const-wide v3, 0x800000800000L

    aget-wide v5, v2, v0

    add-long/2addr v5, v3

    aget-wide v3, v1, v0

    sub-long/2addr v5, v3

    const-wide v3, 0x7ff0007ffL

    and-long/2addr v3, v5

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_2d
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    iput p0, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    if-eqz v0, :cond_f

    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    check-cast p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    iget-object p1, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    invoke-static {p0, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([J[J)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;
    .registers 15

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v0, v0

    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    if-ne v1, v0, :cond_7a

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    iget v2, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    if-ne v1, v2, :cond_7a

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->multRecursive(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    move-result-object p1

    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    if-le v1, v0, :cond_6e

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    rem-int/lit8 v1, v1, 0x2

    const-wide v2, 0x7ff0007ffL

    if-nez v1, :cond_3c

    move v1, v0

    :goto_23
    iget-object v4, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v5, v4

    if-ge v1, v5, :cond_35

    sub-int v5, v1, v0

    aget-wide v6, v4, v5

    aget-wide v8, v4, v1

    add-long/2addr v6, v8

    and-long/2addr v6, v2

    aput-wide v6, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_35
    invoke-static {v4, v0}, Lorg/bouncycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    goto :goto_6e

    :cond_3c
    move v1, v0

    :goto_3d
    iget-object v4, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v5, v4

    const-wide/16 v6, 0x7ff

    if-ge v1, v5, :cond_60

    sub-int v5, v1, v0

    aget-wide v8, v4, v5

    add-int/lit8 v10, v1, -0x1

    aget-wide v10, v4, v10

    const/16 v12, 0x18

    shr-long/2addr v10, v12

    add-long/2addr v8, v10

    aput-wide v8, v4, v5

    aget-wide v10, v4, v1

    and-long/2addr v6, v10

    shl-long/2addr v6, v12

    add-long/2addr v8, v6

    aput-wide v8, v4, v5

    and-long v6, v8, v2

    aput-wide v6, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :cond_60
    invoke-static {v4, v0}, Lorg/bouncycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-wide v2, v0, v1

    and-long/2addr v2, v6

    aput-wide v2, v0, v1

    :cond_6e
    :goto_6e
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    iget-object p1, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    iput p0, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    return-object v0

    :cond_7a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of coefficients must be the same"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public mult2And(I)V
    .registers 8

    .line 0
    int-to-long v0, p1

    const/16 p1, 0x18

    shl-long v2, v0, p1

    add-long/2addr v2, v0

    const/4 p1, 0x0

    :goto_7
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v0

    if-ge p1, v1, :cond_16

    aget-wide v4, v0, p1

    const/4 v1, 0x1

    shl-long/2addr v4, v1

    and-long/2addr v4, v2

    aput-wide v4, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_16
    return-void
.end method

.method public subAnd(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;I)V
    .registers 11

    .line 0
    int-to-long v0, p2

    const/16 p2, 0x18

    shl-long v2, v0, p2

    add-long/2addr v2, v0

    const/4 p2, 0x0

    :goto_7
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v0

    if-ge p2, v1, :cond_20

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    const-wide v4, 0x800000800000L

    aget-wide v6, v1, p2

    add-long/2addr v6, v4

    aget-wide v4, v0, p2

    sub-long/2addr v6, v4

    and-long v4, v6, v2

    aput-wide v4, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_20
    return-void
.end method

.method public toIntegerPolynomial()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .registers 12

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v4, v3

    if-ge v1, v4, :cond_28

    add-int/lit8 v4, v2, 0x1

    aget-wide v5, v3, v1

    const-wide/16 v7, 0x7ff

    and-long v9, v5, v7

    long-to-int v3, v9

    aput v3, v0, v2

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    if-ge v4, v3, :cond_24

    add-int/lit8 v2, v2, 0x2

    const/16 v3, 0x18

    shr-long/2addr v5, v3

    and-long/2addr v5, v7

    long-to-int v3, v5

    aput v3, v0, v4

    goto :goto_25

    :cond_24
    move v2, v4

    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_28
    new-instance p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    return-object p0
.end method
