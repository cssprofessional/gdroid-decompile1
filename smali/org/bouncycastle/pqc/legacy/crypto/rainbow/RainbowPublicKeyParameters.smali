###### Class org.bouncycastle.pqc.legacy.crypto.rainbow.RainbowPublicKeyParameters (org.bouncycastle.pqc.legacy.crypto.rainbow.RainbowPublicKeyParameters)
.class public Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPublicKeyParameters;
.super Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyParameters;


# instance fields
.field private coeffquadratic:[[S

.field private coeffscalar:[S

.field private coeffsingular:[[S


# direct methods
.method public constructor <init>(I[[S[[S[S)V
    .registers 6

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyParameters;-><init>(ZI)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPublicKeyParameters;->coeffquadratic:[[S

    iput-object p3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPublicKeyParameters;->coeffsingular:[[S

    iput-object p4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPublicKeyParameters;->coeffscalar:[S

    return-void
.end method


# virtual methods
.method public getCoeffQuadratic()[[S
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPublicKeyParameters;->coeffquadratic:[[S

    return-object p0
.end method

.method public getCoeffScalar()[S
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPublicKeyParameters;->coeffscalar:[S

    return-object p0
.end method

.method public getCoeffSingular()[[S
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPublicKeyParameters;->coeffsingular:[[S

    return-object p0
.end method
