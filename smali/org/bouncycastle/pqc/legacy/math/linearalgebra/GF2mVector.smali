###### Class org.bouncycastle.pqc.legacy.math.linearalgebra.GF2mVector (org.bouncycastle.pqc.legacy.math.linearalgebra.GF2mVector)
.class public Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;
.super Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;


# instance fields
.field private field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

.field private vector:[I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[B)V
    .registers 12

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;-><init>()V

    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    const/16 v0, 0x8

    const/4 v1, 0x1

    :goto_d
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->getDegree()I

    move-result v2

    if-le v2, v0, :cond_18

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x8

    goto :goto_d

    :cond_18
    array-length v2, p2

    rem-int/2addr v2, v1

    const-string v3, "Byte array is not an encoded vector over the given finite field."

    if-nez v2, :cond_57

    array-length v2, p2

    div-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;->length:I

    new-array v1, v2, [I

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    const/4 v1, 0x0

    move v2, v1

    move v4, v2

    :goto_29
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    array-length v5, v5

    if-ge v2, v5, :cond_56

    move v5, v1

    :goto_2f
    if-ge v5, v0, :cond_43

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    aget v7, v6, v2

    add-int/lit8 v8, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v5

    or-int/2addr v4, v7

    aput v4, v6, v2

    add-int/lit8 v5, v5, 0x8

    move v4, v8

    goto :goto_2f

    :cond_43
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    aget v5, v5, v2

    invoke-virtual {p1, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->isElementOfThisField(I)Z

    move-result v5

    if-eqz v5, :cond_50

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_50
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_56
    return-void

    :cond_57
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[I)V
    .registers 5

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    array-length v0, p2

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;->length:I

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    :goto_b
    if-ltz v0, :cond_20

    aget v1, p2, v0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->isElementOfThisField(I)Z

    move-result v1

    if-eqz v1, :cond_18

    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_18
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Element array is not specified over the given finite field."

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    invoke-static {p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;-><init>()V

    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    iget v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;->length:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;->length:I

    iget-object p1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    invoke-static {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    return-void
.end method


# virtual methods
.method public add(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
    .registers 2

    .line 0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    iget-object v2, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    return v1

    :cond_13
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    iget-object p1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->equals([I[I)Z

    move-result p0

    return p0
.end method

.method public getEncoded()[B
    .registers 9

    .line 0
    const/16 v0, 0x8

    const/4 v1, 0x1

    :goto_3
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->getDegree()I

    move-result v2

    if-le v2, v0, :cond_10

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_10
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    array-length v2, v2

    mul-int/2addr v2, v1

    new-array v1, v2, [B

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_19
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    array-length v5, v5

    if-ge v3, v5, :cond_32

    move v5, v2

    :goto_1f
    if-ge v5, v0, :cond_2f

    add-int/lit8 v6, v4, 0x1

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    aget v7, v7, v3

    ushr-int/2addr v7, v5

    int-to-byte v7, v7

    aput-byte v7, v1, v4

    add-int/lit8 v5, v5, 0x8

    move v4, v6

    goto :goto_1f

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_32
    return-object v1
.end method

.method public getField()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    return-object p0
.end method

.method public getIntArrayForm()[I
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    invoke-static {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->hashCode([I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public isZero()Z
    .registers 4

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_5
    if-ltz v0, :cond_12

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    aget v2, v2, v0

    if-eqz v2, :cond_f

    const/4 p0, 0x0

    return p0

    :cond_f
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_12
    return v1
.end method

.method public multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
    .registers 6

    .line 0
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->getVector()[I

    move-result-object p1

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;->length:I

    array-length v1, p1

    if-ne v0, v1, :cond_22

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_c
    array-length v2, p1

    if-ge v1, v2, :cond_1a

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    aget v3, p1, v1

    aget v2, v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1a
    new-instance p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;

    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-direct {p1, p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[I)V

    return-object p1

    :cond_22
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "permutation size and vector size mismatch"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    array-length v3, v3

    if-ge v2, v3, :cond_35

    move v3, v1

    :goto_d
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->getDegree()I

    move-result v4

    if-ge v3, v4, :cond_2d

    and-int/lit8 v4, v3, 0x1f

    const/4 v5, 0x1

    shl-int v4, v5, v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    aget v5, v5, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_27

    const/16 v4, 0x31

    :goto_23
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2a

    :cond_27
    const/16 v4, 0x30

    goto :goto_23

    :goto_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_2d
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
