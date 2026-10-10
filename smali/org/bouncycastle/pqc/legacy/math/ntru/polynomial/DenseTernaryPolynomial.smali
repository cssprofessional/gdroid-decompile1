###### Class org.bouncycastle.pqc.legacy.math.ntru.polynomial.DenseTernaryPolynomial (org.bouncycastle.pqc.legacy.math.ntru.polynomial.DenseTernaryPolynomial)
.class public Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;
.super Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

# interfaces
.implements Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/TernaryPolynomial;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;->checkTernarity()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V
    .registers 2

    .line 0
    iget-object p1, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;-><init>([I)V

    return-void
.end method

.method public constructor <init>([I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;->checkTernarity()V

    return-void
.end method

.method private checkTernarity()V
    .registers 4

    .line 0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v2, v1

    if-eq v0, v2, :cond_2d

    aget v1, v1, v0

    const/4 v2, -0x1

    if-lt v1, v2, :cond_11

    const/4 v2, 0x1

    if-gt v1, v2, :cond_11

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", must be one of {-1, 0, 1}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2d
    return-void
.end method

.method public static generateRandom(IIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->generateRandomTernary(IIILjava/security/SecureRandom;)[I

    move-result-object p0

    new-instance p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;

    invoke-direct {p1, p0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;-><init>([I)V

    return-object p1
.end method

.method public static generateRandom(ILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;
    .registers 6

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;-><init>(I)V

    const/4 v1, 0x0

    :goto_6
    if-ge v1, p0, :cond_16

    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_16
    return-object v0
.end method


# virtual methods
.method public getNegOnes()[I
    .registers 7

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v2, v0, :cond_18

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v4, v4, v2

    const/4 v5, -0x1

    if-ne v4, v5, :cond_15

    add-int/lit8 v4, v3, 0x1

    aput v2, v1, v3

    move v3, v4

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_18
    invoke-static {v1, v3}, Lorg/bouncycastle/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method

.method public getOnes()[I
    .registers 7

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v2, v0, :cond_18

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v4, v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_15

    add-int/lit8 v4, v3, 0x1

    aput v2, v1, v3

    move v3, v4

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_18
    invoke-static {v1, v3}, Lorg/bouncycastle/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method

.method public mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .registers 4

    .line 0
    const/16 v0, 0x800

    if-ne p2, v0, :cond_1b

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    new-instance p2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;

    invoke-direct {p2, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual {p2, p0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/TernaryPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->toIntegerPolynomial()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p0

    return-object p0

    :cond_1b
    invoke-super {p0, p1, p2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length p0, p0

    return p0
.end method
