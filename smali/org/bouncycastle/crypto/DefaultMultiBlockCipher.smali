###### Class org.bouncycastle.crypto.DefaultMultiBlockCipher (org.bouncycastle.crypto.DefaultMultiBlockCipher)
.class public abstract Lorg/bouncycastle/crypto/DefaultMultiBlockCipher;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/MultiBlockCipher;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMultiBlockSize()I
    .registers 1

    .line 0
    invoke-interface {p0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p0

    return p0
.end method

.method public processBlocks([BII[BI)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/DefaultMultiBlockCipher;->getMultiBlockSize()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-eq v1, p3, :cond_13

    add-int v3, p5, v2

    invoke-interface {p0, p1, p2, p4, v3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr p2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_13
    return v2
.end method
