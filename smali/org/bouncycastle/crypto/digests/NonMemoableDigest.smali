###### Class org.bouncycastle.crypto.digests.NonMemoableDigest (org.bouncycastle.crypto.digests.NonMemoableDigest)
.class public Lorg/bouncycastle/crypto/digests/NonMemoableDigest;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;


# instance fields
.field private baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/ExtendedDigest;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/NonMemoableDigest;->baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;

    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "baseDigest must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 3

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/digests/NonMemoableDigest;->baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {p0, p1, p2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move-result p0

    return p0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/digests/NonMemoableDigest;->baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getByteLength()I
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/digests/NonMemoableDigest;->baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result p0

    return p0
.end method

.method public getDigestSize()I
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/digests/NonMemoableDigest;->baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p0

    return p0
.end method

.method public reset()V
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/digests/NonMemoableDigest;->baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    return-void
.end method

.method public update(B)V
    .registers 2

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/digests/NonMemoableDigest;->baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .registers 4

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/digests/NonMemoableDigest;->baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method
