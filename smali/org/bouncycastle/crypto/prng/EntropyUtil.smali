###### Class org.bouncycastle.crypto.prng.EntropyUtil (org.bouncycastle.crypto.prng.EntropyUtil)
.class public Lorg/bouncycastle/crypto/prng/EntropyUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateSeed(Lorg/bouncycastle/crypto/prng/EntropySource;I)[B
    .registers 9

    .line 0
    new-array v0, p1, [B

    mul-int/lit8 v1, p1, 0x8

    invoke-interface {p0}, Lorg/bouncycastle/crypto/prng/EntropySource;->entropySize()I

    move-result v2

    const/4 v3, 0x0

    if-gt v1, v2, :cond_13

    invoke-interface {p0}, Lorg/bouncycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object p0

    invoke-static {p0, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2f

    :cond_13
    invoke-interface {p0}, Lorg/bouncycastle/crypto/prng/EntropySource;->entropySize()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    move v2, v3

    :goto_1a
    if-ge v2, p1, :cond_2f

    invoke-interface {p0}, Lorg/bouncycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v4

    array-length v5, v4

    sub-int v6, p1, v2

    if-gt v5, v6, :cond_2a

    array-length v5, v4

    invoke-static {v4, v3, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2d

    :cond_2a
    invoke-static {v4, v3, v0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2d
    add-int/2addr v2, v1

    goto :goto_1a

    :cond_2f
    :goto_2f
    return-object v0
.end method
