###### Class org.bouncycastle.crypto.params.X25519KeyGenerationParameters (org.bouncycastle.crypto.params.X25519KeyGenerationParameters)
.class public Lorg/bouncycastle/crypto/params/X25519KeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .registers 3

    .line 0
    const/16 v0, 0xff

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    return-void
.end method
