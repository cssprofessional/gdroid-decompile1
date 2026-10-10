###### Class org.bouncycastle.pqc.math.ntru.parameters.NTRUHRSSParameterSet (org.bouncycastle.pqc.math.ntru.parameters.NTRUHRSSParameterSet)
.class public abstract Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSSParameterSet;
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
    .registers 3

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v0

    const/16 v1, 0x55d

    if-ne v0, v1, :cond_e

    new-instance v0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSSParameterSet;)V

    goto :goto_13

    :cond_e
    new-instance v0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSSParameterSet;)V

    :goto_13
    return-object v0
.end method

.method public sampleFgBytes()I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sampleIidBytes()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public sampleRmBytes()I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sampleIidBytes()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    return p0
.end method
