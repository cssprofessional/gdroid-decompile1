###### Class org.bouncycastle.pqc.legacy.math.linearalgebra.GF2nPolynomialElement (org.bouncycastle.pqc.legacy.math.linearalgebra.GF2nPolynomialElement)
.class public Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
.super Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;


# static fields
.field private static final bitMask:[I


# instance fields
.field private polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->bitMask:[I

    return-void

    :array_a
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x8000
        0x10000
        0x20000
        0x40000
        0x80000
        0x100000
        0x200000
        0x400000
        0x800000
        0x1000000
        0x2000000
        0x4000000
        0x8000000
        0x10000000
        0x20000000
        0x40000000    # 2.0f
        -0x80000000
        0x0
    .end array-data
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;-><init>()V

    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    iget v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget-object p1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;Ljava/util/Random;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getDegree()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    new-instance p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    invoke-direct {p1, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->randomize(Ljava/util/Random;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getDegree()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    new-instance p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-direct {p1, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    invoke-virtual {p1, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->expandN(I)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;[B)V
    .registers 4

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getDegree()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    new-instance p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    invoke-direct {p1, v0, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I[B)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    invoke-virtual {p1, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->expandN(I)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;[I)V
    .registers 5

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    invoke-direct {v0, v1, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I[I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget p0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    invoke-virtual {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->expandN(I)V

    return-void
.end method

.method public static ONE(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    .registers 4

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getDegree()I

    move-result v1

    const/4 v2, 0x1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I[I)V

    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    return-object v1
.end method

.method public static ZERO(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    .registers 3

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getDegree()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I)V

    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    return-object v1
.end method

.method private getGF2Polynomial()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .registers 2

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    return-object v0
.end method

.method private halfTrace()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1f

    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;)V

    move v2, v1

    :goto_c
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    sub-int/2addr v3, v1

    shr-int/2addr v3, v1

    if-gt v2, v3, :cond_1e

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1e
    return-object v0

    :cond_1f
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method private randomize(Ljava/util/Random;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->expandN(I)V

    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->randomize(Ljava/util/Random;)V

    return-void
.end method

.method private reducePentanomialBitwise([I)V
    .registers 7

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    const/4 v1, 0x2

    aget v1, p1, v1

    sub-int v1, v0, v1

    const/4 v2, 0x1

    aget v3, p1, v2

    sub-int v3, v0, v3

    const/4 v4, 0x0

    aget p1, p1, v4

    sub-int/2addr v0, p1

    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_17
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    if-lt p1, v2, :cond_49

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v2, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v2, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    sub-int v4, p1, v1

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    sub-int v4, p1, v3

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    sub-int v4, p1, v0

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    sub-int v4, p1, v4

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    :cond_46
    add-int/lit8 p1, p1, -0x1

    goto :goto_17

    :cond_49
    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    invoke-virtual {p1, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->expandN(I)V

    return-void
.end method

.method private reduceThis()V
    .registers 5

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    if-le v0, v1, :cond_8f

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->isTrinomial()Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_42

    :try_start_16
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->getTc()I

    move-result v0
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_1e} :catch_3a

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    sub-int/2addr v2, v0

    if-le v2, v1, :cond_36

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    shl-int/lit8 v3, v2, 0x1

    if-le v1, v3, :cond_30

    goto :goto_36

    :cond_30
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p0, v2, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceTrinomial(II)V

    return-void

    :cond_36
    :goto_36
    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->reduceTrinomialBitwise(I)V

    return-void

    :catch_3a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "GF2nPolynomialElement.reduce: the field polynomial is not a trinomial"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_42
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->isPentanomial()Z

    move-result v0

    if-eqz v0, :cond_7b

    :try_start_4c
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->getPc()[I

    move-result-object v0
    :try_end_54
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_54} :catch_73

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    const/4 v3, 0x2

    aget v3, v0, v3

    sub-int/2addr v2, v3

    if-le v2, v1, :cond_6f

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    shl-int/lit8 v3, v2, 0x1

    if-le v1, v3, :cond_69

    goto :goto_6f

    :cond_69
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p0, v2, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reducePentanomial(I[I)V

    return-void

    :cond_6f
    :goto_6f
    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->reducePentanomialBitwise([I)V

    return-void

    :catch_73
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "GF2nPolynomialElement.reduce: the field polynomial is not a pentanomial"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7b
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getFieldPolynomial()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->remainder(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    invoke-virtual {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->expandN(I)V

    return-void

    :cond_8f
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    if-ge v0, v1, :cond_9e

    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->expandN(I)V

    :cond_9e
    return-void
.end method

.method private reduceTrinomialBitwise(I)V
    .registers 5

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    sub-int/2addr v0, p1

    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_b
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    if-lt p1, v1, :cond_2f

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    sub-int v2, p1, v0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    :cond_2c
    add-int/lit8 p1, p1, -0x1

    goto :goto_b

    :cond_2f
    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    invoke-virtual {p1, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->expandN(I)V

    return-void
.end method


# virtual methods
.method public add(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V

    return-object v0
.end method

.method public addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 0
    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget-object p1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    return-void

    :cond_18
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1e
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public assignOne()V
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->assignOne()V

    return-void
.end method

.method public assignZero()V
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->assignZero()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x0

    if-eqz p1, :cond_2a

    instance-of v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    if-nez v1, :cond_8

    goto :goto_2a

    :cond_8
    check-cast p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    iget-object v2, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    if-eq v1, v2, :cond_21

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getFieldPolynomial()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v1

    iget-object v2, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getFieldPolynomial()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v0

    :cond_21
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget-object p1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2a
    :goto_2a
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->hashCode()I

    move-result v0

    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public increase()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .registers 2

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->increaseThis()V

    return-object v0
.end method

.method public increaseThis()V
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->increaseThis()V

    return-void
.end method

.method public invert()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->invertMAIA()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    move-result-object p0

    return-object p0
.end method

.method public invertEEA()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_62

    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    add-int/lit8 v1, v1, 0x20

    const-string v2, "ONE"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    add-int/lit8 v2, v2, 0x20

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I)V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->getGF2Polynomial()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getFieldPolynomial()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v3

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    :goto_2d
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->isOne()Z

    move-result v4

    if-nez v4, :cond_55

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v4

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v5

    sub-int/2addr v4, v5

    if-gez v4, :cond_4e

    neg-int v4, v4

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    :cond_4e
    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->shiftLeftAddThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;I)V

    invoke-virtual {v0, v1, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->shiftLeftAddThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;I)V

    goto :goto_2d

    :cond_55
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    return-object v1

    :cond_62
    new-instance p0, Ljava/lang/ArithmeticException;

    invoke-direct {p0}, Ljava/lang/ArithmeticException;-><init>()V

    throw p0
.end method

.method public invertMAIA()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_6b

    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    const-string v2, "ONE"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I)V

    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->getGF2Polynomial()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getFieldPolynomial()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v3

    :goto_20
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v5

    if-nez v5, :cond_3e

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->shiftRightThis()V

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v4

    if-nez v4, :cond_34

    :goto_30
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->shiftRightThis()V

    goto :goto_20

    :cond_34
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getFieldPolynomial()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    goto :goto_30

    :cond_3e
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->isOne()Z

    move-result v4

    if-eqz v4, :cond_4e

    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    return-object v1

    :cond_4e
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v4

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_64

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    :cond_64
    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    goto :goto_20

    :cond_6b
    new-instance p0, Ljava/lang/ArithmeticException;

    invoke-direct {p0}, Ljava/lang/ArithmeticException;-><init>()V

    throw p0
.end method

.method public invertSquare()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_53

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v2, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;)V

    iget-object v3, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    shl-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x20

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->expandN(I)V

    iget-object v3, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->floorLog(I)I

    move-result v3

    sub-int/2addr v3, v1

    move v4, v1

    :goto_28
    if-ltz v3, :cond_4f

    new-instance v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v5, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;)V

    move v6, v1

    :goto_30
    if-gt v6, v4, :cond_38

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->squareThisPreCalc()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    :cond_38
    invoke-virtual {v2, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->multiplyThisBy(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V

    shl-int/lit8 v4, v4, 0x1

    sget-object v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->bitMask:[I

    aget v5, v5, v3

    and-int/2addr v5, v0

    if-eqz v5, :cond_4c

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->squareThisPreCalc()V

    invoke-virtual {v2, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->multiplyThisBy(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V

    add-int/lit8 v4, v4, 0x1

    :cond_4c
    add-int/lit8 v3, v3, -0x1

    goto :goto_28

    :cond_4f
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->squareThisPreCalc()V

    return-object v2

    :cond_53
    new-instance p0, Ljava/lang/ArithmeticException;

    invoke-direct {p0}, Ljava/lang/ArithmeticException;-><init>()V

    throw p0
.end method

.method public isOne()Z
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->isOne()Z

    move-result p0

    return p0
.end method

.method public isZero()Z
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result p0

    return p0
.end method

.method public multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->multiplyThisBy(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V

    return-object v0
.end method

.method public multiplyThisBy(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 0
    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    iget-object v2, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    return-void

    :cond_1b
    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget-object v0, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->reduceThis()V

    return-void

    :cond_29
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2f
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public power(I)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    .registers 7

    .line 0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    new-instance p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {p1, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;)V

    return-object p1

    :cond_9
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    invoke-static {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->ONE(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v1

    if-nez p1, :cond_14

    return-object v1

    :cond_14
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v2, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;)V

    iget-object v3, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    shl-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x20

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->expandN(I)V

    iget-object v3, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    const/4 v3, 0x0

    :goto_29
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    if-ge v3, v4, :cond_3b

    shl-int v4, v0, v3

    and-int/2addr v4, p1

    if-eqz v4, :cond_35

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->multiplyThisBy(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V

    :cond_35
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->square()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_3b
    return-object v1
.end method

.method public solveQuadraticEquation()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    invoke-static {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->ZERO(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    move-result-object p0

    return-object p0

    :cond_f
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1a

    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->halfTrace()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    move-result-object p0

    return-object p0

    :cond_1a
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;Ljava/util/Random;)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    invoke-static {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->ZERO(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    move v4, v1

    :goto_37
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    if-ge v4, v5, :cond_4e

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    invoke-virtual {v3, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V

    invoke-virtual {v3, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    :cond_4e
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->square()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;->add(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_63

    return-object v2

    :cond_63
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public square()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->squarePreCalc()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    move-result-object p0

    return-object p0
.end method

.method public squareBitwise()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    .registers 2

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->squareThisBitwise()V

    invoke-direct {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->reduceThis()V

    return-object v0
.end method

.method public squareMatrix()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    .registers 2

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->squareThisMatrix()V

    invoke-direct {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->reduceThis()V

    return-object v0
.end method

.method public squarePreCalc()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    .registers 2

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->squareThisPreCalc()V

    invoke-direct {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->reduceThis()V

    return-object v0
.end method

.method public squareRoot()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .registers 2

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->squareRootThis()V

    return-object v0
.end method

.method public squareRootThis()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x20

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->expandN(I)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    const/4 v0, 0x0

    :goto_11
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getDegree()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_21

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_21
    return-void
.end method

.method public squareThis()V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->squareThisPreCalc()V

    return-void
.end method

.method public squareThisBitwise()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->squareThisBitwise()V

    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->reduceThis()V

    return-void
.end method

.method public squareThisMatrix()V
    .registers 6

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I)V

    const/4 v1, 0x0

    :goto_8
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    if-ge v1, v2, :cond_25

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    iget-object v4, v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->squaringMatrix:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v4, v2

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->vectorMult(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->setBit(I)V

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_25
    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    return-void
.end method

.method public squareThisPreCalc()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->squareThisPreCalc()V

    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->reduceThis()V

    return-void
.end method

.method public testBit(I)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result p0

    return p0
.end method

.method public testRightmostBit()Z
    .registers 2

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result p0

    return p0
.end method

.method public toByteArray()[B
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public toFlexiBigInt()Ljava/math/BigInteger;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->toFlexiBigInt()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(I)Ljava/lang/String;
    .registers 2

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public trace()I
    .registers 5

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;)V

    const/4 v1, 0x1

    move v2, v1

    :goto_7
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    if-ge v2, v3, :cond_14

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_14
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->isOne()Z

    move-result p0

    if-eqz p0, :cond_1b

    return v1

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method
