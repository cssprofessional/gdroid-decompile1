###### Class org.bouncycastle.crypto.engines.RC6Engine (org.bouncycastle.crypto.engines.RC6Engine)
.class public Lorg/bouncycastle/crypto/engines/RC6Engine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final LGW:I = 0x5

.field private static final P32:I = -0x481eae9d

.field private static final Q32:I = -0x61c88647

.field private static final _noRounds:I = 0x14

.field private static final bytesPerWord:I = 0x4

.field private static final wordSize:I = 0x20


# instance fields
.field private _S:[I

.field private forEncryption:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    return-void
.end method

.method private bytesToWord([BI)I
    .registers 5

    .line 0
    const/4 p0, 0x0

    const/4 v0, 0x3

    :goto_2
    if-ltz v0, :cond_10

    shl-int/lit8 p0, p0, 0x8

    add-int v1, v0, p2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr p0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_10
    return p0
.end method

.method private decryptBlock([BI[BI)I
    .registers 14

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v0

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v1

    add-int/lit8 v2, p2, 0x8

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v2

    add-int/lit8 p2, p2, 0xc

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    const/16 v3, 0x2b

    aget v3, p2, v3

    sub-int/2addr v2, v3

    const/16 v3, 0x2a

    aget p2, p2, v3

    sub-int/2addr v0, p2

    const/16 p2, 0x14

    :goto_24
    const/4 v3, 0x1

    if-lt p2, v3, :cond_58

    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v3

    mul-int/2addr v4, v0

    const/4 v5, 0x5

    invoke-direct {p0, v4, v5}, Lorg/bouncycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v4

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v3

    mul-int/2addr v6, v2

    invoke-direct {p0, v6, v5}, Lorg/bouncycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v3

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    mul-int/lit8 v6, p2, 0x2

    add-int/lit8 v7, v6, 0x1

    aget v5, v5, v7

    sub-int/2addr v1, v5

    invoke-direct {p0, v1, v4}, Lorg/bouncycastle/crypto/engines/RC6Engine;->rotateRight(II)I

    move-result v1

    xor-int/2addr v1, v3

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    aget v5, v5, v6

    sub-int/2addr p1, v5

    invoke-direct {p0, p1, v3}, Lorg/bouncycastle/crypto/engines/RC6Engine;->rotateRight(II)I

    move-result p1

    xor-int/2addr p1, v4

    add-int/lit8 p2, p2, -0x1

    move v8, v0

    move v0, p1

    move p1, v2

    move v2, v1

    move v1, v8

    goto :goto_24

    :cond_58
    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    aget v3, p2, v3

    sub-int/2addr p1, v3

    const/4 v3, 0x0

    aget p2, p2, v3

    sub-int/2addr v1, p2

    invoke-direct {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    add-int/lit8 p2, p4, 0x4

    invoke-direct {p0, v1, p3, p2}, Lorg/bouncycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    add-int/lit8 p2, p4, 0x8

    invoke-direct {p0, v2, p3, p2}, Lorg/bouncycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    add-int/lit8 p4, p4, 0xc

    invoke-direct {p0, p1, p3, p4}, Lorg/bouncycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    const/16 p0, 0x10

    return p0
.end method

.method private encryptBlock([BI[BI)I
    .registers 14

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v0

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v1

    add-int/lit8 v2, p2, 0x8

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v2

    add-int/lit8 p2, p2, 0xc

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    const/4 v3, 0x0

    aget v3, p2, v3

    add-int/2addr v1, v3

    const/4 v3, 0x1

    aget p2, p2, v3

    add-int/2addr p1, p2

    move p2, v3

    :goto_21
    const/16 v4, 0x14

    if-gt p2, v4, :cond_55

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v3

    mul-int/2addr v4, v1

    const/4 v5, 0x5

    invoke-direct {p0, v4, v5}, Lorg/bouncycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v4

    mul-int/lit8 v6, p1, 0x2

    add-int/2addr v6, v3

    mul-int/2addr v6, p1

    invoke-direct {p0, v6, v5}, Lorg/bouncycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v5

    xor-int/2addr v0, v4

    invoke-direct {p0, v0, v5}, Lorg/bouncycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v0

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    mul-int/lit8 v7, p2, 0x2

    aget v6, v6, v7

    add-int/2addr v0, v6

    xor-int/2addr v2, v5

    invoke-direct {p0, v2, v4}, Lorg/bouncycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    add-int/2addr v7, v3

    aget v4, v4, v7

    add-int/2addr v2, v4

    add-int/lit8 p2, p2, 0x1

    move v8, v2

    move v2, p1

    move p1, v0

    move v0, v1

    move v1, v8

    goto :goto_21

    :cond_55
    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    const/16 v3, 0x2a

    aget v3, p2, v3

    add-int/2addr v0, v3

    const/16 v3, 0x2b

    aget p2, p2, v3

    add-int/2addr v2, p2

    invoke-direct {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    add-int/lit8 p2, p4, 0x4

    invoke-direct {p0, v1, p3, p2}, Lorg/bouncycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    add-int/lit8 p2, p4, 0x8

    invoke-direct {p0, v2, p3, p2}, Lorg/bouncycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    add-int/lit8 p4, p4, 0xc

    invoke-direct {p0, p1, p3, p4}, Lorg/bouncycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    const/16 p0, 0x10

    return p0
.end method

.method private rotateLeft(II)I
    .registers 3

    .line 0
    shl-int p0, p1, p2

    neg-int p2, p2

    ushr-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method private rotateRight(II)I
    .registers 3

    .line 0
    ushr-int p0, p1, p2

    neg-int p2, p2

    shl-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method private setKey([B)V
    .registers 13

    .line 0
    array-length v0, p1

    array-length v0, p1

    const/4 v1, 0x3

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    new-array v2, v0, [I

    array-length v3, p1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_b
    if-ltz v3, :cond_1d

    div-int/lit8 v5, v3, 0x4

    aget v6, v2, v5

    shl-int/lit8 v6, v6, 0x8

    aget-byte v7, p1, v3

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    aput v6, v2, v5

    add-int/lit8 v3, v3, -0x1

    goto :goto_b

    :cond_1d
    const/16 p1, 0x2c

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    const v3, -0x481eae9d

    const/4 v5, 0x0

    aput v3, p1, v5

    move p1, v4

    :goto_2a
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    array-length v6, v3

    if-ge p1, v6, :cond_3c

    add-int/lit8 v6, p1, -0x1

    aget v6, v3, v6

    const v7, -0x61c88647

    add-int/2addr v6, v7

    aput v6, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2a

    :cond_3c
    array-length p1, v3

    if-le v0, p1, :cond_42

    mul-int/lit8 p1, v0, 0x3

    goto :goto_44

    :cond_42
    array-length p1, v3

    mul-int/2addr p1, v1

    :goto_44
    move v3, v5

    move v6, v3

    move v7, v6

    move v8, v7

    :goto_48
    if-ge v5, p1, :cond_6b

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    aget v10, v9, v3

    add-int/2addr v10, v6

    add-int/2addr v10, v7

    invoke-direct {p0, v10, v1}, Lorg/bouncycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v6

    aput v6, v9, v3

    aget v9, v2, v8

    add-int/2addr v9, v6

    add-int/2addr v9, v7

    add-int/2addr v7, v6

    invoke-direct {p0, v9, v7}, Lorg/bouncycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v7

    aput v7, v2, v8

    add-int/2addr v3, v4

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    array-length v9, v9

    rem-int/2addr v3, v9

    add-int/2addr v8, v4

    rem-int/2addr v8, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_48

    :cond_6b
    return-void
.end method

.method private wordToBytes(I[BI)V
    .registers 6

    .line 0
    const/4 p0, 0x0

    :goto_1
    const/4 v0, 0x4

    if-ge p0, v0, :cond_e

    add-int v0, p0, p3

    int-to-byte v1, p1

    aput-byte v1, p2, v0

    ushr-int/lit8 p1, p1, 0x8

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 1

    .line 0
    const-string p0, "RC6"

    return-object p0
.end method

.method public getBlockSize()I
    .registers 1

    .line 0
    const/16 p0, 0x10

    return p0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 5

    .line 0
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_24

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->forEncryption:Z

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RC6Engine;->setKey([B)V

    new-instance v1, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/RC6Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object p1

    invoke-direct {v1, p0, v0, p2, p1}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void

    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid parameter passed to RC6 init - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public processBlock([BI[BI)I
    .registers 8

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/RC6Engine;->getBlockSize()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    if-eqz v1, :cond_2f

    add-int v1, p2, v0

    array-length v2, p1

    if-gt v1, v2, :cond_27

    add-int/2addr v0, p4

    array-length v1, p3

    if-gt v0, v1, :cond_1f

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->forEncryption:Z

    if-eqz v0, :cond_1a

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/RC6Engine;->encryptBlock([BI[BI)I

    move-result p0

    goto :goto_1e

    :cond_1a
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/RC6Engine;->decryptBlock([BI[BI)I

    move-result p0

    :goto_1e
    return p0

    :cond_1f
    new-instance p0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_27
    new-instance p0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "RC6 engine not initialised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reset()V
    .registers 1

    .line 0
    return-void
.end method
