###### Class org.bouncycastle.pqc.crypto.ntru.NTRUKeyGenerationParameters (org.bouncycastle.pqc.crypto.ntru.NTRUKeyGenerationParameters)
.class public Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;


# instance fields
.field private final ntruParameters:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;)V
    .registers 4

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyGenerationParameters;->ntruParameters:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyGenerationParameters;->ntruParameters:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    return-object p0
.end method
