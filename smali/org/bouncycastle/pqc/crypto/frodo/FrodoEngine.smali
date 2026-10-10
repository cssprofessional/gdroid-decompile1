###### Class org.bouncycastle.pqc.crypto.frodo.FrodoEngine (org.bouncycastle.pqc.crypto.frodo.FrodoEngine)
.class Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;
.super Ljava/lang/Object;


# static fields
.field private static final len_chi:I = 0x10

.field private static final len_chi_bytes:I = 0x2

.field private static final len_seedA:I = 0x80

.field private static final len_seedA_bytes:I = 0x10

.field private static final len_z:I = 0x80

.field private static final len_z_bytes:I = 0x10

.field private static final mbar:I = 0x8

.field static final nbar:I = 0x8


# instance fields
.field private final B:I

.field private final D:I

.field private final T_chi:[S

.field private final digest:Lorg/bouncycastle/crypto/Xof;

.field private final gen:Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;

.field private final len_ct_bytes:I

.field private final len_k:I

.field private final len_k_bytes:I

.field private final len_mu:I

.field private final len_mu_bytes:I

.field private final len_pk_bytes:I

.field private final len_pkh:I

.field private final len_pkh_bytes:I

.field private final len_s:I

.field private final len_s_bytes:I

.field private final len_seedSE:I

.field private final len_seedSE_bytes:I

.field private final len_sk_bytes:I

.field private final len_ss:I

.field private final len_ss_bytes:I

.field private final n:I

.field private final q:I


# direct methods
.method public constructor <init>(III[SLorg/bouncycastle/crypto/Xof;Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;)V
    .registers 9

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    const/4 v0, 0x1

    shl-int/2addr v0, p2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->q:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->B:I

    mul-int/lit8 p3, p3, 0x40

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_mu:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_ss:I

    div-int/lit8 v0, p3, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_mu_bytes:I

    div-int/lit8 v0, p3, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    div-int/lit8 v0, p3, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    div-int/lit8 v1, p3, 0x8

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k_bytes:I

    div-int/lit8 v1, p3, 0x8

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    div-int/lit8 p3, p3, 0x8

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_ss_bytes:I

    mul-int p3, p2, p1

    mul-int/lit8 p3, p3, 0x8

    div-int/lit8 p3, p3, 0x8

    mul-int/lit8 p2, p2, 0x40

    div-int/lit8 p2, p2, 0x8

    add-int/2addr p2, p3

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_ct_bytes:I

    add-int/lit8 p3, p3, 0x10

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pk_bytes:I

    add-int/2addr v0, p3

    mul-int/lit8 p1, p1, 0x10

    add-int/2addr p1, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_sk_bytes:I

    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->T_chi:[S

    iput-object p5, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iput-object p6, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->gen:Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;

    return-void
.end method

.method private ctselect([B[BS)[B
    .registers 7

    .line 0
    array-length p0, p1

    new-array p0, p0, [B

    const/4 v0, 0x0

    :goto_4
    array-length v1, p1

    if-ge v0, v1, :cond_19

    not-int v1, p3

    aget-byte v2, p1, v0

    and-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, p2, v0

    and-int/2addr v2, p3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_19
    return-object p0
.end method

.method private ctverify([S[S[S[S)S
    .registers 9

    .line 0
    const/4 p0, 0x0

    move v0, p0

    move v1, v0

    :goto_3
    array-length v2, p1

    if-ge v0, v2, :cond_11

    aget-short v2, p1, v0

    aget-short v3, p3, v0

    xor-int/2addr v2, v3

    or-int/2addr v1, v2

    int-to-short v1, v1

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_3

    :cond_11
    move p1, p0

    :goto_12
    array-length p3, p2

    if-ge p1, p3, :cond_20

    aget-short p3, p2, p1

    aget-short v0, p4, p1

    xor-int/2addr p3, v0

    or-int/2addr p3, v1

    int-to-short v1, p3

    add-int/lit8 p1, p1, 0x1

    int-to-short p1, p1

    goto :goto_12

    :cond_20
    if-nez v1, :cond_23

    return p0

    :cond_23
    const/4 p0, -0x1

    return p0
.end method

.method private decode([S)[B
    .registers 19

    .line 0
    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->B:I

    const/4 v2, 0x1

    shl-int v3, v2, v1

    sub-int/2addr v3, v2

    int-to-short v3, v3

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    shl-int v4, v2, v4

    sub-int/2addr v4, v2

    int-to-short v4, v4

    const/16 v5, 0x8

    mul-int/2addr v1, v5

    new-array v1, v1, [B

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_17
    if-ge v7, v5, :cond_50

    const-wide/16 v9, 0x0

    move v11, v6

    :goto_1c
    if-ge v11, v5, :cond_38

    aget-short v12, p1, v8

    and-int/2addr v12, v4

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->B:I

    sub-int v15, v13, v14

    sub-int/2addr v15, v2

    shl-int v15, v2, v15

    add-int/2addr v12, v15

    sub-int/2addr v13, v14

    shr-int/2addr v12, v13

    int-to-short v12, v12

    and-int/2addr v12, v3

    int-to-long v12, v12

    mul-int/2addr v14, v11

    shl-long/2addr v12, v14

    or-long/2addr v9, v12

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_1c

    :cond_38
    move v11, v6

    :goto_39
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->B:I

    if-ge v11, v12, :cond_4d

    mul-int/2addr v12, v7

    add-int/2addr v12, v11

    mul-int/lit8 v13, v11, 0x8

    shr-long v13, v9, v13

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    long-to-int v13, v13

    int-to-byte v13, v13

    aput-byte v13, v1, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_39

    :cond_4d
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    :cond_50
    return-object v1
.end method

.method private encode([B)[S
    .registers 14

    .line 0
    const/16 v0, 0x40

    new-array v0, v0, [S

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v3

    move v5, v2

    :goto_9
    const/16 v6, 0x8

    if-ge v3, v6, :cond_3f

    move v7, v1

    :goto_e
    if-ge v7, v6, :cond_3c

    move v8, v1

    move v9, v8

    :goto_12
    iget v10, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->B:I

    if-ge v8, v10, :cond_2d

    aget-byte v10, p1, v4

    and-int/2addr v10, v5

    if-ne v10, v5, :cond_1d

    move v10, v2

    goto :goto_1e

    :cond_1d
    move v10, v1

    :goto_1e
    shl-int v11, v2, v8

    mul-int/2addr v11, v10

    add-int/2addr v9, v11

    shl-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    if-nez v5, :cond_2a

    add-int/lit8 v4, v4, 0x1

    move v5, v2

    :cond_2a
    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    :cond_2d
    mul-int/lit8 v8, v3, 0x8

    add-int/2addr v8, v7

    iget v11, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->q:I

    shl-int v10, v2, v10

    div-int/2addr v11, v10

    mul-int/2addr v9, v11

    int-to-short v9, v9

    aput-short v9, v0, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_3f
    return-object v0
.end method

.method private matrix_add([S[SII)[S
    .registers 12

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->q:I

    add-int/lit8 p0, p0, -0x1

    mul-int v0, p3, p4

    new-array v0, v0, [S

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v2, p3, :cond_21

    move v3, v1

    :goto_d
    if-ge v3, p4, :cond_1e

    mul-int v4, v2, p4

    add-int/2addr v4, v3

    aget-short v5, p1, v4

    aget-short v6, p2, v4

    add-int/2addr v5, v6

    and-int/2addr v5, p0

    int-to-short v5, v5

    aput-short v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_21
    return-object v0
.end method

.method private matrix_mul([SII[SII)[S
    .registers 14

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->q:I

    add-int/lit8 p0, p0, -0x1

    mul-int p5, p2, p6

    new-array p5, p5, [S

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-ge v1, p2, :cond_2f

    move v2, v0

    :goto_d
    if-ge v2, p6, :cond_2c

    move v3, v0

    move v4, v3

    :goto_11
    if-ge v3, p3, :cond_22

    mul-int v5, v1, p3

    add-int/2addr v5, v3

    aget-short v5, p1, v5

    mul-int v6, v3, p6

    add-int/2addr v6, v2

    aget-short v6, p4, v6

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_22
    mul-int v3, v1, p6

    add-int/2addr v3, v2

    and-int/2addr v4, p0

    int-to-short v4, v4

    aput-short v4, p5, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_2f
    return-object p5
.end method

.method private matrix_sub([S[SII)[S
    .registers 12

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->q:I

    add-int/lit8 p0, p0, -0x1

    mul-int v0, p3, p4

    new-array v0, v0, [S

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v2, p3, :cond_21

    move v3, v1

    :goto_d
    if-ge v3, p4, :cond_1e

    mul-int v4, v2, p4

    add-int/2addr v4, v3

    aget-short v5, p1, v4

    aget-short v6, p2, v4

    sub-int/2addr v5, v6

    and-int/2addr v5, p0

    int-to-short v5, v5

    aput-short v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_21
    return-object v0
.end method

.method private matrix_transpose([SII)[S
    .registers 9

    .line 0
    mul-int p0, p2, p3

    new-array p0, p0, [S

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, p3, :cond_1b

    move v2, v0

    :goto_9
    if-ge v2, p2, :cond_18

    mul-int v3, v1, p2

    add-int/2addr v3, v2

    mul-int v4, v2, p3

    add-int/2addr v4, v1

    aget-short v4, p1, v4

    aput-short v4, p0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1b
    return-object p0
.end method

.method private pack([S)[B
    .registers 19

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    mul-int/2addr v3, v2

    const/16 v4, 0x8

    div-int/2addr v3, v4

    new-array v5, v3, [B

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    :cond_12
    :goto_12
    if-ge v7, v3, :cond_51

    if-lt v8, v2, :cond_1a

    if-ne v8, v2, :cond_51

    if-lez v9, :cond_51

    :cond_1a
    move v11, v6

    :cond_1b
    :goto_1b
    if-ge v11, v4, :cond_4b

    rsub-int/lit8 v12, v11, 0x8

    invoke-static {v12, v9}, Ljava/lang/Math;->min(II)I

    move-result v13

    const/4 v14, 0x1

    shl-int v15, v14, v13

    sub-int/2addr v15, v14

    int-to-short v14, v15

    sub-int/2addr v9, v13

    shr-int v15, v10, v9

    and-int/2addr v14, v15

    int-to-byte v14, v14

    aget-byte v15, v5, v7

    sub-int/2addr v12, v13

    shl-int v12, v14, v12

    add-int/2addr v15, v12

    int-to-byte v12, v15

    aput-byte v12, v5, v7

    add-int/2addr v11, v13

    int-to-byte v11, v11

    int-to-byte v9, v9

    if-nez v9, :cond_1b

    if-ge v8, v2, :cond_4b

    aget-short v9, v1, v8

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    int-to-byte v10, v10

    add-int/lit8 v8, v8, 0x1

    int-to-short v8, v8

    move/from16 v16, v10

    move v10, v9

    move/from16 v9, v16

    goto :goto_1b

    :cond_4b
    if-ne v11, v4, :cond_12

    add-int/lit8 v7, v7, 0x1

    int-to-short v7, v7

    goto :goto_12

    :cond_51
    return-object v5
.end method

.method private sample(S)S
    .registers 8

    .line 0
    const v0, 0xffff

    and-int/2addr p1, v0

    ushr-int/lit8 v1, p1, 0x1

    int-to-short v1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->T_chi:[S

    array-length v5, v4

    if-ge v2, v5, :cond_18

    aget-short v4, v4, v2

    if-le v1, v4, :cond_15

    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_18
    rem-int/lit8 p1, p1, 0x2

    const/4 p0, 0x1

    if-ne p1, p0, :cond_22

    mul-int/lit8 v3, v3, -0x1

    and-int p0, v3, v0

    int-to-short v3, p0

    :cond_22
    return v3
.end method

.method private sample_matrix([SIII)[S
    .registers 11

    .line 0
    mul-int v0, p3, p4

    new-array v0, v0, [S

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, p3, :cond_1e

    move v3, v1

    :goto_9
    if-ge v3, p4, :cond_1b

    mul-int v4, v2, p4

    add-int/2addr v4, v3

    add-int v5, v4, p2

    aget-short v5, p1, v5

    invoke-direct {p0, v5}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample(S)S

    move-result v5

    aput-short v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1e
    return-object v0
.end method

.method private unpack([BII)[S
    .registers 20

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    mul-int v2, p2, p3

    new-array v3, v2, [S

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_c
    :goto_c
    if-ge v5, v2, :cond_6d

    array-length v9, v1

    if-lt v6, v9, :cond_16

    array-length v9, v1

    if-ne v6, v9, :cond_6d

    if-lez v7, :cond_6d

    :cond_16
    const/4 v9, 0x0

    :goto_17
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    if-ge v9, v10, :cond_65

    sub-int/2addr v10, v9

    invoke-static {v10, v7}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v11, 0x1

    shl-int v12, v11, v10

    sub-int/2addr v12, v11

    const v11, 0xffff

    and-int/2addr v12, v11

    int-to-short v12, v12

    and-int/lit16 v13, v8, 0xff

    and-int/lit16 v14, v7, 0xff

    sub-int/2addr v14, v10

    ushr-int/2addr v13, v14

    and-int v14, v12, v11

    and-int/2addr v13, v14

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aget-short v14, v3, v5

    and-int/2addr v14, v11

    and-int/lit16 v13, v13, 0xff

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    and-int/lit16 v4, v9, 0xff

    sub-int/2addr v15, v4

    sub-int/2addr v15, v10

    shl-int v4, v13, v15

    add-int/2addr v14, v4

    and-int v4, v14, v11

    int-to-short v4, v4

    aput-short v4, v3, v5

    add-int/2addr v9, v10

    int-to-byte v9, v9

    sub-int/2addr v7, v10

    int-to-byte v4, v7

    shl-int v7, v12, v4

    not-int v7, v7

    and-int/2addr v7, v8

    int-to-byte v7, v7

    if-nez v4, :cond_62

    array-length v8, v1

    if-ge v6, v8, :cond_5f

    aget-byte v4, v1, v6

    add-int/lit8 v6, v6, 0x1

    int-to-short v6, v6

    const/16 v7, 0x8

    move v8, v4

    goto :goto_17

    :cond_5f
    move v8, v7

    move v7, v4

    goto :goto_65

    :cond_62
    move v8, v7

    move v7, v4

    goto :goto_17

    :cond_65
    :goto_65
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    if-ne v9, v4, :cond_c

    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    goto :goto_c

    :cond_6d
    return-object v3
.end method


# virtual methods
.method public getCipherTextSize()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_ct_bytes:I

    return p0
.end method

.method public getPrivateKeySize()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_sk_bytes:I

    return p0
.end method

.method public getPublicKeySize()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pk_bytes:I

    return p0
.end method

.method public getSessionKeySize()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_ss_bytes:I

    return p0
.end method

.method public kem_dec([B[B[B)V
    .registers 26

    .line 0
    move-object/from16 v7, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    iget v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    const/16 v8, 0x8

    mul-int/2addr v2, v8

    iget v3, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    mul-int/2addr v2, v3

    div-int/2addr v2, v8

    const/4 v9, 0x0

    invoke-static {v0, v9, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    iget v3, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    mul-int/lit8 v3, v3, 0x40

    div-int/2addr v3, v8

    add-int/2addr v3, v2

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    invoke-static {v1, v9, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    add-int/lit8 v2, v0, 0x10

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    iget v3, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/2addr v0, v3

    mul-int/2addr v0, v8

    div-int/2addr v0, v8

    add-int/2addr v0, v2

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    iget v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit16 v2, v2, 0x80

    div-int/2addr v2, v8

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iget v3, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/2addr v3, v8

    new-array v3, v3, [S

    move v4, v9

    :goto_46
    if-ge v4, v8, :cond_63

    move v5, v9

    :goto_49
    iget v6, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    if-ge v5, v6, :cond_60

    mul-int v15, v4, v6

    add-int/2addr v15, v5

    mul-int/2addr v6, v4

    mul-int/lit8 v6, v6, 0x2

    mul-int/lit8 v16, v5, 0x2

    add-int v6, v6, v16

    invoke-static {v0, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v6

    aput-short v6, v3, v15

    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    :cond_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    :cond_63
    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    invoke-direct {v7, v3, v8, v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_transpose([SII)[S

    move-result-object v4

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    add-int/2addr v0, v2

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v15

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    invoke-direct {v7, v10, v8, v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->unpack([BII)[S

    move-result-object v6

    invoke-direct {v7, v11, v8, v8}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->unpack([BII)[S

    move-result-object v5

    iget v3, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    const/16 v16, 0x8

    const/16 v2, 0x8

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v17, v3

    move-object v9, v5

    move/from16 v5, v17

    move-object/from16 v18, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_mul([SII[SII)[S

    move-result-object v0

    invoke-direct {v7, v9, v0, v8, v8}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_sub([S[SII)[S

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->decode([S)[B

    move-result-object v6

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k_bytes:I

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iget-object v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    const/4 v3, 0x0

    invoke-interface {v1, v15, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_mu_bytes:I

    invoke-interface {v1, v6, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    iget v4, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k_bytes:I

    add-int/2addr v2, v4

    invoke-interface {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    iget v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k_bytes:I

    add-int/2addr v2, v1

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v15

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x40

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    iget-object v3, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/16 v4, -0x6a

    invoke-interface {v3, v4}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v3, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v4, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    const/4 v5, 0x0

    invoke-interface {v3, v0, v5, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0, v2, v5, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x40

    new-array v5, v0, [S

    const/4 v1, 0x0

    :goto_e8
    if-ge v1, v0, :cond_f5

    mul-int/lit8 v3, v1, 0x2

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v3

    aput-short v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e8

    :cond_f5
    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    const/4 v1, 0x0

    invoke-direct {v7, v5, v1, v8, v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample_matrix([SIII)[S

    move-result-object v16

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v1, v0, 0x8

    invoke-direct {v7, v5, v1, v8, v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample_matrix([SIII)[S

    move-result-object v4

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->gen:Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;

    invoke-virtual {v0, v13}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->genMatrix([B)[S

    move-result-object v13

    const/16 v2, 0x8

    iget v3, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v17, v3

    move-object/from16 v19, v4

    move-object v4, v13

    move-object v13, v5

    move/from16 v5, v17

    move-object/from16 v20, v6

    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_mul([SII[SII)[S

    move-result-object v0

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    move-object/from16 v2, v19

    invoke-direct {v7, v0, v2, v8, v1}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_add([S[SII)[S

    move-result-object v6

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v0, v0, 0x10

    invoke-direct {v7, v13, v0, v8, v8}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample_matrix([SIII)[S

    move-result-object v13

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    invoke-direct {v7, v14, v0, v8}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->unpack([BII)[S

    move-result-object v4

    iget v5, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    const/16 v14, 0x8

    const/16 v2, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move v3, v5

    move-object/from16 v21, v6

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_mul([SII[SII)[S

    move-result-object v0

    invoke-direct {v7, v0, v13, v8, v8}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_add([S[SII)[S

    move-result-object v0

    move-object/from16 v1, v20

    invoke-direct {v7, v1}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->encode([B)[S

    move-result-object v1

    invoke-direct {v7, v0, v1, v8, v8}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_add([S[SII)[S

    move-result-object v0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v7, v1, v9, v2, v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->ctverify([S[S[S[S)S

    move-result v0

    invoke-direct {v7, v15, v12, v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->ctselect([B[BS)[B

    move-result-object v0

    iget-object v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, v10

    const/4 v3, 0x0

    invoke-interface {v1, v10, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, v11

    invoke-interface {v1, v11, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, v0

    invoke-interface {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_ss_bytes:I

    move-object/from16 v2, p1

    invoke-interface {v0, v2, v3, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-void
.end method

.method public kem_enc([B[B[BLjava/security/SecureRandom;)V
    .registers 22

    .line 0
    move-object/from16 v7, p0

    move-object/from16 v0, p3

    const/4 v8, 0x0

    const/16 v9, 0x10

    invoke-static {v0, v8, v9}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iget v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pk_bytes:I

    invoke-static {v0, v9, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    iget v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_mu_bytes:I

    new-array v11, v2, [B

    move-object/from16 v2, p4

    invoke-virtual {v2, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    new-array v2, v2, [B

    iget-object v3, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v4, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pk_bytes:I

    invoke-interface {v3, v0, v8, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v3, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    invoke-interface {v0, v2, v8, v3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE:I

    iget v3, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k:I

    add-int/2addr v0, v3

    new-array v0, v0, [B

    iget-object v3, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v4, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    invoke-interface {v3, v2, v8, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v3, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_mu_bytes:I

    invoke-interface {v2, v11, v8, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v3, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    iget v4, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k_bytes:I

    add-int/2addr v3, v4

    invoke-interface {v2, v0, v8, v3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    invoke-static {v0, v8, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iget v3, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    iget v4, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k_bytes:I

    add-int/2addr v4, v3

    invoke-static {v0, v3, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/2addr v0, v9

    add-int/lit8 v0, v0, 0x40

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [B

    iget-object v4, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/16 v5, -0x6a

    invoke-interface {v4, v5}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v4, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v5, v2

    invoke-interface {v4, v2, v8, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v2, v3, v8, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    div-int/lit8 v0, v0, 0x2

    new-array v13, v0, [S

    move v2, v8

    :goto_7a
    if-ge v2, v0, :cond_87

    mul-int/lit8 v4, v2, 0x2

    invoke-static {v3, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v4

    aput-short v4, v13, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7a

    :cond_87
    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    const/16 v14, 0x8

    invoke-direct {v7, v13, v8, v14, v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample_matrix([SIII)[S

    move-result-object v15

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v2, v0, 0x8

    invoke-direct {v7, v13, v2, v14, v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample_matrix([SIII)[S

    move-result-object v6

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->gen:Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->genMatrix([B)[S

    move-result-object v4

    const/16 v2, 0x8

    iget v5, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    move-object/from16 v0, p0

    move-object v1, v15

    move v3, v5

    move/from16 v16, v5

    move-object v8, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_mul([SII[SII)[S

    move-result-object v0

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    invoke-direct {v7, v0, v8, v14, v1}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_add([S[SII)[S

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->pack([S)[B

    move-result-object v8

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/2addr v0, v9

    invoke-direct {v7, v13, v0, v14, v14}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample_matrix([SIII)[S

    move-result-object v9

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    invoke-direct {v7, v10, v0, v14}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->unpack([BII)[S

    move-result-object v4

    iget v5, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move-object v1, v15

    move v3, v5

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_mul([SII[SII)[S

    move-result-object v0

    invoke-direct {v7, v0, v9, v14, v14}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_add([S[SII)[S

    move-result-object v0

    invoke-direct {v7, v11}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->encode([B)[S

    move-result-object v1

    invoke-direct {v7, v0, v1, v14, v14}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_add([S[SII)[S

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->pack([S)[B

    move-result-object v0

    invoke-static {v8, v0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v1

    iget v2, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_ct_bytes:I

    move-object/from16 v3, p1

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, v8

    invoke-interface {v1, v8, v4, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, v0

    invoke-interface {v1, v0, v4, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k_bytes:I

    invoke-interface {v0, v12, v4, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    move-object/from16 v2, p2

    invoke-interface {v0, v2, v4, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-void
.end method

.method public kem_keypair([B[BLjava/security/SecureRandom;)V
    .registers 16

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    add-int/2addr v0, v1

    const/16 v1, 0x10

    add-int/2addr v0, v1

    new-array v0, v0, [B

    invoke-virtual {p3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p3

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    add-int/2addr v4, v3

    invoke-static {v0, v3, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    add-int v6, v4, v5

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    invoke-static {v0, v6, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    new-array v4, v1, [B

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v6, v0

    invoke-interface {v5, v0, v2, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0, v4, v2, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->gen:Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->genMatrix([B)[S

    move-result-object v6

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v0, v0, 0x20

    new-array v5, v0, [B

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/16 v8, 0x5f

    invoke-interface {v7, v8}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v8, v3

    invoke-interface {v7, v3, v2, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v3, v5, v2, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/2addr v0, v1

    new-array v1, v0, [S

    move v3, v2

    :goto_5a
    if-ge v3, v0, :cond_67

    mul-int/lit8 v7, v3, 0x2

    invoke-static {v5, v7}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v7

    aput-short v7, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    :cond_67
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    const/16 v3, 0x8

    invoke-direct {p0, v1, v2, v3, v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample_matrix([SIII)[S

    move-result-object v0

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    invoke-direct {p0, v0, v3, v5}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_transpose([SII)[S

    move-result-object v9

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v7, v5, 0x8

    invoke-direct {p0, v1, v7, v5, v3}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample_matrix([SIII)[S

    move-result-object v1

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    const/16 v11, 0x8

    move-object v5, p0

    move v7, v10

    move v8, v10

    invoke-direct/range {v5 .. v11}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_mul([SII[SII)[S

    move-result-object v5

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    invoke-direct {p0, v5, v1, v6, v3}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_add([S[SII)[S

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->pack([S)[B

    move-result-object v1

    invoke-static {v4, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pk_bytes:I

    invoke-static {v1, v2, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    new-array v4, v1, [B

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v6, p1

    invoke-interface {v5, p1, v2, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v5, v4, v2, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    invoke-static {p3, p1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p1

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pk_bytes:I

    add-int/2addr p3, v1

    invoke-static {p1, v2, p2, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p1, v2

    :goto_b7
    if-ge p1, v3, :cond_dd

    move p3, v2

    :goto_ba
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    if-ge p3, v1, :cond_da

    mul-int/2addr v1, p1

    add-int/2addr v1, p3

    aget-short v1, v0, v1

    invoke-static {v1}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S)[B

    move-result-object v1

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pk_bytes:I

    add-int/2addr v5, v6

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/2addr v6, p1

    const/4 v7, 0x2

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    mul-int/lit8 v6, p3, 0x2

    add-int/2addr v5, v6

    invoke-static {v1, v2, p2, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_ba

    :cond_da
    add-int/lit8 p1, p1, 0x1

    goto :goto_b7

    :cond_dd
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_sk_bytes:I

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    sub-int/2addr p1, p0

    invoke-static {v4, v2, p2, p1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
