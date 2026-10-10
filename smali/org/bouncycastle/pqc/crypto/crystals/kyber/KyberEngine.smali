###### Class org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine (org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine)
.class Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;
.super Ljava/lang/Object;


# static fields
.field private static final KyberEta2:I = 0x2

.field private static final KyberIndCpaMsgBytes:I = 0x20

.field public static final KyberN:I = 0x100

.field public static final KyberPolyBytes:I = 0x180

.field public static final KyberQ:I = 0xd01

.field public static final KyberQinv:I = 0xf301

.field private static final KyberSharedSecretBytes:I = 0x20

.field public static final KyberSymBytes:I = 0x20


# instance fields
.field private final CryptoBytes:I

.field private final CryptoCipherTextBytes:I

.field private final CryptoPublicKeyBytes:I

.field private final CryptoSecretKeyBytes:I

.field private final KyberCipherTextBytes:I

.field private final KyberEta1:I

.field private final KyberIndCpaBytes:I

.field private final KyberIndCpaPublicKeyBytes:I

.field private final KyberIndCpaSecretKeyBytes:I

.field private final KyberK:I

.field private final KyberPolyCompressedBytes:I

.field private final KyberPolyVecBytes:I

.field private final KyberPolyVecCompressedBytes:I

.field private final KyberPublicKeyBytes:I

.field private final KyberSecretKeyBytes:I

.field private indCpa:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

.field private random:Ljava/security/SecureRandom;

.field private final sessionKeyLength:I

.field private final symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;


