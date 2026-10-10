###### Class org.bouncycastle.crypto.engines.CamelliaWrapEngine (org.bouncycastle.crypto.engines.CamelliaWrapEngine)
.class public Lorg/bouncycastle/crypto/engines/CamelliaWrapEngine;
.super Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-void
.end method
