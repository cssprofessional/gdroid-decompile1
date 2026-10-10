###### Class org.bouncycastle.pqc.legacy.math.linearalgebra.GF2mMatrix (org.bouncycastle.pqc.legacy.math.linearalgebra.GF2mMatrix)
.class public Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;
.super Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;


# instance fields
.field protected field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

.field protected matrix:[[I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[B)V
    .registers 12

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    const/16 v0, 0x8

    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    :goto_a
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->getDegree()I

    move-result v4

    if-le v4, v2, :cond_15

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x8

    goto :goto_a

    :cond_15
    array-length p1, p2

    const/4 v4, 0x5

    const-string v5, " Error: given array is not encoded matrix over GF(2^m)"

    if-lt p1, v4, :cond_99

    const/4 p1, 0x3

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    const/4 v4, 0x2

    aget-byte v6, p2, v4

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    xor-int/2addr p1, v6

    aget-byte v6, p2, v1

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v0, v6, 0x8

    xor-int/2addr p1, v0

    const/4 v0, 0x0

    aget-byte v6, p2, v0

    and-int/lit16 v6, v6, 0xff

    xor-int/2addr p1, v6

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    mul-int/2addr v3, p1

    if-lez p1, :cond_93

    array-length v6, p2

    const/4 v7, 0x4

    sub-int/2addr v6, v7

    rem-int/2addr v6, v3

    if-nez v6, :cond_93

    array-length v6, p2

    sub-int/2addr v6, v7

    div-int/2addr v6, v3

    iput v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    new-array v3, v4, [I

    aput v6, v3, v1

    aput p1, v3, v0

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->matrix:[[I

    move p1, v0

    :goto_58
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ge p1, v1, :cond_92

    move v1, v0

    :goto_5d
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    if-ge v1, v3, :cond_8f

    move v3, v0

    :goto_62
    if-ge v3, v2, :cond_78

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v4, v4, p1

    aget v6, v4, v1

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v3

    xor-int/2addr v6, v7

    aput v6, v4, v1

    add-int/lit8 v3, v3, 0x8

    move v7, v8

    goto :goto_62

    :cond_78
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v4, v4, p1

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->isElementOfThisField(I)Z

    move-result v3

    if-eqz v3, :cond_89

    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    :cond_89
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8f
    add-int/lit8 p1, p1, 0x1

    goto :goto_58

    :cond_92
    return-void

    :cond_93
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_99
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[[I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->matrix:[[I

    array-length p1, p2

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    const/4 p1, 0x0

    aget-object p1, p2, p1

    array-length p1, p1

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;-><init>()V

    iget v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    iget v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    new-array v0, v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->matrix:[[I

    const/4 v0, 0x0

    :goto_14
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ge v0, v1, :cond_27

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->matrix:[[I

    iget-object v2, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_27
    return-void
.end method

.method private addToRow([I[I)V
    .registers 7

    .line 0
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_14

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    aget v2, p1, v0

    aget v3, p2, v0

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->add(II)I

    move-result v1

    aput v1, p2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_14
    return-void
.end method

.method private multRowWithElement([II)[I
    .registers 7

    .line 0
    array-length v0, p1

    new-array v0, v0, [I

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_6
    if-ltz v1, :cond_15

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    aget v3, p1, v1

    invoke-virtual {v2, v3, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->mult(II)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_15
    return-object v0
.end method

.method private multRowWithElementThis([II)V
    .registers 6

    .line 0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_12

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    aget v2, p1, v0

    invoke-virtual {v1, v2, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->mult(II)I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_12
    return-void
.end method

.method private static swapColumns([[III)V
    .registers 5

    .line 0
    aget-object v0, p0, p1

    aget-object v1, p0, p2

    aput-object v1, p0, p1

    aput-object v0, p0, p2

    return-void
.end method


# virtual methods
.method public computeInverse()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;
    .registers 11

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    const-string v2, "Matrix is not invertible."

    if-ne v0, v1, :cond_b8

    const/4 v1, 0x2

    new-array v3, v1, [I

    const/4 v4, 0x1

    aput v0, v3, v4

    const/4 v5, 0x0

    aput v0, v3, v5

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    sub-int/2addr v3, v4

    :goto_1c
    if-ltz v3, :cond_2b

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v6, v6, v3

    invoke-static {v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v6

    aput-object v6, v0, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    :cond_2b
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    new-array v1, v1, [I

    aput v3, v1, v4

    aput v3, v1, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    sub-int/2addr v3, v4

    :goto_3e
    if-ltz v3, :cond_47

    aget-object v6, v1, v3

    aput v4, v6, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_3e

    :cond_47
    move v3, v5

    :goto_48
    iget v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ge v3, v6, :cond_b0

    aget-object v6, v0, v3

    aget v6, v6, v3

    if-nez v6, :cond_73

    add-int/lit8 v6, v3, 0x1

    move v7, v5

    :goto_55
    iget v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ge v6, v8, :cond_6a

    aget-object v8, v0, v6

    aget v8, v8, v3

    if-eqz v8, :cond_68

    invoke-static {v0, v3, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->swapColumns([[III)V

    invoke-static {v1, v3, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->swapColumns([[III)V

    iget v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    move v7, v4

    :cond_68
    add-int/2addr v6, v4

    goto :goto_55

    :cond_6a
    if-eqz v7, :cond_6d

    goto :goto_73

    :cond_6d
    new-instance p0, Ljava/lang/ArithmeticException;

    invoke-direct {p0, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_73
    :goto_73
    aget-object v6, v0, v3

    aget v6, v6, v3

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v7, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->inverse(I)I

    move-result v6

    aget-object v7, v0, v3

    invoke-direct {p0, v7, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->multRowWithElementThis([II)V

    aget-object v7, v1, v3

    invoke-direct {p0, v7, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->multRowWithElementThis([II)V

    move v6, v5

    :goto_88
    iget v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ge v6, v7, :cond_ad

    if-eq v6, v3, :cond_aa

    aget-object v7, v0, v6

    aget v7, v7, v3

    if-eqz v7, :cond_aa

    aget-object v8, v0, v3

    invoke-direct {p0, v8, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->multRowWithElement([II)[I

    move-result-object v8

    aget-object v9, v1, v3

    invoke-direct {p0, v9, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->multRowWithElement([II)[I

    move-result-object v7

    aget-object v9, v0, v6

    invoke-direct {p0, v8, v9}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->addToRow([I[I)V

    aget-object v8, v1, v6

    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->addToRow([I[I)V

    :cond_aa
    add-int/lit8 v6, v6, 0x1

    goto :goto_88

    :cond_ad
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    :cond_b0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;

    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[[I)V

    return-object v0

    :cond_b8
    new-instance p0, Ljava/lang/ArithmeticException;

    invoke-direct {p0, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    .line 0
    const/4 v0, 0x0

    if-eqz p1, :cond_40

    instance-of v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;

    if-nez v1, :cond_8

    goto :goto_40

    :cond_8
    check-cast p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    iget-object v2, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    iget v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    if-ne v1, v2, :cond_40

    iget v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    if-eq v1, v2, :cond_1f

    goto :goto_40

    :cond_1f
    move v1, v0

    :goto_20
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ge v1, v2, :cond_3e

    move v2, v0

    :goto_25
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    if-ge v2, v3, :cond_3b

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v3, v3, v1

    aget v3, v3, v2

    iget-object v4, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v4, v4, v1

    aget v4, v4, v2

    if-eq v3, v4, :cond_38

    return v0

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_3e
    const/4 p0, 0x1

    return p0

    :cond_40
    :goto_40
    return v0
.end method

.method public getEncoded()[B
    .registers 10

    .line 0
    const/16 v0, 0x8

    const/4 v1, 0x1

    move v2, v1

    :goto_4
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->getDegree()I

    move-result v3

    if-le v3, v0, :cond_11

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x8

    goto :goto_4

    :cond_11
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    mul-int/2addr v4, v3

    mul-int/2addr v4, v2

    const/4 v2, 0x4

    add-int/2addr v4, v2

    new-array v4, v4, [B

    and-int/lit16 v5, v3, 0xff

    int-to-byte v5, v5

    const/4 v6, 0x0

    aput-byte v5, v4, v6

    ushr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    ushr-int/lit8 v1, v3, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v5, 0x2

    aput-byte v1, v4, v5

    ushr-int/lit8 v1, v3, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x3

    aput-byte v1, v4, v3

    move v1, v6

    :goto_39
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ge v1, v3, :cond_5b

    move v3, v6

    :goto_3e
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    if-ge v3, v5, :cond_58

    move v5, v6

    :goto_43
    if-ge v5, v0, :cond_55

    add-int/lit8 v7, v2, 0x1

    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v8, v8, v1

    aget v8, v8, v3

    ushr-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v4, v2

    add-int/lit8 v5, v5, 0x8

    move v2, v7

    goto :goto_43

    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_5b
    return-object v4
.end method

.method public hashCode()I
    .registers 6

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_12
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ge v2, v3, :cond_2a

    move v3, v1

    :goto_17
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    if-ge v3, v4, :cond_27

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v4, v4, v2

    aget v4, v4, v3

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_2a
    return v0
.end method

.method public isZero()Z
    .registers 5

    .line 0
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ge v1, v2, :cond_1a

    move v2, v0

    :goto_7
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    if-ge v2, v3, :cond_17

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v3, v3, v1

    aget v3, v3, v2

    if-eqz v3, :cond_14

    return v0

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1a
    const/4 p0, 0x1

    return p0
.end method

.method public leftMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
    .registers 2

    .line 0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not implemented."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public rightMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;
    .registers 2

    .line 0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not implemented."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public rightMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;
    .registers 2

    .line 0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not implemented."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public rightMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
    .registers 2

    .line 0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not implemented."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Matrix over "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_2d
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ge v2, v3, :cond_6d

    move v3, v1

    :goto_32
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    if-ge v3, v4, :cond_59

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v5, v5, v2

    aget v5, v5, v3

    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->elementToStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_6d
    return-object v0
.end method
