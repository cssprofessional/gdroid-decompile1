###### Class org.bouncycastle.pqc.legacy.crypto.mceliece.McElieceParameters (org.bouncycastle.pqc.legacy.crypto.mceliece.McElieceParameters)
.class public Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# static fields
.field public static final DEFAULT_M:I = 0xb

.field public static final DEFAULT_T:I = 0x32


# instance fields
.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private fieldPoly:I

.field private m:I

.field private n:I

.field private t:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 0
    const/16 v0, 0xb

    const/16 v1, 0x32

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;-><init>(ILorg/bouncycastle/crypto/Digest;)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;-><init>(IILorg/bouncycastle/crypto/Digest;)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 5

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;-><init>(IIILorg/bouncycastle/crypto/Digest;)V

    return-void
.end method

.method public constructor <init>(IIILorg/bouncycastle/crypto/Digest;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->m:I

    const/4 v0, 0x1

    if-lt p1, v0, :cond_46

    const/16 v1, 0x20

    if-gt p1, v1, :cond_3e

    shl-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->n:I

    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->t:I

    if-ltz p2, :cond_36

    if-gt p2, v0, :cond_2e

    invoke-static {p3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result p2

    if-ne p2, p1, :cond_26

    invoke-static {p3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->isIrreducible(I)Z

    move-result p1

    if-eqz p1, :cond_26

    iput p3, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->fieldPoly:I

    iput-object p4, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->digest:Lorg/bouncycastle/crypto/Digest;

    return-void

    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "polynomial is not a field polynomial for GF(2^m)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "t must be less than n = 2^m"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "t must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, " m is too large"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_46
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "m must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(IILorg/bouncycastle/crypto/Digest;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_36

    const/16 v1, 0x20

    if-gt p1, v1, :cond_2e

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->m:I

    shl-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->n:I

    if-ltz p2, :cond_26

    if-gt p2, v0, :cond_1e

    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->t:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->getIrreduciblePolynomial(I)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->fieldPoly:I

    iput-object p3, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->digest:Lorg/bouncycastle/crypto/Digest;

    return-void

    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "t must be less than n = 2^m"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "t must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "m is too large"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "m must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(ILorg/bouncycastle/crypto/Digest;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2b

    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->m:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->n:I

    :goto_b
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->n:I

    if-ge v1, p1, :cond_19

    shl-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->n:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->m:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->m:I

    goto :goto_b

    :cond_19
    ushr-int/lit8 p1, v1, 0x1

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->t:I

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->m:I

    div-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->t:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->getIrreduciblePolynomial(I)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->fieldPoly:I

    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->digest:Lorg/bouncycastle/crypto/Digest;

    return-void

    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key size must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .registers 4

    .line 0
    const/16 v0, 0xb

    const/16 v1, 0x32

    invoke-direct {p0, v0, v1, p1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;-><init>(IILorg/bouncycastle/crypto/Digest;)V

    return-void
.end method


# virtual methods
.method public getFieldPoly()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->fieldPoly:I

    return p0
.end method

.method public getM()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->m:I

    return p0
.end method

.method public getN()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->n:I

    return p0
.end method

.method public getT()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->t:I

    return p0
.end method
