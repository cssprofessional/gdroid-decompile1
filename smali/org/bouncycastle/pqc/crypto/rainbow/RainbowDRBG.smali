###### Class org.bouncycastle.pqc.crypto.rainbow.RainbowDRBG (org.bouncycastle.pqc.crypto.rainbow.RainbowDRBG)
.class Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;
.super Ljava/security/SecureRandom;


# instance fields
.field private hashAlgo:Lorg/bouncycastle/crypto/Digest;

.field private key:[B

.field private seed:[B

.field private v:[B


# direct methods
.method public constructor <init>([BLorg/bouncycastle/crypto/Digest;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->seed:[B

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    const/16 p1, 0x100

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->init(I)V

    return-void
.end method

.method private AES256_CTR_DRBG_Update([B[B[B)V
    .registers 12

    .line 0
    const/16 v0, 0x30

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    const/4 v4, 0x3

    if-ge v3, v4, :cond_27

    const/16 v4, 0xf

    :goto_b
    if-ltz v4, :cond_1f

    aget-byte v5, p3, v4

    and-int/lit16 v6, v5, 0xff

    const/16 v7, 0xff

    if-ne v6, v7, :cond_1a

    aput-byte v2, p3, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_b

    :cond_1a
    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, p3, v4

    :cond_1f
    mul-int/lit8 v4, v3, 0x10

    invoke-direct {p0, p2, p3, v1, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->AES256_ECB([B[B[BI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_27
    if-eqz p1, :cond_37

    move p0, v2

    :goto_2a
    if-ge p0, v0, :cond_37

    aget-byte v3, v1, p0

    aget-byte v4, p1, p0

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_2a

    :cond_37
    array-length p0, p2

    invoke-static {v1, v2, p2, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p3

    const/16 p1, 0x20

    invoke-static {v1, p1, p3, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private AES256_ECB([B[B[BI)V
    .registers 6

    .line 0
    :try_start_0
    new-instance p0, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/AESEngine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    const/4 p1, 0x0

    :goto_f
    array-length v0, p2

    if-eq p1, v0, :cond_1c

    add-int v0, p4, p1

    invoke-virtual {p0, p2, p1, p3, v0}, Lorg/bouncycastle/crypto/engines/AESEngine;->processBlock([BI[BI)I
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_1a

    add-int/lit8 p1, p1, 0x10

    goto :goto_f

    :catchall_1a
    move-exception p0

    goto :goto_1d

    :cond_1c
    return-void

    :goto_1d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "drbg failure: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private init(I)V
    .registers 6

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->seed:[B

    array-length v1, v0

    const/16 v2, 0x30

    if-lt v1, v2, :cond_b

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->randombytes_init([BI)V

    goto :goto_1c

    :cond_b
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    array-length v3, v0

    sub-int/2addr v2, v3

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->hash(Lorg/bouncycastle/crypto/Digest;[BI)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->seed:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->randombytes_init([BI)V

    :goto_1c
    return-void
.end method

.method private randombytes_init([BI)V
    .registers 5

    .line 0
    const/16 p2, 0x30

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, 0x20

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->key:[B

    const/16 p2, 0x10

    new-array p2, p2, [B

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->v:[B

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->AES256_CTR_DRBG_Update([B[B[B)V

    return-void
.end method


# virtual methods
.method public nextBytes([B)V
    .registers 13

    .line 0
    const/16 v0, 0x10

    new-array v1, v0, [B

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_7
    if-lez v2, :cond_38

    const/16 v5, 0xf

    move v6, v5

    :goto_c
    if-ltz v6, :cond_22

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->v:[B

    aget-byte v8, v7, v6

    and-int/lit16 v9, v8, 0xff

    const/16 v10, 0xff

    if-ne v9, v10, :cond_1d

    aput-byte v3, v7, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_c

    :cond_1d
    add-int/lit8 v8, v8, 0x1

    int-to-byte v8, v8

    aput-byte v8, v7, v6

    :cond_22
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->key:[B

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->v:[B

    invoke-direct {p0, v6, v7, v1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->AES256_ECB([B[B[BI)V

    if-le v2, v5, :cond_33

    invoke-static {v1, v3, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x10

    add-int/lit8 v2, v2, -0x10

    goto :goto_7

    :cond_33
    invoke-static {v1, v3, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v3

    goto :goto_7

    :cond_38
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->key:[B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->v:[B

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->AES256_CTR_DRBG_Update([B[B[B)V

    return-void
.end method
