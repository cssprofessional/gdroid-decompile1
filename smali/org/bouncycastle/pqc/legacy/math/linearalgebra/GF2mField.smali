###### Class org.bouncycastle.pqc.legacy.math.linearalgebra.GF2mField (org.bouncycastle.pqc.legacy.math.linearalgebra.GF2mField)
.class public Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;
.super Ljava/lang/Object;


# instance fields
.field private degree:I

.field private polynomial:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    const/16 v0, 0x20

    if-ge p1, v0, :cond_1e

    const/4 v0, 0x1

    if-lt p1, v0, :cond_16

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->getIrreduciblePolynomial(I)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    return-void

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, " Error: the degree of field is non-positive "

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, " Error: the degree of field is too large "

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(II)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    invoke-static {p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v0

    if-ne p1, v0, :cond_1f

    invoke-static {p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->isIrreducible(I)Z

    move-result v0

    if-eqz v0, :cond_17

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    iput p2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    return-void

    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, " Error: given polynomial is reducible"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, " Error: the degree is not correct"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    iget v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    iget p1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    return-void
.end method

.method public constructor <init>([B)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    array-length v0, p1

    const/4 v1, 0x4

    const-string v2, "byte array is not an encoded finite field"

    if-ne v0, v1, :cond_27

    invoke-static {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->OS2IP([B)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->isIrreducible(I)Z

    move-result p1

    if-eqz p1, :cond_21

    iget p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    return-void

    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static polyToString(I)Ljava/lang/String;
    .registers 5

    .line 0
    if-nez p0, :cond_5

    const-string p0, "0"

    goto :goto_33

    :cond_5
    and-int/lit8 v0, p0, 0x1

    int-to-byte v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    const-string v0, "1"

    goto :goto_10

    :cond_e
    const-string v0, ""

    :goto_10
    ushr-int/2addr p0, v1

    move v2, v1

    :goto_12
    if-eqz p0, :cond_32

    and-int/lit8 v3, p0, 0x1

    int-to-byte v3, v3

    if-ne v3, v1, :cond_2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "+x^"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2d
    ushr-int/lit8 p0, p0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_32
    move-object p0, v0

    :goto_33
    return-object p0
.end method


# virtual methods
.method public add(II)I
    .registers 3

    .line 0
    xor-int p0, p1, p2

    return p0
.end method

.method public elementToStr(I)Ljava/lang/String;
    .registers 6

    .line 0
    const-string v0, ""

    const/4 v1, 0x0

    :goto_3
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    if-ge v1, v2, :cond_2b

    int-to-byte v2, p1

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    :goto_13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    :cond_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1"

    goto :goto_13

    :goto_26
    ushr-int/lit8 p1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2b
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x0

    if-eqz p1, :cond_18

    instance-of v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    if-nez v1, :cond_8

    goto :goto_18

    :cond_8
    check-cast p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    iget v2, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    if-ne v1, v2, :cond_18

    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    iget p1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    if-ne p0, p1, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    :goto_18
    return v0
.end method

.method public exp(II)I
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-nez p2, :cond_4

    return v0

    :cond_4
    if-nez p1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    if-ne p1, v0, :cond_b

    return v0

    :cond_b
    if-gez p2, :cond_12

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->inverse(I)I

    move-result p1

    neg-int p2, p2

    :cond_12
    move v1, v0

    :goto_13
    if-eqz p2, :cond_24

    and-int/lit8 v2, p2, 0x1

    if-ne v2, v0, :cond_1d

    invoke-virtual {p0, v1, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->mult(II)I

    move-result v1

    :cond_1d
    invoke-virtual {p0, p1, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->mult(II)I

    move-result p1

    ushr-int/lit8 p2, p2, 0x1

    goto :goto_13

    :cond_24
    return v1
.end method

.method public getDegree()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    return p0
.end method

.method public getEncoded()[B
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->I2OSP(I)[B

    move-result-object p0

    return-object p0
.end method

.method public getPolynomial()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    return p0
.end method

.method public getRandomElement(Ljava/security/SecureRandom;)I
    .registers 3

    .line 0
    const/4 v0, 0x1

    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    shl-int p0, v0, p0

    invoke-static {p1, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/RandUtils;->nextInt(Ljava/security/SecureRandom;I)I

    move-result p0

    return p0
.end method

.method public getRandomNonZeroElement()I
    .registers 2

    .line 0
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->getRandomNonZeroElement(Ljava/security/SecureRandom;)I

    move-result p0

    return p0
.end method

.method public getRandomNonZeroElement(Ljava/security/SecureRandom;)I
    .registers 6

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/RandUtils;->nextInt(Ljava/security/SecureRandom;I)I

    move-result v0

    const/4 v2, 0x0

    :goto_a
    const/high16 v3, 0x100000

    if-nez v0, :cond_1b

    if-ge v2, v3, :cond_1b

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    shl-int v0, v1, v0

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/RandUtils;->nextInt(Ljava/security/SecureRandom;I)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1b
    if-ne v2, v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v0

    :goto_1f
    return v1
.end method

.method public hashCode()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    return p0
.end method

.method public inverse(I)I
    .registers 4

    .line 0
    const/4 v0, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    shl-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->exp(II)I

    move-result p0

    return p0
.end method

.method public isElementOfThisField(I)Z
    .registers 5

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    const/16 v0, 0x1f

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v0, :cond_c

    if-ltz p1, :cond_b

    move v1, v2

    :cond_b
    return v1

    :cond_c
    if-ltz p1, :cond_13

    shl-int p0, v2, p0

    if-ge p1, p0, :cond_13

    move v1, v2

    :cond_13
    return v1
.end method

.method public mult(II)I
    .registers 3

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    invoke-static {p1, p2, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->modMultiply(III)I

    move-result p0

    return p0
.end method

.method public sqRoot(I)I
    .registers 4

    .line 0
    const/4 v0, 0x1

    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    if-ge v0, v1, :cond_c

    invoke-virtual {p0, p1, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->mult(II)I

    move-result p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finite Field GF(2^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") = GF(2)[X]/<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polyToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "> "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
