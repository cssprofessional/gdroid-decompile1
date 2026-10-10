###### Class org.bouncycastle.pqc.crypto.rainbow.RainbowUtil (org.bouncycastle.pqc.crypto.rainbow.RainbowUtil)
.class Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cloneArray([[S)[[S
    .registers 4

    .line 0
    array-length v0, p0

    new-array v0, v0, [[S

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([S)[S

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    return-object v0
.end method

.method public static cloneArray([[[S)[[[S
    .registers 7

    .line 0
    array-length v0, p0

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v0, v3, v1

    const-class v0, [S

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[S

    move v2, v1

    :goto_16
    array-length v3, p0

    if-ge v2, v3, :cond_31

    move v3, v1

    :goto_1a
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_2e

    aget-object v4, v0, v2

    aget-object v5, p0, v2

    aget-object v5, v5, v3

    invoke-static {v5}, Lorg/bouncycastle/util/Arrays;->clone([S)[S

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_31
    return-object v0
.end method

.method public static convertArray([S)[B
    .registers 4

    .line 0
    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_f

    aget-short v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_f
    return-object v0
.end method

.method public static convertArray([B)[S
    .registers 4

    .line 0
    array-length v0, p0

    new-array v0, v0, [S

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_11

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_11
    return-object v0
.end method

.method public static equals([S[S)Z
    .registers 8

    .line 0
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    return v2

    :cond_6
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v3, v1

    :goto_a
    if-ltz v0, :cond_19

    aget-short v4, p0, v0

    aget-short v5, p1, v0

    if-ne v4, v5, :cond_14

    move v4, v1

    goto :goto_15

    :cond_14
    move v4, v2

    :goto_15
    and-int/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_19
    return v3
.end method

.method public static equals([[S[[S)Z
    .registers 6

    .line 0
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_9
    if-ltz v0, :cond_17

    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->equals([S[S)Z

    move-result v2

    and-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_17
    return v1
.end method

.method public static equals([[[S[[[S)Z
    .registers 6

    .line 0
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_9
    if-ltz v0, :cond_17

    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->equals([[S[[S)Z

    move-result v2

    and-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_17
    return v1
.end method

.method public static generate_random(Ljava/security/SecureRandom;IIIZ)[[[S
    .registers 13

    .line 0
    const/4 v0, 0x2

    if-eqz p4, :cond_9

    add-int/lit8 v1, p2, 0x1

    mul-int/2addr v1, p2

    div-int/2addr v1, v0

    mul-int/2addr v1, p1

    goto :goto_c

    :cond_9
    mul-int v1, p1, p2

    mul-int/2addr v1, p3

    :goto_c
    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 p0, 0x3

    new-array p0, p0, [I

    aput p3, p0, v0

    const/4 v0, 0x1

    aput p2, p0, v0

    const/4 v0, 0x0

    aput p1, p0, v0

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[[S

    move v2, v0

    move v3, v2

    :goto_26
    if-ge v2, p2, :cond_4a

    move v4, v0

    :goto_29
    if-ge v4, p3, :cond_47

    move v5, v0

    :goto_2c
    if-ge v5, p1, :cond_44

    if-eqz p4, :cond_33

    if-le v2, v4, :cond_33

    goto :goto_41

    :cond_33
    aget-object v6, p0, v5

    aget-object v6, v6, v2

    add-int/lit8 v7, v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aput-short v3, v6, v4

    move v3, v7

    :goto_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_4a
    return-object p0
.end method

.method public static generate_random_2d(Ljava/security/SecureRandom;II)[[S
    .registers 9

    .line 0
    mul-int v0, p1, p2

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 p0, 0x2

    new-array p0, p0, [I

    const/4 v1, 0x1

    aput p2, p0, v1

    const/4 v1, 0x0

    aput p1, p0, v1

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[S

    move v2, v1

    :goto_19
    if-ge v2, p2, :cond_30

    move v3, v1

    :goto_1c
    if-ge v3, p1, :cond_2d

    aget-object v4, p0, v3

    mul-int v5, v2, p1

    add-int/2addr v5, v3

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    aput-short v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_30
    return-object p0
.end method

.method public static getEncoded([[S)[B
    .registers 9

    .line 0
    array-length v0, p0

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    mul-int v3, v0, v2

    new-array v3, v3, [B

    move v4, v1

    :goto_a
    if-ge v4, v2, :cond_1f

    move v5, v1

    :goto_d
    if-ge v5, v0, :cond_1c

    mul-int v6, v4, v0

    add-int/2addr v6, v5

    aget-object v7, p0, v5

    aget-short v7, v7, v4

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_1f
    return-object v3
.end method

.method public static getEncoded([[[SZ)[B
    .registers 12

    .line 0
    array-length v0, p0

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v3, v2

    aget-object v2, v2, v1

    array-length v2, v2

    if-eqz p1, :cond_11

    add-int/lit8 v4, v3, 0x1

    mul-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    mul-int/2addr v4, v0

    goto :goto_14

    :cond_11
    mul-int v4, v0, v3

    mul-int/2addr v4, v2

    :goto_14
    new-array v4, v4, [B

    move v5, v1

    move v6, v5

    :goto_18
    if-ge v5, v3, :cond_39

    move v7, v1

    :goto_1b
    if-ge v7, v2, :cond_36

    move v8, v1

    :goto_1e
    if-ge v8, v0, :cond_33

    if-eqz p1, :cond_25

    if-le v5, v7, :cond_25

    goto :goto_30

    :cond_25
    aget-object v9, p0, v8

    aget-object v9, v9, v5

    aget-short v9, v9, v7

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    add-int/lit8 v6, v6, 0x1

    :goto_30
    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    :cond_33
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    :cond_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_39
    return-object v4
.end method

.method public static hash(Lorg/bouncycastle/crypto/Digest;[BI)[B
    .registers 6

    .line 0
    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {p0, p1, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    new-array p1, v0, [B

    invoke-interface {p0, p1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    if-ne p2, v0, :cond_11

    return-object p1

    :cond_11
    if-ge p2, v0, :cond_18

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0

    :cond_18
    invoke-static {p1, v0}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    :goto_1c
    sub-int/2addr p2, v0

    if-lt p2, v0, :cond_2c

    invoke-interface {p0, p1, v2, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    new-array p1, v0, [B

    invoke-interface {p0, p1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    invoke-static {v1, p1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v1

    goto :goto_1c

    :cond_2c
    if-lez p2, :cond_40

    invoke-interface {p0, p1, v2, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    new-array p1, v0, [B

    invoke-interface {p0, p1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    array-length p0, v1

    add-int v0, p0, p2

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-static {p1, v2, v1, p0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_40
    return-object v1
.end method

.method public static hash(Lorg/bouncycastle/crypto/Digest;[B[B[B)[B
    .registers 7

    .line 0
    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {p0, p1, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length p1, p2

    invoke-interface {p0, p2, v2, p1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length p1, p3

    if-ne p1, v0, :cond_14

    invoke-interface {p0, p3, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object p3

    :cond_14
    new-array p1, v0, [B

    invoke-interface {p0, p1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    array-length p2, p3

    if-ge p2, v0, :cond_21

    array-length p0, p3

    invoke-static {p1, v2, p3, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p3

    :cond_21
    invoke-static {p1, v2, p3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p2, p3

    sub-int/2addr p2, v0

    move v1, v0

    :goto_27
    if-lt p2, v0, :cond_35

    invoke-interface {p0, p1, v2, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p0, p1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    invoke-static {p1, v2, p3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p2, v0

    add-int/2addr v1, v0

    goto :goto_27

    :cond_35
    if-lez p2, :cond_40

    invoke-interface {p0, p1, v2, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p0, p1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    invoke-static {p1, v2, p3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_40
    return-object p3
.end method

.method public static loadEncoded([[S[BI)I
    .registers 10

    .line 0
    array-length v0, p0

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    move v3, v1

    :goto_6
    if-ge v3, v2, :cond_1e

    move v4, v1

    :goto_9
    if-ge v4, v0, :cond_1b

    aget-object v5, p0, v4

    mul-int v6, v3, v0

    add-int/2addr v6, p2

    add-int/2addr v6, v4

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    aput-short v6, v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_1e
    mul-int/2addr v0, v2

    return v0
.end method

.method public static loadEncoded([[[S[BIZ)I
    .registers 14

    .line 0
    array-length v0, p0

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v3, v2

    aget-object v2, v2, v1

    array-length v2, v2

    move v4, v1

    move v5, v4

    :goto_a
    if-ge v4, v3, :cond_2f

    move v6, v1

    :goto_d
    if-ge v6, v2, :cond_2c

    move v7, v1

    :goto_10
    if-ge v7, v0, :cond_29

    if-eqz p3, :cond_17

    if-le v4, v6, :cond_17

    goto :goto_26

    :cond_17
    aget-object v8, p0, v7

    aget-object v8, v8, v4

    add-int/lit8 v9, v5, 0x1

    add-int/2addr v5, p2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    aput-short v5, v8, v6

    move v5, v9

    :goto_26
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_29
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_2f
    return v5
.end method
