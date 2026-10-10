###### Class org.bouncycastle.pqc.math.ntru.parameters.NTRUHPSParameterSet (org.bouncycastle.pqc.math.ntru.parameters.NTRUHPSParameterSet)
.class public abstract Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;
.super Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;


# direct methods
.method public constructor <init>(IIIII)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .registers 2

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;)V

    return-object v0
.end method

.method public sampleFgBytes()I
    .registers 2

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sampleIidBytes()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sampleFixedTypeBytes()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public sampleRmBytes()I
    .registers 2

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sampleIidBytes()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sampleFixedTypeBytes()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public weight()I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->q()I

    move-result p0

    div-int/lit8 p0, p0, 0x8

    add-int/lit8 p0, p0, -0x2

    return p0
.end method
