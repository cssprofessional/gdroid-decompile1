###### Class org.bouncycastle.pqc.legacy.math.linearalgebra.GF2nPolynomial (org.bouncycastle.pqc.legacy.math.linearalgebra.GF2nPolynomial)
.class public Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
.super Ljava/lang/Object;


# instance fields
.field private coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

.field private size:I


# direct methods
.method private constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    new-array p1, p1, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    new-array p1, p1, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    const/4 p1, 0x0

    :goto_a
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge p1, v0, :cond_1b

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_1b
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    new-array v0, v0, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    instance-of v0, p2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    :goto_14
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v1, v0, :cond_60

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    move-object v2, p2

    check-cast v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    invoke-static {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->ONE(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_35

    :cond_2a
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    move-object v2, p2

    check-cast v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    invoke-static {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->ZERO(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_38
    instance-of v0, p2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    if-eqz v0, :cond_61

    :goto_3c
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v1, v0, :cond_60

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    move-object v2, p2

    check-cast v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    invoke-static {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->ONE(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_5d

    :cond_52
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    move-object v2, p2

    check-cast v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    invoke-static {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->ZERO(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_60
    return-void

    :cond_61
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "PolynomialGF2n(Bitstring, GF2nField): B1 must be an instance of GF2nONBField or GF2nPolynomialField!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    new-array v1, v0, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    const/4 v0, 0x0

    :goto_c
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v0, v1, :cond_21

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    iget-object v2, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_21
    return-void
.end method


# virtual methods
.method public final add(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .registers 7

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_40

    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;-><init>(I)V

    :goto_14
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v1

    if-ge v2, v1, :cond_2f

    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v3, v3, v2

    iget-object v4, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;->add(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2f
    :goto_2f
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size()I

    move-result p1

    if-ge v2, p1, :cond_75

    iget-object p1, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v1, v1, v2

    aput-object v1, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_40
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;-><init>(I)V

    :goto_49
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v1

    if-ge v2, v1, :cond_64

    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v3, v3, v2

    iget-object v4, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;->add(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    :cond_64
    :goto_64
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size()I

    move-result p0

    if-ge v2, p0, :cond_75

    iget-object p0, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v1, v1, v2

    aput-object v1, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    :cond_75
    return-object v0
.end method

.method public final assignZeroToElements()V
    .registers 3

    .line 0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v0, v1, :cond_f

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->assignZero()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method

.method public final at(I)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .registers 2

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final divide(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .registers 10

    .line 0
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v1, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->shrink()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v2

    iget-object v3, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;->invert()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ge v4, v2, :cond_3b

    new-instance p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    invoke-direct {p1, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)V

    aput-object p1, v0, v6

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->assignZeroToElements()V

    aget-object p1, v0, v6

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->shrink()V

    new-instance p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    invoke-direct {p1, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)V

    aput-object p1, v0, v5

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->shrink()V

    return-object v0

    :cond_3b
    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v4, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)V

    aput-object v4, v0, v6

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->assignZeroToElements()V

    :goto_45
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result p0

    sub-int/2addr p0, v2

    if-ltz p0, :cond_75

    iget-object v4, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v7

    aget-object v4, v4, v7

    invoke-interface {v4, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;->multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    invoke-virtual {p1, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->scalarMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    move-result-object v7

    invoke-virtual {v7, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->shiftThisLeft(I)V

    invoke-virtual {v1, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->shrink()V

    aget-object v7, v0, v6

    iget-object v7, v7, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aput-object v4, v7, p0

    goto :goto_45

    :cond_75
    aput-object v1, v0, v5

    aget-object p0, v0, v6

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->shrink()V

    return-object v0
.end method

.method public final enlarge(I)V
    .registers 6

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    if-gt p1, v0, :cond_5

    return-void

    :cond_5
    new-array v1, p1, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->getField()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v2, v2, v3

    instance-of v3, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    if-eqz v3, :cond_2d

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    :goto_1f
    if-ge v2, p1, :cond_41

    move-object v3, v0

    check-cast v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    invoke-static {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->ZERO(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_2d
    instance-of v2, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    if-eqz v2, :cond_41

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    :goto_33
    if-ge v2, p1, :cond_41

    move-object v3, v0

    check-cast v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    invoke-static {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->ZERO(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_41
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x0

    if-eqz p1, :cond_2e

    instance-of v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    if-nez v1, :cond_8

    goto :goto_2e

    :cond_8
    check-cast p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v2

    if-eq v1, v2, :cond_15

    return v0

    :cond_15
    move v1, v0

    :goto_16
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v1, v2, :cond_2c

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    return v0

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_2c
    const/4 p0, 0x1

    return p0

    :cond_2e
    :goto_2e
    return v0
.end method

.method public final gcd(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .registers 4

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)V

    new-instance p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->shrink()V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->shrink()V

    :goto_10
    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->isZero()Z

    move-result p1

    if-nez p1, :cond_1e

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->remainder(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    move-result-object p0

    goto :goto_10

    :cond_1e
    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v0

    aget-object p1, p1, v0

    invoke-interface {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;->invert()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->scalarMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    move-result-object p0

    return-object p0
.end method

.method public final getDegree()I
    .registers 3

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_14

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;->isZero()Z

    move-result v1

    if-nez v1, :cond_11

    return v0

    :cond_11
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_14
    const/4 p0, -0x1

    return p0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isZero()Z
    .registers 4

    .line 0
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v1, v2, :cond_16

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v2, v2, v1

    if-eqz v2, :cond_13

    invoke-interface {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;->isZero()Z

    move-result v2

    if-nez v2, :cond_13

    return v0

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method public final multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .registers 11

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v1

    if-ne v0, v1, :cond_56

    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;-><init>(I)V

    const/4 v0, 0x0

    move v2, v0

    :goto_15
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v3

    if-ge v2, v3, :cond_55

    move v3, v0

    :goto_1c
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v4

    if-ge v3, v4, :cond_52

    iget-object v4, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    add-int v5, v2, v3

    aget-object v6, v4, v5

    if-nez v6, :cond_3b

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v6, v6, v2

    iget-object v7, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v7, v7, v3

    invoke-interface {v6, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;->multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aput-object v6, v4, v5

    goto :goto_4f

    :cond_3b
    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v7, v7, v2

    iget-object v8, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v8, v8, v3

    invoke-interface {v7, v8}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;->multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;->add(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aput-object v6, v4, v5

    :goto_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_55
    return-object v1

    :cond_56
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "PolynomialGF2n.multiply: this and b must have the same size!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final multiplyAndReduce(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .registers 3

    .line 0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->reduce(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    move-result-object p0

    return-object p0
.end method

.method public final quotient(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->divide(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final reduce(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->remainder(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    move-result-object p0

    return-object p0
.end method

.method public final remainder(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->divide(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    move-result-object p0

    const/4 p1, 0x1

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final scalarMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .registers 6

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;-><init>(I)V

    const/4 v1, 0x0

    :goto_a
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v3, v3, v1

    invoke-interface {v3, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;->multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_21
    return-object v0
.end method

.method public final set(ILorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;)V
    .registers 4

    .line 0
    instance-of v0, p2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    if-nez v0, :cond_11

    instance-of v0, p2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    if-eqz v0, :cond_9

    goto :goto_11

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "PolynomialGF2n.set f must be an instance of either GF2nPolynomialElement or GF2nONBElement!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_11
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aput-object p2, p0, p1

    return-void
.end method

.method public final shiftLeft(I)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .registers 7

    .line 0
    if-gtz p1, :cond_8

    new-instance p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    invoke-direct {p1, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)V

    return-object p1

    :cond_8
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;-><init>(ILorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->assignZeroToElements()V

    :goto_18
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v3, v1, :cond_29

    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    add-int v2, v3, p1

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v4, v4, v3

    aput-object v4, v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_29
    return-object v0
.end method

.method public final shiftThisLeft(I)V
    .registers 8

    .line 0
    if-lez p1, :cond_52

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->getField()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    move-result-object v1

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    add-int/2addr v3, p1

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->enlarge(I)V

    add-int/lit8 v0, v0, -0x1

    :goto_15
    if-ltz v0, :cond_22

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    add-int v4, v0, p1

    aget-object v5, v3, v0

    aput-object v5, v3, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    :cond_22
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v0, v0, v2

    instance-of v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    if-eqz v2, :cond_3c

    add-int/lit8 p1, p1, -0x1

    :goto_2c
    if-ltz p1, :cond_52

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    move-object v2, v1

    check-cast v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    invoke-static {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->ZERO(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v2

    aput-object v2, v0, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_2c

    :cond_3c
    instance-of v0, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    if-eqz v0, :cond_52

    add-int/lit8 p1, p1, -0x1

    :goto_42
    if-ltz p1, :cond_52

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    move-object v2, v1

    check-cast v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    invoke-static {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->ZERO(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    move-result-object v2

    aput-object v2, v0, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_42

    :cond_52
    return-void
.end method

.method public final shrink()V
    .registers 5

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_4
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_13

    if-lez v0, :cond_13

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_13
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v0, v1, :cond_25

    new-array v1, v0, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    :cond_25
    return-void
.end method

.method public final size()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    return p0
.end method
