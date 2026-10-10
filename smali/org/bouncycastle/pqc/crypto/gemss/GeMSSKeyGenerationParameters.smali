###### Class org.bouncycastle.pqc.crypto.gemss.GeMSSKeyGenerationParameters (org.bouncycastle.pqc.crypto.gemss.GeMSSKeyGenerationParameters)
.class public Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;


# instance fields
.field final parameters:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;)V
    .registers 4

    .line 0
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyGenerationParameters;->parameters:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyGenerationParameters;->parameters:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    return-object p0
.end method
