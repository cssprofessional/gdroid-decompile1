###### Class org.bouncycastle.crypto.io.SignerInputStream (org.bouncycastle.crypto.io.SignerInputStream)
.class public Lorg/bouncycastle/crypto/io/SignerInputStream;
.super Ljava/io/FilterInputStream;


# instance fields
.field protected signer:Lorg/bouncycastle/crypto/Signer;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/Signer;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/io/SignerInputStream;->signer:Lorg/bouncycastle/crypto/Signer;

    return-void
.end method


# virtual methods
.method public getSigner()Lorg/bouncycastle/crypto/Signer;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/io/SignerInputStream;->signer:Lorg/bouncycastle/crypto/Signer;

    return-object p0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_e

    iget-object p0, p0, Lorg/bouncycastle/crypto/io/SignerInputStream;->signer:Lorg/bouncycastle/crypto/Signer;

    int-to-byte v1, v0

    invoke-interface {p0, v1}, Lorg/bouncycastle/crypto/Signer;->update(B)V

    :cond_e
    return v0
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-lez p3, :cond_d

    iget-object p0, p0, Lorg/bouncycastle/crypto/io/SignerInputStream;->signer:Lorg/bouncycastle/crypto/Signer;

    invoke-interface {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/Signer;->update([BII)V

    :cond_d
    return p3
.end method
