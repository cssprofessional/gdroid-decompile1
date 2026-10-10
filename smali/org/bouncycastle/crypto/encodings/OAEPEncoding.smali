###### Class org.bouncycastle.crypto.encodings.OAEPEncoding (org.bouncycastle.crypto.encodings.OAEPEncoding)
.class public Lorg/bouncycastle/crypto/encodings/OAEPEncoding;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private final defHash:[B

.field private final engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

.field private forEncryption:Z

.field private final mgf1Hash:Lorg/bouncycastle/crypto/Digest;

.field private final mgf1NoMemoLimit:I

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .registers 4

    .line 0
    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA1()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;)V
    .registers 4

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;[B)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iput-object p3, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-static {p3}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->getMGF1NoMemoLimit(Lorg/bouncycastle/crypto/Digest;)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1NoMemoLimit:I

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->reset()V

    const/4 p0, 0x0

    if-eqz p4, :cond_1f

    array-length p3, p4

    invoke-interface {p2, p4, p0, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    :cond_1f
    invoke-interface {p2, p1, p0}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;[B)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p2, p3}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;[B)V

    return-void
.end method

.method private static getMGF1NoMemoLimit(Lorg/bouncycastle/crypto/Digest;)I
    .registers 2

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/util/Memoable;

    if-eqz v0, :cond_11

    instance-of v0, p0, Lorg/bouncycastle/crypto/ExtendedDigest;

    if-eqz v0, :cond_11

    check-cast p0, Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_11
    const p0, 0x7fffffff

    return p0
.end method

