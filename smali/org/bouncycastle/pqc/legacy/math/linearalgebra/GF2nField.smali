###### Class org.bouncycastle.pqc.legacy.math.linearalgebra.GF2nField (org.bouncycastle.pqc.legacy.math.linearalgebra.GF2nField)
.class public abstract Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;
.super Ljava/lang/Object;


# instance fields
.field protected fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

.field protected fields:Ljava/util/Vector;

.field protected mDegree:I

.field protected matrices:Ljava/util/Vector;

.field protected final random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->random:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public abstract computeCOBMatrix(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;)V
.end method

.method public abstract computeFieldPolynomial()V
.end method

.method public final convert(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 0
    if-ne p2, p0, :cond_9

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    return-object p0

    :cond_9
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget-object v1, p2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    return-object p0

    :cond_1a
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    iget v1, p2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    if-ne v0, v1, :cond_a0

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->fields:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_32

    invoke-virtual {p0, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->computeCOBMatrix(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->fields:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :cond_32
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->matrices:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    instance-of v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    if-eqz v1, :cond_4a

    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->reverseOrder()V

    :cond_4a
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    invoke-interface {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;->toFlexiBigInt()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(ILjava/math/BigInteger;)V

    iget p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    invoke-virtual {v1, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->expandN(I)V

    new-instance p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    invoke-direct {p1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I)V

    const/4 v2, 0x0

    :goto_62
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    if-ge v2, v3, :cond_79

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->vectorMult(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Z

    move-result v3

    if-eqz v3, :cond_76

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v2

    invoke-virtual {p1, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->setBit(I)V

    :cond_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    :cond_79
    instance-of p0, p2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    if-eqz p0, :cond_85

    new-instance p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    check-cast p2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    return-object p0

    :cond_85
    instance-of p0, p2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    if-eqz p0, :cond_98

    new-instance p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    check-cast p2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->toFlexiBigInt()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;Ljava/math/BigInteger;)V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->reverseOrder()V

    return-object p0

    :cond_98
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "GF2nField.convert: B1 must be an instance of GF2nPolynomialField or GF2nONBField!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "GF2nField.convert: B1 has a different degree and thus cannot be coverted to!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x0

    if-eqz p1, :cond_30

    instance-of v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    if-nez v1, :cond_8

    goto :goto_30

    :cond_8
    check-cast p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    iget v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    if-eq v1, v2, :cond_11

    return v0

    :cond_11
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget-object v2, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v0

    :cond_1c
    instance-of v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    if-eqz v1, :cond_25

    instance-of v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    if-nez v1, :cond_25

    return v0

    :cond_25
    instance-of p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    if-eqz p0, :cond_2e

    instance-of p0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    if-nez p0, :cond_2e

    return v0

    :cond_2e
    const/4 p0, 0x1

    return p0

    :cond_30
    :goto_30
    return v0
.end method

.method public final getDegree()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    return p0
.end method

.method public final getFieldPolynomial()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->computeFieldPolynomial()V

    :cond_7
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    return-object v0
.end method

.method public abstract getRandomRoot(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final invertMatrix([Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .registers 8

    .line 0
    array-length v0, p1

    new-array v0, v0, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    array-length v1, p1

    new-array v1, v1, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    if-ge v3, v4, :cond_29

    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    aget-object v5, p1, v3

    invoke-direct {v4, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    aput-object v4, v0, v3

    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    invoke-direct {v4, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I)V

    aput-object v4, v1, v3

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v3

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->setBit(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_29
    :goto_29
    iget p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    add-int/lit8 v3, p1, -0x1

    if-ge v2, v3, :cond_85

    move p1, v2

    :goto_30
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    if-ge p1, v3, :cond_42

    aget-object v4, v0, p1

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v2

    invoke-virtual {v4, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v3

    if-nez v3, :cond_42

    add-int/lit8 p1, p1, 0x1

    goto :goto_30

    :cond_42
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    if-ge p1, v3, :cond_7d

    if-eq v2, p1, :cond_58

    aget-object v3, v0, v2

    aget-object v4, v0, p1

    aput-object v4, v0, v2

    aput-object v3, v0, p1

    aget-object v3, v1, v2

    aget-object v4, v1, p1

    aput-object v4, v1, v2

    aput-object v3, v1, p1

    :cond_58
    add-int/lit8 p1, v2, 0x1

    move v3, p1

    :goto_5b
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    if-ge v3, v4, :cond_7b

    aget-object v5, v0, v3

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v2

    invoke-virtual {v5, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_78

    aget-object v4, v0, v3

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    aget-object v4, v1, v3

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    :cond_78
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    :cond_7b
    move v2, p1

    goto :goto_29

    :cond_7d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "GF2nField.invertMatrix: Matrix cannot be inverted!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_85
    add-int/lit8 p1, p1, -0x1

    :goto_87
    if-lez p1, :cond_ae

    add-int/lit8 v2, p1, -0x1

    :goto_8b
    if-ltz v2, :cond_ab

    aget-object v3, v0, v2

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, p1

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_a8

    aget-object v3, v0, v2

    aget-object v4, v0, p1

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    aget-object v3, v1, v2

    aget-object v4, v1, p1

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    :cond_a8
    add-int/lit8 v2, v2, -0x1

    goto :goto_8b

    :cond_ab
    add-int/lit8 p1, p1, -0x1

    goto :goto_87

    :cond_ae
    return-object v1
.end method
