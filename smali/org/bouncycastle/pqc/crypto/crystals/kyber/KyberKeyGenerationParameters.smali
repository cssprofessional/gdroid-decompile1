###### Class org.bouncycastle.pqc.crypto.crystals.kyber.KyberKeyGenerationParameters (org.bouncycastle.pqc.crypto.crystals.kyber.KyberKeyGenerationParameters)
.class public Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;


# instance fields
.field private final params:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;)V
    .registers 4

    .line 0
    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyGenerationParameters;->params:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyGenerationParameters;->params:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    return-object p0
.end method