.method private maskGeneratorFunction1([BII[BII)V
    .registers 15

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x4

    new-array v3, v2, [B

    add-int/2addr p6, p5

    sub-int v4, p6, v0

    iget-object v5, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget v5, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1NoMemoLimit:I

    const/4 v6, 0x0

    if-le p3, v5, :cond_3b

    iget-object p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    check-cast p1, Lorg/bouncycastle/util/Memoable;

    invoke-interface {p1}, Lorg/bouncycastle/util/Memoable;->copy()Lorg/bouncycastle/util/Memoable;

    move-result-object p2

    move p3, v6

    :goto_21
    if-ge p5, v4, :cond_5b

    add-int/lit8 v5, p3, 0x1

    invoke-static {p3, v3, v6}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget-object p3, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p3, v3, v6, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p3, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p3, v1, v6}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    invoke-interface {p1, p2}, Lorg/bouncycastle/util/Memoable;->reset(Lorg/bouncycastle/util/Memoable;)V

    invoke-static {v0, v1, v6, p4, p5}, Lorg/bouncycastle/util/Bytes;->xorTo(I[BI[BI)V

    add-int/2addr p5, v0

    move p3, v5

    goto :goto_21

    :cond_3b
    move v5, p5

    move p5, v6

    :goto_3d
    if-ge v5, v4, :cond_59

    add-int/lit8 v7, p5, 0x1

    invoke-static {p5, v3, v6}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget-object p5, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p5, v3, v6, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p5, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p5, v1, v6}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object p5, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p5, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-static {v0, v1, v6, p4, v5}, Lorg/bouncycastle/util/Bytes;->xorTo(I[BI[BI)V

    add-int/2addr v5, v0

    move p5, v7

    goto :goto_3d

    :cond_59
    move p3, p5

    move p5, v5

    :cond_5b
    invoke-static {p3, v3, v6}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1, v3, v6, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p0, v1, v6}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    sub-int/2addr p6, p5

    invoke-static {p6, v1, v6, p4, p5}, Lorg/bouncycastle/util/Bytes;->xorTo(I[BI[BI)V

    return-void
.end method


# virtual methods
.method public decodeBlock([BII)[B
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->getOutputBlockSize()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v1

    new-array v9, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2, p1, p2, p3}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object p1

    array-length p2, p1

    sub-int p2, v1, p2

    or-int/2addr p2, v0

    shr-int/lit8 p2, p2, 0x1f

    array-length p3, p1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    sub-int v0, v1, p3

    const/4 v10, 0x0

    invoke-static {p1, v10, v9, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v10}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget-object p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, p1

    array-length p3, p1

    sub-int v5, v1, p3

    const/4 v7, 0x0

    array-length v8, p1

    move-object v2, p0

    move-object v3, v9

    move-object v6, v9

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BII[BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, p1

    array-length v7, p1

    array-length p1, p1

    sub-int v8, v1, p1

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BII[BII)V

    move p1, v10

    :goto_45
    iget-object p3, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v0, p3

    if-eq p1, v0, :cond_55

    aget-byte v0, p3, p1

    array-length p3, p3

    add-int/2addr p3, p1

    aget-byte p3, v9, p3

    xor-int/2addr p3, v0

    or-int/2addr p2, p3

    add-int/lit8 p1, p1, 0x1

    goto :goto_45

    :cond_55
    array-length p0, p3

    mul-int/lit8 p0, p0, 0x2

    const/4 p1, -0x1

    :goto_59
    if-eq p0, v1, :cond_68

    aget-byte p3, v9, p0

    and-int/lit16 p3, p3, 0xff

    neg-int p3, p3

    and-int/2addr p3, p1

    shr-int/lit8 p3, p3, 0x1f

    and-int/2addr p3, p0

    add-int/2addr p1, p3

    add-int/lit8 p0, p0, 0x1

    goto :goto_59

    :cond_68
    shr-int/lit8 p0, p1, 0x1f

    or-int/2addr p0, p2

    add-int/lit8 p2, p1, 0x1

    aget-byte p2, v9, p2

    xor-int/lit8 p2, p2, 0x1

    or-int/2addr p0, p2

    if-nez p0, :cond_80

    add-int/lit8 p1, p1, 0x2

    sub-int/2addr v1, p1

    new-array p0, v1, [B

    invoke-static {v9, p1, p0, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v9, v10}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-object p0

    :cond_80
    invoke-static {v9, v10}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    new-instance p0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p1, "data wrong"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public encodeBlock([BII)[B
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->getInputBlockSize()I

    move-result v0

    if-gt p3, v0, :cond_54

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    new-array v9, v0, [B

    sub-int v2, v0, p3

    invoke-static {p1, p2, v9, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v2, v1

    aput-byte v1, v9, v2

    iget-object p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length p2, p1

    array-length p3, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v9, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, p1

    new-array v3, v5, [B

    iget-object p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {p1, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length p1, p1

    invoke-static {v3, v1, v9, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget-object p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v7, p1

    array-length p1, p1

    sub-int v8, v0, p1

    const/4 v4, 0x0

    move-object v2, p0

    move-object v6, v9

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BII[BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, p1

    array-length p2, p1

    sub-int v5, v0, p2

    const/4 v7, 0x0

    array-length v8, p1

    move-object v3, v9

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BII[BII)V

    iget-object p0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p0, v9, v1, v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object p0

    return-object p0

    :cond_54
    new-instance p0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p1, "input data too long"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInputBlockSize()I
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v1, :cond_12

    add-int/lit8 v0, v0, -0x1

    iget-object p0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    :cond_12
    return v0
.end method

.method public getOutputBlockSize()I
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v1, :cond_b

    return v0

    :cond_b
    add-int/lit8 v0, v0, -0x1

    iget-object p0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    return-object p0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 5

    .line 0
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    goto :goto_e

    :cond_d
    move-object v0, v1

    :goto_e
    if-eqz p1, :cond_14

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v1

    :cond_14
    iput-object v1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    iget-object p0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p0, p1, p2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public processBlock([BII)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 0
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->encodeBlock([BII)[B

    move-result-object p0

    return-object p0

    :cond_9
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->decodeBlock([BII)[B

    move-result-object p0

    return-object p0
.end method
