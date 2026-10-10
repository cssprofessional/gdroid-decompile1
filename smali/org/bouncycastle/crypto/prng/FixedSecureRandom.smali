###### Class org.bouncycastle.crypto.prng.FixedSecureRandom (org.bouncycastle.crypto.prng.FixedSecureRandom)
.class public Lorg/bouncycastle/crypto/prng/FixedSecureRandom;
.super Ljava/security/SecureRandom;


# instance fields
.field private _data:[B

.field private _index:I

.field private _intPad:I


# direct methods
.method public constructor <init>(Z[B)V
    .registers 3

    .line 0
    filled-new-array {p2}, [[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;-><init>(Z[[B)V

    return-void
.end method

.method public constructor <init>(Z[[B)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :goto_9
    array-length v2, p2

    if-eq v1, v2, :cond_1c

    :try_start_c
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_14

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :catch_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "can\'t save value array."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_data:[B

    if-eqz p1, :cond_29

    array-length p1, p2

    rem-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_intPad:I

    :cond_29
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    .line 0
    const/4 v0, 0x0

    filled-new-array {p1}, [[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;-><init>(Z[[B)V

    return-void
.end method

.method public constructor <init>([[B)V
    .registers 3

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;-><init>(Z[[B)V

    return-void
.end method

.method private nextValue()I
    .registers 4

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_data:[B

    iget v1, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_index:I

    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method


# virtual methods
.method public generateSeed(I)[B
    .registers 2

    .line 0
    new-array p1, p1, [B

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextBytes([B)V

    return-object p1
.end method

.method public isExhausted()Z
    .registers 2

    .line 0
    iget v0, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_index:I

    iget-object p0, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_data:[B

    array-length p0, p0

    if-ne v0, p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public nextBytes([B)V
    .registers 6

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_data:[B

    iget v1, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_index:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_index:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_index:I

    return-void
.end method

.method public nextInt()I
    .registers 5

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_intPad:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_17

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_intPad:I

    goto :goto_1e

    :cond_17
    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    :goto_1e
    iget v1, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_intPad:I

    if-ne v1, v3, :cond_26

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_intPad:I

    goto :goto_2b

    :cond_26
    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result p0

    or-int/2addr v0, p0

    :goto_2b
    return v0
.end method

.method public nextLong()J
    .registers 6

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result p0

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method
