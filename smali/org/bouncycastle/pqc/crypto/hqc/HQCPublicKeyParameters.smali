###### Class org.bouncycastle.pqc.crypto.hqc.HQCPublicKeyParameters (org.bouncycastle.pqc.crypto.hqc.HQCPublicKeyParameters)
.class public Lorg/bouncycastle/pqc/crypto/hqc/HQCPublicKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;


# instance fields
.field private pk:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;[B)V
    .registers 4

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/hqc/HQCParameters;)V

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCPublicKeyParameters;->pk:[B

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .registers 1

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCPublicKeyParameters;->getPublicKey()[B

    move-result-object p0

    return-object p0
.end method

.method public getPublicKey()[B
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCPublicKeyParameters;->pk:[B

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method
