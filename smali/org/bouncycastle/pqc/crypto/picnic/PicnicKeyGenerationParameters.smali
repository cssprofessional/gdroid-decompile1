###### Class org.bouncycastle.pqc.crypto.picnic.PicnicKeyGenerationParameters (org.bouncycastle.pqc.crypto.picnic.PicnicKeyGenerationParameters)
.class public Lorg/bouncycastle/pqc/crypto/picnic/PicnicKeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;


# instance fields
.field private final parameters:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;)V
    .registers 4

    .line 0
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicKeyGenerationParameters;->parameters:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicKeyGenerationParameters;->parameters:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    return-object p0
.end method
