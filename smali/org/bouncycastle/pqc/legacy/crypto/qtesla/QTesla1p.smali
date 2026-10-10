###### Class org.bouncycastle.pqc.legacy.crypto.qtesla.QTesla1p (org.bouncycastle.pqc.legacy.crypto.qtesla.QTesla1p)
.class Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$Gaussian;,
        Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;
    }
.end annotation


# static fields
.field private static BPLUS1BYTES:I = 0x3

.field static final CRYPTO_BYTES:I = 0xa20

.field private static final CRYPTO_C_BYTES:I = 0x20

.field static final CRYPTO_PUBLICKEYBYTES:I = 0x3a20

.field private static final CRYPTO_RANDOMBYTES:I = 0x20

.field static final CRYPTO_SECRETKEYBYTES:I = 0x1468

.field private static final CRYPTO_SEEDBYTES:I = 0x20

.field private static final HM_BYTES:I = 0x28

.field private static NBLOCKS_SHAKE:I = 0x38

.field private static final PARAM_B:I = 0x7ffff

.field private static final PARAM_BARR_DIV:I = 0x1e

.field private static final PARAM_BARR_MULT:I = 0x3

.field private static final PARAM_B_BITS:I = 0x13

.field private static final PARAM_D:I = 0x16

.field private static final PARAM_E:I = 0x22a

.field private static final PARAM_GEN_A:I = 0x6c

.field private static final PARAM_H:I = 0x19

.field private static final PARAM_K:I = 0x4

.field private static final PARAM_KEYGEN_BOUND_E:I = 0x22a

.field private static final PARAM_KEYGEN_BOUND_S:I = 0x22a

.field private static final PARAM_N:I = 0x400

.field private static final PARAM_Q:I = 0x147a9001

.field private static final PARAM_QINV:J = 0x837a8fffL

.field private static final PARAM_Q_LOG:I = 0x1d

.field private static final PARAM_R2_INVN:I = 0xd00399

.field private static final PARAM_S:I = 0x22a

.field private static final PARAM_S_BITS:I = 0x8

.field private static final RADIX32:I = 0x20

.field private static final maskb1:I = 0xfffff


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static absolute(I)I
    .registers 2

    .line 0
    shr-int/lit8 v0, p0, 0x1f

    xor-int/2addr p0, v0

    sub-int/2addr p0, v0

    return p0
.end method

