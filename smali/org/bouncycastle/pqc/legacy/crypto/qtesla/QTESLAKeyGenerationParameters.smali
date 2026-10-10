###### Class org.bouncycastle.pqc.legacy.crypto.qtesla.QTESLAKeyGenerationParameters (org.bouncycastle.pqc.legacy.crypto.qtesla.QTESLAKeyGenerationParameters)
.class public Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAKeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;


# instance fields
.field private final securityCategory:I


# direct methods
.method public constructor <init>(ILjava/security/SecureRandom;)V
    .registers 4

    .line 0
    const/4 v0, -0x1

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-static {p1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASecurityCategory;->getPrivateSize(I)I

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAKeyGenerationParameters;->securityCategory:I

    return-void
.end method


# virtual methods
.method public getSecurityCategory()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAKeyGenerationParameters;->securityCategory:I

    return p0
.end method