# direct methods
.method public constructor <init>(IZ)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberK:I

    const/16 v0, 0x80

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/16 v3, 0x20

    if-eq p1, v2, :cond_42

    if-eq p1, v1, :cond_3b

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1f

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberEta1:I

    const/16 v0, 0xa0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyCompressedBytes:I

    mul-int/lit16 v0, p1, 0x160

    :goto_1a
    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyVecCompressedBytes:I

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->sessionKeyLength:I

    goto :goto_45

    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "K: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not supported for Crystals Kyber"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    iput v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberEta1:I

    :goto_3d
    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyCompressedBytes:I

    mul-int/lit16 v0, p1, 0x140

    goto :goto_1a

    :cond_42
    iput v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberEta1:I

    goto :goto_3d

    :goto_45
    mul-int/lit16 p1, p1, 0x180

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyVecBytes:I

    add-int/lit8 v0, p1, 0x20

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaPublicKeyBytes:I

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaSecretKeyBytes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyVecCompressedBytes:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyCompressedBytes:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaBytes:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPublicKeyBytes:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x40

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberSecretKeyBytes:I

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberCipherTextBytes:I

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->CryptoBytes:I

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->CryptoSecretKeyBytes:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->CryptoPublicKeyBytes:I

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->CryptoCipherTextBytes:I

    if-eqz p2, :cond_71

    new-instance p1, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;-><init>()V

    :goto_6e
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    goto :goto_77

    :cond_71
    new-instance p1, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;-><init>()V

    goto :goto_6e

    :goto_77
    new-instance p1, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

    invoke-direct {p1, p0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->indCpa:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

    return-void
.end method

.method private cmov([B[BIZ)V
    .registers 5

    .line 0
    const/4 p0, 0x0

    if-eqz p4, :cond_7

    invoke-static {p2, p0, p1, p0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a

    :cond_7
    invoke-static {p1, p0, p1, p0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_a
    return-void
.end method

.method public static getKyberEta2()I
    .registers 1

    .line 0
    const/4 v0, 0x2

    return v0
.end method

.method public static getKyberIndCpaMsgBytes()I
    .registers 1

    .line 0
    const/16 v0, 0x20

    return v0
.end method


# virtual methods
.method public generateKemKeyPair()[[B
    .registers 8

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->indCpa:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->generateKeyPair()[[B

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaSecretKeyBytes:I

    new-array v2, v1, [B

    const/4 v3, 0x1

    aget-object v3, v0, v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x20

    new-array v3, v1, [B

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    aget-object v6, v0, v4

    invoke-virtual {v5, v3, v6, v4}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->hash_h([B[BI)V

    new-array v1, v1, [B

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->random:Ljava/security/SecureRandom;

    invoke-virtual {v5, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaPublicKeyBytes:I

    new-array v5, p0, [B

    aget-object v0, v0, v4

    invoke-static {v0, v4, v5, v4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p0, -0x20

    invoke-static {v5, v4, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v5, v0, p0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    filled-new-array {v4, p0, v2, v3, v1}, [[B

    move-result-object p0

    return-object p0
.end method

.method public getCryptoBytes()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->CryptoBytes:I

    return p0
.end method

.method public getCryptoCipherTextBytes()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->CryptoCipherTextBytes:I

    return p0
.end method

.method public getCryptoPublicKeyBytes()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->CryptoPublicKeyBytes:I

    return p0
.end method

.method public getCryptoSecretKeyBytes()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->CryptoSecretKeyBytes:I

    return p0
.end method

.method public getKyberCipherTextBytes()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberCipherTextBytes:I

    return p0
.end method

.method public getKyberEta1()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberEta1:I

    return p0
.end method

.method public getKyberIndCpaBytes()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaBytes:I

    return p0
.end method

.method public getKyberIndCpaPublicKeyBytes()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaPublicKeyBytes:I

    return p0
.end method

.method public getKyberIndCpaSecretKeyBytes()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaSecretKeyBytes:I

    return p0
.end method

.method public getKyberK()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberK:I

    return p0
.end method

.method public getKyberPolyCompressedBytes()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyCompressedBytes:I

    return p0
.end method

.method public getKyberPolyVecBytes()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyVecBytes:I

    return p0
.end method

.method public getKyberPolyVecCompressedBytes()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyVecCompressedBytes:I

    return p0
.end method

.method public getKyberPublicKeyBytes()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPublicKeyBytes:I

    return p0
.end method

.method public getKyberSecretKeyBytes()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberSecretKeyBytes:I

    return p0
.end method

.method public getRandomBytes([B)V
    .registers 2

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->random:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-void
.end method

.method public getSymmetric()Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    return-object p0
.end method

.method public init(Ljava/security/SecureRandom;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method public kemDecrypt([B[B)[B
    .registers 10

    .line 0
    const/16 v0, 0x40

    new-array v1, v0, [B

    new-array v2, v0, [B

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaSecretKeyBytes:I

    array-length v4, p2

    invoke-static {p2, v3, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->indCpa:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

    invoke-virtual {v4, p1, p2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->decrypt([B[B)[B

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-static {v4, v5, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberSecretKeyBytes:I

    sub-int/2addr v4, v0

    invoke-static {p2, v4, v1, v6, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    invoke-virtual {v4, v2, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->hash_g([B[B)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->indCpa:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

    invoke-static {v1, v5, v6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v2, v6, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-virtual {v4, v1, v3, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->encrypt([B[B[B)[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    invoke-virtual {v1, v2, p1, v6}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->hash_h([B[BI)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberSecretKeyBytes:I

    add-int/lit8 v1, p1, -0x20

    invoke-static {p2, v1, p1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {p0, v2, p1, v6, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->cmov([B[BIZ)V

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->sessionKeyLength:I

    invoke-static {v2, v5, p0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public kemEncrypt([B)[[B
    .registers 8

    .line 0
    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaPublicKeyBytes:I

    if-ne v0, v1, :cond_5b

    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->indCpa:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

    invoke-virtual {v1, v0, p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->unpackPublicKey(Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;[B)[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->indCpa:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

    invoke-virtual {v2, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->packPublicKey(Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;[B)[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_53

    const/16 v0, 0x40

    new-array v1, v0, [B

    new-array v2, v0, [B

    const/16 v3, 0x20

    new-array v4, v3, [B

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->random:Ljava/security/SecureRandom;

    invoke-virtual {v5, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v5, 0x0

    invoke-static {v4, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    invoke-virtual {v4, v1, p1, v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->hash_h([B[BI)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    invoke-virtual {v4, v2, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->hash_g([B[B)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->indCpa:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

    invoke-static {v1, v5, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v2, v3, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-virtual {v4, v1, p1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->encrypt([B[B[B)[B

    move-result-object p1

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->sessionKeyLength:I

    new-array v0, p0, [B

    invoke-static {v2, v5, v0, v5, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    filled-new-array {v0, p1}, [[B

    move-result-object p0

    return-object p0

    :cond_53
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Input validation: Modulus check failed for ml-kem encapsulation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Input validation Error: Type check failed for ml-kem encapsulation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
