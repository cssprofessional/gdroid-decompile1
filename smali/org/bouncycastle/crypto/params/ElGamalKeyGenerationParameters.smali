###### Class org.bouncycastle.crypto.params.ElGamalKeyGenerationParameters (org.bouncycastle.crypto.params.ElGamalKeyGenerationParameters)
.class public Lorg/bouncycastle/crypto/params/ElGamalKeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;


# instance fields
.field private params:Lorg/bouncycastle/crypto/params/ElGamalParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/params/ElGamalParameters;)V
    .registers 4

    .line 0
    invoke-static {p2}, Lorg/bouncycastle/crypto/params/ElGamalKeyGenerationParameters;->getStrength(Lorg/bouncycastle/crypto/params/ElGamalParameters;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/params/ElGamalKeyGenerationParameters;->params:Lorg/bouncycastle/crypto/params/ElGamalParameters;

    return-void
.end method

.method public static getStrength(Lorg/bouncycastle/crypto/params/ElGamalParameters;)I
    .registers 2

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/ElGamalParameters;->getL()I

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/ElGamalParameters;->getL()I

    move-result p0

    goto :goto_13

    :cond_b
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/ElGamalParameters;->getP()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    :goto_13
    return p0
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/crypto/params/ElGamalParameters;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/params/ElGamalKeyGenerationParameters;->params:Lorg/bouncycastle/crypto/params/ElGamalParameters;

    return-object p0
.end method
