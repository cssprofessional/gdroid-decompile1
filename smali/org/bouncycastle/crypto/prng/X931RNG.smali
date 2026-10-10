###### Class org.bouncycastle.crypto.prng.X931RNG (org.bouncycastle.crypto.prng.X931RNG)
.class public Lorg/bouncycastle/crypto/prng/X931RNG;
.super Ljava/lang/Object;


# static fields
.field private static final BLOCK128_MAX_BITS_REQUEST:I = 0x40000

.field private static final BLOCK128_RESEED_MAX:J = 0x800000L

.field private static final BLOCK64_MAX_BITS_REQUEST:I = 0x1000

.field private static final BLOCK64_RESEED_MAX:J = 0x8000L


# instance fields
.field private final DT:[B

.field private final I:[B

.field private final R:[B

.field private V:[B

.field private final engine:Lorg/bouncycastle/crypto/BlockCipher;

.field private final entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

.field private reseedCounter:J


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;[BLorg/bouncycastle/crypto/prng/EntropySource;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->reseedCounter:J

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    iput-object p3, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p3

    new-array p3, p3, [B

    iput-object p3, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->DT:[B

    const/4 v0, 0x0

    array-length v1, p3

    invoke-static {p2, v0, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->I:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->R:[B

    return-void
.end method

.method private increment([B)V
    .registers 3

    .line 0
    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    :goto_3
    if-ltz p0, :cond_12

    aget-byte v0, p1, p0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    if-eqz v0, :cond_f

    goto :goto_12

    :cond_f
    add-int/lit8 p0, p0, -0x1

    goto :goto_3

    :cond_12
    :goto_12
    return-void
.end method

.method private static isTooLarge([BI)Z
    .registers 2

    .line 0
    if-eqz p0, :cond_7

    array-length p0, p0

    if-le p0, p1, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method private process([B[B[B)V
    .registers 8

    .line 0
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p1

    if-eq v1, v2, :cond_10

    aget-byte v2, p2, v1

    aget-byte v3, p3, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    iget-object p0, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {p0, p1, v0, p1, v0}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    return-void
.end method


# virtual methods
.method public generate([BZ)I
    .registers 10

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->R:[B

    array-length v0, v0

    const/4 v1, -0x1

    const/16 v2, 0x8

    iget-wide v3, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->reseedCounter:J

    if-ne v0, v2, :cond_23

    const-wide/32 v5, 0x8000

    cmp-long v0, v3, v5

    if-lez v0, :cond_12

    return v1

    :cond_12
    const/16 v0, 0x200

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/prng/X931RNG;->isTooLarge([BI)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_34

    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of bits per request limited to 4096"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    const-wide/32 v5, 0x800000

    cmp-long v0, v3, v5

    if-lez v0, :cond_2b

    return v1

    :cond_2b
    const v0, 0x8000

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/prng/X931RNG;->isTooLarge([BI)Z

    move-result v0

    if-nez v0, :cond_c0

    :goto_34
    if-nez p2, :cond_3a

    iget-object p2, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->V:[B

    if-nez p2, :cond_4b

    :cond_3a
    iget-object p2, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->V:[B

    array-length p2, p2

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    if-ne p2, v0, :cond_b8

    :cond_4b
    array-length p2, p1

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->R:[B

    array-length v0, v0

    div-int/2addr p2, v0

    const/4 v0, 0x0

    move v1, v0

    :goto_52
    if-ge v1, p2, :cond_7f

    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->DT:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->I:[B

    invoke-interface {v3, v4, v0, v5, v0}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->R:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->I:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->V:[B

    invoke-direct {p0, v3, v4, v5}, Lorg/bouncycastle/crypto/prng/X931RNG;->process([B[B[B)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->V:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->R:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->I:[B

    invoke-direct {p0, v3, v4, v5}, Lorg/bouncycastle/crypto/prng/X931RNG;->process([B[B[B)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->R:[B

    array-length v4, v3

    mul-int/2addr v4, v1

    array-length v5, v3

    invoke-static {v3, v0, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->DT:[B

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/prng/X931RNG;->increment([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    :cond_7f
    array-length v1, p1

    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->R:[B

    array-length v3, v3

    mul-int/2addr v3, p2

    sub-int/2addr v1, v3

    if-lez v1, :cond_ae

    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->DT:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->I:[B

    invoke-interface {v3, v4, v0, v5, v0}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->R:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->I:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->V:[B

    invoke-direct {p0, v3, v4, v5}, Lorg/bouncycastle/crypto/prng/X931RNG;->process([B[B[B)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->V:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->R:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->I:[B

    invoke-direct {p0, v3, v4, v5}, Lorg/bouncycastle/crypto/prng/X931RNG;->process([B[B[B)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->R:[B

    array-length v4, v3

    mul-int/2addr p2, v4

    invoke-static {v3, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->DT:[B

    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/prng/X931RNG;->increment([B)V

    :cond_ae
    iget-wide v0, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->reseedCounter:J

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    iput-wide v0, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->reseedCounter:J

    array-length p0, p1

    mul-int/2addr p0, v2

    return p0

    :cond_b8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Insufficient entropy returned"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of bits per request limited to 262144"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getEntropySource()Lorg/bouncycastle/crypto/prng/EntropySource;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

    return-object p0
.end method

.method public reseed()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->V:[B

    array-length v0, v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    if-ne v0, v1, :cond_16

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/bouncycastle/crypto/prng/X931RNG;->reseedCounter:J

    return-void

    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Insufficient entropy returned"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
