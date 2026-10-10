###### Class org.bouncycastle.pqc.math.ntru.parameters.NTRUParameterSet (org.bouncycastle.pqc.math.ntru.parameters.NTRUParameterSet)
.class public abstract Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;
.super Ljava/lang/Object;


# instance fields
.field private final logQ:I

.field private final n:I

.field private final prfKeyBytes:I

.field private final seedBytes:I

.field private final sharedKeyBytes:I


# direct methods
.method public constructor <init>(IIIII)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n:I

    iput p2, p0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->logQ:I

    iput p3, p0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->seedBytes:I

    iput p4, p0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->prfKeyBytes:I

    iput p5, p0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sharedKeyBytes:I

    return-void
.end method


# virtual methods
.method public abstract createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;
.end method

.method public logQ()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->logQ:I

    return p0
.end method

.method public n()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n:I

    return p0
.end method

.method public ntruCiphertextBytes()I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->owcpaBytes()I

    move-result p0

    return p0
.end method

.method public ntruPublicKeyBytes()I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->owcpaPublicKeyBytes()I

    move-result p0

    return p0
.end method

.method public ntruSecretKeyBytes()I
    .registers 2

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->owcpaSecretKeyBytes()I

    move-result v0

    iget p0, p0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->prfKeyBytes:I

    add-int/2addr v0, p0

    return v0
.end method

.method public owcpaBytes()I
    .registers 2

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->logQ:I

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result p0

    mul-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public owcpaMsgBytes()I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packTrinaryBytes()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public owcpaPublicKeyBytes()I
    .registers 2

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->logQ:I

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result p0

    mul-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public owcpaSecretKeyBytes()I
    .registers 2

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packTrinaryBytes()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->owcpaPublicKeyBytes()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public packDegree()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public packTrinaryBytes()I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    div-int/lit8 p0, p0, 0x5

    return p0
.end method

.method public prfKeyBytes()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->prfKeyBytes:I

    return p0
.end method

.method public q()I
    .registers 2

    .line 0
    const/4 v0, 0x1

    iget p0, p0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->logQ:I

    shl-int p0, v0, p0

    return p0
.end method

.method public abstract sampleFgBytes()I
.end method

.method public sampleFixedTypeBytes()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n:I

    add-int/lit8 p0, p0, -0x1

    mul-int/lit8 p0, p0, 0x1e

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public sampleIidBytes()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public abstract sampleRmBytes()I
.end method

.method public seedBytes()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->seedBytes:I

    return p0
.end method

.method public sharedKeyBytes()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sharedKeyBytes:I

    return p0
.end method
