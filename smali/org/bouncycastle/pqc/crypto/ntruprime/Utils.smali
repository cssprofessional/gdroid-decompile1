###### Class org.bouncycastle.pqc.crypto.ntruprime.Utils (org.bouncycastle.pqc.crypto.ntruprime.Utils)
.class Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bToUnsignedInt(B)I
    .registers 1

    .line 0
    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static checkForSmallPolynomial([B[BII)V
    .registers 8

    .line 0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    array-length v3, p1

    if-eq v1, v3, :cond_e

    aget-byte v3, p1, v1

    and-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_e
    sub-int/2addr v2, p3

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->checkNotEqualToZero(I)I

    move-result v1

    :goto_13
    if-ge v0, p3, :cond_23

    aget-byte v2, p1, v0

    xor-int/lit8 v2, v2, 0x1

    not-int v3, v1

    and-int/2addr v2, v3

    xor-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_23
    :goto_23
    if-ge p3, p2, :cond_2f

    aget-byte v0, p1, p3

    not-int v2, v1

    and-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_23

    :cond_2f
    return-void
.end method

.method private static checkLessThanZero(I)I
    .registers 1

    .line 0
    ushr-int/lit8 p0, p0, 0x1f

    neg-int p0, p0

    return p0
.end method

.method private static checkNotEqualToZero(I)I
    .registers 3

    .line 0
    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->iToUnsignedLong(I)J

    move-result-wide v0

    neg-long v0, v0

    const/16 p0, 0x3f

    ushr-long/2addr v0, p0

    long-to-int p0, v0

    neg-int p0, p0

    return p0
.end method

.method public static cryptoSort([II)V
    .registers 9

    .line 0
    const/4 v0, 0x2

    if-ge p1, v0, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x1

    :goto_5
    sub-int v1, p1, v0

    if-ge v0, v1, :cond_b

    add-int/2addr v0, v0

    goto :goto_5

    :cond_b
    move v1, v0

    :goto_c
    if-lez v1, :cond_3c

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    sub-int v4, p1, v1

    if-ge v3, v4, :cond_20

    and-int v4, v3, v1

    if-nez v4, :cond_1d

    add-int v4, v3, v1

    invoke-static {p0, v3, v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->minmax([III)V

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_20
    move v3, v0

    :goto_21
    if-le v3, v1, :cond_39

    move v4, v2

    :goto_24
    sub-int v5, p1, v3

    if-ge v4, v5, :cond_36

    and-int v5, v4, v1

    if-nez v5, :cond_33

    add-int v5, v4, v1

    add-int v6, v4, v3

    invoke-static {p0, v5, v6}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->minmax([III)V

    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_36
    ushr-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_39
    ushr-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_3c
    return-void
.end method

.method private static decode([S[B[SIII)V
    .registers 21

    .line 0
    move/from16 v0, p3

    const/16 v1, 0x100

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_37

    aget-short v4, p2, v2

    if-ne v4, v3, :cond_f

    aput-short v2, p0, p4

    goto :goto_37

    :cond_f
    if-gt v4, v1, :cond_21

    aget-byte v4, p1, p5

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v4

    aget-short v5, p2, v2

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getUnsignedMod(II)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, p0, p4

    goto :goto_37

    :cond_21
    aget-byte v4, p1, p5

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v4

    add-int/lit8 v5, p5, 0x1

    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    aget-short v5, p2, v2

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getUnsignedMod(II)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, p0, p4

    :cond_37
    :goto_37
    if-le v0, v3, :cond_f6

    add-int/lit8 v4, v0, 0x1

    div-int/lit8 v8, v4, 0x2

    new-array v4, v8, [S

    new-array v7, v8, [S

    div-int/lit8 v5, v0, 0x2

    new-array v11, v5, [S

    new-array v12, v5, [I

    move/from16 v10, p5

    move v5, v2

    :goto_4a
    add-int/lit8 v13, v0, -0x1

    if-ge v5, v13, :cond_a8

    aget-short v6, p2, v5

    add-int/lit8 v9, v5, 0x1

    aget-short v9, p2, v9

    mul-int/2addr v6, v9

    const v9, 0x3fff00

    if-le v6, v9, :cond_81

    div-int/lit8 v9, v5, 0x2

    const/high16 v13, 0x10000

    aput v13, v12, v9

    aget-byte v13, p1, v10

    invoke-static {v13}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v13

    add-int/lit8 v14, v10, 0x1

    aget-byte v14, p1, v14

    invoke-static {v14}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v14

    mul-int/2addr v14, v1

    add-int/2addr v13, v14

    int-to-short v13, v13

    aput-short v13, v11, v9

    add-int/lit8 v10, v10, 0x2

    add-int/lit16 v6, v6, 0xff

    ushr-int/lit8 v6, v6, 0x8

    add-int/lit16 v6, v6, 0xff

    ushr-int/lit8 v6, v6, 0x8

    int-to-short v6, v6

    aput-short v6, v7, v9

    goto :goto_a5

    :cond_81
    const/16 v9, 0x4000

    if-lt v6, v9, :cond_9c

    div-int/lit8 v9, v5, 0x2

    aput v1, v12, v9

    aget-byte v13, p1, v10

    invoke-static {v13}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v13

    int-to-short v13, v13

    aput-short v13, v11, v9

    add-int/lit8 v10, v10, 0x1

    add-int/lit16 v6, v6, 0xff

    ushr-int/lit8 v6, v6, 0x8

    int-to-short v6, v6

    aput-short v6, v7, v9

    goto :goto_a5

    :cond_9c
    div-int/lit8 v9, v5, 0x2

    aput v3, v12, v9

    aput-short v2, v11, v9

    int-to-short v6, v6

    aput-short v6, v7, v9

    :goto_a5
    add-int/lit8 v5, v5, 0x2

    goto :goto_4a

    :cond_a8
    if-ge v5, v0, :cond_b0

    div-int/lit8 v1, v5, 0x2

    aget-short v5, p2, v5

    aput-short v5, v7, v1

    :cond_b0
    move-object v5, v4

    move-object/from16 v6, p1

    move/from16 v9, p4

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->decode([S[B[SIII)V

    move/from16 v1, p4

    move v5, v2

    :goto_bb
    if-ge v5, v13, :cond_ee

    div-int/lit8 v6, v5, 0x2

    aget-short v7, v11, v6

    invoke-static {v7}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->sToUnsignedInt(S)I

    move-result v7

    aget v8, v12, v6

    aget-short v6, v4, v6

    invoke-static {v6}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->sToUnsignedInt(S)I

    move-result v6

    mul-int/2addr v8, v6

    add-int/2addr v7, v8

    aget-short v6, p2, v5

    invoke-static {v7, v6}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getUnsignedDivMod(II)[I

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    aget v8, v6, v3

    int-to-short v8, v8

    aput-short v8, p0, v1

    add-int/lit8 v1, v1, 0x2

    aget v6, v6, v2

    add-int/lit8 v8, v5, 0x1

    aget-short v8, p2, v8

    invoke-static {v6, v8}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getUnsignedMod(II)I

    move-result v6

    int-to-short v6, v6

    aput-short v6, p0, v7

    add-int/lit8 v5, v5, 0x2

    goto :goto_bb

    :cond_ee
    if-ge v5, v0, :cond_f6

    div-int/lit8 v5, v5, 0x2

    aget-short v0, v4, v5

    aput-short v0, p0, v1

    :cond_f6
    return-void
.end method

.method private static encode([B[S[SII)V
    .registers 13

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_19

    aget-short v2, p1, v0

    aget-short v3, p2, v0

    :goto_8
    if-le v3, v1, :cond_19

    add-int/lit8 v4, p4, 0x1

    int-to-byte v5, v2

    aput-byte v5, p0, p4

    ushr-int/lit8 p4, v2, 0x8

    int-to-short v2, p4

    add-int/lit16 v3, v3, 0xff

    ushr-int/lit8 p4, v3, 0x8

    int-to-short v3, p4

    move p4, v4

    goto :goto_8

    :cond_19
    if-le p3, v1, :cond_5f

    add-int/lit8 v1, p3, 0x1

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [S

    new-array v3, v1, [S

    :goto_23
    add-int/lit8 v4, p3, -0x1

    if-ge v0, v4, :cond_50

    aget-short v4, p2, v0

    aget-short v5, p1, v0

    add-int/lit8 v6, v0, 0x1

    aget-short v7, p1, v6

    mul-int/2addr v7, v4

    add-int/2addr v5, v7

    aget-short v6, p2, v6

    mul-int/2addr v6, v4

    :goto_34
    const/16 v4, 0x4000

    if-lt v6, v4, :cond_45

    add-int/lit8 v4, p4, 0x1

    int-to-byte v7, v5

    aput-byte v7, p0, p4

    ushr-int/lit8 v5, v5, 0x8

    add-int/lit16 v6, v6, 0xff

    ushr-int/lit8 v6, v6, 0x8

    move p4, v4

    goto :goto_34

    :cond_45
    div-int/lit8 v4, v0, 0x2

    int-to-short v5, v5

    aput-short v5, v2, v4

    int-to-short v5, v6

    aput-short v5, v3, v4

    add-int/lit8 v0, v0, 0x2

    goto :goto_23

    :cond_50
    if-ge v0, p3, :cond_5c

    div-int/lit8 p3, v0, 0x2

    aget-short p1, p1, v0

    aput-short p1, v2, p3

    aget-short p1, p2, v0

    aput-short p1, v3, p3

    :cond_5c
    invoke-static {p0, v2, v3, v1, p4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->encode([B[S[SII)V

    :cond_5f
    return-void
.end method

.method public static expand([I[B)V
    .registers 7

    .line 0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    const/16 v2, 0x10

    new-array v3, v2, [B

    invoke-static {v0, v1, v3, p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->generateAES256CTRStream([B[B[B[B)V

    const/4 p1, 0x0

    :goto_12
    array-length v0, p0

    if-ge p1, v0, :cond_42

    mul-int/lit8 v0, p1, 0x4

    aget-byte v3, v1, v0

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v1, v4

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v4

    shl-int/2addr v4, v2

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    add-int/2addr v3, v0

    aput v3, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    :cond_42
    return-void
.end method

.method private static generateAES256CTRStream([B[B[B[B)V
    .registers 11

    .line 0
    invoke-static {}, Lorg/bouncycastle/crypto/engines/AESEngine;->newInstance()Lorg/bouncycastle/crypto/MultiBlockCipher;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->newInstance(Lorg/bouncycastle/crypto/BlockCipher;)Lorg/bouncycastle/crypto/modes/CTRModeCipher;

    move-result-object v1

    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, p3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-direct {v0, v2, p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    const/4 p2, 0x1

    invoke-interface {v1, p2, v0}, Lorg/bouncycastle/crypto/StreamCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    array-length v4, p1

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-interface/range {v1 .. v6}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    return-void
.end method

.method public static generatePolynomialInRQFromSeed([S[BII)V
    .registers 7

    .line 0
    new-array v0, p2, [I

    invoke-static {v0, p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->expand([I[B)V

    const/4 p1, 0x0

    :goto_6
    if-ge p1, p2, :cond_19

    aget v1, v0, p1

    invoke-static {v1, p3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getUnsignedMod(II)I

    move-result v1

    add-int/lit8 v2, p3, -0x1

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_19
    return-void
.end method

.method public static getDecodedPolynomial([S[BII)V
    .registers 12

    .line 0
    new-array v6, p2, [S

    new-array v2, p2, [S

    const/4 v7, 0x0

    move v0, v7

    :goto_6
    if-ge v0, p2, :cond_e

    int-to-short v1, p3

    aput-short v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_e
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->decode([S[B[SIII)V

    :goto_16
    if-ge v7, p2, :cond_25

    aget-short p1, v6, v7

    add-int/lit8 v0, p3, -0x1

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    int-to-short p1, p1

    aput-short p1, p0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    :cond_25
    return-void
.end method

.method public static getDecodedSmallPolynomial([B[BI)V
    .registers 10

    .line 0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    div-int/lit8 v3, p2, 0x4

    if-ge v0, v3, :cond_4c

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p1, v1

    add-int/lit8 v4, v2, 0x1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v5

    and-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    aput-byte v5, p0, v2

    ushr-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    add-int/lit8 v5, v2, 0x2

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v6

    and-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, -0x1

    int-to-byte v6, v6

    aput-byte v6, p0, v4

    ushr-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    add-int/lit8 v4, v2, 0x3

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v6

    and-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, -0x1

    int-to-byte v6, v6

    aput-byte v6, p0, v5

    ushr-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    add-int/lit8 v2, v2, 0x4

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    aput-byte v1, p0, v4

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_3

    :cond_4c
    aget-byte p1, p1, v1

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result p1

    and-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, -0x1

    int-to-byte p1, p1

    aput-byte p1, p0, v2

    return-void
.end method

.method public static getEncodedInputs([B[B)V
    .registers 7

    .line 0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_14

    ushr-int/lit8 v1, v0, 0x3

    aget-byte v2, p0, v1

    aget-byte v3, p1, v0

    and-int/lit8 v4, v0, 0x7

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    return-void
.end method

.method public static getEncodedPolynomial([B[SII)V
    .registers 10

    .line 0
    new-array v0, p2, [S

    new-array v1, p2, [S

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, p2, :cond_15

    aget-short v4, p1, v3

    add-int/lit8 v5, p3, -0x1

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_15
    move p1, v2

    :goto_16
    if-ge p1, p2, :cond_1e

    int-to-short v3, p3

    aput-short v3, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_16

    :cond_1e
    invoke-static {p0, v0, v1, p2, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->encode([B[S[SII)V

    return-void
.end method

.method public static getEncodedSmallPolynomial([B[BI)V
    .registers 9

    .line 0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    div-int/lit8 v3, p2, 0x4

    if-ge v0, v3, :cond_37

    add-int/lit8 v3, v2, 0x1

    aget-byte v4, p1, v2

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    add-int/lit8 v5, v2, 0x2

    aget-byte v3, p1, v3

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    shl-int/lit8 v3, v3, 0x2

    add-int/2addr v4, v3

    int-to-byte v3, v4

    add-int/lit8 v4, v2, 0x3

    aget-byte v5, p1, v5

    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    shl-int/lit8 v5, v5, 0x4

    add-int/2addr v3, v5

    int-to-byte v3, v3

    add-int/lit8 v2, v2, 0x4

    aget-byte v4, p1, v4

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    shl-int/lit8 v4, v4, 0x6

    add-int/2addr v3, v4

    int-to-byte v3, v3

    add-int/lit8 v4, v1, 0x1

    aput-byte v3, p0, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v4

    goto :goto_3

    :cond_37
    aget-byte p1, p1, v2

    add-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    aput-byte p1, p0, v1

    return-void
.end method

.method public static getHashWithPrefix([B[B)[B
    .registers 7

    .line 0
    const/16 v0, 0x40

    new-array v0, v0, [B

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v2, v1, [B

    array-length v3, p0

    const/4 v4, 0x0

    invoke-static {p0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v3, p1

    invoke-static {p1, v4, v2, p0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    invoke-virtual {p0, v2, v4, v1}, Lorg/bouncycastle/crypto/digests/LongDigest;->update([BII)V

    invoke-virtual {p0, v0, v4}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->doFinal([BI)I

    return-object v0
.end method

.method public static getInverseInRQ(II)I
    .registers 5

    .line 0
    const/4 v0, 0x1

    move v1, p0

    :goto_2
    add-int/lit8 v2, p1, -0x2

    if-ge v0, v2, :cond_e

    mul-int/2addr v1, p0

    invoke-static {v1, p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_e
    return v1
.end method

.method public static getModFreeze(II)I
    .registers 3

    .line 0
    add-int/lit8 v0, p1, -0x1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p0, v0

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getSignedDivMod(II)[I

    move-result-object p0

    const/4 p1, 0x1

    aget p0, p0, p1

    sub-int/2addr p0, v0

    return p0
.end method

.method public static getOneThirdInverseInRQ([S[BII)V
    .registers 21

    .line 0
    move/from16 v0, p2

    move/from16 v1, p3

    add-int/lit8 v2, v0, 0x1

    new-array v3, v2, [S

    new-array v4, v2, [S

    new-array v5, v2, [S

    new-array v6, v2, [S

    const/4 v7, 0x3

    invoke-static {v7, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getInverseInRQ(II)I

    move-result v7

    int-to-short v7, v7

    const/4 v8, 0x0

    aput-short v7, v5, v8

    const/4 v7, 0x1

    aput-short v7, v3, v8

    add-int/lit8 v9, v0, -0x1

    const/4 v10, -0x1

    aput-short v10, v3, v9

    aput-short v10, v3, v0

    move v10, v8

    :goto_22
    if-ge v10, v0, :cond_2e

    sub-int v11, v9, v10

    aget-byte v12, p1, v10

    int-to-short v12, v12

    aput-short v12, v4, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_22

    :cond_2e
    aput-short v8, v4, v0

    move v11, v7

    move v10, v8

    :goto_32
    mul-int/lit8 v12, v0, 0x2

    sub-int/2addr v12, v7

    if-ge v10, v12, :cond_b2

    invoke-static {v6, v8, v6, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-short v8, v6, v8

    neg-int v12, v11

    invoke-static {v12}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->checkLessThanZero(I)I

    move-result v13

    aget-short v14, v4, v8

    invoke-static {v14}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->checkNotEqualToZero(I)I

    move-result v14

    and-int/2addr v13, v14

    xor-int/2addr v12, v11

    and-int/2addr v12, v13

    xor-int/2addr v11, v12

    add-int/2addr v11, v7

    move v12, v8

    :goto_4d
    if-ge v12, v2, :cond_72

    aget-short v14, v3, v12

    aget-short v15, v4, v12

    xor-int/2addr v15, v14

    and-int/2addr v15, v13

    xor-int/2addr v14, v15

    int-to-short v14, v14

    aput-short v14, v3, v12

    aget-short v14, v4, v12

    xor-int/2addr v14, v15

    int-to-short v14, v14

    aput-short v14, v4, v12

    aget-short v14, v6, v12

    aget-short v15, v5, v12

    xor-int/2addr v15, v14

    and-int/2addr v15, v13

    xor-int/2addr v14, v15

    int-to-short v14, v14

    aput-short v14, v6, v12

    aget-short v14, v5, v12

    xor-int/2addr v14, v15

    int-to-short v14, v14

    aput-short v14, v5, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_4d

    :cond_72
    aget-short v12, v3, v8

    aget-short v13, v4, v8

    move v14, v8

    :goto_77
    if-ge v14, v2, :cond_8c

    aget-short v15, v4, v14

    mul-int/2addr v15, v12

    aget-short v16, v3, v14

    mul-int v16, v16, v13

    sub-int v15, v15, v16

    invoke-static {v15, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v15

    int-to-short v15, v15

    aput-short v15, v4, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_77

    :cond_8c
    move v14, v8

    :goto_8d
    if-ge v14, v2, :cond_a2

    aget-short v15, v5, v14

    mul-int/2addr v15, v12

    aget-short v16, v6, v14

    mul-int v16, v16, v13

    sub-int v15, v15, v16

    invoke-static {v15, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v15

    int-to-short v15, v15

    aput-short v15, v5, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_8d

    :cond_a2
    move v12, v8

    :goto_a3
    if-ge v12, v0, :cond_ad

    add-int/lit8 v13, v12, 0x1

    aget-short v14, v4, v13

    aput-short v14, v4, v12

    move v12, v13

    goto :goto_a3

    :cond_ad
    aput-short v8, v4, v0

    add-int/lit8 v10, v10, 0x1

    goto :goto_32

    :cond_b2
    aget-short v2, v3, v8

    invoke-static {v2, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getInverseInRQ(II)I

    move-result v2

    :goto_b8
    if-ge v8, v0, :cond_c9

    sub-int v3, v9, v8

    aget-short v3, v6, v3

    mul-int/2addr v3, v2

    invoke-static {v3, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, p0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_b8

    :cond_c9
    return-void
.end method

.method public static getRandomInputs(Ljava/security/SecureRandom;[B)V
    .registers 5

    .line 0
    array-length v0, p1

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 p0, 0x0

    :goto_9
    array-length v1, p1

    if-ge p0, v1, :cond_1b

    ushr-int/lit8 v1, p0, 0x3

    aget-byte v1, v0, v1

    and-int/lit8 v2, p0, 0x7

    ushr-int/2addr v1, v2

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_1b
    return-void
.end method

.method public static getRandomShortPolynomial(Ljava/security/SecureRandom;[BII)V
    .registers 7

    .line 0
    new-array v0, p2, [I

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p2, :cond_e

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRandomUnsignedInteger(Ljava/security/SecureRandom;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_e
    invoke-static {p1, v0, p2, p3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->sortGenerateShortPolynomial([B[III)V

    return-void
.end method

.method public static getRandomSmallPolynomial(Ljava/security/SecureRandom;[B)V
    .registers 5

    .line 0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_18

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRandomUnsignedInteger(Ljava/security/SecureRandom;)I

    move-result v1

    const v2, 0x3fffffff    # 1.9999999f

    and-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    ushr-int/lit8 v1, v1, 0x1e

    add-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    return-void
.end method

.method public static getRandomUnsignedInteger(Ljava/security/SecureRandom;)I
    .registers 3

    .line 0
    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 p0, 0x0

    aget-byte p0, v0, p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result p0

    const/4 v1, 0x1

    aget-byte v1, v0, v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr p0, v1

    const/4 v1, 0x2

    aget-byte v1, v0, v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr p0, v1

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    add-int/2addr p0, v0

    return p0
.end method

.method public static getRoundedDecodedPolynomial([S[BII)V
    .registers 12

    .line 0
    new-array v6, p2, [S

    new-array v2, p2, [S

    const/4 v7, 0x0

    move v0, v7

    :goto_6
    if-ge v0, p2, :cond_12

    add-int/lit8 v1, p3, 0x2

    div-int/lit8 v1, v1, 0x3

    int-to-short v1, v1

    aput-short v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_12
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->decode([S[B[SIII)V

    :goto_1a
    if-ge v7, p2, :cond_2b

    aget-short p1, v6, v7

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 v0, p3, -0x1

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    int-to-short p1, p1

    aput-short p1, p0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    :cond_2b
    return-void
.end method

.method public static getRoundedEncodedPolynomial([B[SII)V
    .registers 10

    .line 0
    new-array v0, p2, [S

    new-array v1, p2, [S

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, p2, :cond_20

    aget-short v4, p1, v3

    add-int/lit8 v5, p3, -0x1

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    mul-int/lit16 v4, v4, 0x2aab

    ushr-int/lit8 v4, v4, 0xf

    int-to-short v4, v4

    aput-short v4, v0, v3

    add-int/lit8 v4, p3, 0x2

    div-int/lit8 v4, v4, 0x3

    int-to-short v4, v4

    aput-short v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_20
    invoke-static {p0, v0, v1, p2, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->encode([B[S[SII)V

    return-void
.end method

.method private static getSignedDivMod(II)[I
    .registers 9

    .line 0
    const-wide/32 v0, -0x80000000

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->iToUnsignedLong(I)J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->toIntExact(J)I

    move-result p0

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getUnsignedDivMod(II)[I

    move-result-object p0

    const/high16 v0, -0x80000000

    invoke-static {v0, p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getUnsignedDivMod(II)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v2, p0, v1

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->iToUnsignedLong(I)J

    move-result-wide v2

    aget v1, v0, v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->iToUnsignedLong(I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->toIntExact(J)I

    move-result v1

    const/4 v2, 0x1

    aget p0, p0, v2

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->iToUnsignedLong(I)J

    move-result-wide v3

    aget p0, v0, v2

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->iToUnsignedLong(I)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->toIntExact(J)I

    move-result p0

    ushr-int/lit8 v0, p0, 0x1f

    neg-int v0, v0

    and-int/2addr p1, v0

    add-int/2addr p0, p1

    add-int/2addr v1, v0

    filled-new-array {v1, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public static getTopDecodedPolynomial([B[B)V
    .registers 5

    .line 0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_19

    mul-int/lit8 v1, v0, 0x2

    aget-byte v2, p1, v0

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    aget-byte v2, p1, v0

    ushr-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method public static getTopEncodedPolynomial([B[B)V
    .registers 5

    .line 0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_15

    mul-int/lit8 v1, v0, 0x2

    aget-byte v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x4

    add-int/2addr v2, v1

    int-to-byte v1, v2

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    return-void
.end method

.method private static getUnsignedDivMod(II)[I
    .registers 11

    .line 0
    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->iToUnsignedLong(I)J

    move-result-wide v0

    const/high16 p0, -0x80000000

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->iToUnsignedLong(I)J

    move-result-wide v2

    int-to-long p0, p1

    div-long/2addr v2, p0

    mul-long v4, v0, v2

    const/16 v6, 0x1f

    ushr-long/2addr v4, v6

    mul-long v7, v4, p0

    sub-long/2addr v0, v7

    mul-long/2addr v2, v0

    ushr-long/2addr v2, v6

    mul-long v6, v2, p0

    sub-long/2addr v0, v6

    add-long/2addr v4, v2

    sub-long/2addr v0, p0

    const-wide/16 v2, 0x1

    add-long/2addr v4, v2

    const/16 v2, 0x3f

    ushr-long v2, v0, v2

    neg-long v2, v2

    and-long/2addr p0, v2

    add-long/2addr v0, p0

    add-long/2addr v4, v2

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->toIntExact(J)I

    move-result p0

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->toIntExact(J)I

    move-result p1

    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0
.end method

.method private static getUnsignedMod(II)I
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getUnsignedDivMod(II)[I

    move-result-object p0

    const/4 p1, 0x1

    aget p0, p0, p1

    return p0
.end method

.method public static iToUnsignedLong(I)J
    .registers 5

    .line 0
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static isInvertiblePolynomialInR3([B[BI)Z
    .registers 19

    .line 0
    move/from16 v0, p2

    add-int/lit8 v1, v0, 0x1

    new-array v2, v1, [B

    new-array v3, v1, [B

    new-array v4, v1, [B

    new-array v5, v1, [B

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput-byte v7, v4, v6

    aput-byte v7, v2, v6

    add-int/lit8 v8, v0, -0x1

    const/4 v9, -0x1

    aput-byte v9, v2, v8

    aput-byte v9, v2, v0

    move v9, v6

    :goto_1a
    if-ge v9, v0, :cond_25

    sub-int v10, v8, v9

    aget-byte v11, p0, v9

    aput-byte v11, v3, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_1a

    :cond_25
    aput-byte v6, v3, v0

    move v9, v6

    move v10, v7

    :goto_29
    mul-int/lit8 v11, v0, 0x2

    sub-int/2addr v11, v7

    if-ge v9, v11, :cond_a6

    invoke-static {v5, v6, v5, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v6, v5, v6

    aget-byte v11, v3, v6

    neg-int v11, v11

    aget-byte v12, v2, v6

    mul-int/2addr v11, v12

    neg-int v12, v10

    invoke-static {v12}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->checkLessThanZero(I)I

    move-result v13

    aget-byte v14, v3, v6

    invoke-static {v14}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->checkNotEqualToZero(I)I

    move-result v14

    and-int/2addr v13, v14

    xor-int/2addr v12, v10

    and-int/2addr v12, v13

    xor-int/2addr v10, v12

    add-int/2addr v10, v7

    move v12, v6

    :goto_4a
    if-ge v12, v1, :cond_6f

    aget-byte v14, v2, v12

    aget-byte v15, v3, v12

    xor-int/2addr v15, v14

    and-int/2addr v15, v13

    xor-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v2, v12

    aget-byte v14, v3, v12

    xor-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v3, v12

    aget-byte v14, v5, v12

    aget-byte v15, v4, v12

    xor-int/2addr v15, v14

    and-int/2addr v15, v13

    xor-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v5, v12

    aget-byte v14, v4, v12

    xor-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v4, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_4a

    :cond_6f
    move v12, v6

    :goto_70
    const/4 v13, 0x3

    if-ge v12, v1, :cond_83

    aget-byte v14, v3, v12

    aget-byte v15, v2, v12

    mul-int/2addr v15, v11

    add-int/2addr v14, v15

    invoke-static {v14, v13}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v13

    int-to-byte v13, v13

    aput-byte v13, v3, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_70

    :cond_83
    move v12, v6

    :goto_84
    if-ge v12, v1, :cond_96

    aget-byte v14, v4, v12

    aget-byte v15, v5, v12

    mul-int/2addr v15, v11

    add-int/2addr v14, v15

    invoke-static {v14, v13}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v4, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_84

    :cond_96
    move v11, v6

    :goto_97
    if-ge v11, v0, :cond_a1

    add-int/lit8 v12, v11, 0x1

    aget-byte v13, v3, v12

    aput-byte v13, v3, v11

    move v11, v12

    goto :goto_97

    :cond_a1
    aput-byte v6, v3, v0

    add-int/lit8 v9, v9, 0x1

    goto :goto_29

    :cond_a6
    aget-byte v1, v2, v6

    move v2, v6

    :goto_a9
    if-ge v2, v0, :cond_b6

    sub-int v3, v8, v2

    aget-byte v3, v5, v3

    mul-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a9

    :cond_b6
    if-nez v10, :cond_b9

    move v6, v7

    :cond_b9
    return v6
.end method

.method public static minmax([III)V
    .registers 9

    .line 0
    aget v0, p0, p1

    aget v1, p0, p2

    xor-int v2, v0, v1

    sub-int v3, v1, v0

    xor-int v4, v3, v1

    const/high16 v5, -0x80000000

    xor-int/2addr v4, v5

    and-int/2addr v4, v2

    xor-int/2addr v3, v4

    ushr-int/lit8 v3, v3, 0x1f

    neg-int v3, v3

    and-int/2addr v2, v3

    xor-int/2addr v0, v2

    aput v0, p0, p1

    xor-int p1, v1, v2

    aput p1, p0, p2

    return-void
.end method

.method public static multiplicationInR3([B[B[BI)V
    .registers 14

    .line 0
    add-int v0, p3, p3

    add-int/lit8 v1, v0, -0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_8
    const/4 v5, 0x3

    if-ge v4, p3, :cond_24

    move v6, v3

    move v7, v6

    :goto_d
    if-gt v6, v4, :cond_1f

    aget-byte v8, p1, v6

    sub-int v9, v4, v6

    aget-byte v9, p2, v9

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    invoke-static {v7, v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v7

    int-to-byte v7, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_1f
    aput-byte v7, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_24
    move v4, p3

    :goto_25
    if-ge v4, v1, :cond_43

    sub-int v6, v4, p3

    add-int/lit8 v6, v6, 0x1

    move v7, v3

    :goto_2c
    if-ge v6, p3, :cond_3e

    aget-byte v8, p1, v6

    sub-int v9, v4, v6

    aget-byte v9, p2, v9

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    invoke-static {v7, v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v7

    int-to-byte v7, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    :cond_3e
    aput-byte v7, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_43
    add-int/lit8 v0, v0, -0x2

    :goto_45
    if-lt v0, p3, :cond_66

    sub-int p1, v0, p3

    aget-byte p2, v2, p1

    aget-byte v1, v2, v0

    add-int/2addr p2, v1

    invoke-static {p2, v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result p2

    int-to-byte p2, p2

    aput-byte p2, v2, p1

    add-int/lit8 p1, p1, 0x1

    aget-byte p2, v2, p1

    aget-byte v1, v2, v0

    add-int/2addr p2, v1

    invoke-static {p2, v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result p2

    int-to-byte p2, p2

    aput-byte p2, v2, p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_45

    :cond_66
    :goto_66
    if-ge v3, p3, :cond_6f

    aget-byte p1, v2, v3

    aput-byte p1, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_66

    :cond_6f
    return-void
.end method

.method public static multiplicationInRQ([S[S[BII)V
    .registers 14

    .line 0
    add-int v0, p3, p3

    add-int/lit8 v1, v0, -0x1

    new-array v2, v1, [S

    const/4 v3, 0x0

    move v4, v3

    :goto_8
    if-ge v4, p3, :cond_23

    move v5, v3

    move v6, v5

    :goto_c
    if-gt v5, v4, :cond_1e

    aget-short v7, p1, v5

    sub-int v8, v4, v5

    aget-byte v8, p2, v8

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    invoke-static {v6, p4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v6

    int-to-short v6, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_1e
    aput-short v6, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_23
    move v4, p3

    :goto_24
    if-ge v4, v1, :cond_42

    sub-int v5, v4, p3

    add-int/lit8 v5, v5, 0x1

    move v6, v3

    :goto_2b
    if-ge v5, p3, :cond_3d

    aget-short v7, p1, v5

    sub-int v8, v4, v5

    aget-byte v8, p2, v8

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    invoke-static {v6, p4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v6

    int-to-short v6, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_3d
    aput-short v6, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_42
    add-int/lit8 v0, v0, -0x2

    :goto_44
    if-lt v0, p3, :cond_65

    sub-int p1, v0, p3

    aget-short p2, v2, p1

    aget-short v1, v2, v0

    add-int/2addr p2, v1

    invoke-static {p2, p4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result p2

    int-to-short p2, p2

    aput-short p2, v2, p1

    add-int/lit8 p1, p1, 0x1

    aget-short p2, v2, p1

    aget-short v1, v2, v0

    add-int/2addr p2, v1

    invoke-static {p2, p4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result p2

    int-to-short p2, p2

    aput-short p2, v2, p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_44

    :cond_65
    :goto_65
    if-ge v3, p3, :cond_6e

    aget-short p1, v2, v3

    aput-short p1, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_65

    :cond_6e
    return-void
.end method

.method public static right([B[S[BIIII)V
    .registers 10

    .line 0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_23

    aget-byte v1, p2, v0

    mul-int/2addr v1, p6

    sub-int/2addr v1, p5

    invoke-static {v1, p3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v1

    aget-short v2, p1, v0

    sub-int/2addr v1, v2

    mul-int/lit8 v2, p4, 0x4

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, p3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->checkLessThanZero(I)I

    move-result v1

    neg-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_23
    return-void
.end method

.method public static roundPolynomial([S[S)V
    .registers 5

    .line 0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_12

    aget-short v1, p1, v0

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method

.method public static sToUnsignedInt(S)I
    .registers 2

    .line 0
    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static scalarMultiplicationInRQ([S[SII)V
    .registers 6

    .line 0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_11

    aget-short v1, p1, v0

    mul-int/2addr v1, p2

    invoke-static {v1, p3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v1

    int-to-short v1, v1

    aput-short v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method

.method public static sortGenerateShortPolynomial([B[III)V
    .registers 7

    .line 0
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p3, :cond_d

    aget v2, p1, v1

    and-int/lit8 v2, v2, -0x2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    :goto_d
    if-ge p3, p2, :cond_1a

    aget v1, p1, p3

    and-int/lit8 v1, v1, -0x3

    or-int/lit8 v1, v1, 0x1

    aput v1, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_d

    :cond_1a
    invoke-static {p1, p2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->cryptoSort([II)V

    :goto_1d
    if-ge v0, p2, :cond_2b

    aget p3, p1, v0

    and-int/lit8 p3, p3, 0x3

    add-int/lit8 p3, p3, -0x1

    int-to-byte p3, p3

    aput-byte p3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_2b
    return-void
.end method

.method public static toIntExact(J)I
    .registers 5

    .line 0
    long-to-int v0, p0

    int-to-long v1, v0

    cmp-long p0, v1, p0

    if-nez p0, :cond_7

    return v0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "value out of integer range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static top([B[S[BIII)V
    .registers 10

    .line 0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_1e

    aget-short v1, p1, v0

    aget-byte v2, p2, v0

    add-int/lit8 v3, p3, -0x1

    div-int/lit8 v3, v3, 0x2

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-static {v1, p3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v1

    add-int/2addr v1, p4

    mul-int/2addr v1, p5

    add-int/lit16 v1, v1, 0x4000

    ushr-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1e
    return-void
.end method

.method public static transformRQToR3([B[S)V
    .registers 5

    .line 0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_11

    aget-short v1, p1, v0

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method

.method public static updateDiffMask([B[BI)V
    .registers 6

    .line 0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_11

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v2, v1

    and-int/2addr v2, p2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method
