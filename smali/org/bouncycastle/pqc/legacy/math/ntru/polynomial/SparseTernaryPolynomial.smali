###### Class org.bouncycastle.pqc.legacy.math.ntru.polynomial.SparseTernaryPolynomial (org.bouncycastle.pqc.legacy.math.ntru.polynomial.SparseTernaryPolynomial)
.class public Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/TernaryPolynomial;


# static fields
.field private static final BITS_PER_INDEX:I = 0xb


# instance fields
.field private N:I

.field private negOnes:[I

.field private ones:[I


# direct methods
.method public constructor <init>(I[I[I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    iput-object p3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V
    .registers 2

    .line 0
    iget-object p1, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    return-void
.end method

.method public constructor <init>([I)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_11
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    if-ge v0, v3, :cond_4d

    aget v3, p1, v0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_43

    if-eqz v3, :cond_4a

    const/4 v4, 0x1

    if-ne v3, v4, :cond_27

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    add-int/lit8 v4, v1, 0x1

    aput v0, v3, v1

    move v1, v4

    goto :goto_4a

    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", must be one of {-1, 0, 1}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_43
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    add-int/lit8 v4, v2, 0x1

    aput v0, v3, v2

    move v2, v4

    :cond_4a
    :goto_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_4d
    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    return-void
.end method

.method public static fromBinary(Ljava/io/InputStream;III)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    const/16 v0, 0x7ff

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    mul-int v1, p2, v0

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    invoke-static {p0, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->readFullLength(Ljava/io/InputStream;I)[B

    move-result-object v1

    const/16 v2, 0x800

    invoke-static {v1, p2, v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->decodeModQ([BII)[I

    move-result-object p2

    mul-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->readFullLength(Ljava/io/InputStream;I)[B

    move-result-object p0

    invoke-static {p0, p3, v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->decodeModQ([BII)[I

    move-result-object p0

    new-instance p3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-direct {p3, p1, p2, p0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;-><init>(I[I[I)V

    return-object p3
.end method

.method public static generateRandom(IIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->generateRandomTernary(IIILjava/security/SecureRandom;)[I

    move-result-object p0

    new-instance p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-direct {p1, p0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    return-object p1
.end method


# virtual methods
.method public clear()V
    .registers 5

    .line 0
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    array-length v3, v2

    if-ge v1, v3, :cond_c

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    move v1, v0

    :goto_d
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    array-length v3, v2

    if-ge v1, v3, :cond_17

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_17
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    :cond_13
    check-cast p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    if-eq v2, v3, :cond_1c

    return v1

    :cond_1c
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    iget-object v3, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Arrays;->areEqual([I[I)Z

    move-result v2

    if-nez v2, :cond_27

    return v1

    :cond_27
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    iget-object p1, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    invoke-static {p0, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([I[I)Z

    move-result p0

    if-nez p0, :cond_32

    return v1

    :cond_32
    return v0
.end method

.method public getNegOnes()[I
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    return-object p0
.end method

.method public getOnes()[I
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->hashCode([I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;
    .registers 9

    .line 0
    iget-object p1, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->coeffs:[Ljava/math/BigInteger;

    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    if-ne v0, v1, :cond_6f

    new-array v0, v1, [Ljava/math/BigInteger;

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    if-ge v2, v3, :cond_16

    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_16
    move v2, v1

    :goto_17
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    array-length v4, v3

    if-eq v2, v4, :cond_40

    aget v3, v3, v2

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v5, v4, -0x1

    sub-int/2addr v5, v3

    add-int/lit8 v4, v4, -0x1

    :goto_25
    if-ltz v4, :cond_3d

    aget-object v3, v0, v4

    aget-object v6, p1, v5

    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v0, v4

    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_3a

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v3, v3, -0x1

    move v5, v3

    :cond_3a
    add-int/lit8 v4, v4, -0x1

    goto :goto_25

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_40
    :goto_40
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    array-length v3, v2

    if-eq v1, v3, :cond_69

    aget v2, v2, v1

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v4, v3, -0x1

    sub-int/2addr v4, v2

    add-int/lit8 v3, v3, -0x1

    :goto_4e
    if-ltz v3, :cond_66

    aget-object v2, v0, v3

    aget-object v5, p1, v4

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v0, v3

    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_63

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :cond_63
    add-int/lit8 v3, v3, -0x1

    goto :goto_4e

    :cond_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    :cond_69
    new-instance p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;-><init>([Ljava/math/BigInteger;)V

    return-object p0

    :cond_6f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of coefficients must be the same"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .registers 9

    .line 0
    iget-object p1, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    if-ne v0, v1, :cond_5d

    new-array v0, v1, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    array-length v4, v3

    if-eq v2, v4, :cond_31

    aget v3, v3, v2

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v5, v4, -0x1

    sub-int/2addr v5, v3

    add-int/lit8 v4, v4, -0x1

    :goto_19
    if-ltz v4, :cond_2e

    aget v3, v0, v4

    aget v6, p1, v5

    add-int/2addr v3, v6

    aput v3, v0, v4

    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_2b

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v3, v3, -0x1

    move v5, v3

    :cond_2b
    add-int/lit8 v4, v4, -0x1

    goto :goto_19

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_31
    :goto_31
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    array-length v3, v2

    if-eq v1, v3, :cond_57

    aget v2, v2, v1

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v4, v3, -0x1

    sub-int/2addr v4, v2

    add-int/lit8 v3, v3, -0x1

    :goto_3f
    if-ltz v3, :cond_54

    aget v2, v0, v3

    aget v5, p1, v4

    sub-int/2addr v2, v5

    aput v2, v0, v3

    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_51

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :cond_51
    add-int/lit8 v3, v3, -0x1

    goto :goto_3f

    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_57
    new-instance p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    return-object p0

    :cond_5d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of coefficients must be the same"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .registers 3

    .line 0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mod(I)V

    return-object p0
.end method

.method public size()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    return p0
.end method

.method public toBinary()[B
    .registers 5

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->encodeModQ([II)[B

    move-result-object v0

    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    invoke-static {p0, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->encodeModQ([II)[B

    move-result-object p0

    array-length v1, v0

    array-length v2, p0

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    array-length v0, v0

    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public toIntegerPolynomial()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .registers 6

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    array-length v4, v3

    if-eq v2, v4, :cond_13

    aget v3, v3, v2

    const/4 v4, 0x1

    aput v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_13
    :goto_13
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    array-length v3, v2

    if-eq v1, v3, :cond_20

    aget v2, v2, v1

    const/4 v3, -0x1

    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_20
    new-instance p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    return-object p0
.end method