.method public static synthetic access$000([BII)I
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result p0

    return p0
.end method

.method private static at([BII)I
    .registers 3

    .line 0
    add-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x2

    invoke-static {p0, p1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result p0

    return p0
.end method

.method private static at([BIII)V
    .registers 4

    .line 0
    add-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x2

    invoke-static {p3, p0, p1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    return-void
.end method

.method private static checkPolynomial([III)Z
    .registers 14

    .line 0
    const/16 v0, 0x400

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v0, :cond_15

    add-int v4, p1, v3

    aget v4, p0, v4

    invoke-static {v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->absolute(I)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_15
    move p0, v2

    move p1, p0

    :goto_17
    const/16 v3, 0x19

    if-ge p0, v3, :cond_41

    move v3, v2

    :goto_1c
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_39

    aget v4, v1, v3

    add-int/lit8 v5, v3, 0x1

    aget v6, v1, v5

    sub-int v7, v6, v4

    shr-int/lit8 v7, v7, 0x1f

    and-int v8, v6, v7

    not-int v9, v7

    and-int v10, v4, v9

    or-int/2addr v8, v10

    and-int/2addr v4, v7

    and-int/2addr v6, v9

    or-int/2addr v4, v6

    aput v4, v1, v5

    aput v8, v1, v3

    move v3, v5

    goto :goto_1c

    :cond_39
    aget v3, v1, v4

    add-int/2addr p1, v3

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_17

    :cond_41
    if-le p1, p2, :cond_44

    const/4 v2, 0x1

    :cond_44
    return v2
.end method

.method public static decodePublicKey([I[BI[B)V
    .registers 27

    .line 0
    move-object/from16 v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    const/16 v3, 0x1000

    if-ge v2, v3, :cond_279

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v3

    const v4, 0x1fffffff

    and-int/2addr v3, v4

    aput v3, p0, v2

    add-int/lit8 v3, v2, 0x1

    const/4 v5, 0x0

    invoke-static {v0, v1, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x1d

    const/4 v6, 0x1

    invoke-static {v0, v1, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v7

    const/4 v8, 0x3

    shl-int/2addr v7, v8

    or-int/2addr v5, v7

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x2

    invoke-static {v0, v1, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    const/16 v7, 0x1a

    ushr-int/2addr v5, v7

    const/4 v9, 0x2

    invoke-static {v0, v1, v9}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v10

    const/4 v11, 0x6

    shl-int/2addr v10, v11

    or-int/2addr v5, v10

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x3

    invoke-static {v0, v1, v9}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    const/16 v10, 0x17

    ushr-int/2addr v5, v10

    invoke-static {v0, v1, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v12

    const/16 v13, 0x9

    shl-int/2addr v12, v13

    or-int/2addr v5, v12

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x4

    invoke-static {v0, v1, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    const/16 v12, 0x14

    ushr-int/2addr v5, v12

    const/4 v14, 0x4

    invoke-static {v0, v1, v14}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v15

    const/16 v8, 0xc

    shl-int/2addr v15, v8

    or-int/2addr v5, v15

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x5

    invoke-static {v0, v1, v14}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    const/16 v15, 0x11

    ushr-int/2addr v5, v15

    const/4 v7, 0x5

    invoke-static {v0, v1, v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v16

    const/16 v10, 0xf

    shl-int/lit8 v16, v16, 0xf

    or-int v5, v5, v16

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x6

    invoke-static {v0, v1, v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    const/16 v12, 0xe

    ushr-int/2addr v5, v12

    invoke-static {v0, v1, v11}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v17

    const/16 v15, 0x12

    shl-int/lit8 v17, v17, 0x12

    or-int v5, v5, v17

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x7

    invoke-static {v0, v1, v11}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    const/16 v11, 0xb

    ushr-int/2addr v5, v11

    const/4 v15, 0x7

    invoke-static {v0, v1, v15}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v19

    const/16 v10, 0x15

    shl-int/lit8 v19, v19, 0x15

    or-int v5, v5, v19

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x8

    invoke-static {v0, v1, v15}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    const/16 v10, 0x8

    ushr-int/2addr v5, v10

    invoke-static {v0, v1, v10}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v21

    const/16 v12, 0x18

    shl-int/lit8 v21, v21, 0x18

    or-int v5, v5, v21

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x9

    invoke-static {v0, v1, v10}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/2addr v5, v7

    invoke-static {v0, v1, v13}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v21

    const/16 v10, 0x1b

    shl-int/lit8 v21, v21, 0x1b

    or-int v5, v5, v21

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0xa

    invoke-static {v0, v1, v13}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/2addr v5, v9

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0xb

    invoke-static {v0, v1, v13}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x1f

    const/16 v13, 0xa

    invoke-static {v0, v1, v13}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v13

    shl-int/2addr v13, v6

    or-int/2addr v5, v13

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0xc

    const/16 v5, 0xa

    invoke-static {v0, v1, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x1c

    invoke-static {v0, v1, v11}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v13

    shl-int/2addr v13, v14

    or-int/2addr v5, v13

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0xd

    invoke-static {v0, v1, v11}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x19

    invoke-static {v0, v1, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v13

    shl-int/2addr v13, v15

    or-int/2addr v5, v13

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0xe

    invoke-static {v0, v1, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x16

    const/16 v13, 0xd

    invoke-static {v0, v1, v13}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v13

    shl-int/lit8 v13, v13, 0xa

    or-int/2addr v5, v13

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0xf

    const/16 v5, 0xd

    invoke-static {v0, v1, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    const/16 v13, 0x13

    ushr-int/2addr v5, v13

    const/16 v8, 0xe

    invoke-static {v0, v1, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v22

    shl-int/lit8 v22, v22, 0xd

    or-int v5, v5, v22

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x10

    invoke-static {v0, v1, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x10

    const/16 v8, 0xf

    invoke-static {v0, v1, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v20

    shl-int/lit8 v20, v20, 0x10

    or-int v5, v5, v20

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x11

    invoke-static {v0, v1, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0xd

    const/16 v8, 0x10

    invoke-static {v0, v1, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v8

    shl-int/2addr v8, v13

    or-int/2addr v5, v8

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x12

    const/16 v5, 0x10

    invoke-static {v0, v1, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0xa

    const/16 v8, 0x11

    invoke-static {v0, v1, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v18

    shl-int/lit8 v18, v18, 0x16

    or-int v5, v5, v18

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x13

    invoke-static {v0, v1, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/2addr v5, v15

    const/16 v8, 0x12

    invoke-static {v0, v1, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v15

    shl-int/lit8 v15, v15, 0x19

    or-int/2addr v5, v15

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x14

    invoke-static {v0, v1, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/2addr v5, v14

    invoke-static {v0, v1, v13}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v8

    shl-int/lit8 v8, v8, 0x1c

    or-int/2addr v5, v8

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x15

    invoke-static {v0, v1, v13}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/2addr v5, v6

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x16

    invoke-static {v0, v1, v13}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x1e

    const/16 v6, 0x14

    invoke-static {v0, v1, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v8

    shl-int/2addr v8, v9

    or-int/2addr v5, v8

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x17

    invoke-static {v0, v1, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/2addr v5, v10

    const/16 v6, 0x15

    invoke-static {v0, v1, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v8

    shl-int/lit8 v7, v8, 0x5

    or-int/2addr v5, v7

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x18

    invoke-static {v0, v1, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/2addr v5, v12

    const/16 v6, 0x16

    invoke-static {v0, v1, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    const/16 v7, 0x8

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x19

    const/16 v5, 0x16

    invoke-static {v0, v1, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    const/16 v6, 0x15

    ushr-int/2addr v5, v6

    const/16 v6, 0x17

    invoke-static {v0, v1, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v7

    shl-int/2addr v7, v11

    or-int/2addr v5, v7

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x1a

    invoke-static {v0, v1, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    const/16 v6, 0x12

    ushr-int/2addr v5, v6

    invoke-static {v0, v1, v12}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    const/16 v7, 0xe

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x1b

    invoke-static {v0, v1, v12}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    const/16 v6, 0xf

    ushr-int/2addr v5, v6

    const/16 v6, 0x19

    invoke-static {v0, v1, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    const/16 v7, 0x11

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x1c

    const/16 v5, 0x19

    invoke-static {v0, v1, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    const/16 v6, 0xc

    ushr-int/2addr v5, v6

    const/16 v6, 0x1a

    invoke-static {v0, v1, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v7

    const/16 v8, 0x14

    shl-int/2addr v7, v8

    or-int/2addr v5, v7

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x1d

    invoke-static {v0, v1, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    const/16 v6, 0x9

    ushr-int/2addr v5, v6

    invoke-static {v0, v1, v10}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    const/16 v7, 0x17

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x1e

    invoke-static {v0, v1, v10}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    const/4 v6, 0x6

    ushr-int/2addr v5, v6

    const/16 v6, 0x1c

    invoke-static {v0, v1, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    const/16 v7, 0x1a

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    and-int/2addr v4, v5

    aput v4, p0, v3

    add-int/lit8 v3, v2, 0x1f

    const/16 v4, 0x1c

    invoke-static {v0, v1, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v4

    const/4 v5, 0x3

    ushr-int/2addr v4, v5

    aput v4, p0, v3

    add-int/lit8 v1, v1, 0x1d

    add-int/lit8 v2, v2, 0x20

    goto/16 :goto_4

    :cond_279
    const/16 v1, 0x3a00

    const/16 v2, 0x20

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-static {v0, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static decodeSignature([B[I[BI)V
    .registers 20

    .line 0
    move-object/from16 v0, p2

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_5
    const/16 v4, 0x400

    if-ge v2, v4, :cond_d4

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v0, v3, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    const/4 v6, 0x2

    invoke-static {v0, v3, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    const/4 v7, 0x3

    invoke-static {v0, v3, v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v7

    const/4 v8, 0x4

    invoke-static {v0, v3, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v8

    const/4 v9, 0x5

    invoke-static {v0, v3, v9}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v9

    const/4 v10, 0x6

    invoke-static {v0, v3, v10}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v10

    const/4 v11, 0x7

    invoke-static {v0, v3, v11}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v11

    const/16 v12, 0x8

    invoke-static {v0, v3, v12}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v12

    const/16 v13, 0x9

    invoke-static {v0, v3, v13}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v13

    shl-int/lit8 v14, v4, 0xc

    shr-int/lit8 v14, v14, 0xc

    aput v14, p1, v2

    add-int/lit8 v14, v2, 0x1

    ushr-int/lit8 v4, v4, 0x14

    shl-int/lit8 v15, v5, 0x18

    shr-int/lit8 v15, v15, 0xc

    or-int/2addr v4, v15

    aput v4, p1, v14

    add-int/lit8 v4, v2, 0x2

    shl-int/lit8 v14, v5, 0x4

    shr-int/lit8 v14, v14, 0xc

    aput v14, p1, v4

    add-int/lit8 v4, v2, 0x3

    ushr-int/lit8 v5, v5, 0x1c

    shl-int/lit8 v14, v6, 0x10

    shr-int/lit8 v14, v14, 0xc

    or-int/2addr v5, v14

    aput v5, p1, v4

    add-int/lit8 v4, v2, 0x4

    ushr-int/lit8 v5, v6, 0x10

    shl-int/lit8 v6, v7, 0x1c

    shr-int/lit8 v6, v6, 0xc

    or-int/2addr v5, v6

    aput v5, p1, v4

    add-int/lit8 v4, v2, 0x5

    shl-int/lit8 v5, v7, 0x8

    shr-int/lit8 v5, v5, 0xc

    aput v5, p1, v4

    add-int/lit8 v4, v2, 0x6

    ushr-int/lit8 v5, v7, 0x18

    shl-int/lit8 v6, v8, 0x14

    shr-int/lit8 v6, v6, 0xc

    or-int/2addr v5, v6

    aput v5, p1, v4

    add-int/lit8 v4, v2, 0x7

    shr-int/lit8 v5, v8, 0xc

    aput v5, p1, v4

    add-int/lit8 v4, v2, 0x8

    shl-int/lit8 v5, v9, 0xc

    shr-int/lit8 v5, v5, 0xc

    aput v5, p1, v4

    add-int/lit8 v4, v2, 0x9

    ushr-int/lit8 v5, v9, 0x14

    shl-int/lit8 v6, v10, 0x18

    shr-int/lit8 v6, v6, 0xc

    or-int/2addr v5, v6

    aput v5, p1, v4

    add-int/lit8 v4, v2, 0xa

    shl-int/lit8 v5, v10, 0x4

    shr-int/lit8 v5, v5, 0xc

    aput v5, p1, v4

    add-int/lit8 v4, v2, 0xb

    ushr-int/lit8 v5, v10, 0x1c

    shl-int/lit8 v6, v11, 0x10

    shr-int/lit8 v6, v6, 0xc

    or-int/2addr v5, v6

    aput v5, p1, v4

    add-int/lit8 v4, v2, 0xc

    ushr-int/lit8 v5, v11, 0x10

    shl-int/lit8 v6, v12, 0x1c

    shr-int/lit8 v6, v6, 0xc

    or-int/2addr v5, v6

    aput v5, p1, v4

    add-int/lit8 v4, v2, 0xd

    shl-int/lit8 v5, v12, 0x8

    shr-int/lit8 v5, v5, 0xc

    aput v5, p1, v4

    add-int/lit8 v4, v2, 0xe

    ushr-int/lit8 v5, v12, 0x18

    shl-int/lit8 v6, v13, 0x14

    shr-int/lit8 v6, v6, 0xc

    or-int/2addr v5, v6

    aput v5, p1, v4

    add-int/lit8 v4, v2, 0xf

    shr-int/lit8 v5, v13, 0xc

    aput v5, p1, v4

    add-int/lit8 v3, v3, 0xa

    add-int/lit8 v2, v2, 0x10

    goto/16 :goto_5

    :cond_d4
    move/from16 v2, p3

    add-int/lit16 v2, v2, 0xa00

    const/16 v3, 0x20

    move-object/from16 v4, p0

    invoke-static {v0, v2, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static encodeC([I[S[BI)V
    .registers 17

    .line 0
    const/16 v0, 0x400

    new-array v0, v0, [S

    const/16 v1, 0xa8

    new-array v1, v1, [B

    const/4 v9, 0x1

    int-to-short v10, v9

    const/16 v8, 0x20

    const/4 v3, 0x0

    const/16 v4, 0xa8

    const/4 v5, 0x0

    move-object v2, v1

    move-object v6, p2

    move/from16 v7, p3

    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->customizableSecureHashAlgorithmKECCAK128Simple([BIIS[BII)V

    const/4 v11, 0x0

    invoke-static {v0, v11}, Lorg/bouncycastle/util/Arrays;->fill([SS)V

    move v5, v10

    move v2, v11

    move v10, v2

    :goto_1e
    const/16 v3, 0x19

    if-ge v10, v3, :cond_60

    const/16 v3, 0xa5

    if-le v2, v3, :cond_37

    add-int/lit8 v2, v5, 0x1

    int-to-short v12, v2

    const/16 v8, 0x20

    const/4 v3, 0x0

    const/16 v4, 0xa8

    move-object v2, v1

    move-object v6, p2

    move/from16 v7, p3

    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->customizableSecureHashAlgorithmKECCAK128Simple([BIIS[BII)V

    move v2, v11

    move v5, v12

    :cond_37
    aget-byte v3, v1, v2

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, 0x3ff

    aget-short v4, v0, v3

    if-nez v4, :cond_5d

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    if-ne v4, v9, :cond_53

    const/4 v4, -0x1

    aput-short v4, v0, v3

    goto :goto_55

    :cond_53
    aput-short v9, v0, v3

    :goto_55
    aput v3, p0, v10

    aget-short v3, v0, v3

    aput-short v3, p1, v10

    add-int/lit8 v10, v10, 0x1

    :cond_5d
    add-int/lit8 v2, v2, 0x3

    goto :goto_1e

    :cond_60
    return-void
.end method

.method public static encodePrivateKey([B[I[I[BI[B)V
    .registers 12

    .line 0
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x400

    if-ge v1, v2, :cond_e

    aget v2, p1, v1

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    move p1, v0

    :goto_f
    const/4 v1, 0x4

    if-ge p1, v1, :cond_25

    move v1, v0

    :goto_13
    if-ge v1, v2, :cond_22

    mul-int/lit16 v3, p1, 0x400

    add-int/2addr v3, v1

    add-int v4, v2, v3

    aget v3, p2, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_22
    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    :cond_25
    const/16 p1, 0x1400

    const/16 p2, 0x40

    invoke-static {p3, p4, p0, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    const/16 v5, 0x3a00

    const/16 v1, 0x1440

    const/16 v2, 0x28

    move-object v0, p0

    move-object v3, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK128([BII[BII)V

    return-void
.end method

.method public static encodePublicKey([B[I[BI)V
    .registers 29

    .line 0
    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    const/16 v3, 0xe80

    if-ge v2, v3, :cond_1e7

    aget v3, p1, v1

    add-int/lit8 v4, v1, 0x1

    aget v5, p1, v4

    shl-int/lit8 v5, v5, 0x1d

    or-int/2addr v3, v5

    const/4 v5, 0x0

    invoke-static {v0, v2, v5, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v4

    const/4 v4, 0x3

    shr-int/2addr v3, v4

    add-int/lit8 v5, v1, 0x2

    aget v6, p1, v5

    const/16 v7, 0x1a

    shl-int/2addr v6, v7

    or-int/2addr v3, v6

    const/4 v6, 0x1

    invoke-static {v0, v2, v6, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v5

    const/4 v5, 0x6

    shr-int/2addr v3, v5

    add-int/lit8 v8, v1, 0x3

    aget v9, p1, v8

    const/16 v10, 0x17

    shl-int/2addr v9, v10

    or-int/2addr v3, v9

    const/4 v9, 0x2

    invoke-static {v0, v2, v9, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v8

    const/16 v8, 0x9

    shr-int/2addr v3, v8

    add-int/lit8 v11, v1, 0x4

    aget v12, p1, v11

    const/16 v13, 0x14

    shl-int/2addr v12, v13

    or-int/2addr v3, v12

    invoke-static {v0, v2, v4, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v11

    const/16 v11, 0xc

    shr-int/2addr v3, v11

    add-int/lit8 v12, v1, 0x5

    aget v14, p1, v12

    const/16 v15, 0x11

    shl-int/2addr v14, v15

    or-int/2addr v3, v14

    const/4 v14, 0x4

    invoke-static {v0, v2, v14, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v12

    const/16 v12, 0xf

    shr-int/2addr v3, v12

    add-int/lit8 v16, v1, 0x6

    aget v17, p1, v16

    const/16 v4, 0xe

    shl-int/lit8 v17, v17, 0xe

    or-int v3, v3, v17

    const/4 v7, 0x5

    invoke-static {v0, v2, v7, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v16

    const/16 v10, 0x12

    shr-int/2addr v3, v10

    add-int/lit8 v18, v1, 0x7

    aget v19, p1, v18

    const/16 v13, 0xb

    shl-int/lit8 v19, v19, 0xb

    or-int v3, v3, v19

    invoke-static {v0, v2, v5, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v18

    const/16 v5, 0x15

    shr-int/2addr v3, v5

    add-int/lit8 v19, v1, 0x8

    aget v20, p1, v19

    const/16 v5, 0x8

    shl-int/lit8 v20, v20, 0x8

    or-int v3, v3, v20

    const/4 v10, 0x7

    invoke-static {v0, v2, v10, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v19

    const/16 v15, 0x18

    shr-int/2addr v3, v15

    add-int/lit8 v21, v1, 0x9

    aget v22, p1, v21

    shl-int/lit8 v22, v22, 0x5

    or-int v3, v3, v22

    invoke-static {v0, v2, v5, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v21

    const/16 v5, 0x1b

    shr-int/2addr v3, v5

    add-int/lit8 v22, v1, 0xa

    aget v22, p1, v22

    shl-int/lit8 v22, v22, 0x2

    or-int v3, v3, v22

    add-int/lit8 v22, v1, 0xb

    aget v23, p1, v22

    shl-int/lit8 v23, v23, 0x1f

    or-int v3, v3, v23

    invoke-static {v0, v2, v8, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v22

    shr-int/2addr v3, v6

    add-int/lit8 v22, v1, 0xc

    aget v23, p1, v22

    shl-int/lit8 v23, v23, 0x1c

    or-int v3, v3, v23

    const/16 v8, 0xa

    invoke-static {v0, v2, v8, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v22

    shr-int/2addr v3, v14

    add-int/lit8 v22, v1, 0xd

    aget v24, p1, v22

    shl-int/lit8 v24, v24, 0x19

    or-int v3, v3, v24

    invoke-static {v0, v2, v13, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v22

    shr-int/2addr v3, v10

    add-int/lit8 v22, v1, 0xe

    aget v24, p1, v22

    shl-int/lit8 v24, v24, 0x16

    or-int v3, v3, v24

    invoke-static {v0, v2, v11, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v22

    shr-int/2addr v3, v8

    add-int/lit8 v22, v1, 0xf

    aget v24, p1, v22

    shl-int/lit8 v24, v24, 0x13

    or-int v3, v3, v24

    const/16 v11, 0xd

    invoke-static {v0, v2, v11, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v22

    shr-int/lit8 v3, v3, 0xd

    add-int/lit8 v11, v1, 0x10

    aget v22, p1, v11

    shl-int/lit8 v22, v22, 0x10

    or-int v3, v3, v22

    invoke-static {v0, v2, v4, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v11

    shr-int/lit8 v3, v3, 0x10

    add-int/lit8 v11, v1, 0x11

    aget v22, p1, v11

    shl-int/lit8 v22, v22, 0xd

    or-int v3, v3, v22

    invoke-static {v0, v2, v12, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v11

    shr-int/lit8 v3, v3, 0x13

    add-int/lit8 v11, v1, 0x12

    aget v22, p1, v11

    shl-int/lit8 v8, v22, 0xa

    or-int/2addr v3, v8

    const/16 v8, 0x10

    invoke-static {v0, v2, v8, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v11

    shr-int/lit8 v3, v3, 0x16

    add-int/lit8 v8, v1, 0x13

    aget v11, p1, v8

    shl-int/lit8 v10, v11, 0x7

    or-int/2addr v3, v10

    const/16 v10, 0x11

    invoke-static {v0, v2, v10, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v8

    shr-int/lit8 v3, v3, 0x19

    add-int/lit8 v8, v1, 0x14

    aget v10, p1, v8

    shl-int/2addr v10, v14

    or-int/2addr v3, v10

    const/16 v10, 0x12

    invoke-static {v0, v2, v10, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v8

    shr-int/lit8 v3, v3, 0x1c

    add-int/lit8 v8, v1, 0x15

    aget v8, p1, v8

    shl-int/lit8 v6, v8, 0x1

    or-int/2addr v3, v6

    add-int/lit8 v6, v1, 0x16

    aget v8, p1, v6

    shl-int/lit8 v8, v8, 0x1e

    or-int/2addr v3, v8

    const/16 v8, 0x13

    invoke-static {v0, v2, v8, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v6

    shr-int/2addr v3, v9

    add-int/lit8 v6, v1, 0x17

    aget v8, p1, v6

    shl-int/2addr v8, v5

    or-int/2addr v3, v8

    const/16 v8, 0x14

    invoke-static {v0, v2, v8, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v6

    shr-int/2addr v3, v7

    add-int/lit8 v6, v1, 0x18

    aget v7, p1, v6

    shl-int/2addr v7, v15

    or-int/2addr v3, v7

    const/16 v7, 0x15

    invoke-static {v0, v2, v7, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v6

    const/16 v6, 0x8

    shr-int/2addr v3, v6

    add-int/lit8 v6, v1, 0x19

    aget v8, p1, v6

    shl-int/lit8 v7, v8, 0x15

    or-int/2addr v3, v7

    const/16 v7, 0x16

    invoke-static {v0, v2, v7, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v6

    shr-int/2addr v3, v13

    add-int/lit8 v6, v1, 0x1a

    aget v7, p1, v6

    const/16 v8, 0x12

    shl-int/2addr v7, v8

    or-int/2addr v3, v7

    const/16 v7, 0x17

    invoke-static {v0, v2, v7, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v6

    shr-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x1b

    aget v6, p1, v4

    shl-int/2addr v6, v12

    or-int/2addr v3, v6

    invoke-static {v0, v2, v15, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v4

    const/16 v4, 0x11

    shr-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x1c

    aget v6, p1, v4

    const/16 v7, 0xc

    shl-int/2addr v6, v7

    or-int/2addr v3, v6

    const/16 v6, 0x19

    invoke-static {v0, v2, v6, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v4

    const/16 v4, 0x14

    shr-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x1d

    aget v6, p1, v4

    const/16 v7, 0x9

    shl-int/2addr v6, v7

    or-int/2addr v3, v6

    const/16 v6, 0x1a

    invoke-static {v0, v2, v6, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v4

    const/16 v4, 0x17

    shr-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x1e

    aget v7, p1, v4

    const/4 v8, 0x6

    shl-int/2addr v7, v8

    or-int/2addr v3, v7

    invoke-static {v0, v2, v5, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v4

    shr-int/2addr v3, v6

    add-int/lit8 v4, v1, 0x1f

    aget v4, p1, v4

    const/4 v5, 0x3

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    const/16 v4, 0x1c

    invoke-static {v0, v2, v4, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    add-int/lit8 v1, v1, 0x20

    add-int/lit8 v2, v2, 0x1d

    goto/16 :goto_4

    :cond_1e7
    const/16 v1, 0x3a00

    const/16 v2, 0x20

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-static {v3, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static encodeSignature([BI[BI[I)V
    .registers 15

    .line 0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    const/16 v3, 0x280

    if-ge v1, v3, :cond_d0

    aget v3, p4, v2

    const v4, 0xfffff

    and-int/2addr v3, v4

    add-int/lit8 v5, v2, 0x1

    aget v6, p4, v5

    shl-int/lit8 v6, v6, 0x14

    or-int/2addr v3, v6

    invoke-static {p0, v1, v0, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p4, v5

    ushr-int/lit8 v3, v3, 0xc

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v2, 0x2

    aget v5, p4, v5

    and-int/2addr v5, v4

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v3, v5

    add-int/lit8 v5, v2, 0x3

    aget v7, p4, v5

    shl-int/lit8 v7, v7, 0x1c

    or-int/2addr v3, v7

    const/4 v7, 0x1

    invoke-static {p0, v1, v7, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p4, v5

    const/4 v5, 0x4

    ushr-int/2addr v3, v5

    const v7, 0xffff

    and-int/2addr v3, v7

    add-int/lit8 v8, v2, 0x4

    aget v9, p4, v8

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v3, v9

    const/4 v9, 0x2

    invoke-static {p0, v1, v9, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p4, v8

    ushr-int/lit8 v3, v3, 0x10

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v8, v2, 0x5

    aget v8, p4, v8

    and-int/2addr v8, v4

    shl-int/2addr v8, v5

    or-int/2addr v3, v8

    add-int/lit8 v8, v2, 0x6

    aget v9, p4, v8

    shl-int/lit8 v9, v9, 0x18

    or-int/2addr v3, v9

    const/4 v9, 0x3

    invoke-static {p0, v1, v9, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p4, v8

    ushr-int/2addr v3, v6

    and-int/lit16 v3, v3, 0xfff

    add-int/lit8 v8, v2, 0x7

    aget v8, p4, v8

    shl-int/lit8 v8, v8, 0xc

    or-int/2addr v3, v8

    invoke-static {p0, v1, v5, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    add-int/lit8 v3, v2, 0x8

    aget v3, p4, v3

    and-int/2addr v3, v4

    add-int/lit8 v8, v2, 0x9

    aget v9, p4, v8

    shl-int/lit8 v9, v9, 0x14

    or-int/2addr v3, v9

    const/4 v9, 0x5

    invoke-static {p0, v1, v9, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p4, v8

    ushr-int/lit8 v3, v3, 0xc

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v8, v2, 0xa

    aget v8, p4, v8

    and-int/2addr v8, v4

    shl-int/2addr v8, v6

    or-int/2addr v3, v8

    add-int/lit8 v8, v2, 0xb

    aget v9, p4, v8

    shl-int/lit8 v9, v9, 0x1c

    or-int/2addr v3, v9

    const/4 v9, 0x6

    invoke-static {p0, v1, v9, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p4, v8

    ushr-int/2addr v3, v5

    and-int/2addr v3, v7

    add-int/lit8 v7, v2, 0xc

    aget v8, p4, v7

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v3, v8

    const/4 v8, 0x7

    invoke-static {p0, v1, v8, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p4, v7

    ushr-int/lit8 v3, v3, 0x10

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v7, v2, 0xd

    aget v7, p4, v7

    and-int/2addr v4, v7

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    add-int/lit8 v4, v2, 0xe

    aget v5, p4, v4

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v3, v5

    invoke-static {p0, v1, v6, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p4, v4

    ushr-int/2addr v3, v6

    and-int/lit16 v3, v3, 0xfff

    add-int/lit8 v4, v2, 0xf

    aget v4, p4, v4

    shl-int/lit8 v4, v4, 0xc

    or-int/2addr v3, v4

    const/16 v4, 0x9

    invoke-static {p0, v1, v4, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    add-int/lit8 v2, v2, 0x10

    add-int/lit8 v1, v1, 0xa

    goto/16 :goto_3

    :cond_d0
    add-int/lit16 p1, p1, 0xa00

    const/16 p4, 0x20

    invoke-static {p2, p3, p0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static generateKeyPair([B[BLjava/security/SecureRandom;)I
    .registers 20

    .line 0
    const/16 v0, 0x20

    new-array v4, v0, [B

    const/16 v0, 0xe0

    new-array v8, v0, [B

    const/16 v0, 0x400

    new-array v7, v0, [I

    const/16 v1, 0x1000

    new-array v15, v1, [I

    new-array v14, v1, [I

    new-array v13, v1, [I

    new-array v0, v0, [I

    move-object/from16 v1, p2

    invoke-virtual {v1, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v5, 0x0

    const/16 v6, 0x20

    const/4 v2, 0x0

    const/16 v3, 0xe0

    move-object v1, v8

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK128([BII[BII)V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_28
    const/16 v4, 0x22a

    const/4 v5, 0x4

    if-ge v2, v5, :cond_3f

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v5, v2, 0x20

    mul-int/lit16 v6, v2, 0x400

    invoke-static {v3, v8, v5, v15, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$Gaussian;->sample_gauss_poly(I[BI[II)V

    invoke-static {v15, v6, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->checkPolynomial([III)Z

    move-result v5

    if-nez v5, :cond_2d

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_3f
    :goto_3f
    add-int/lit8 v3, v3, 0x1

    const/16 v2, 0x80

    invoke-static {v3, v8, v2, v7, v1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$Gaussian;->sample_gauss_poly(I[BI[II)V

    invoke-static {v7, v1, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->checkPolynomial([III)Z

    move-result v2

    if-nez v2, :cond_7e

    const/16 v2, 0xa0

    invoke-static {v14, v8, v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_uniform([I[BI)V

    invoke-static {v0, v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_ntt([I[I)V

    move v3, v1

    :goto_55
    if-ge v3, v5, :cond_6e

    mul-int/lit16 v4, v3, 0x400

    invoke-static {v13, v4, v14, v4, v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_mul([II[II[I)V

    move-object v9, v13

    move v10, v4

    move-object v11, v13

    move v12, v4

    move-object v6, v13

    move-object v13, v15

    move-object/from16 v16, v14

    move v14, v4

    invoke-static/range {v9 .. v14}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_add_correct([II[II[II)V

    add-int/lit8 v3, v3, 0x1

    move-object v13, v6

    move-object/from16 v14, v16

    goto :goto_55

    :cond_6e
    move-object/from16 v10, p0

    move-object v6, v13

    invoke-static {v10, v6, v8, v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->encodePublicKey([B[I[BI)V

    const/16 v9, 0xa0

    move-object/from16 v5, p1

    move-object v6, v7

    move-object v7, v15

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->encodePrivateKey([B[I[I[BI[B)V

    return v1

    :cond_7e
    move-object/from16 v10, p0

    goto :goto_3f
.end method

.method public static generateSignature([B[BII[BLjava/security/SecureRandom;)I
    .registers 34

    .line 0
    move-object/from16 v6, p4

    const/16 v0, 0x20

    new-array v7, v0, [B

    new-array v14, v0, [B

    const/16 v1, 0x90

    new-array v15, v1, [B

    const/16 v1, 0x19

    new-array v5, v1, [I

    new-array v4, v1, [S

    const/16 v1, 0x400

    new-array v3, v1, [I

    new-array v2, v1, [I

    new-array v13, v1, [I

    new-array v1, v1, [I

    const/16 v8, 0x1000

    new-array v12, v8, [I

    new-array v11, v8, [I

    new-array v10, v8, [I

    const/16 v8, 0x1420

    const/4 v9, 0x0

    invoke-static {v6, v8, v15, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v8, v0, [B

    move-object/from16 v16, v1

    move-object/from16 v1, p5

    invoke-virtual {v1, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v8, v9, v15, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x28

    const/4 v1, 0x0

    const/16 v17, 0x40

    move-object v8, v15

    move/from16 v9, v17

    move-object/from16 v22, v10

    move v10, v0

    move-object/from16 v23, v11

    move-object/from16 v11, p1

    move-object v0, v12

    move v12, v1

    move-object v1, v13

    move/from16 v13, p3

    invoke-static/range {v8 .. v13}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK128([BII[BII)V

    const/4 v9, 0x0

    const/16 v10, 0x20

    const/4 v12, 0x0

    const/16 v13, 0x68

    move-object v8, v14

    move-object v11, v15

    move/from16 p1, v13

    invoke-static/range {v8 .. v13}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK128([BII[BII)V

    const/16 v8, 0x1440

    const/16 v9, 0x28

    move/from16 v10, p1

    invoke-static {v6, v8, v15, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v8, 0x1400

    move-object/from16 v9, v22

    invoke-static {v9, v6, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_uniform([I[BI)V

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_6c
    add-int/lit8 v8, v8, 0x1

    const/4 v11, 0x0

    invoke-static {v3, v14, v11, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->sample_y([I[BII)V

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_ntt([I[I)V

    move v12, v11

    :goto_76
    const/4 v13, 0x4

    if-ge v12, v13, :cond_81

    mul-int/lit16 v13, v12, 0x400

    invoke-static {v0, v13, v9, v13, v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_mul([II[II[I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_76

    :cond_81
    const/16 v12, 0x40

    invoke-static {v7, v11, v0, v15, v12}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->hashFunction([BI[I[BI)V

    invoke-static {v5, v4, v7, v11}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->encodeC([I[S[BI)V

    const/4 v12, 0x0

    const/16 v17, 0x0

    move-object/from16 p1, v0

    move-object v0, v1

    move-object v11, v1

    move-object/from16 v13, v16

    move v1, v12

    move-object v12, v2

    move-object/from16 v2, p4

    move-object/from16 v24, v3

    move/from16 v3, v17

    move-object/from16 v22, v4

    move-object v4, v5

    move-object/from16 v25, v5

    move-object/from16 v5, v22

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->sparse_mul8([II[BI[I[S)V

    move-object/from16 v5, v24

    invoke-static {v13, v5, v11}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_add([I[I[I)V

    invoke-static {v13}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->testRejection([I)Z

    move-result v0

    if-eqz v0, :cond_bb

    move-object/from16 v0, p1

    move-object v3, v5

    move-object v1, v11

    move-object v2, v12

    move-object/from16 v16, v13

    move-object/from16 v4, v22

    move-object/from16 v5, v25

    goto :goto_6c

    :cond_bb
    const/4 v0, 0x0

    const/4 v4, 0x4

    :goto_bd
    if-ge v0, v4, :cond_fc

    mul-int/lit16 v10, v0, 0x400

    add-int/lit8 v3, v0, 0x1

    mul-int/lit16 v2, v3, 0x400

    move-object/from16 v0, v23

    move v1, v10

    move/from16 v16, v2

    move-object/from16 v2, p4

    move/from16 v24, v3

    move/from16 v3, v16

    move/from16 v26, v4

    move-object/from16 v4, v25

    move-object/from16 v27, v5

    move-object/from16 v5, v22

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->sparse_mul8([II[BI[I[S)V

    move-object/from16 v16, p1

    move/from16 v17, v10

    move-object/from16 v18, p1

    move/from16 v19, v10

    move-object/from16 v20, v23

    move/from16 v21, v10

    invoke-static/range {v16 .. v21}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_sub([II[II[II)V

    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->test_correctness([II)Z

    move-result v10

    if-eqz v10, :cond_f3

    goto :goto_100

    :cond_f3
    move-object/from16 p1, v0

    move/from16 v0, v24

    move/from16 v4, v26

    move-object/from16 v5, v27

    goto :goto_bd

    :cond_fc
    move-object/from16 v0, p1

    move-object/from16 v27, v5

    :goto_100
    if-eqz v10, :cond_10e

    move-object v1, v11

    move-object v2, v12

    move-object/from16 v16, v13

    move-object/from16 v4, v22

    move-object/from16 v5, v25

    move-object/from16 v3, v27

    goto/16 :goto_6c

    :cond_10e
    move-object/from16 v1, p0

    const/4 v2, 0x0

    invoke-static {v1, v2, v7, v2, v13}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->encodeSignature([BI[BI[I)V

    return v2
.end method

.method private static hashFunction([BI[I[BI)V
    .registers 15

    .line 0
    const/16 v5, 0x1050

    new-array v3, v5, [B

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    const/4 v2, 0x4

    if-ge v1, v2, :cond_41

    mul-int/lit16 v2, v1, 0x400

    move v4, v0

    :goto_c
    const/16 v6, 0x400

    if-ge v4, v6, :cond_3e

    aget v6, p2, v2

    const v7, 0xa3d4800

    sub-int/2addr v7, v6

    shr-int/lit8 v7, v7, 0x1f

    const v8, 0x147a9001

    sub-int v8, v6, v8

    and-int/2addr v8, v7

    not-int v7, v7

    and-int/2addr v6, v7

    or-int/2addr v6, v8

    const v7, 0x3fffff

    and-int/2addr v7, v6

    const/high16 v8, 0x200000

    sub-int/2addr v8, v7

    shr-int/lit8 v8, v8, 0x1f

    const/high16 v9, 0x400000

    sub-int v9, v7, v9

    and-int/2addr v9, v8

    not-int v8, v8

    and-int/2addr v7, v8

    or-int/2addr v7, v9

    add-int/lit8 v8, v2, 0x1

    sub-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x16

    int-to-byte v6, v6

    aput-byte v6, v3, v2

    add-int/lit8 v4, v4, 0x1

    move v2, v8

    goto :goto_c

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_41
    const/16 p2, 0x1000

    const/16 v0, 0x50

    invoke-static {p3, p4, v3, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x20

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK128([BII[BII)V

    return-void
.end method

.method public static littleEndianToInt24([BI)I
    .registers 4

    .line 0
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x2

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    return p0
.end method

.method public static memoryEqual([BI[BII)Z
    .registers 9

    .line 0
    add-int v0, p1, p4

    array-length v1, p0

    const/4 v2, 0x0

    if-gt v0, v1, :cond_1e

    add-int v0, p3, p4

    array-length v1, p2

    if-gt v0, v1, :cond_1e

    move v0, v2

    :goto_c
    if-ge v0, p4, :cond_1c

    add-int v1, p1, v0

    aget-byte v1, p0, v1

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    if-eq v1, v3, :cond_19

    return v2

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1c
    const/4 p0, 0x1

    return p0

    :cond_1e
    return v2
.end method

.method public static sample_y([I[BII)V
    .registers 19

    .line 0
    sget v0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->BPLUS1BYTES:I

    mul-int/lit16 v1, v0, 0x400

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    shl-int/lit8 v2, p3, 0x8

    int-to-short v5, v2

    mul-int/lit16 v9, v0, 0x400

    add-int/lit8 v2, v5, 0x1

    int-to-short v10, v2

    const/16 v8, 0x20

    const/4 v3, 0x0

    move-object v2, v1

    move v4, v9

    move-object/from16 v6, p1

    move/from16 v7, p2

    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->customizableSecureHashAlgorithmKECCAK128Simple([BIIS[BII)V

    const/4 v11, 0x0

    const/16 v12, 0x400

    move v5, v10

    move v2, v11

    move v10, v2

    move v3, v12

    :goto_23
    if-ge v10, v12, :cond_55

    mul-int v4, v3, v0

    if-lt v2, v4, :cond_3d

    sget v13, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->NBLOCKS_SHAKE:I

    add-int/lit8 v2, v5, 0x1

    int-to-short v14, v2

    const/16 v8, 0x20

    const/4 v3, 0x0

    move-object v2, v1

    move v4, v9

    move-object/from16 v6, p1

    move/from16 v7, p2

    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->customizableSecureHashAlgorithmKECCAK128Simple([BIIS[BII)V

    move v2, v11

    move v3, v13

    move v5, v14

    :cond_3d
    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->littleEndianToInt24([BI)I

    move-result v4

    const v6, 0xfffff

    and-int/2addr v4, v6

    aput v4, p0, v10

    const v6, 0x7ffff

    sub-int/2addr v4, v6

    aput v4, p0, v10

    const/high16 v6, 0x80000

    if-eq v4, v6, :cond_53

    add-int/lit8 v10, v10, 0x1

    :cond_53
    add-int/2addr v2, v0

    goto :goto_23

    :cond_55
    return-void
.end method

.method private static testRejection([I)Z
    .registers 6

    .line 0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    const/16 v3, 0x400

    if-ge v1, v3, :cond_15

    aget v3, p0, v1

    invoke-static {v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->absolute(I)I

    move-result v3

    const v4, 0x7fdd5

    sub-int/2addr v4, v3

    or-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_15
    ushr-int/lit8 p0, v2, 0x1f

    if-eqz p0, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0
.end method

.method private static testZ([I)Z
    .registers 5

    .line 0
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x400

    if-ge v1, v2, :cond_18

    aget v2, p0, v1

    const v3, -0x7fdd5

    if-lt v2, v3, :cond_16

    const v3, 0x7fdd5

    if-le v2, v3, :cond_13

    goto :goto_16

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_16
    :goto_16
    const/4 p0, 0x1

    return p0

    :cond_18
    return v0
.end method

.method public static test_correctness([II)Z
    .registers 7

    .line 0
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x400

    if-ge v1, v2, :cond_3e

    add-int v2, p1, v1

    aget v2, p0, v2

    const v3, 0xa3d4800

    sub-int/2addr v3, v2

    shr-int/lit8 v3, v3, 0x1f

    const v4, 0x147a9001

    sub-int v4, v2, v4

    and-int/2addr v4, v3

    not-int v3, v3

    and-int/2addr v2, v3

    or-int/2addr v2, v4

    invoke-static {v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->absolute(I)I

    move-result v3

    const v4, 0xa3d45d6

    sub-int/2addr v3, v4

    not-int v3, v3

    const v4, 0x1fffff

    add-int/2addr v4, v2

    shr-int/lit8 v4, v4, 0x16

    shl-int/lit8 v4, v4, 0x16

    sub-int/2addr v2, v4

    invoke-static {v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->absolute(I)I

    move-result v2

    const v4, 0x1ffdd6

    sub-int/2addr v2, v4

    not-int v2, v2

    or-int/2addr v2, v3

    ushr-int/lit8 v2, v2, 0x1f

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3b

    return v3

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3e
    return v0
.end method

.method public static verifying([B[BII[B)I
    .registers 26

    .line 0
    const/16 v0, 0x20

    new-array v1, v0, [B

    new-array v2, v0, [B

    new-array v3, v0, [B

    const/16 v4, 0x50

    new-array v4, v4, [B

    const/16 v5, 0x19

    new-array v12, v5, [I

    new-array v13, v5, [S

    const/16 v5, 0x1000

    new-array v14, v5, [I

    new-array v15, v5, [I

    new-array v11, v5, [I

    new-array v10, v5, [I

    const/16 v5, 0x400

    new-array v9, v5, [I

    new-array v8, v5, [I

    const/16 v5, 0xa20

    move/from16 v6, p3

    if-eq v6, v5, :cond_2a

    const/4 v0, -0x1

    return v0

    :cond_2a
    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-static {v1, v9, v5, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->decodeSignature([B[I[BI)V

    invoke-static {v9}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->testZ([I)Z

    move-result v5

    if-eqz v5, :cond_39

    const/4 v0, -0x2

    return v0

    :cond_39
    const/4 v7, 0x0

    move-object/from16 v6, p4

    invoke-static {v14, v3, v7, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->decodePublicKey([I[BI[B)V

    move-object/from16 v5, p0

    array-length v0, v5

    const/16 v16, 0x0

    const/16 v17, 0x28

    const/16 v18, 0x0

    move-object v5, v4

    move/from16 v6, v16

    move/from16 v7, v17

    move-object/from16 v19, v8

    move-object/from16 v8, p0

    move-object/from16 v20, v9

    move/from16 v9, v18

    move-object/from16 v16, v10

    move v10, v0

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK128([BII[BII)V

    const/4 v9, 0x0

    const/16 v10, 0x3a00

    const/16 v6, 0x28

    const/16 v7, 0x28

    move-object/from16 v8, p4

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK128([BII[BII)V

    const/4 v0, 0x0

    invoke-static {v11, v3, v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_uniform([I[BI)V

    invoke-static {v12, v13, v1, v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->encodeC([I[S[BI)V

    move-object/from16 v5, v19

    move-object/from16 v3, v20

    invoke-static {v5, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_ntt([I[I)V

    move v3, v0

    :goto_76
    const/4 v6, 0x4

    if-ge v3, v6, :cond_9d

    mul-int/lit16 v10, v3, 0x400

    move-object/from16 v6, v16

    move v7, v10

    move-object v8, v14

    move v9, v10

    move v0, v10

    move-object v10, v12

    move-object/from16 v17, v12

    move-object v12, v11

    move-object v11, v13

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->sparse_mul32([II[II[I[S)V

    invoke-static {v15, v0, v12, v0, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_mul([II[II[I)V

    move-object v6, v15

    move v7, v0

    move-object v8, v15

    move v9, v0

    move-object/from16 v10, v16

    move v11, v0

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_sub_reduce([II[II[II)V

    add-int/lit8 v3, v3, 0x1

    move-object v11, v12

    move-object/from16 v12, v17

    const/4 v0, 0x0

    goto :goto_76

    :cond_9d
    invoke-static {v2, v0, v15, v4, v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->hashFunction([BI[I[BI)V

    const/16 v3, 0x20

    invoke-static {v1, v0, v2, v0, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->memoryEqual([BI[BII)Z

    move-result v1

    if-nez v1, :cond_a9

    const/4 v0, -0x3

    :cond_a9
    return v0
.end method

###### Class org.bouncycastle.pqc.legacy.crypto.qtesla.QTesla1p.Gaussian (org.bouncycastle.pqc.legacy.crypto.qtesla.QTesla1p$Gaussian)
.class Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$Gaussian;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Gaussian"
.end annotation


# static fields
.field private static final CDT_COLS:I = 0x2

.field private static final CDT_ROWS:I = 0x4e

.field private static final CHUNK_SIZE:I = 0x200

.field private static final cdt_v:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    const/16 v0, 0x9c

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$Gaussian;->cdt_v:[I

    return-void

    :array_a
    .array-data 4
        0x0
        0x0
        0x601f22a
        0x280663d4
        0x11f09ffa
        0x162fe23d
        0x1da089e9
        0x437226e8
        0x28eab25d
        0x4c51fe2
        0x33ac2f26
        0x14fdba70    # 2.5620008E-26f
        0x3dc767dc
        0x4565c960
        0x4724fc62
        0x3342c78a
        0x4fb448f4
        0x5229d06d
        0x576b8599
        0x7423407f
        0x5e4786da
        0x3210baf7
        0x644b2c92
        0x431b3947
        0x697e90ce
        0x77c362c4
        0x6dee0b96
        0x2798c9ce
        0x71a92144
        0x5765fce4
        0x74c16fd5
        0x1e2a0990
        0x7749ac92
        0xdf36eeb
        0x7954bfa4
        0x28079289
        0x7af5067a
        0x2edc2050
        0x7c3bc17c
        0x123d5e7b
        0x7d38ad76
        0x2a9381d9
        0x7df9c5df
        0xe868ca7
        0x7e8b2aba
        0x18e5c811
        0x7ef7237c
        0x908272
        0x7f4637c5
        0x6dba5126
        0x7f7f5707
        0x4a52edeb    # 3455866.8f
        0x7fa808cc
        0x23290599
        0x7fc4a083
        0x69bdf2d5
        0x7fd870ca
        0x42275558
        0x7fe5fb5d
        0x3ef82c1b
        0x7fef1bfa
        0x6c03a362
        0x7ff52d4e
        0x316c2c8c
        0x7ff927ba
        0x12ae54af
        0x7ffbba43
        0x749cc0e2
        0x7ffd5e3d
        0x4524ad91
        0x7ffe6664
        0x535785b5
        0x7fff0a41
        0xb291681
        0x7fff6e81
        0x132c3d6f
        0x7fffaafe
        0x4dbc6bed    # 3.951487E8f
        0x7fffcefd
        0x7a1e2d14
        0x7fffe41e
        0x4c6ec115    # 6.2587988E7f
        0x7ffff059
        0x319503c8
        0x7ffff754
        0x5ddd0d40
        0x7ffffb43
        0xb9e9823
        0x7ffffd71
        0x76b81ae1
        0x7ffffea3
        0x7e66a1ec
        0x7fffff49
        0x26f6e191
        0x7fffffa1
        0x2fa31694
        0x7fffffcf
        0x5247bec9
        0x7fffffe7
        0x4f4127c7
        0x7ffffff3
        0x6faa69fd
        0x7ffffffa
        0x630d073
        0x7ffffffd
        0xf2957bb
        0x7ffffffe
        0x4fd29432
        0x7fffffff
        0x2cfad60d
        0x7fffffff
        0x5967a930
        0x7fffffff
        0x6e4c9dff
        0x7fffffff
        0x77fdccc8
        0x7fffffff
        0x7c6ce89e
        0x7fffffff
        0x7e6d116f
        0x7fffffff
        0x7f50fa31
        0x7fffffff
        0x7fb50089
        0x7fffffff
        0x7fe04c2d
        0x7fffffff
        0x7ff2c7c1
        0x7fffffff
        0x7ffa8fe3
        0x7fffffff
        0x7ffdcb1b
        0x7fffffff
        0x7fff1de2
        0x7fffffff
        0x7fffa6b7
        0x7fffffff
        0x7fffdd39
        0x7fffffff
        0x7ffff2a3
        0x7fffffff
        0x7ffffaef
        0x7fffffff
        0x7ffffe1b
        0x7fffffff
        0x7fffff4d
        0x7fffffff
        0x7fffffbf
        0x7fffffff
        0x7fffffe9
        0x7fffffff
        0x7ffffff8
        0x7fffffff
        0x7ffffffd
        0x7fffffff
        0x7fffffff
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sample_gauss_poly(I[BI[II)V
    .registers 20

    .line 0
    shl-int/lit8 v0, p0, 0x8

    const/16 v1, 0x1000

    new-array v1, v1, [B

    const/4 v9, 0x2

    new-array v10, v9, [I

    const/4 v11, 0x0

    move v12, v11

    :goto_b
    const/16 v2, 0x400

    if-ge v12, v2, :cond_70

    add-int/lit8 v13, v0, 0x1

    int-to-short v5, v0

    const/16 v8, 0x20

    const/4 v3, 0x0

    const/16 v4, 0x1000

    move-object v2, v1

    move-object/from16 v6, p1

    move/from16 v7, p2

    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->customizableSecureHashAlgorithmKECCAK128Simple([BIIS[BII)V

    move v0, v11

    :goto_20
    const/16 v2, 0x200

    if-ge v0, v2, :cond_6c

    add-int v2, p4, v12

    add-int/2addr v2, v0

    aput v11, p3, v2

    const/4 v3, 0x1

    move v4, v3

    :goto_2b
    const/16 v5, 0x4e

    if-ge v4, v5, :cond_57

    move v5, v3

    move v6, v11

    :goto_31
    if-ltz v5, :cond_4d

    mul-int/lit8 v7, v0, 0x2

    invoke-static {v1, v7, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->access$000([BII)I

    move-result v7

    const v8, 0x7fffffff

    and-int/2addr v7, v8

    sget-object v8, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$Gaussian;->cdt_v:[I

    mul-int/lit8 v14, v4, 0x2

    add-int/2addr v14, v5

    aget v8, v8, v14

    add-int/2addr v8, v6

    sub-int/2addr v7, v8

    aput v7, v10, v5

    shr-int/lit8 v6, v7, 0x1f

    add-int/lit8 v5, v5, -0x1

    goto :goto_31

    :cond_4d
    aget v5, p3, v2

    not-int v6, v6

    and-int/2addr v6, v3

    add-int/2addr v5, v6

    aput v5, p3, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_57
    mul-int/lit8 v3, v0, 0x2

    shl-int/2addr v3, v9

    add-int/lit8 v3, v3, 0x3

    aget-byte v3, v1, v3

    shr-int/lit8 v3, v3, 0x1f

    aget v4, p3, v2

    neg-int v5, v4

    and-int/2addr v5, v3

    not-int v3, v3

    and-int/2addr v3, v4

    or-int/2addr v3, v5

    aput v3, p3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_6c
    add-int/lit16 v12, v12, 0x200

    move v0, v13

    goto :goto_b

    :cond_70
    return-void
.end method

###### Class org.bouncycastle.pqc.legacy.crypto.qtesla.QTesla1p.QTesla1PPolynomial (org.bouncycastle.pqc.legacy.crypto.qtesla.QTesla1p$QTesla1PPolynomial)
.class Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QTesla1PPolynomial"
.end annotation


# static fields
.field private static final zeta:[I

.field private static final zetainv:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    const/16 v0, 0x400

    new-array v1, v0, [I

    fill-array-data v1, :array_12

    sput-object v1, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->zeta:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_816

    sput-object v0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->zetainv:[I

    return-void

    nop

    :array_12
    .array-data 4
        0xaf7b9ca
        0x1457cb0d
        0xa42733e
        0x123e3ebb
        0xf84fee4
        0x10139c1d
        0x137d565
        0x20ec1f
        0x2287843
        0x3b1d926
        0x6b8938e
        0x5877254
        0x1099a266
        0x8496210
        0xaf22a7c
        0x11c6a1ab
        0x2353c9c
        0xdc0ac5d
        0x66d3789
        0x5c857c1
        0x956df94
        0x2516e5e
        0xa25ba1c
        0xf754b4b
        0xa232cb6
        0x87071c3
        0x5f7aff1
        0x1398fdb3
        0x11483b78
        0xfb5d2a9
        0x7de6009
        0xdd8024
        0x535ffd2
        0xb7c3d7a
        0xb61d835
        0xfa84c11
        0x13e7eec8
        0xc5b900
        0x137721ad
        0x104e9505
        0x90e276f
        0xbad17d3
        0xf9c1d16
        0x72e81b9
        0xa1b75d2
        0x2ad10cf
        0x7a9ea27
        0x41184fb
        0x13a3fe8
        0x2a1e66d
        0x2263e28
        0xf42665a
        0xa417cab
        0xca25e4a
        0x81414d9
        0x640c595
        0xc258f7b
        0x3283bce
        0x7595ed0
        0x2aa3dff
        0x139e2412
        0xea693ac
        0xd268b5d
        0xbf25896
        0x589a01a
        0xcd7c2aa
        0xd8d7020
        0x72ee4c1
        0x10624402
        0xe1cc4f0
        0x5050b80
        0x5cda7e4
        0xd5a06d7
        0x9f96c7d
        0x13e16db7
        0xd7623ed
        0x114b57bb
        0x838b83f
        0x60714ab
        0x5aa6ac7
        0x6bebf5
        0x37e2ab5
        0xfbe1ddd
        0xc5de776
        0xffd3904
        0x11683f2e
        0x9e98c0a
        0xf4b2f98
        0x7f63b30
        0x7229754
        0x377990e
        0xb3c1f1e
        0xb037f90
        0x94cfae2
        0x111639ce
        0x6b70960
        0x551e873
        0xfe38436
        0x11523267
        0x4cfa0a1
        0xac4b988
        0xd782fda
        0x62b7a7d
        0x1227e42e
        0x138464be
        0x57d10a9
        0x11a608d8
        0x8a2214c
        0x12725a04
        0x13a76585
        0x8718323
        0xfcb138d
        0xd94ae02
        0x13972d9b
        0xc6ff402
        0x126b0d28
        0x12d294fe
        0xae84d6a
        0x13dc69e5
        0xc2030a7
        0xc72bdf
        0x16c0ca9
        0xa5713f4
        0x5ca1f1f
        0x366c31f
        0x437851e
        0xc0be871
        0x1278400e
        0x35c7516
        0x1408e1e5
        0xb4629fb
        0xd11477f
        0x117c313d
        0x1236a210
        0x1187052
        0x1414e6ab
        0x38bfd93
        0x1090c71b
        0xcf3d613
        0x7b606f7
        0x125d717d
        0x3650f51
        0xb570f3a
        0xbe39829
        0x71cd8ee
        0x88fc930
        0x10c6a82
        0x12721c03
        0xa47e35d
        0x924551f
        0x38233b0
        0x43ab87f
        0xe2af89b
        0x6eb813d
        0x3b50c4f
        0x4cf4528
        0x12840762
        0x1395f75c
        0xb8f596
        0x43e6f6c
        0xbec019f
        0xe01ead6
        0x14cf680
        0x61c1bad
        0xaed6d25
        0x38f7b41
        0x10e02ec3
        0x12b1df20
        0x1cf3f8f
        0x9b9e21d
        0x305e477
        0x5f8ae6d
        0x13403742
        0x58856e1
        0x10e00f3d
        0x20db94c
        0x121afe4e
        0x5550ff2
        0x8cae48a
        0xa7780e5
        0x48f3515
        0xd28c4cf
        0x122d5f67
        0x2505e41
        0xcf4006d
        0x11f583f1
        0x1397fc4f
        0x60c68f3
        0x10235406
        0xf1f4a47
        0xa809e98
        0x1350c20b
        0x6d76aea
        0x1221109f
        0x10507668
        0x896b726
        0xfb561ec
        0xaaf0018
        0xb31c63d
        0xe98abfe
        0xc132643
        0xc7a0e50
        0x6fcd014
        0xadc16e9
        0xcfde2a0
        0xf09bae0
        0x13c9f800
        0x2c04015
        0x13f3bc30
        0x3bb7b22
        0x11f36bc6
        0x10de7dc8
        0xca649a0
        0xe01928a
        0x6663c8f
        0x779ec61
        0xa4d0b15
        0x101e1eab
        0x951352a
        0x12935025
        0x303259d
        0xecdecbb
        0x92ef3e7
        0x13c2e255
        0x2e35a30
        0xfea8da0
        0xd77ef8b
        0xffa2c6
        0x4947ff2
        0xd7f462b
        0x671938b
        0x93b645d
        0x1372b23d
        0x60994d7
        0xc2bc1b6
        0x338306c
        0x6346f96
        0x636a74f
        0xf8dc5a3
        0x13e835fa
        0x1162b7ba
        0x1391a933
        0x1c3c5db
        0x655e226
        0x9b05df6
        0x10650e7f
        0x3d34bf5
        0xfaf4e84
        0xee08c2
        0x1360ae56
        0x82e5650
        0x3fb16fc
        0x488f18
        0x1263a44b
        0xad788c9
        0x136196bd
        0xd2db418
        0x7da3741
        0x8cb3222
        0x7d709d3
        0x89663d8
        0x9eb08c2
        0x949c5cf
        0xf0cfeca
        0xeff3010
        0x1348efd9
        0xce07cf9
        0xddda455
        0x5abade6
        0x11297cb7
        0xe0ab827
        0x1ee2e26
        0x492b13b
        0x3a020bf
        0x83f1e5c
        0x61d79
        0x3180c5b
        0xbc39ce8
        0x1310614c
        0x5e0cc2e
        0x506fcae
        0x671b01a
        0x12c1a176
        0x80495a2
        0x3dfa6e4
        0x421e74
        0x11a03605
        0xbf68c90
        0x8ccebb6
        0x12f47fc7
        0x4a15556
        0x583ba54
        0x2833a7b
        0x5369a49
        0x10fd5406
        0x13d83590
        0x3bbbcee
        0x547191
        0x1268def3
        0x56e0b85
        0x1013b37d
        0x1049ef40
        0xf002f9e
        0x5b11a5a
        0x14ac35b
        0xae7d1d4
        0xa8fab9e
        0x1192ad3a
        0x512f5a1    # 6.910002E-36f
        0x104eb8aa
        0x58cd5d1
        0x6eeb8c6
        0x129bfa9a
        0x11cd14f
        0x1eb3937
        0x12abce13
        0x5e33918
        0x1054aaef
        0x129aa7c1
        0xc420d28
        0xfc9765d
        0xaaa1a56
        0x145414ff
        0xdde28d1
        0xa58608e
        0xa869114
        0x963d43e
        0x122ed132
        0x1086f19a
        0xa226d44
        0xd9fc233
        0x1e29ec3
        0xa729217
        0x2393803
        0x74746b6
        0xc8e6678
        0xa790877
        0x12c12ac2
        0x1367455a
        0xfe6ccc2
        0x11f5c63e
        0x138bb661
        0x10ad372a
        0x122854a9
        0x1221033a
        0x11745ea6
        0x8c9ccc6
        0x59c9df5
        0x26963b6
        0xd32104d
        0x1012da8c
        0xfd25f99
        0xc6b79e5
        0x996953a
        0x1126f2a7
        0x1436f793
        0x7b98bad
        0x5bbc966
        0x6be7906
        0x5b702eb
        0xceab3d5
        0x10ffd623
        0x409e1a3
        0x4b5df47
        0x126d2187
        0x8408bc1
        0xca6a056
        0xc0e67c
        0xe8433a3
        0x1fe8e61
        0x4969e43
        0x43dc00b
        0x9174a1b
        0xbf73728
        0x22bd0db
        0x1435dda3
        0x1306acef
        0xb396ca8
        0xfdc746e
        0x10b0b855
        0xaf36531
        0xe3d8dc7
        0x163302d
        0x997ab49
        0xbf515d6
        0x9bb7f7a
        0x11c20877
        0xd868c74
        0x52d0f84
        0x8a95cf7
        0xc0dbcf8
        0x317bcd8
        0x12fb8a1e
        0x10d31bc2
        0xd2f8bd3
        0xc5fb12b
        0x7df84b1
        0x13f2034e
        0x9c5b7d5
        0x4066963    # 1.5800016E-36f
        0xa5b5c8e
        0xdffc179
        0xf364fee
        0x108efc4e
        0x3b181a0
        0xcea3f16
        0x5bac5ff
        0x2566c9b
        0x42c8c55
        0x4ac0bd
        0xe31a8da
        0xe775192
        0x10f7e04f
        0x4d49a3c
        0x13d7bffb
        0x712a7
        0x11d6aa14
        0xc31f54b
        0x8eb8d5f
        0xd3ef545
        0x19951c5
        0x4e08da5
        0x7a0fc59
        0xbfa7227
        0xf66aab
        0x67c5869
        0xcf9f9ab
        0x919129e
        0x1b67923
        0x5074da
        0x12ce8d9
        0xdcfdcf4
        0x2f8b6e2
        0x70d6846
        0xb111796
        0xd50ec4d
        0xe7dfe2e
        0xf70589e
        0x12684e0f
        0x9c8d446
        0x145937b0
        0xb79b9f9
        0x5c8a714
        0x10b042ce
        0x1353344
        0x1ebc65c    # 8.661E-38f
        0x29c96e7
        0x14783373
        0x768f9d0
        0x3529ca
        0x1e3df57
        0x8cd67b8
        0xba51a21
        0x33bb15e
        0x10a28dd3
        0x8e36151
        0x12001d28
        0xe93a5fd
        0x12c9c2b
        0x847076b
        0xdbd8345
        0x6c3fd7d
        0x810625e
        0x12a86314
        0xf29995f
        0xd1a1f54
        0xf1d3d51
        0xd26cbac
        0x76f7471
        0x762cddd
        0x136ab57f
        0x75cb5ec
        0x83bdafa
        0x92ec8c2
        0x12c26678
        0x36a1ed4
        0xd40d812
        0x49147f3
        0x8aa52c9
        0x31a10af
        0xdb3b583
        0x13d7ae94
        0x9140acd
        0x5aaae91
        0x7704976
        0x101a085a
        0x2dadab2
        0x72143f9
        0x7f18641
        0x8424717
        0x145fc369
        0x3efd681
        0x104be65f
        0x1223575c
        0xcaa5ace
        0xc8a467b
        0x1088ff88
        0x10bc90ad
        0xd4cb8e0
        0x9ae2375
        0x2ad4d62
        0x12e03e0d
        0x11cdf17d
        0xf119c33
        0xdc18723
        0xdba64f6
        0x363aabe
        0x1455699a
        0xa915035
        0xecb92cb
        0xcd2e86a
        0x5d6e9ab
        0x1162a767
        0x9a69173
        0x143e93f4
        0xc4e1a7e
        0x1e6ae28
        0x10ab871a
        0x4aa1e6f    # 3.9994757E-36f
        0x100640b0
        0x5842331
        0x14120655
        0x2d30815
        0x3b5588f
        0x4e7a6bd
        0x55baa22
        0xfdca34f
        0xc153b
        0x1abe403
        0x6971062
        0xaed3177
        0x10c261ec
        0x9ea1f80
        0x5253ed4
        0xf95c60b
        0x9d0526f
        0x50d2bea
        0x9638bb9
        0xcc6844b
        0x44e8e17
        0xcbd66e
        0xda66d2f
        0xc2bca7a
        0xab97a53
        0x14c70a1
        0x13b3de6d
        0x9cefb13
        0x89cf9d4
        0x10b6f255
        0x1350b99d
        0xffcd370
        0x13461e85
        0x19a5513
        0xd9efbfb
        0x9efc766
        0x3a574bd
        0xce7eef
        0x283717d
        0x7ee1add
        0x96e3c5d
        0xd1eb2a0
        0xe78b44
        0x10ca7f71
        0x10eaa863
        0xfb04d25
        0x11464718
        0xebb8779
        0x1074877d
        0xbc6dab7
        0x2026bc9
        0xad47551
        0x5c57faa
        0x1f767fa
        0xd9fe968
        0x3da65f
        0x3e2b36d
        0xf63e1b3
        0x5be70cf
        0xa82199b
        0x145c02e1
        0x123eafcb
        0xd09d034    # 4.2467E-31f
        0x1bd6ed0
        0x1295d983
        0x123ad063
        0x1e2653b
        0x1ad3b2e
        0x455908a
        0x24c8069
        0xbc6d284
        0xe2ff1d
        0xd9f066a
        0x118ec6d5
        0x2568c1
        0x9e3e39a
        0x6aff757
        0xc34c97f
        0x83d032b
        0x347634
        0x784e7d7    # 1.9997416E-34f
        0x38fc870
        0x9799e4c
        0xffbcfd2
        0xfde5de0
        0xe91973b
        0x123f8f48
        0xd012508
        0x11fd3467
        0xc729ad7
        0xca5347b
        0xc802699
        0x100e0916
        0x11a046b2
        0xd553a4
        0xfc0a79c
        0x11fea7dd
        0x10690905
        0x662d00b
        0x3d242f
        0x893df0f
        0x855ea52
        0x182eb21
        0x149b280
        0x14507aab
        0x5708804
        0xbda8113
        0x2b079c5
        0xd5bb264
        0x10111b21
        0x28df40b
        0x10077aa2
        0xb3c4dca
        0xe07a641
        0x135a5b99
        0x6bd1ba7
        0xa9059e0
        0x5dba24d
        0x704a11b
        0x53527c1
        0x13ad154e
        0x1287e48c
        0xfffd767
        0x1a4a8c5
        0xfdf76a6
        0xad00678
        0x3ed3297
        0xeadfcae
        0x79b956f
        0xf67d42
        0xc8843f4
        0x8d410b
        0x8c73414
        0xe0a8a4f
        0x14515e61
        0x1e18c68
        0xd610aa0
        0xdb42210
        0x270c14e
        0xfb26ebf
        0xe2d620
        0x1a03f3a
        0x319289d
        0x5ef0f89
        0x671cc40
        0x8a809cb
        0xcf54c3f
        0x502aac2
        0xb55be70
        0x2cb8bb8
        0xc4302dd
        0x11b2de99
        0x13c484f6
        0x38f1694
        0xfd83c34
        0xcc910a2
        0x127e64a5
        0x5210b32
        0xebc23d9
        0x10717c0c
        0x34d4545
        0x120b1ab1
        0x946040c
        0xc65d042
        0x117ff03e
        0x123a1754    # 5.8720005E-28f
        0x84e0ce0
        0xbd3dd5e
        0x635ebc3
        0x1317a88e
        0x611a497
        0x43887f7
        0x2993291
        0xe6b4fe5
        0xc890cb7
        0x11ce57fa
        0x90937ee
        0x57d3c2a
        0x1783129
        0x32186a1
        0x8078a85
        0x1358b4f1
        0x11785dee
        0x741e0b5
        0x134eef61
        0x10752d3f
        0x1ff8535
        0xd0bd9e3
        0x2cc7320
        0x1f977ee
        0x118bafa7
        0x9a1bea0
        0xc749cc8
        0x7b3c1f6
        0x134b2c76
        0xdf82780
        0x2fd517d
        0x7631d77
        0x44c93b8
        0x20a853b
        0xa3dd3fe
        0x18d05a4
        0x59a48b3
        0x1b2287d
        0x171911d
        0xb39b698
        0xacc4c33
        0x8bbd00b
        0xb1dcf04
        0xf64d4c7
        0xc58cf02
        0xc504fad
        0xb50ae43
        0x66c5344
        0x7b08e1b
        0xd406569
        0x13bf8733
        0x22ec201
        0x870e128
        0x104a8668
        0xead0f17
        0x94e7eb9
        0x114aa34d
        0x93ad8c0
        0x127dafea
        0x396630e
        0x464a573
        0xd76f454
        0x53dba93
        0x87e305b
        0x919c1cf
        0x2bc3eb1
        0xca399dc
        0x8daa946
        0xc61f027
        0x433a58
        0xaaf6e54
        0xce37592
        0xdba369f
        0x1214cbdc
        0x27b02f5
        0x2cf4d87
        0xcd432b
        0x5a3e421
        0x2ea0b96
        0x4ad1bd0
        0xccc658d
        0x11eda0ab
        0x171497
        0xa5896cd
        0x9bb135c
        0xe4c53f0
        0xc42f370
        0x123f00f7
        0x65ffa54
        0x8f22016
        0x497f83c
        0xeaf9e49
        0xbe72787
        0x10b2fca3
        0xf49d776
        0xb9606c4
        0x4a81b8e
        0xa0878be
        0xac5cda3
        0x8b38778
        0xe811d90
        0xbd45072
        0x4f5032c
        0x11129a30
        0x15d33d1
        0x102f01ca
        0x3f12d0f
        0xe8473a0
        0x135d60fa
        0x8e9257c
        0x17651b3
        0x1f55f26
        0x3bdeaad
        0x36524d8
        0xd692db0
        0x7b53242
        0x4d501d9
        0x108e0d14
        0xcdd1c96
        0x6fc68b4
        0xba0d6f5
        0x11281d1f
        0x3713575
        0x9b6ff0f
        0xf74c154
        0x8119515
        0xb9d3995
        0xe1d2b9c
        0xd117a0e
        0x286343c
        0x1a84849
        0xb1a272a
        0x1284e40a
        0x630b78
        0xd9f528b
        0x12d41b35
        0x153096f
        0x89b3ffd
        0xec96fe
        0x53c75b4
        0x94bf604
        0x137fd61
        0xa97e1c2
        0xd82b1dd
        0xc3cde33
        0x10117961
        0x7f80bc4
        0xb49d645
        0x12c13580
        0x12e87a58
        0x1221a418
        0x9654cc9
        0x11c552ed
        0xb12dbb7
        0x141cd817
        0x88ab4
        0x43bacc
        0xed9205b
        0xb043392
        0xd33abce
        0xc41b55a
        0xa460b91
        0xa88452f
        0x107e4ab6
        0x11a5bff6
        0x6a119e9
        0xf7c62a9
        0xeb926b
        0xbcd9156
        0x80272ef
        0x9abe9c5
        0xa2d631e
        0xf4fd714
        0x7767f45
        0x124da4b4
        0x10a9a7c5
        0xa23e67d
        0x11b1804b
        0xb381bf0
        0x119c0633
        0x12c755d3
        0xa40e7d9
        0x10a1e7ae
        0xb52abae
        0x974ff52
        0xb80cab3
        0x13769c4b
        0x812be49
        0x5e0ff0f
        0xf574e5d
        0x135f2c01
        0x1952fa2
        0x3b4f2a9
        0xda3a5e8
        0x105a6bf1
        0x11a92ea
        0xb04a8e7
        0xc873b05
        0xb22e5ae
        0xdc2a2be
        0xc553a0e
        0xbfed4e5
        0x107880e0
        0x726d203
        0x5720670
        0x1364dd77
        0x41e2930
        0x1251d39f
        0x12691369
        0xc715fa9
        0x1f57eae
        0x91e3aad
        0xc631945
        0x3f59726
        0x40745f6
        0x7152d52
        0x2f6978
        0x1331e609
        0x8b43a30
        0x659e1ce
        0xfe977c7
        0x556b090
        0x92b0bb4
        0x5694a5d
        0x1027c819
        0xc257691
        0xa14130c
        0x12d3c16c
        0x124b2cc0
        0x72e116    # 1.0549992E-38f
        0x1388ce03
        0xd95805c
        0x22896a
        0xdb1586
        0x1013eadc
        0x1332b479
        0x391105f
        0x11c844de
        0x1173bad3
        0x141fe815
        0x3f65b73
        0x481c25a
        0x138e3f2b
        0x940aa8e
        0x53092dd
        0x227cfe8
        0x105090d5
        0x13270ab5
        0xcffe467
        0x125e6fbd
        0x14d93a1
        0xac4e885
        0x80f1db4
        0x7256700
        0x74bc4b1
        0xff24c6c
        0x145897b2
        0x53b8e1b
        0xbb3eccf
        0xcf03bff
        0x4fb16b1
        0x97ffd22
        0xf2287d7
        0xb01e63e
        0xcbad040
        0xb90add8
        0x224eaa2
        0x113beaf
        0xef3baef
        0x6dc254e
        0x8cdd7c3
        0x13b08eb5
        0xfddb19c
        0x1a901ef
        0x11b0d3bf
        0xf323948
        0x2952e76
        0x46815d9
        0x220caa5
        0x723b5c0
        0xcef20da
        0xc198d4
        0xef3def1
        0xe89be7d
        0x13b3e256
        0x11a7e9a1
        0xc0bcf61
        0x6a26a27
        0x900d690
        0x62a8bd0
        0xe2b2b13
        0x4b039e6
        0x73dca9b
        0x8012430
        0x543039c
        0xa919f5c
        0xb1fbe3a
        0x4a3e0f2
        0xca02729
        0x8af27ab
        0x113cb1f2
        0x105feccf
        0x1392da72
        0xd0a3554
        0x5717ef7
        0x132d2490
        0x108b7d2c
        0x3eb0102
        0x106c60a5
        0x89bd050
        0xc29c0cb
        0xa9116d7
        0xcc48114
        0xfc7e3f1
        0xa150dcf
        0x13ffddd8
        0x13e8793d
        0x10c1bab7
        0x123d25ca
        0x12824790
        0x82a0ccf
        0xceb8ff6
        0xe106099
        0xf247d9e
        0x10ff6c4d
        0xfc127a2
        0xb3f103
        0x8e6a781
        0xccc0c0a
        0xf939a5b
        0x12e9ee57
        0x17643f2
        0x7149a79
        0xfbe8f88
        0xa638eec
        0x13d5d0d9
        0x59d5fea
        0x112dfed3
        0xa413ff4
    .end array-data

    :array_816
    .array-data 4
        0x34c912e
        0xedd3017
        0xa4bf28
        0xa170115
        0x4bc0079
        0xd65f588
        0x13044c0f
        0x190a1aa
        0x4e6f5a6
        0x7ae83f7
        0xb93e880
        0x13c69efe
        0x4b9685f
        0x37b23b4
        0x5561263
        0x66a2f68
        0x78f000b
        0xc508332
        0x1f84871
        0x23d6a37
        0x3b8d54a
        0x9216c4
        0x7ab229
        0xa658232
        0x4b2ac10
        0x7b60eed
        0x9e9792a
        0x850cf36
        0xbdebfb1
        0x40e2f5c
        0x108f8eff
        0x3ef12d5
        0x14d6b71
        0xf09110a
        0x7705aad
        0xe7b58f
        0x41aa332
        0x33dde0f
        0xbcb6856
        0x7da68d8
        0xfd6af0f
        0x95ad1c7
        0x9e8f0a5
        0xf378c65
        0xc796bd1
        0xd3cc566
        0xfca561b
        0x64f64ee
        0xe500431    # 2.5639998E-30f
        0xb79b971
        0xdd825da
        0x86ec0a0
        0x2d2a660
        0xc6adab
        0x5f0d184
        0x586b110
        0x13b8f72d
        0x78b6f27
        0xd56da41
        0x1259c55c
        0x10127a28
        0x11e5618b
        0x54856b9
        0x2c9bc42
        0x12d18e12
        0x49cde65
        0xca014c
        0xbacb83e
        0xd9e6ab3
        0x586d512
        0x1366d152
        0x1255a55f
        0x8e9e229
        0x7bfbfc1
        0x978a9c3
        0x558082a
        0xafa92df
        0xf7f7950
        0x78a5402
        0x8c6a332
        0xf3f01e6
        0x21f84f
        0x4884395
        0xd2ecb50
        0xd552901
        0xc6b724d
        0x9b5a77c
        0x132cfc60
        0x21c2044
        0x77aab9a
        0x153854c
        0x429ff2c
        0x1252c019
        0xf49fd24
        0xb39e573
        0xec50d6
        0xff8cda7
        0x1084348e
        0x5aa7ec
        0x306d52e
        0x2b24b23
        0x10e97fa2
        0x147db88
        0x466a525
        0x139f7a7b
        0x14580697
        0x6e50fa5
        0xf1c1fe
        0x1407aeeb
        0x22f6341
        0x1a6ce95
        0xa667cf5
        0x8551970
        0x452c7e8
        0xf1145a4
        0xb4f844d
        0xf23df71
        0x491183a
        0xe20ae33
        0xbc655d1
        0x148a9f8
        0x144b2689
        0xd6562af
        0x10734a0b
        0x1084f8db
        0x81776bc
        0xb5c5554
        0x12851153
        0x8093058
        0x2117c98
        0x228bc62
        0x105c66d1
        0x115b28a
        0xf088991
        0xd53bdfe
        0x4020f21
        0x87bbb1c
        0x82555f3
        0x6b7ed43
        0x957aa53
        0x7f354fc
        0x975e71a
        0x135ffd17
        0x4202410
        0x6d6ea19
        0x10c59d58
        0x12e5605f
        0x11b6400
        0x52341a4
        0xe9990f2
        0xc67d1b8
        0x103f3b6
        0x8f9c54e
        0xb0590af
        0x927e453
        0x3d8a853
        0xa39a828
        0x1b33a2e
        0x2de89ce
        0x9427411
        0x2c90fb6
        0xa56a984
        0x3d0e83c
        0x22ceb4d
        0xd0410bc
        0x52ab8ed
        0xa4d2ce3
        0xacea63c
        0xc781d12
        0x8acfeab
        0x138efd96
        0x4fe2d58
        0xdd97618
        0x2d4d00b
        0x3fc454b
        0x9f24ad2
        0xa348470
        0x838daa7
        0x746e433
        0x9765c6f
        0x5a16fa6
        0x1436d535
        0x1472054d
        0x5db7ea
        0x967b44a
        0x2b53d14
        0xb154338
        0x258ebe9
        0x19215a9
        0x1b95a81
        0x930b9bc
        0xc82843d
        0x46916a0
        0x83db1ce
        0x6f7de24
        0x9e2ae3f
        0x134292a0
        0xb2e99fd
        0xf3e1a4d
        0x138df903
        0xbdf5004
        0x13278692
        0x1a674cc
        0x6db3d76
        0x14178489
        0x1f5abf7
        0x96068d7
        0x12d247b8
        0x11f45bc5
        0x76915f3
        0x65d6465
        0x8dd566c
        0xc68faec
        0x505cead
        0xac390f2
        0x11095a8c
        0x35272e2
        0x8d9b90c
        0xd7e274d
        0x79d736b
        0x3ec82ed
        0xfa58e28
        0xcc55dbf
        0x7116251
        0x11156b29
        0x10bca554
        0x128530db
        0x13043e4e
        0xb916a85
        0x11d2f07
        0x5f61c61
        0x108962f2
        0x44b8e37
        0x131d5c30
        0x367f5d1
        0xf858cd5
        0x8a63f8f    # 1.0005704E-33f
        0x5f97271
        0xbc70889
        0x9b4c25e
        0xa721743
        0xfd27473
        0x8e4893d
        0x530b88b
        0x3c7935e    # 1.1730003E-36f
        0x893687a
        0x5caf1b8
        0xfe297c5
        0xb886feb
        0xe1a95ad
        0x23b8f0a
        0x8379c91
        0x62e3c11
        0xabf7ca5
        0xa21f934
        0x14637b6a
        0x28cef56
        0x7ae2a74
        0xfcd7431
        0x1190846b
        0xed6abe0
        0x13ad4cd6
        0x11ab427a
        0x11ff8d0c
        0x265c425
        0x6c05962
        0x7971a6f
        0x9cb21ad
        0x143755a9
        0x8189fda
        0xb9fe6bb
        0x7d6f625
        0x11be5150
        0xb60ce32
        0xbfc5fa6
        0xf3cd56e
        0x7039bad
        0x1015ea8e
        0x10e42cf3    # 8.99994E-29f
        0x1fce017
        0xb3fb741
        0x32fecb4
        0xb2c1148
        0x5cd80ea
        0x4300999
        0xc09aed9
        0x124bce00
        0xbb08ce
        0x73a2a98
        0xcca01e6
        0xe0e3cbd
        0x929e1be
        0x82a4054
        0x821c0ff
        0x515bb3a
        0x95cc0fd
        0xbbebff6
        0x9ae43ce
        0x940d969
        0x1308fee4
        0x12c86784
        0xee0474e
        0x12ed8a5d
        0xa3cbc03
        0x12700ac6
        0x102dfc49
        0xd17728a
        0x117d3e84
        0x6826881
        0x12f638b
        0xcc6ce0b
        0x805f339
        0xad8d161
        0x2eee05a
        0x12811813
        0x11ae1ce1
        0x76eb61e
        0x127b0acc
        0x40562c2
        0x12ba0a0
        0xd38af4c
        0x3023213
        0x121db10
        0xc73057c
        0x11590960
        0x13025ed8
        0xefd53d7
        0xb715813
        0x2ac3807
        0x7f1834a
        0x60f401c
        0x11e15d70
        0x1042080a
        0xe68eb6a
        0x162e773
        0xe44a43e
        0x8a6b2a3
        0xc2c8321
        0x24078ad
        0x2fa9fc3
        0x814bfbf
        0xb348bf5
        0x26f7550
        0x112d4abc
        0x40913f5
        0x5be6c28
        0xf5984cf
        0x1fc2b5c
        0x7b17f5f
        0x4a253cd
        0x10eb796d
        0xb60b0b
        0x2c7b168
        0x8378d24
        0x11af0449
        0x924d191
        0xf77e53f
        0x78543c2
        0xbd28636
        0xe08c3c1
        0xe8b8078
        0x11616764
        0x12da50c7
        0x1397b9e1
        0x4c82142
        0x1209ceb3
        0x6c66df1
        0x7198561
        0x12990399
        0x2931a0
        0x67005b2
        0xbb35bed
        0x13ed4ef6
        0x7f24c0d
        0x138412bf
        0xcdefa92
        0x5cc9353
        0x108d5d6a
        0x9aa8989
        0x49b195b
        0x12d5e73c
        0x47ab89a
        0x1f2ab75
        0xcd7ab3
        0xf456840
        0xd75eee6
        0xe9eedb4
        0x9ea3621
        0xdbd745a
        0x1203468
        0x672e9c0
        0x93e4237
        0x473155f
        0x11ec9bf6
        0x46974e0
        0x71edd9d
        0x11ca163c
        0x8a00eee
        0xf0a07fd
        0x2a1556
        0x1330dd81
        0x12f7a4e0
        0xc24a5af
        0xbe6b0f2
        0x143d6bd2
        0xe17bff6
        0x41186fc
        0x27be824
        0x4b9e865
        0x13a53c5d
        0x2da494f
        0x46c86eb
        0x7fa6968
        0x7d55b86
        0x807f52a
        0x27d5b9a
        0x7796af9
        0x23b00b9
        0x5e8f8c6
        0x49c3221
        0x47ec02f
        0xb00f1b5
        0x10eac791
        0xcf5a82a
        0x144619cd    # 1.0001534E-26f
        0xc3d8cd6
        0x845c682
        0xdca98aa
        0xa96ac67
        0x14552740
        0x2ebc92c
        0x6db8997
        0x139790e4
        0x8b3bd7d
        0x122e0f98
        0x1024ff77    # 3.25401E-29f
        0x12cd54d3
        0x12982ac6
        0x23fbf9e
        0x1e4b67e
        0x12bd2131
        0x770bfcd
        0x23be036
        0x1e8d20
        0x9f87666
        0xebc1f32
        0x516ae4e
        0x1097dc94
        0x143ce9a2
        0x6daa699
        0x12832807
        0xeb51057
        0x9a61ab0
        0x12782438
        0x8b3b54a
        0x4060884
        0x5bf0888
        0x33448e9
        0x4ca42dc
        0x38fe79e
        0x3b01090
        0x139304bd
        0x75bdd61
        0xb0c53a4
        0xc8c7524
        0x11f71e84
        0x13ac1112
        0x10d51b44
        0xa8ac89b
        0x6db9406
        0x12e03aee
        0x134717c
        0x47dbc91
        0x129d664
        0x3c39dac
        0xbdd962d
        0xaab94ee
        0xc6b194
        0x132e1f60
        0x9c115ae
        0x84ec587
        0x6d422d2
        0x13aeb993
        0x102c01ea
        0x7b40bb6
        0xb170448
        0xf6d6417
        0xaaa3d92
        0x4e4c9f6
        0xf55512d
        0xa907081
        0x3b82e15
        0x98d5e8a
        0xde37f9f
        0x12ceabfe
        0x146e7ac6
        0x49decb2
        0xf1ee5df
        0xf92e944
        0x10c53772
        0x11a787ec
        0x6889ac
        0xef66cd0
        0x4744f51
        0xfd07192
        0x3cf08e7
        0x1293e1d9    # 9.33268E-28f
        0x82c7583
        0x3bfc0d
        0xad3fe8e
        0x317e89a
        0xea3a656
        0x7a7a797
        0x5aefd36
        0x9e93fcc
        0x252667
        0x1116e543
        0x6c02b0b
        0x6b908de
        0x568f3ce
        0x2ac9e84
        0x19a51f4
        0x11cd429f
        0xacc6c8c
        0x72dd721
        0x3bdff54
        0x3f19079
        0x7f04986
        0x7d03533
        0x25738a5
        0x42ea9a2
        0x108ab980
        0x1acc98
        0xc3848ea
        0xc8909c0
        0xd594c08
        0x119fb54f
        0x46087a7
        0xd0a468b
        0xecfe170
        0xb668534
        0xa2e16d
        0x6c6da7e
        0x11607f52
        0xbd03d38
        0xfe9480e
        0x739b7ef
        0x1110712d
        0x1b82989
        0xb4bc73f
        0xc3eb507
        0xd1dda15
        0x10fda82
        0xd17c224
        0xd0b1b90
        0x753c455
        0x55d52b0
        0x76070ad    # 1.6885E-34f
        0x550f6a2
        0x1d22ced
        0xc6a2da3
        0xdb69284
        0x6bd0cbc
        0xc338896
        0x134df3d6
        0x5e6ea04
        0x27a72d9    # 1.8400059E-37f
        0xb972eb0
        0x3d8022e
        0x113edea3
        0x8d575e0
        0xbad2849
        0x1296b0aa
        0x14456637
        0xd119631
        0x25c8e
        0x11ddf91a
        0x128ec9a5
        0x13455cbd
        0x3ca4d33
        0xeb1e8ed
        0x900d608
        0x215851
        0xab1bbbb
        0x21241f2
        0x50a3763
        0x5fc91d3
        0x729a3b4
        0x969786b
        0xd6d27bb
        0x1181d91f
        0x6aab30d
        0x134da728
        0x142a1b27
        0x12c416de
        0xb617d63
        0x7809656
        0xdfe3798
        0x13842556
        0x8801dda
        0xcd993a8
        0xf9a025c
        0x12e13e3c
        0x73b9abc
        0xb8f02a2
        0x8489ab6
        0x2a3e5ed
        0x14737d5a
        0xa2d006
        0xfa5f5c5
        0x382afb2
        0x6033e6f
        0x648e727
        0x142fcf44
        0x104e03ac
        0x12242366
        0xebfca02
        0x79050eb
        0x10c90e61
        0x3eb93b3
        0x5444013
        0x67ace88
        0xa1f3373
        0x1074269e
        0xab4d82c
        0x888cb3
        0xc9b0b50
        0x81aded6
        0x74b042e
        0x3a7743f
        0x17f05e3
        0x1162d329
        0x86cd309
        0xbd1330a
        0xf4d807d
        0x6f4038d
        0x2b8878a
        0xabf1087
        0x8857a2b
        0xae2e4b8
        0x13175fd4
        0x63d023a
        0x9872ad0
        0x3c9d7ac
        0x49e1b93
        0x9412359
        0x173e312
        0x44b25e
        0x124ebf26
        0x88358d9
        0xb6345e6
        0x103ccff6
        0xfe3f1be
        0x127c01a0
        0x5f65c5e
        0x13b9a985
        0x7d3efab
        0xc3a0440
        0x20d6e7a
        0xfc4b0ba
        0x1070ae5e
        0x37ab9de
        0x78fdc2c
        0xec38d16
        0xdbc16fb
        0xebec69b
        0xcc10454
        0x43986e
        0x3539d5a
        0xae3fac7
        0x80f161c
        0x4a83068
        0x467b575
        0x7487fb4
        0x12112c4b
        0xeddf20c
        0xbb0c33b
        0x306315b
        0x2598cc7
        0x2523b58
        0x3cd58d7
        0xeed9a0
        0x284c9c3
        0x493c33f
        0x1134aa7
        0x1b9653f
        0xa01878a
        0x7ec2989
        0xd33494b
        0x124157fe
        0xa07fdea
        0x1297f13e
        0x6dacdce
        0xa5822bd
        0x3f39e67
        0x24bbecf
        0xb16bbc3
        0x9f3feed
        0xa222f73
        0x69c6730
        0x267b02
        0x9d075ab
        0x4b119a4
        0x83882d9
        0x1dfe840
        0x425e512
        0xe9756e9
        0x1cec1ee
        0x128f56ca
        0x135dbeb2
        0x1de9567
        0xd8bd73b
        0xeedba30
        0x42bd757
        0xf679a60
        0x2e7e2c7
        0x9eae463
        0x992be2d
        0x132fcca6
        0xec975a7
        0x57a6063
        0x430a0c1
        0x466dc84
        0xf0c847c
        0x211b10e
        0x14261e70
        0x10bed313
        0xa25a71
        0x37d3bfb
        0xf43f5b8
        0x11f75586
        0xef6d5ad
        0xfd93aab
        0x186103a
        0xbada44b
        0x8840371
        0x2da59fc
        0x1438718d
        0x109ae91d
        0xc75fa5f
        0x1b8ee8b
        0xe08dfe7
        0xf739353
        0xe99c3d3
        0x16a2eb5
        0x8b6f319
        0x116283a6
        0x14747288
        0xc3b71a5
        0x10da6f42
        0xfe7dec6
        0x128c61db
        0x66fd7da
        0x351134a
        0xecee21b    # 5.1000652E-30f
        0x69cebac
        0x79a1308
        0x131a028
        0x57b5ff1
        0x56d9137
        0xb30ca32
        0xa8f873f
        0xbe42c29
        0xca3862e
        0xbaf5ddf
        0xca058c0
        0x74cdbe9
        0x118f944
        0x9a30738
        0x216ebb6
        0x143200e9
        0x107f7905
        0xc4c39b1
        0x119e1ab
        0x138c873f
        0x4cb417d
        0x10a7440c
        0x4158182
        0xaca320b
        0xe24addb
        0x12b6ca26
        0xe8e6ce
        0x317d847
        0x925a07
        0x4ecca5e
        0xe43e8b2
        0xe46206b
        0x11425f95
        0x84ece4b
        0xe70fb2a
        0x107ddc4
        0xb3f2ba4
        0xe08fc76
        0x6fb49d6
        0xfe6100f
        0x137aed3b
        0x702a076
        0x4900261
        0x119735d1
        0xb7adac
        0xb4b9c1a
        0x5aca346
        0x11776a64
        0x1e73fdc
        0xb295ad7
        0x45c7156
        0xa2d84ec
        0xd00a3a0    # 3.964E-31f
        0xe145372
        0x678fd77
        0x7d44661
        0x39c1239
        0x287243b
        0x10bf14df
        0x86d3d1
        0x11ba4fec
        0xb09801
        0x570d521
        0x77cad61
        0x99e7918
        0xd7dbfed
        0x80081b1
        0x86769be
        0x5e1e403
        0x948c9c4
        0x9cb8fe9
        0x4c52e15
        0xbe3d8db
        0x42a1999    # 1.9995158E-36f
        0x2597f62
        0xda32517
        0x129cdf6
        0x9f9f169
        0x55b45ba
        0x4573bfb
        0xe6e270e
        0xe293b2
        0x2850c10
        0x7868f94
        0x122a31c0
        0x24d309a
        0x751cb32
        0xfeb5aec
        0xa030f1c
        0xbafab77
        0xf25800f
        0x25f91b3
        0x126cd6b5
        0x39a80c4
        0xef23920
        0x13a58bf
        0xe81e194
        0x1174ab8a
        0xac0ade4
        0x12ab5072
        0x1c8b0e1
        0x39a613e
        0x10eb14c0
        0x98d22dc
        0xe5e7454
        0x132d9981
        0x678a52b
        0x88e8e62
        0x103c2095
        0x13c19a6b
        0xe498a5
        0x1f6889f
        0xfab4ad9
        0x10c583b2
        0xd8f0ec4
        0x64f9766
        0x103fd782
        0x10f85c51
        0xb563ae2
        0xa32aca4
        0x20873fe
        0x136e257f
        0xbeac6d1
        0xd5db713
        0x896f7d8
        0x92380c7
        0x111580b0
        0x21d1e84
        0xcc4890a
        0x786b9ee
        0x3e9c8e6
        0x10ee926e    # 9.410006E-29f
        0x65a956
        0x13621faf
        0x243edf1
        0x2fe5ec4
        0x7694882
        0x9346606
        0x71ae1c
        0x111e1aeb
        0x2024ff3
        0x86ea790
        0x10430ae3
        0x1113cce2
        0xeb070e2
        0xa237c0d
        0x130e8358
        0x13b36422
        0x85a5f5a
        0x9e261c
        0x9924297
        0x1a7fb03
        0x20f82d9
        0x80a9bff
        0xe36266
        0x6e5e1ff
        0x4af7c74
        0xc090cde
        0xd32a7c
        0x20835fd    # 1.0007196E-37f
        0xbd86eb5
        0x2d48729
        0xefd7f58
        0xf62b43
        0x252abd3
        0xe4f1584
        0x7026027
        0x9b5d679
        0xfaaef60
        0x3285d9a
        0x4970bcb
        0xf28a78e
        0xdc386a1
        0x3645633
        0xb2d951f
        0x9771071
        0x93e70e3
        0x1102f6f3
        0xd57f8ad
        0xc8454d1
        0x52f6069
        0xa9103f7
        0x31250d3
        0x47d56fd
        0x81ca88b
        0x4bc7224
        0x10fc654c
        0x140ea40c
        0xed0253a
        0xe737b56
        0xc41d7c2
        0x32f3846
        0x7046c14
        0x99224a
        0xa812384
        0x720892a
        0xeace81d
        0xf758481
        0x65dcb11
        0x4184bff
        0xd4bab40
        0x6ed1fe1
        0x7a2cd57
        0xef0efe7
        0x888376b
        0x75404a4
        0x5d3fc55
        0xdc6bef
        0x11d05202
        0xd213131
        0x11525433
        0x8550086
        0xe39ca6c
        0xc667b28
        0x7d831b7
        0xa391356
        0x53829a7
        0x125451d9
        0x11d8a994
        0x13405019
        0x10690b06
        0xcd0a5da
        0x11cd7f32
        0xa5f1a2f
        0xd4c0e48
        0x4de72eb
        0x8cd782e
        0xb6c6892
        0x42bfafc
        0x1036e54
        0x13b4d701
        0x92a139
        0x4d243f0
        0x918b7cc
        0x8fe5287
        0xf44902f
        0x139d0fdd
        0xc9c2ff8
        0x4c4bd58
        0x3325489
        0xe1924e
        0xe82e010
        0xc0a1e3e
        0xa57634b
        0x50544b6
        0xa54d5e5
        0x122921a3
        0xb23b06d
        0xeb23840
        0xe0d5878
        0x6b9e3a4
        0x12455365
        0x2b3ee56
        0x9886585
        0xc312df1
        0x3e0ed9b
        0xef31dad
        0xdc1fc73
        0x10c8b6db
        0x125217be
        0x1459a3e2
        0x1342ba9c
        0x466f3e4
        0x4f5911d
        0x23c5146
        0xa381cc3
        0x22c4f4
        0x982d637
        0xa39500d
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static barr_reduce(I)I
    .registers 5

    .line 0
    int-to-long v0, p0

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    const/16 v2, 0x1e

    shr-long/2addr v0, v2

    long-to-int v0, v0

    const v1, 0x147a9001

    mul-int/2addr v0, v1

    sub-int/2addr p0, v0

    return p0
.end method

.method private static barr_reduce64(J)I
    .registers 6

    .line 0
    const-wide/16 v0, 0x3

    mul-long/2addr v0, p0

    const/16 v2, 0x1e

    shr-long/2addr v0, v2

    const-wide/32 v2, 0x147a9001

    mul-long/2addr v0, v2

    sub-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private static correct(I)I
    .registers 3

    .line 0
    shr-int/lit8 v0, p0, 0x1f

    const v1, 0x147a9001

    and-int/2addr v0, v1

    add-int/2addr p0, v0

    return p0
.end method

.method public static ntt([I[I)V
    .registers 15

    .line 0
    const/16 v0, 0x200

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    if-lez v0, :cond_3e

    move v3, v1

    :goto_7
    const/16 v4, 0x400

    if-ge v3, v4, :cond_3b

    add-int/lit8 v4, v2, 0x1

    aget v2, p1, v2

    move v5, v3

    :goto_10
    add-int v6, v3, v0

    if-ge v5, v6, :cond_37

    aget v6, p0, v5

    add-int v7, v5, v0

    aget v8, p0, v7

    int-to-long v9, v2

    int-to-long v11, v8

    mul-long/2addr v9, v11

    invoke-static {v9, v10}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->reduce(J)I

    move-result v8

    add-int v9, v6, v8

    const v10, 0x147a9001

    sub-int/2addr v9, v10

    invoke-static {v9}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->correct(I)I

    move-result v9

    aput v9, p0, v5

    sub-int/2addr v6, v8

    invoke-static {v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->correct(I)I

    move-result v6

    aput v6, p0, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_37
    add-int v3, v5, v0

    move v2, v4

    goto :goto_7

    :cond_3b
    shr-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3e
    return-void
.end method

.method public static nttinv([II[I)V
    .registers 15

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    :goto_3
    const/16 v3, 0x400

    if-ge v1, v3, :cond_38

    move v4, v0

    :goto_8
    if-ge v4, v3, :cond_35

    add-int/lit8 v5, v2, 0x1

    aget v2, p2, v2

    move v6, v4

    :goto_f
    add-int v7, v4, v1

    if-ge v6, v7, :cond_31

    add-int v7, p1, v6

    aget v8, p0, v7

    add-int v9, v7, v1

    aget v10, p0, v9

    add-int/2addr v10, v8

    invoke-static {v10}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->barr_reduce(I)I

    move-result v10

    aput v10, p0, v7

    int-to-long v10, v2

    aget v7, p0, v9

    sub-int/2addr v8, v7

    int-to-long v7, v8

    mul-long/2addr v10, v7

    invoke-static {v10, v11}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->reduce(J)I

    move-result v7

    aput v7, p0, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_31
    add-int v4, v6, v1

    move v2, v5

    goto :goto_8

    :cond_35
    mul-int/lit8 v1, v1, 0x2

    goto :goto_3

    :cond_38
    return-void
.end method

.method public static poly_add([I[I[I)V
    .registers 6

    .line 0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x400

    if-ge v0, v1, :cond_f

    aget v1, p1, v0

    aget v2, p2, v0

    add-int/2addr v1, v2

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method

.method public static poly_add_correct([II[II[II)V
    .registers 10

    .line 0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x400

    if-ge v0, v1, :cond_21

    add-int v1, p3, v0

    aget v1, p2, v1

    add-int v2, p5, v0

    aget v2, p4, v2

    add-int/2addr v1, v2

    invoke-static {v1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->correct(I)I

    move-result v1

    add-int v2, p1, v0

    const v3, 0x147a9001

    sub-int/2addr v1, v3

    invoke-static {v1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->correct(I)I

    move-result v1

    aput v1, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    return-void
.end method

.method public static poly_mul([II[II[I)V
    .registers 5

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_pointwise([II[II[I)V

    sget-object p2, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->zetainv:[I

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->nttinv([II[I)V

    return-void
.end method

.method public static poly_ntt([I[I)V
    .registers 4

    .line 0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x400

    if-ge v0, v1, :cond_c

    aget v1, p1, v0

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    sget-object p1, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->zeta:[I

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->ntt([I[I)V

    return-void
.end method

.method public static poly_pointwise([II[II[I)V
    .registers 11

    .line 0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x400

    if-ge v0, v1, :cond_19

    add-int v1, v0, p1

    add-int v2, v0, p3

    aget v2, p2, v2

    int-to-long v2, v2

    aget v4, p4, v0

    int-to-long v4, v4

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->reduce(J)I

    move-result v2

    aput v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method public static poly_sub([II[II[II)V
    .registers 10

    .line 0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x400

    if-ge v0, v1, :cond_15

    add-int v1, p1, v0

    add-int v2, p3, v0

    aget v2, p2, v2

    add-int v3, p5, v0

    aget v3, p4, v3

    sub-int/2addr v2, v3

    aput v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    return-void
.end method

.method public static poly_sub_reduce([II[II[II)V
    .registers 10

    .line 0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x400

    if-ge v0, v1, :cond_19

    add-int v1, p1, v0

    add-int v2, p3, v0

    aget v2, p2, v2

    add-int v3, p5, v0

    aget v3, p4, v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->barr_reduce(I)I

    move-result v2

    aput v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method public static poly_uniform([I[BI)V
    .registers 19

    .line 0
    const/16 v0, 0x46e0

    new-array v0, v0, [B

    const/4 v8, 0x1

    int-to-short v9, v8

    const/16 v7, 0x20

    const/4 v2, 0x0

    const/16 v3, 0x46e0

    const/4 v4, 0x0

    move-object v1, v0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->customizableSecureHashAlgorithmKECCAK128Simple([BIIS[BII)V

    const/16 v1, 0x6c

    move v4, v9

    const/4 v2, 0x0

    const/4 v9, 0x0

    :cond_19
    :goto_19
    const/16 v11, 0x1000

    if-ge v9, v11, :cond_9f

    mul-int/lit16 v3, v1, 0xa8

    add-int/lit8 v3, v3, -0x10

    if-le v2, v3, :cond_36

    add-int/lit8 v1, v4, 0x1

    int-to-short v12, v1

    const/16 v7, 0x20

    const/4 v2, 0x0

    const/16 v3, 0x46e0

    move-object v1, v0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->customizableSecureHashAlgorithmKECCAK128Simple([BIIS[BII)V

    move v1, v8

    move v4, v12

    const/4 v2, 0x0

    :cond_36
    invoke-static {v0, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    const v5, 0x1fffffff

    and-int/2addr v3, v5

    add-int/lit8 v6, v2, 0x4

    invoke-static {v0, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    and-int/2addr v6, v5

    add-int/lit8 v7, v2, 0x8

    invoke-static {v0, v7}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v7

    and-int/2addr v7, v5

    add-int/lit8 v12, v2, 0xc

    invoke-static {v0, v12}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v12

    and-int/2addr v5, v12

    add-int/lit8 v2, v2, 0x10

    const-wide/32 v12, 0xd00399

    const v14, 0x147a9001

    if-ge v3, v14, :cond_6a

    if-ge v9, v11, :cond_6a

    add-int/lit8 v15, v9, 0x1

    int-to-long v10, v3

    mul-long/2addr v10, v12

    invoke-static {v10, v11}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->reduce(J)I

    move-result v3

    aput v3, p0, v9

    move v9, v15

    :cond_6a
    if-ge v6, v14, :cond_7b

    const/16 v3, 0x1000

    if-ge v9, v3, :cond_7b

    add-int/lit8 v3, v9, 0x1

    int-to-long v10, v6

    mul-long/2addr v10, v12

    invoke-static {v10, v11}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->reduce(J)I

    move-result v6

    aput v6, p0, v9

    move v9, v3

    :cond_7b
    if-ge v7, v14, :cond_8c

    const/16 v3, 0x1000

    if-ge v9, v3, :cond_8c

    add-int/lit8 v3, v9, 0x1

    int-to-long v6, v7

    mul-long/2addr v6, v12

    invoke-static {v6, v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->reduce(J)I

    move-result v6

    aput v6, p0, v9

    move v9, v3

    :cond_8c
    if-ge v5, v14, :cond_19

    const/16 v3, 0x1000

    if-ge v9, v3, :cond_19

    add-int/lit8 v3, v9, 0x1

    int-to-long v5, v5

    mul-long/2addr v5, v12

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->reduce(J)I

    move-result v5

    aput v5, p0, v9

    move v9, v3

    goto/16 :goto_19

    :cond_9f
    return-void
.end method

.method public static reduce(J)I
    .registers 6

    .line 0
    const-wide v0, 0x837a8fffL

    mul-long/2addr v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/32 v2, 0x147a9001

    mul-long/2addr v0, v2

    add-long/2addr p0, v0

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static sparse_mul32([II[II[I[S)V
    .registers 16

    .line 0
    const/16 v0, 0x400

    new-array v1, v0, [J

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    const/16 v4, 0x19

    if-ge v3, v4, :cond_38

    aget v4, p4, v3

    move v5, v2

    :goto_d
    if-ge v5, v4, :cond_21

    aget-wide v6, v1, v5

    aget-short v8, p5, v3

    add-int v9, p3, v5

    add-int/2addr v9, v0

    sub-int/2addr v9, v4

    aget v9, p2, v9

    mul-int/2addr v8, v9

    int-to-long v8, v8

    sub-long/2addr v6, v8

    aput-wide v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_21
    move v5, v4

    :goto_22
    if-ge v5, v0, :cond_35

    aget-wide v6, v1, v5

    aget-short v8, p5, v3

    add-int v9, p3, v5

    sub-int/2addr v9, v4

    aget v9, p2, v9

    mul-int/2addr v8, v9

    int-to-long v8, v8

    add-long/2addr v6, v8

    aput-wide v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_38
    :goto_38
    if-ge v2, v0, :cond_47

    add-int p2, p1, v2

    aget-wide p3, v1, v2

    invoke-static {p3, p4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->barr_reduce64(J)I

    move-result p3

    aput p3, p0, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    :cond_47
    return-void
.end method

.method public static sparse_mul8([II[BI[I[S)V
    .registers 15

    .line 0
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x400

    if-ge v1, v2, :cond_d

    add-int v2, p1, v1

    aput v0, p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    move v1, v0

    :goto_e
    const/16 v3, 0x19

    if-ge v1, v3, :cond_42

    aget v3, p4, v1

    move v4, v0

    :goto_15
    if-ge v4, v3, :cond_2a

    add-int v5, p1, v4

    aget v6, p0, v5

    aget-short v7, p5, v1

    add-int v8, p3, v4

    add-int/2addr v8, v2

    sub-int/2addr v8, v3

    aget-byte v8, p2, v8

    mul-int/2addr v7, v8

    sub-int/2addr v6, v7

    aput v6, p0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_2a
    move v4, v3

    :goto_2b
    if-ge v4, v2, :cond_3f

    add-int v5, p1, v4

    aget v6, p0, v5

    aget-short v7, p5, v1

    add-int v8, p3, v4

    sub-int/2addr v8, v3

    aget-byte v8, p2, v8

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    aput v6, p0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_42
    return-void
.end method
