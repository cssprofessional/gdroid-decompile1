###### Class org.bouncycastle.pqc.legacy.math.linearalgebra.GF2Matrix (org.bouncycastle.pqc.legacy.math.linearalgebra.GF2Matrix)
.class public Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
.super Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;


# instance fields
.field private length:I

.field private matrix:[[I


# direct methods
.method public constructor <init>(IC)V
    .registers 4

    .line 0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(ICLjava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>(ICLjava/security/SecureRandom;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;-><init>()V

    if-lez p1, :cond_35

    const/16 v0, 0x49

    if-eq p2, v0, :cond_31

    const/16 v0, 0x4c

    if-eq p2, v0, :cond_2d

    const/16 v0, 0x52

    if-eq p2, v0, :cond_29

    const/16 v0, 0x55

    if-eq p2, v0, :cond_25

    const/16 p3, 0x5a

    if-ne p2, p3, :cond_1d

    invoke-direct {p0, p1, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->assignZeroMatrix(II)V

    goto :goto_34

    :cond_1d
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Unknown matrix type."

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_25
    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->assignRandomUpperTriangularMatrix(ILjava/security/SecureRandom;)V

    goto :goto_34

    :cond_29
    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->assignRandomRegularMatrix(ILjava/security/SecureRandom;)V

    goto :goto_34

    :cond_2d
    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->assignRandomLowerTriangularMatrix(ILjava/security/SecureRandom;)V

    goto :goto_34

    :cond_31
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->assignUnitMatrix(I)V

    :goto_34
    return-void

    :cond_35
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Size of matrix is non-positive."

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private constructor <init>(II)V
    .registers 3

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;-><init>()V

    if-lez p2, :cond_b

    if-lez p1, :cond_b

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->assignZeroMatrix(II)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "size of matrix is non-positive"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(I[[I)V
    .registers 8

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;-><init>()V

    const/4 v0, 0x0

    aget-object v1, p2, v0

    array-length v2, v1

    add-int/lit8 v3, p1, 0x1f

    shr-int/lit8 v3, v3, 0x5

    if-ne v2, v3, :cond_33

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    array-length v2, p2

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    array-length v1, v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    if-nez p1, :cond_1c

    const/4 p1, -0x1

    goto :goto_1f

    :cond_1c
    shl-int p1, v1, p1

    sub-int/2addr p1, v1

    :goto_1f
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ge v0, v2, :cond_30

    aget-object v2, p2, v0

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    sub-int/2addr v3, v1

    aget v4, v2, v3

    and-int/2addr v4, p1

    aput v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_30
    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    return-void

    :cond_33
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Int array does not match given number of columns."

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->getNumColumns()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->getNumRows()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    iget v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    array-length v0, v0

    new-array v0, v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    const/4 v0, 0x0

    :goto_1b
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    array-length v2, v1

    if-ge v0, v2, :cond_2d

    iget-object v2, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2d
    return-void
.end method

.method public constructor <init>([B)V
    .registers 11

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;-><init>()V

    array-length v0, p1

    const/16 v1, 0x9

    const-string v2, "given array is not an encoded matrix over GF(2)"

    if-lt v0, v1, :cond_7d

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->OS2IP([BI)I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    const/4 v1, 0x4

    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->OS2IP([BI)I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    add-int/lit8 v3, v1, 0x7

    ushr-int/lit8 v3, v3, 0x3

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    mul-int/2addr v3, v4

    if-lez v4, :cond_77

    array-length v5, p1

    const/16 v6, 0x8

    sub-int/2addr v5, v6

    if-ne v3, v5, :cond_77

    add-int/lit8 v1, v1, 0x1f

    ushr-int/lit8 v1, v1, 0x5

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    aput v4, v2, v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    shr-int/lit8 v2, v1, 0x5

    and-int/lit8 v1, v1, 0x1f

    move v3, v0

    :goto_46
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ge v3, v4, :cond_76

    move v4, v0

    :goto_4b
    if-ge v4, v2, :cond_5c

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v5, v5, v3

    invoke-static {p1, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->OS2IP([BI)I

    move-result v7

    aput v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x4

    goto :goto_4b

    :cond_5c
    move v4, v0

    :goto_5d
    if-ge v4, v1, :cond_73

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v5, v5, v3

    aget v7, v5, v2

    add-int/lit8 v8, v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v4

    xor-int/2addr v6, v7

    aput v6, v5, v2

    add-int/lit8 v4, v4, 0x8

    move v6, v8

    goto :goto_5d

    :cond_73
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    :cond_76
    return-void

    :cond_77
    new-instance p0, Ljava/lang/ArithmeticException;

    invoke-direct {p0, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7d
    new-instance p0, Ljava/lang/ArithmeticException;

    invoke-direct {p0, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static addToRow([I[II)V
    .registers 6

    .line 0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-lt v0, p2, :cond_f

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_f
    return-void
.end method

.method private assignRandomLowerTriangularMatrix(ILjava/security/SecureRandom;)V
    .registers 11

    .line 0
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    add-int/lit8 v0, p1, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v0, 0x0

    aput p1, v1, v0

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    move p1, v0

    :goto_1e
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ge p1, v1, :cond_57

    ushr-int/lit8 v1, p1, 0x5

    and-int/lit8 v3, p1, 0x1f

    rsub-int/lit8 v4, v3, 0x1f

    shl-int v3, v2, v3

    move v5, v0

    :goto_2b
    if-ge v5, v1, :cond_3a

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v6, v6, p1

    invoke-virtual {p2}, Ljava/util/Random;->nextInt()I

    move-result v7

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_3a
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v5, v5, p1

    invoke-virtual {p2}, Ljava/util/Random;->nextInt()I

    move-result v6

    ushr-int v4, v6, v4

    or-int/2addr v3, v4

    aput v3, v5, v1

    :goto_47
    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-ge v1, v3, :cond_54

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, p1

    aput v0, v3, v1

    goto :goto_47

    :cond_54
    add-int/lit8 p1, p1, 0x1

    goto :goto_1e

    :cond_57
    return-void
.end method

.method private assignRandomRegularMatrix(ILjava/security/SecureRandom;)V
    .registers 9

    .line 0
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    add-int/lit8 v0, p1, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v0, 0x0

    aput p1, v1, v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    const/16 v2, 0x4c

    invoke-direct {v1, p1, v2, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(ICLjava/security/SecureRandom;)V

    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    const/16 v3, 0x55

    invoke-direct {v2, p1, v3, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(ICLjava/security/SecureRandom;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    invoke-direct {v2, p1, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;-><init>(ILjava/security/SecureRandom;)V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->getVector()[I

    move-result-object p2

    move v2, v0

    :goto_3b
    if-ge v2, p1, :cond_4f

    iget-object v3, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget v5, p2, v2

    aget-object v4, v4, v5

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    invoke-static {v3, v0, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_4f
    return-void
.end method

.method private assignRandomUpperTriangularMatrix(ILjava/security/SecureRandom;)V
    .registers 10

    .line 0
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    add-int/lit8 v0, p1, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v0, 0x0

    aput p1, v1, v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    and-int/lit8 p1, p1, 0x1f

    if-nez p1, :cond_23

    const/4 p1, -0x1

    goto :goto_26

    :cond_23
    shl-int p1, v2, p1

    sub-int/2addr p1, v2

    :goto_26
    move v1, v0

    :goto_27
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ge v1, v3, :cond_67

    ushr-int/lit8 v3, v1, 0x5

    and-int/lit8 v4, v1, 0x1f

    move v5, v0

    :goto_30
    if-ge v5, v3, :cond_3b

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v6, v6, v1

    aput v0, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    :cond_3b
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v5, v5, v1

    invoke-virtual {p2}, Ljava/util/Random;->nextInt()I

    move-result v6

    or-int/2addr v6, v2

    shl-int v4, v6, v4

    aput v4, v5, v3

    :goto_48
    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-ge v3, v4, :cond_59

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v4, v4, v1

    invoke-virtual {p2}, Ljava/util/Random;->nextInt()I

    move-result v5

    aput v5, v4, v3

    goto :goto_48

    :cond_59
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v1

    add-int/lit8 v4, v4, -0x1

    aget v5, v3, v4

    and-int/2addr v5, p1

    aput v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_67
    return-void
.end method

.method private assignUnitMatrix(I)V
    .registers 6

    .line 0
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    add-int/lit8 v0, p1, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v0, 0x0

    aput p1, v1, v0

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    move p1, v0

    :goto_1e
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ge p1, v1, :cond_33

    move v1, v0

    :goto_23
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-ge v1, v3, :cond_30

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, p1

    aput v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_30
    add-int/lit8 p1, p1, 0x1

    goto :goto_1e

    :cond_33
    :goto_33
    iget p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ge v0, p1, :cond_46

    and-int/lit8 p1, v0, 0x1f

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v1, v1, v0

    ushr-int/lit8 v3, v0, 0x5

    shl-int p1, v2, p1

    aput p1, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_46
    return-void
.end method

.method private assignZeroMatrix(II)V
    .registers 5

    .line 0
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    iput p2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    add-int/lit8 p2, p2, 0x1f

    ushr-int/lit8 p2, p2, 0x5

    iput p2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 p2, 0x0

    aput p1, v0, p2

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    move p1, p2

    :goto_1e
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ge p1, v0, :cond_33

    move v0, p2

    :goto_23
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-ge v0, v1, :cond_30

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v1, v1, p1

    aput p2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_30
    add-int/lit8 p1, p1, 0x1

    goto :goto_1e

    :cond_33
    return-void
.end method

.method public static createRandomRegularMatrixAndItsInverse(ILjava/security/SecureRandom;)[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .registers 20

    .line 0
    move/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, v0, 0x1f

    shr-int/lit8 v2, v2, 0x5

    new-instance v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    const/16 v4, 0x4c

    invoke-direct {v3, v0, v4, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(ICLjava/security/SecureRandom;)V

    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    const/16 v5, 0x55

    invoke-direct {v4, v0, v5, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(ICLjava/security/SecureRandom;)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    new-instance v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    invoke-direct {v6, v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;-><init>(ILjava/security/SecureRandom;)V

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->getVector()[I

    move-result-object v1

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x1

    aput v2, v7, v8

    const/4 v9, 0x0

    aput v0, v7, v9

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    move v10, v9

    :goto_37
    if-ge v10, v0, :cond_47

    iget-object v11, v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget v12, v1, v10

    aget-object v11, v11, v12

    aget-object v12, v7, v10

    invoke-static {v11, v9, v12, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_37

    :cond_47
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    invoke-direct {v1, v0, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    new-instance v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    const/16 v7, 0x49

    invoke-direct {v5, v0, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(IC)V

    move v10, v9

    :goto_54
    if-ge v10, v0, :cond_85

    and-int/lit8 v11, v10, 0x1f

    ushr-int/lit8 v12, v10, 0x5

    shl-int v11, v8, v11

    add-int/lit8 v13, v10, 0x1

    move v14, v13

    :goto_5f
    if-ge v14, v0, :cond_83

    iget-object v15, v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v15, v15, v14

    aget v15, v15, v12

    and-int/2addr v15, v11

    if-eqz v15, :cond_7f

    move v15, v9

    :goto_6b
    if-gt v15, v12, :cond_7f

    iget-object v9, v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v16, v9, v14

    aget v17, v16, v15

    aget-object v9, v9, v10

    aget v9, v9, v15

    xor-int v9, v17, v9

    aput v9, v16, v15

    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x0

    goto :goto_6b

    :cond_7f
    add-int/lit8 v14, v14, 0x1

    const/4 v9, 0x0

    goto :goto_5f

    :cond_83
    move v10, v13

    goto :goto_54

    :cond_85
    new-instance v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    invoke-direct {v3, v0, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(IC)V

    sub-int/2addr v0, v8

    :goto_8b
    if-ltz v0, :cond_b9

    and-int/lit8 v7, v0, 0x1f

    ushr-int/lit8 v9, v0, 0x5

    shl-int v7, v8, v7

    add-int/lit8 v10, v0, -0x1

    :goto_95
    if-ltz v10, :cond_b6

    iget-object v11, v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v11, v11, v10

    aget v11, v11, v9

    and-int/2addr v11, v7

    if-eqz v11, :cond_b3

    move v11, v9

    :goto_a1
    if-ge v11, v2, :cond_b3

    iget-object v12, v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v13, v12, v10

    aget v14, v13, v11

    aget-object v12, v12, v0

    aget v12, v12, v11

    xor-int/2addr v12, v14

    aput v12, v13, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_a1

    :cond_b3
    add-int/lit8 v10, v10, -0x1

    goto :goto_95

    :cond_b6
    add-int/lit8 v0, v0, -0x1

    goto :goto_8b

    :cond_b9
    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    filled-new-array {v1, v0}, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    move-result-object v0

    return-object v0
.end method

.method private static swapRows([[III)V
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
    .registers 12

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    const-string v2, "Matrix is not invertible."

    if-ne v0, v1, :cond_ad

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v1, v4, v5

    const/4 v1, 0x0

    aput v0, v4, v1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    sub-int/2addr v4, v5

    :goto_1e
    if-ltz v4, :cond_2d

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v6, v6, v4

    invoke-static {v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v6

    aput-object v6, v0, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_1e

    :cond_2d
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    iget v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    new-array v3, v3, [I

    aput v6, v3, v5

    aput v4, v3, v1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    sub-int/2addr v4, v5

    :goto_42
    if-ltz v4, :cond_51

    shr-int/lit8 v6, v4, 0x5

    and-int/lit8 v7, v4, 0x1f

    aget-object v8, v3, v4

    shl-int v7, v5, v7

    aput v7, v8, v6

    add-int/lit8 v4, v4, -0x1

    goto :goto_42

    :cond_51
    move v4, v1

    :goto_52
    iget v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ge v4, v6, :cond_a5

    shr-int/lit8 v6, v4, 0x5

    and-int/lit8 v7, v4, 0x1f

    shl-int v7, v5, v7

    aget-object v8, v0, v4

    aget v8, v8, v6

    and-int/2addr v8, v7

    if-nez v8, :cond_85

    add-int/lit8 v8, v4, 0x1

    move v9, v1

    :goto_66
    iget v10, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ge v8, v10, :cond_7c

    aget-object v10, v0, v8

    aget v10, v10, v6

    and-int/2addr v10, v7

    if-eqz v10, :cond_7a

    invoke-static {v0, v4, v8}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->swapRows([[III)V

    invoke-static {v3, v4, v8}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->swapRows([[III)V

    iget v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    move v9, v5

    :cond_7a
    add-int/2addr v8, v5

    goto :goto_66

    :cond_7c
    if-eqz v9, :cond_7f

    goto :goto_85

    :cond_7f
    new-instance p0, Ljava/lang/ArithmeticException;

    invoke-direct {p0, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_85
    :goto_85
    iget v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    sub-int/2addr v8, v5

    :goto_88
    if-ltz v8, :cond_a2

    if-eq v8, v4, :cond_9f

    aget-object v9, v0, v8

    aget v10, v9, v6

    and-int/2addr v10, v7

    if-eqz v10, :cond_9f

    aget-object v10, v0, v4

    invoke-static {v10, v9, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->addToRow([I[II)V

    aget-object v9, v3, v4

    aget-object v10, v3, v8

    invoke-static {v9, v10, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->addToRow([I[II)V

    :cond_9f
    add-int/lit8 v8, v8, -0x1

    goto :goto_88

    :cond_a2
    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    :cond_a5
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    invoke-direct {v0, p0, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    return-object v0

    :cond_ad
    new-instance p0, Ljava/lang/ArithmeticException;

    invoke-direct {p0, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public computeTranspose()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;
    .registers 10

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    add-int/lit8 v1, v1, 0x1f

    ushr-int/lit8 v1, v1, 0x5

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v2, v1

    :goto_1a
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ge v2, v4, :cond_44

    move v4, v1

    :goto_1f
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    if-ge v4, v5, :cond_41

    ushr-int/lit8 v5, v4, 0x5

    and-int/lit8 v6, v4, 0x1f

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v7, v7, v2

    aget v5, v7, v5

    ushr-int/2addr v5, v6

    and-int/2addr v5, v3

    ushr-int/lit8 v6, v2, 0x5

    and-int/lit8 v7, v2, 0x1f

    if-ne v5, v3, :cond_3e

    aget-object v5, v0, v4

    aget v8, v5, v6

    shl-int v7, v3, v7

    or-int/2addr v7, v8

    aput v7, v5, v6

    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_44
    new-instance p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    invoke-direct {p0, v4, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    iget v2, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ne v0, v2, :cond_34

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    iget v2, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    if-ne v0, v2, :cond_34

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    iget v2, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-eq v0, v2, :cond_1b

    goto :goto_34

    :cond_1b
    move v0, v1

    :goto_1c
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ge v0, v2, :cond_32

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v0

    iget-object v3, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_2f

    return v1

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_32
    const/4 p0, 0x1

    return p0

    :cond_34
    :goto_34
    return v1
.end method

.method public extendLeftCompactForm()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .registers 9

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    add-int/2addr v0, v1

    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(II)V

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    add-int/lit8 v1, v0, -0x1

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    add-int/2addr v1, v3

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    :goto_13
    if-ltz v0, :cond_37

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v4, v4, v0

    iget-object v5, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v5, v5, v0

    iget v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    const/4 v7, 0x0

    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v4, v4, v0

    shr-int/lit8 v5, v1, 0x5

    aget v6, v4, v5

    and-int/lit8 v7, v1, 0x1f

    shl-int v7, v3, v7

    or-int/2addr v6, v7

    aput v6, v4, v5

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    :cond_37
    return-object v2
.end method

.method public extendRightCompactForm()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .registers 13

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    add-int/2addr v2, v1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(II)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    shr-int/lit8 v2, v1, 0x5

    and-int/lit8 v3, v1, 0x1f

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    :goto_12
    if-ltz v1, :cond_7a

    iget-object v5, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v5, v5, v1

    shr-int/lit8 v6, v1, 0x5

    aget v7, v5, v6

    and-int/lit8 v8, v1, 0x1f

    shl-int v8, v4, v8

    or-int/2addr v7, v8

    aput v7, v5, v6

    const/4 v6, 0x0

    if-eqz v3, :cond_6e

    move v5, v2

    :goto_27
    iget v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v8, v7, -0x1

    if-ge v6, v8, :cond_4c

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v7, v7, v1

    aget v7, v7, v6

    iget-object v8, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v8, v8, v1

    add-int/lit8 v9, v5, 0x1

    aget v10, v8, v5

    shl-int v11, v7, v3

    or-int/2addr v10, v11

    aput v10, v8, v5

    aget v5, v8, v9

    rsub-int/lit8 v10, v3, 0x20

    ushr-int/2addr v7, v10

    or-int/2addr v5, v7

    aput v5, v8, v9

    add-int/lit8 v6, v6, 0x1

    move v5, v9

    goto :goto_27

    :cond_4c
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v6, v6, v1

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    iget-object v7, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v7, v7, v1

    add-int/lit8 v8, v5, 0x1

    aget v9, v7, v5

    shl-int v10, v6, v3

    or-int/2addr v9, v10

    aput v9, v7, v5

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-ge v8, v5, :cond_77

    aget v5, v7, v8

    rsub-int/lit8 v9, v3, 0x20

    ushr-int/2addr v6, v9

    or-int/2addr v5, v6

    aput v5, v7, v8

    goto :goto_77

    :cond_6e
    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v7, v7, v1

    iget v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    invoke-static {v7, v6, v5, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_77
    :goto_77
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    :cond_7a
    return-object v0
.end method

.method public getEncoded()[B
    .registers 10

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    add-int/lit8 v0, v0, 0x7

    ushr-int/lit8 v0, v0, 0x3

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    mul-int/2addr v0, v1

    const/16 v2, 0x8

    add-int/2addr v0, v2

    new-array v0, v0, [B

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->I2OSP(I[BI)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    const/4 v4, 0x4

    invoke-static {v1, v0, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->I2OSP(I[BI)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    ushr-int/lit8 v4, v1, 0x5

    and-int/lit8 v1, v1, 0x1f

    move v5, v3

    :goto_1f
    iget v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ge v5, v6, :cond_4c

    move v6, v3

    :goto_24
    if-ge v6, v4, :cond_34

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v7, v7, v5

    aget v7, v7, v6

    invoke-static {v7, v0, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->I2OSP(I[BI)V

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_24

    :cond_34
    move v6, v3

    :goto_35
    if-ge v6, v1, :cond_49

    add-int/lit8 v7, v2, 0x1

    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v8, v8, v5

    aget v8, v8, v4

    ushr-int/2addr v8, v6

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    add-int/lit8 v6, v6, 0x8

    move v2, v7

    goto :goto_35

    :cond_49
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_4c
    return-object v0
.end method

.method public getHammingWeight()D
    .registers 16

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    and-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    add-int/lit8 v1, v1, -0x1

    :goto_b
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move v7, v2

    move-wide v5, v3

    :goto_10
    iget v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ge v7, v8, :cond_4b

    move v8, v2

    :goto_15
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-ge v8, v1, :cond_31

    iget-object v11, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v11, v11, v7

    aget v11, v11, v8

    move v12, v2

    :goto_20
    const/16 v13, 0x20

    if-ge v12, v13, :cond_2e

    ushr-int v13, v11, v12

    and-int/lit8 v13, v13, 0x1

    int-to-double v13, v13

    add-double/2addr v3, v13

    add-double/2addr v5, v9

    add-int/lit8 v12, v12, 0x1

    goto :goto_20

    :cond_2e
    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    :cond_31
    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v8, v8, v7

    iget v11, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v11, v11, -0x1

    aget v8, v8, v11

    move v11, v2

    :goto_3c
    if-ge v11, v0, :cond_48

    ushr-int v12, v8, v11

    and-int/lit8 v12, v12, 0x1

    int-to-double v12, v12

    add-double/2addr v3, v12

    add-double/2addr v5, v9

    add-int/lit8 v11, v11, 0x1

    goto :goto_3c

    :cond_48
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_4b
    div-double/2addr v3, v5

    return-wide v3
.end method

.method public getIntArray()[[I
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    return-object p0
.end method

.method public getLeftSubMatrix()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .registers 10

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-le v0, v1, :cond_45

    add-int/lit8 v0, v1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v0, v2, v3

    const/4 v4, 0x0

    aput v1, v2, v4

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    and-int/lit8 v5, v2, 0x1f

    shl-int v5, v3, v5

    sub-int/2addr v5, v3

    if-nez v5, :cond_25

    const/4 v5, -0x1

    :cond_25
    sub-int/2addr v2, v3

    :goto_26
    if-ltz v2, :cond_3d

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v6, v6, v2

    aget-object v7, v1, v2

    invoke-static {v6, v4, v7, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, v1, v2

    add-int/lit8 v7, v0, -0x1

    aget v8, v6, v7

    and-int/2addr v8, v5

    aput v8, v6, v7

    add-int/lit8 v2, v2, -0x1

    goto :goto_26

    :cond_3d
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    return-object v0

    :cond_45
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "empty submatrix"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLength()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    return p0
.end method

.method public getRightSubMatrix()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .registers 11

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-le v0, v1, :cond_6c

    shr-int/lit8 v2, v1, 0x5

    and-int/lit8 v3, v1, 0x1f

    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    sub-int/2addr v0, v1

    invoke-direct {v4, v1, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(II)V

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    add-int/lit8 v0, v0, -0x1

    :goto_14
    if-ltz v0, :cond_6b

    const/4 v1, 0x0

    if-eqz v3, :cond_5b

    move v5, v2

    :goto_1a
    iget v6, v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v7, v6, -0x1

    if-ge v1, v7, :cond_39

    iget-object v6, v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v6, v6, v0

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v7, v7, v0

    add-int/lit8 v8, v5, 0x1

    aget v5, v7, v5

    ushr-int/2addr v5, v3

    aget v7, v7, v8

    rsub-int/lit8 v9, v3, 0x20

    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    aput v5, v6, v1

    add-int/lit8 v1, v1, 0x1

    move v5, v8

    goto :goto_1a

    :cond_39
    iget-object v1, v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v1, v1, v0

    add-int/lit8 v7, v6, -0x1

    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v8, v8, v0

    add-int/lit8 v9, v5, 0x1

    aget v5, v8, v5

    ushr-int/2addr v5, v3

    aput v5, v1, v7

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-ge v9, v5, :cond_68

    add-int/lit8 v6, v6, -0x1

    aget v5, v1, v6

    aget v7, v8, v9

    rsub-int/lit8 v8, v3, 0x20

    shl-int/2addr v7, v8

    or-int/2addr v5, v7

    aput v5, v1, v6

    goto :goto_68

    :cond_5b
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v5, v5, v0

    iget-object v6, v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v6, v6, v0

    iget v7, v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    invoke-static {v5, v2, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_68
    :goto_68
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    :cond_6b
    return-object v4

    :cond_6c
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "empty submatrix"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRow(I)[I
    .registers 2

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object p0, p0, p1

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_d
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ge v1, v2, :cond_1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1f
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
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-ge v2, v3, :cond_17

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

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

.method public leftMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;
    .registers 6

    .line 0
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->getVector()[I

    move-result-object p1

    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ne v0, v1, :cond_26

    new-array v0, v1, [[I

    add-int/lit8 v1, v1, -0x1

    :goto_d
    if-ltz v1, :cond_1e

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget v3, p1, v1

    aget-object v2, v2, v3

    invoke-static {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    :cond_1e
    new-instance p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    invoke-direct {p1, p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    return-object p1

    :cond_26
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "length mismatch"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public leftMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
    .registers 13

    .line 0
    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    if-eqz v0, :cond_73

    iget v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;->length:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ne v0, v1, :cond_6b

    check-cast p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->getVecArray()[I

    move-result-object p1

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    new-array v0, v0, [I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    shr-int/lit8 v2, v1, 0x5

    and-int/lit8 v1, v1, 0x1f

    const/4 v3, 0x1

    shl-int v1, v3, v1

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_20
    if-ge v5, v2, :cond_44

    move v7, v3

    :cond_23
    aget v8, p1, v5

    and-int/2addr v8, v7

    if-eqz v8, :cond_3b

    move v8, v4

    :goto_29
    iget v9, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-ge v8, v9, :cond_3b

    aget v9, v0, v8

    iget-object v10, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v10, v10, v6

    aget v10, v10, v8

    xor-int/2addr v9, v10

    aput v9, v0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_29

    :cond_3b
    add-int/lit8 v6, v6, 0x1

    shl-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_23

    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_44
    :goto_44
    if-eq v3, v1, :cond_63

    aget v5, p1, v2

    and-int/2addr v5, v3

    if-eqz v5, :cond_5e

    move v5, v4

    :goto_4c
    iget v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-ge v5, v7, :cond_5e

    aget v7, v0, v5

    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v8, v8, v6

    aget v8, v8, v5

    xor-int/2addr v7, v8

    aput v7, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4c

    :cond_5e
    add-int/lit8 v6, v6, 0x1

    shl-int/lit8 v3, v3, 0x1

    goto :goto_44

    :cond_63
    new-instance p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;-><init>([II)V

    return-object p1

    :cond_6b
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "length mismatch"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_73
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "vector is not defined over GF(2)"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public leftMultiplyLeftCompactForm(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
    .registers 12

    .line 0
    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    if-eqz v0, :cond_9e

    iget v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;->length:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ne v0, v1, :cond_96

    check-cast p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->getVecArray()[I

    move-result-object p1

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1f

    ushr-int/lit8 v1, v1, 0x5

    new-array v1, v1, [I

    ushr-int/lit8 v0, v0, 0x5

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_20
    const/4 v5, 0x1

    if-ge v3, v0, :cond_55

    move v6, v5

    :cond_24
    aget v7, p1, v3

    and-int/2addr v7, v6

    if-eqz v7, :cond_4c

    move v7, v2

    :goto_2a
    iget v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-ge v7, v8, :cond_3c

    aget v8, v1, v7

    iget-object v9, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v9, v9, v4

    aget v9, v9, v7

    xor-int/2addr v8, v9

    aput v8, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    :cond_3c
    iget v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    add-int v8, v7, v4

    ushr-int/lit8 v8, v8, 0x5

    add-int/2addr v7, v4

    and-int/lit8 v7, v7, 0x1f

    aget v9, v1, v8

    shl-int v7, v5, v7

    or-int/2addr v7, v9

    aput v7, v1, v8

    :cond_4c
    add-int/lit8 v4, v4, 0x1

    shl-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_24

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_55
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    and-int/lit8 v3, v3, 0x1f

    shl-int v3, v5, v3

    move v6, v5

    :goto_5c
    if-eq v6, v3, :cond_8b

    aget v7, p1, v0

    and-int/2addr v7, v6

    if-eqz v7, :cond_86

    move v7, v2

    :goto_64
    iget v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-ge v7, v8, :cond_76

    aget v8, v1, v7

    iget-object v9, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v9, v9, v4

    aget v9, v9, v7

    xor-int/2addr v8, v9

    aput v8, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_64

    :cond_76
    iget v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    add-int v8, v7, v4

    ushr-int/lit8 v8, v8, 0x5

    add-int/2addr v7, v4

    and-int/lit8 v7, v7, 0x1f

    aget v9, v1, v8

    shl-int v7, v5, v7

    or-int/2addr v7, v9

    aput v7, v1, v8

    :cond_86
    add-int/lit8 v4, v4, 0x1

    shl-int/lit8 v6, v6, 0x1

    goto :goto_5c

    :cond_8b
    new-instance p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    add-int/2addr v0, p0

    invoke-direct {p1, v1, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;-><init>([II)V

    return-object p1

    :cond_96
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "length mismatch"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9e
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "vector is not defined over GF(2)"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public rightMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;
    .registers 16

    .line 0
    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    if-eqz v0, :cond_93

    iget v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    if-ne v0, v1, :cond_8b

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    iget p1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    invoke-direct {v1, v2, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(II)V

    iget p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-nez p1, :cond_20

    goto :goto_21

    :cond_20
    sub-int/2addr v3, v2

    :goto_21
    const/4 v4, 0x0

    move v5, v4

    :goto_23
    iget v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ge v5, v6, :cond_8a

    move v6, v4

    move v7, v6

    :goto_29
    if-ge v6, v3, :cond_5a

    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v8, v8, v5

    aget v8, v8, v6

    move v9, v4

    :goto_32
    const/16 v10, 0x20

    if-ge v9, v10, :cond_57

    shl-int v10, v2, v9

    and-int/2addr v10, v8

    if-eqz v10, :cond_52

    move v10, v4

    :goto_3c
    iget v11, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-ge v10, v11, :cond_52

    iget-object v11, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v11, v11, v5

    aget v12, v11, v10

    iget-object v13, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v13, v13, v7

    aget v13, v13, v10

    xor-int/2addr v12, v13

    aput v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3c

    :cond_52
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_32

    :cond_57
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    :cond_5a
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v6, v6, v5

    iget v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    sub-int/2addr v8, v2

    aget v6, v6, v8

    move v8, v4

    :goto_64
    if-ge v8, p1, :cond_87

    shl-int v9, v2, v8

    and-int/2addr v9, v6

    if-eqz v9, :cond_82

    move v9, v4

    :goto_6c
    iget v10, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-ge v9, v10, :cond_82

    iget-object v10, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v10, v10, v5

    aget v11, v10, v9

    iget-object v12, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v12, v12, v7

    aget v12, v12, v9

    xor-int/2addr v11, v12

    aput v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_6c

    :cond_82
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_64

    :cond_87
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_8a
    return-object v1

    :cond_8b
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "length mismatch"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_93
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "matrix is not defined over GF(2)"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public rightMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;
    .registers 12

    .line 0
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->getVector()[I

    move-result-object p1

    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    if-ne v0, v1, :cond_40

    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(II)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    add-int/lit8 v1, v1, -0x1

    :goto_14
    if-ltz v1, :cond_3f

    ushr-int/lit8 v2, v1, 0x5

    and-int/lit8 v3, v1, 0x1f

    aget v4, p1, v1

    ushr-int/lit8 v5, v4, 0x5

    and-int/lit8 v4, v4, 0x1f

    iget v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    add-int/lit8 v6, v6, -0x1

    :goto_24
    if-ltz v6, :cond_3c

    iget-object v7, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v7, v7, v6

    aget v8, v7, v2

    iget-object v9, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v9, v9, v6

    aget v9, v9, v5

    ushr-int/2addr v9, v4

    and-int/lit8 v9, v9, 0x1

    shl-int/2addr v9, v3

    or-int/2addr v8, v9

    aput v8, v7, v2

    add-int/lit8 v6, v6, -0x1

    goto :goto_24

    :cond_3c
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    :cond_3f
    return-object v0

    :cond_40
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "length mismatch"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public rightMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
    .registers 10

    .line 0
    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    if-eqz v0, :cond_5d

    iget v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;->length:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    if-ne v0, v1, :cond_55

    check-cast p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->getVecArray()[I

    move-result-object p1

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    add-int/lit8 v0, v0, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_1a
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ge v2, v3, :cond_4f

    move v3, v1

    move v4, v3

    :goto_20
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-ge v3, v5, :cond_31

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v5, v5, v2

    aget v5, v5, v3

    aget v6, p1, v3

    and-int/2addr v5, v6

    xor-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_31
    move v3, v1

    move v5, v3

    :goto_33
    const/16 v6, 0x20

    const/4 v7, 0x1

    if-ge v3, v6, :cond_3f

    ushr-int v6, v4, v3

    and-int/2addr v6, v7

    xor-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_3f
    if-ne v5, v7, :cond_4c

    ushr-int/lit8 v3, v2, 0x5

    aget v4, v0, v3

    and-int/lit8 v5, v2, 0x1f

    shl-int v5, v7, v5

    or-int/2addr v4, v5

    aput v4, v0, v3

    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_4f
    new-instance p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;-><init>([II)V

    return-object p0

    :cond_55
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "length mismatch"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5d
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "vector is not defined over GF(2)"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public rightMultiplyRightCompactForm(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
    .registers 16

    .line 0
    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    if-eqz v0, :cond_a3

    iget v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;->length:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_9b

    check-cast p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->getVecArray()[I

    move-result-object p1

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    add-int/lit8 v1, v0, 0x1f

    ushr-int/lit8 v1, v1, 0x5

    new-array v1, v1, [I

    shr-int/lit8 v2, v0, 0x5

    and-int/lit8 v0, v0, 0x1f

    const/4 v3, 0x0

    move v4, v3

    :goto_21
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ge v4, v5, :cond_95

    shr-int/lit8 v5, v4, 0x5

    aget v6, p1, v5

    and-int/lit8 v7, v4, 0x1f

    ushr-int/2addr v6, v7

    const/4 v8, 0x1

    and-int/2addr v6, v8

    move v10, v2

    move v9, v3

    if-eqz v0, :cond_68

    :goto_32
    iget v11, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v12, v11, -0x1

    if-ge v9, v12, :cond_4f

    add-int/lit8 v11, v10, 0x1

    aget v10, p1, v10

    ushr-int/2addr v10, v0

    aget v12, p1, v11

    rsub-int/lit8 v13, v0, 0x20

    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    iget-object v12, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v12, v12, v4

    aget v12, v12, v9

    and-int/2addr v10, v12

    xor-int/2addr v6, v10

    add-int/lit8 v9, v9, 0x1

    move v10, v11

    goto :goto_32

    :cond_4f
    add-int/lit8 v9, v10, 0x1

    aget v10, p1, v10

    ushr-int/2addr v10, v0

    array-length v12, p1

    if-ge v9, v12, :cond_5d

    aget v9, p1, v9

    rsub-int/lit8 v12, v0, 0x20

    shl-int/2addr v9, v12

    or-int/2addr v10, v9

    :cond_5d
    iget-object v9, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v9, v9, v4

    add-int/lit8 v11, v11, -0x1

    aget v9, v9, v11

    and-int/2addr v9, v10

    xor-int/2addr v6, v9

    goto :goto_7c

    :cond_68
    :goto_68
    iget v11, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-ge v9, v11, :cond_7c

    iget-object v11, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v11, v11, v4

    aget v11, v11, v9

    add-int/lit8 v12, v10, 0x1

    aget v10, p1, v10

    and-int/2addr v10, v11

    xor-int/2addr v6, v10

    add-int/lit8 v9, v9, 0x1

    move v10, v12

    goto :goto_68

    :cond_7c
    :goto_7c
    move v9, v3

    move v10, v9

    :goto_7e
    const/16 v11, 0x20

    if-ge v9, v11, :cond_89

    and-int/lit8 v11, v6, 0x1

    xor-int/2addr v10, v11

    ushr-int/2addr v6, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_7e

    :cond_89
    if-ne v10, v8, :cond_92

    aget v6, v1, v5

    shl-int v7, v8, v7

    or-int/2addr v6, v7

    aput v6, v1, v5

    :cond_92
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_95
    new-instance p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    invoke-direct {p0, v1, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;-><init>([II)V

    return-object p0

    :cond_9b
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "length mismatch"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a3
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "vector is not defined over GF(2)"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    and-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    add-int/lit8 v1, v1, -0x1

    :goto_b
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ge v4, v5, :cond_77

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v5, v3

    :goto_2b
    const/16 v6, 0x31

    const/16 v7, 0x30

    if-ge v5, v1, :cond_52

    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v8, v8, v4

    aget v8, v8, v5

    move v9, v3

    :goto_38
    const/16 v10, 0x20

    if-ge v9, v10, :cond_4c

    ushr-int v10, v8, v9

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_46

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_49

    :cond_46
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_49
    add-int/lit8 v9, v9, 0x1

    goto :goto_38

    :cond_4c
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_52
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v5, v5, v4

    iget v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v8, v8, -0x1

    aget v5, v5, v8

    move v8, v3

    :goto_5d
    if-ge v8, v0, :cond_6f

    ushr-int v9, v5, v8

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_69

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6c

    :cond_69
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_6c
    add-int/lit8 v8, v8, 0x1

    goto :goto_5d

    :cond_6f
    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_77
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
