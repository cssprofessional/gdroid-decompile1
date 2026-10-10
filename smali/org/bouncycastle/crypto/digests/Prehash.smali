###### Class org.bouncycastle.crypto.digests.Prehash (org.bouncycastle.crypto.digests.Prehash)
.class public Lorg/bouncycastle/crypto/digests/Prehash;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Digest;


# instance fields
.field private final algorithmName:Ljava/lang/String;

.field private final buf:Lorg/bouncycastle/util/io/LimitedBuffer;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Prehash;->algorithmName:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/util/io/LimitedBuffer;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/util/io/LimitedBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Prehash;->buf:Lorg/bouncycastle/util/io/LimitedBuffer;

    return-void
.end method

.method public static forDigest(Lorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/digests/Prehash;
    .registers 2

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/digests/Prehash;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/Prehash;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    return-object v0
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 5

    .line 0
    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Prehash;->getDigestSize()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Prehash;->buf:Lorg/bouncycastle/util/io/LimitedBuffer;

    invoke-virtual {v1}, Lorg/bouncycastle/util/io/LimitedBuffer;->size()I

    move-result v1

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Prehash;->buf:Lorg/bouncycastle/util/io/LimitedBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/util/io/LimitedBuffer;->copyTo([BI)I

    move-result p1
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_16

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Prehash;->reset()V

    return p1

    :catchall_16
    move-exception p1

    goto :goto_20

    :cond_18
    :try_start_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Incorrect prehash size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_16

    :goto_20
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Prehash;->reset()V

    throw p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/digests/Prehash;->algorithmName:Ljava/lang/String;

    return-object p0
.end method

.method public getDigestSize()I
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/digests/Prehash;->buf:Lorg/bouncycastle/util/io/LimitedBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/util/io/LimitedBuffer;->limit()I

    move-result p0

    return p0
.end method

.method public reset()V
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/digests/Prehash;->buf:Lorg/bouncycastle/util/io/LimitedBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/util/io/LimitedBuffer;->reset()V

    return-void
.end method

.method public update(B)V
    .registers 2

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/digests/Prehash;->buf:Lorg/bouncycastle/util/io/LimitedBuffer;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/util/io/LimitedBuffer;->write(I)V

    return-void
.end method

.method public update([BII)V
    .registers 4

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/digests/Prehash;->buf:Lorg/bouncycastle/util/io/LimitedBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/util/io/LimitedBuffer;->write([BII)V

    return-void
.end method
