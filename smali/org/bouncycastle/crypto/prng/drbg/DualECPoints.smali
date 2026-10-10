###### Class org.bouncycastle.crypto.prng.drbg.DualECPoints (org.bouncycastle.crypto.prng.drbg.DualECPoints)
.class public Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;
.super Ljava/lang/Object;


# instance fields
.field private final cofactor:I

.field private final p:Lorg/bouncycastle/math/ec/ECPoint;

.field private final q:Lorg/bouncycastle/math/ec/ECPoint;

.field private final securityStrength:I


# direct methods
.method public constructor <init>(ILorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;I)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p3}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECCurve;->equals(Lorg/bouncycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iput p1, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;->securityStrength:I

    iput-object p2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;->p:Lorg/bouncycastle/math/ec/ECPoint;

    iput-object p3, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;->q:Lorg/bouncycastle/math/ec/ECPoint;

    iput p4, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;->cofactor:I

    return-void

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "points need to be on the same curve"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static log2(I)I
    .registers 2

    .line 0
    const/4 v0, 0x0

    :goto_1
    shr-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    return v0
.end method


# virtual methods
.method public getCofactor()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;->cofactor:I

    return p0
.end method

.method public getMaxOutlen()I
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;->p:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    iget p0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;->cofactor:I

    invoke-static {p0}, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;->log2(I)I

    move-result p0

    add-int/lit8 p0, p0, 0xd

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getP()Lorg/bouncycastle/math/ec/ECPoint;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;->p:Lorg/bouncycastle/math/ec/ECPoint;

    return-object p0
.end method

.method public getQ()Lorg/bouncycastle/math/ec/ECPoint;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;->q:Lorg/bouncycastle/math/ec/ECPoint;

    return-object p0
.end method

.method public getSecurityStrength()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;->securityStrength:I

    return p0
.end method

.method public getSeedLen()I
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;->p:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result p0

    return p0
.end method
