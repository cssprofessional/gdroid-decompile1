###### Class org.bouncycastle.pqc.crypto.cmce.CMCEEngine (org.bouncycastle.pqc.crypto.cmce.CMCEEngine)
.class Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;
.super Ljava/lang/Object;


# instance fields
.field private COND_BYTES:I

.field private GFBITS:I

.field private GFMASK:I

.field private IRR_BYTES:I

.field private PK_NCOLS:I

.field private PK_NROWS:I

.field private PK_ROW_BYTES:I

.field private SYND_BYTES:I

.field private SYS_N:I

.field private SYS_T:I

.field private benes:Lorg/bouncycastle/pqc/crypto/cmce/BENES;

.field private countErrorIndices:Z

.field private final defaultKeySize:I

.field private gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

.field private poly:[I

.field private usePadding:Z

.field private usePivots:Z


# direct methods
.method public constructor <init>(III[IZI)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePivots:Z

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->poly:[I

    iput p6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->defaultKeySize:I

    mul-int/lit8 p4, p3, 0x2

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    add-int/lit8 p4, p1, -0x4

    const/4 p5, 0x1

    shl-int p4, p5, p4

    mul-int/lit8 p6, p1, 0x2

    sub-int/2addr p6, p5

    mul-int/2addr p4, p6

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->COND_BYTES:I

    mul-int/2addr p3, p1

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    sub-int/2addr p2, p3

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NCOLS:I

    add-int/lit8 p2, p2, 0x7

    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_ROW_BYTES:I

    add-int/lit8 p3, p3, 0x7

    div-int/lit8 p3, p3, 0x8

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    shl-int p2, p5, p1

    sub-int/2addr p2, p5

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    const/16 p2, 0xc

    if-ne p1, p2, :cond_4e

    new-instance p1, Lorg/bouncycastle/pqc/crypto/cmce/GF12;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    new-instance p1, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    iget p4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    invoke-direct {p1, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;-><init>(III)V

    :goto_4b
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->benes:Lorg/bouncycastle/pqc/crypto/cmce/BENES;

    goto :goto_61

    :cond_4e
    new-instance p1, Lorg/bouncycastle/pqc/crypto/cmce/GF13;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    new-instance p1, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    iget p4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    invoke-direct {p1, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;-><init>(III)V

    goto :goto_4b

    :goto_61
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    rem-int/lit8 p1, p1, 0x8

    const/4 p2, 0x0

    if-eqz p1, :cond_6a

    move p1, p5

    goto :goto_6b

    :cond_6a
    move p1, p2

    :goto_6b
    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int p1, p5, p1

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-le p1, p3, :cond_76

    goto :goto_77

    :cond_76
    move p5, p2

    :goto_77
    iput-boolean p5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->countErrorIndices:Z

    return-void
.end method

.method private bm([S[S)V
    .registers 19

    .line 0
    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [S

    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [S

    const/4 v4, 0x1

    add-int/2addr v1, v4

    new-array v1, v1, [S

    const/4 v5, 0x0

    move v6, v5

    :goto_12
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/2addr v7, v4

    if-ge v6, v7, :cond_1e

    aput-short v5, v1, v6

    aput-short v5, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_1e
    aput-short v4, v3, v5

    aput-short v4, v1, v4

    move v8, v4

    move v6, v5

    move v7, v6

    :goto_25
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v9, v9, 0x2

    if-ge v6, v9, :cond_b5

    move v9, v5

    move v10, v9

    :goto_2d
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    invoke-static {v6, v11}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->min(SI)I

    move-result v11

    if-gt v9, v11, :cond_45

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v12, v3, v9

    sub-int v13, v6, v9

    aget-short v13, p2, v13

    invoke-virtual {v11, v12, v13}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul_ext(SS)I

    move-result v11

    xor-int/2addr v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_2d

    :cond_45
    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v9, v10}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_reduce(I)S

    move-result v9

    add-int/lit8 v10, v9, -0x1

    int-to-short v10, v10

    shr-int/lit8 v10, v10, 0xf

    int-to-short v10, v10

    and-int/2addr v10, v4

    int-to-short v10, v10

    sub-int/2addr v10, v4

    int-to-short v10, v10

    mul-int/lit8 v11, v7, 0x2

    sub-int v11, v6, v11

    int-to-short v11, v11

    shr-int/lit8 v11, v11, 0xf

    int-to-short v11, v11

    and-int/2addr v11, v4

    int-to-short v11, v11

    sub-int/2addr v11, v4

    int-to-short v11, v11

    and-int/2addr v11, v10

    int-to-short v11, v11

    move v12, v5

    :goto_64
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-gt v12, v13, :cond_6f

    aget-short v13, v3, v12

    aput-short v13, v2, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_64

    :cond_6f
    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v12, v8, v9}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_frac(SS)S

    move-result v12

    move v13, v5

    :goto_76
    iget v14, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-gt v13, v14, :cond_8d

    aget-short v14, v3, v13

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v4, v1, v13

    invoke-virtual {v15, v12, v4}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v4

    and-int/2addr v4, v10

    xor-int/2addr v4, v14

    int-to-short v4, v4

    aput-short v4, v3, v13

    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x1

    goto :goto_76

    :cond_8d
    not-int v4, v11

    and-int v10, v7, v4

    add-int/lit8 v6, v6, 0x1

    sub-int v7, v6, v7

    and-int/2addr v7, v11

    or-int/2addr v7, v10

    int-to-short v7, v7

    add-int/lit8 v14, v14, -0x1

    :goto_99
    if-ltz v14, :cond_aa

    add-int/lit8 v10, v14, 0x1

    aget-short v12, v1, v14

    and-int/2addr v12, v4

    aget-short v13, v2, v14

    and-int/2addr v13, v11

    or-int/2addr v12, v13

    int-to-short v12, v12

    aput-short v12, v1, v10

    add-int/lit8 v14, v14, -0x1

    goto :goto_99

    :cond_aa
    aput-short v5, v1, v5

    and-int/2addr v4, v8

    and-int v8, v9, v11

    or-int/2addr v4, v8

    int-to-short v8, v4

    int-to-short v6, v6

    const/4 v4, 0x1

    goto/16 :goto_25

    :cond_b5
    :goto_b5
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-gt v5, v1, :cond_c1

    sub-int/2addr v1, v5

    aget-short v1, v3, v1

    aput-short v1, p1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_b5

    :cond_c1
    return-void
.end method

.method public static cbrecursion([BJJ[SIJJ[I)V
    .registers 45

    .line 0
    move/from16 v0, p6

    move-wide/from16 v1, p9

    move-object/from16 v12, p11

    const-wide/16 v3, 0x1

    cmp-long v5, p7, v3

    const-wide/16 v6, 0x7

    const/4 v8, 0x3

    if-nez v5, :cond_21

    shr-long v1, p1, v8

    long-to-int v1, v1

    aget-byte v2, p0, v1

    invoke-static {v12, v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->get_q_short([II)S

    move-result v0

    and-long v3, p1, v6

    long-to-int v3, v3

    shl-int/2addr v0, v3

    xor-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    return-void

    :cond_21
    if-eqz p5, :cond_3a

    const-wide/16 v13, 0x0

    :goto_25
    cmp-long v5, v13, v1

    if-gez v5, :cond_5d

    long-to-int v5, v13

    aget-short v11, p5, v5

    xor-int/lit8 v11, v11, 0x1

    shl-int/lit8 v11, v11, 0x10

    xor-long v9, v13, v3

    long-to-int v9, v9

    aget-short v9, p5, v9

    or-int/2addr v9, v11

    aput v9, v12, v5

    add-long/2addr v13, v3

    goto :goto_25

    :cond_3a
    const-wide/16 v9, 0x0

    :goto_3c
    cmp-long v5, v9, v1

    if-gez v5, :cond_5d

    long-to-int v5, v9

    int-to-long v13, v0

    add-long v6, v13, v9

    long-to-int v6, v6

    invoke-static {v12, v6}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->get_q_short([II)S

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    shl-int/lit8 v6, v6, 0x10

    xor-long v19, v9, v3

    add-long v13, v13, v19

    long-to-int v7, v13

    invoke-static {v12, v7}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->get_q_short([II)S

    move-result v7

    or-int/2addr v6, v7

    aput v6, v12, v5

    add-long/2addr v9, v3

    const-wide/16 v6, 0x7

    goto :goto_3c

    :cond_5d
    long-to-int v5, v1

    const/4 v6, 0x0

    invoke-static {v12, v6, v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v9, 0x0

    :goto_64
    cmp-long v7, v9, v1

    const v11, 0xffff

    if-gez v7, :cond_80

    long-to-int v7, v9

    aget v13, v12, v7

    and-int/2addr v11, v13

    int-to-long v13, v11

    cmp-long v13, v9, v13

    if-gez v13, :cond_75

    goto :goto_76

    :cond_75
    move v7, v11

    :goto_76
    add-long v13, v1, v9

    long-to-int v13, v13

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v7, v11

    aput v7, v12, v13

    add-long/2addr v9, v3

    goto :goto_64

    :cond_80
    const-wide/16 v9, 0x0

    :goto_82
    cmp-long v7, v9, v1

    if-gez v7, :cond_92

    long-to-int v7, v9

    aget v13, v12, v7

    shl-int/lit8 v13, v13, 0x10

    int-to-long v13, v13

    or-long/2addr v13, v9

    long-to-int v13, v13

    aput v13, v12, v7

    add-long/2addr v9, v3

    goto :goto_82

    :cond_92
    invoke-static {v12, v6, v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v9, 0x0

    :goto_97
    cmp-long v7, v9, v1

    if-gez v7, :cond_ae

    long-to-int v7, v9

    aget v13, v12, v7

    shl-int/lit8 v13, v13, 0x10

    add-long v3, v1, v9

    long-to-int v3, v3

    aget v3, v12, v3

    shr-int/lit8 v3, v3, 0x10

    add-int/2addr v13, v3

    aput v13, v12, v7

    const-wide/16 v3, 0x1

    add-long/2addr v9, v3

    goto :goto_97

    :cond_ae
    invoke-static {v12, v6, v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v3, 0xa

    cmp-long v3, p7, v3

    const/high16 v4, -0x10000

    if-gtz v3, :cond_15a

    const-wide/16 v9, 0x0

    :goto_bb
    cmp-long v3, v9, v1

    if-gez v3, :cond_d4

    add-long v13, v1, v9

    long-to-int v3, v13

    long-to-int v7, v9

    aget v7, v12, v7

    and-int/2addr v7, v11

    shl-int/lit8 v7, v7, 0xa

    aget v13, v12, v3

    and-int/lit16 v13, v13, 0x3ff

    or-int/2addr v7, v13

    aput v7, v12, v3

    const-wide/16 v19, 0x1

    add-long v9, v9, v19

    goto :goto_bb

    :cond_d4
    const-wide/16 v19, 0x1

    move-wide/from16 v9, v19

    :goto_d8
    sub-long v13, p7, v19

    cmp-long v3, v9, v13

    if-gez v3, :cond_146

    const-wide/16 v13, 0x0

    :goto_e0
    cmp-long v3, v13, v1

    if-gez v3, :cond_fc

    long-to-int v3, v13

    move-wide/from16 v21, v9

    add-long v8, v1, v13

    long-to-int v8, v8

    aget v8, v12, v8

    and-int/lit16 v8, v8, -0x400

    shl-int/lit8 v8, v8, 0x6

    int-to-long v8, v8

    or-long/2addr v8, v13

    long-to-int v8, v8

    aput v8, v12, v3

    const-wide/16 v8, 0x1

    add-long/2addr v13, v8

    move-wide/from16 v9, v21

    const/4 v8, 0x3

    goto :goto_e0

    :cond_fc
    move-wide/from16 v21, v9

    invoke-static {v12, v6, v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v8, 0x0

    :goto_103
    cmp-long v3, v8, v1

    if-gez v3, :cond_118

    long-to-int v3, v8

    aget v10, v12, v3

    shl-int/lit8 v10, v10, 0x14

    add-long v13, v1, v8

    long-to-int v13, v13

    aget v13, v12, v13

    or-int/2addr v10, v13

    aput v10, v12, v3

    const-wide/16 v13, 0x1

    add-long/2addr v8, v13

    goto :goto_103

    :cond_118
    invoke-static {v12, v6, v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v8, 0x0

    :goto_11d
    cmp-long v3, v8, v1

    if-gez v3, :cond_13e

    long-to-int v3, v8

    aget v3, v12, v3

    const v10, 0xfffff

    and-int/2addr v10, v3

    const v13, 0xffc00

    and-int/2addr v3, v13

    add-long v13, v1, v8

    long-to-int v13, v13

    aget v14, v12, v13

    and-int/lit16 v14, v14, 0x3ff

    or-int/2addr v3, v14

    if-ge v10, v3, :cond_137

    goto :goto_138

    :cond_137
    move v10, v3

    :goto_138
    aput v10, v12, v13

    const-wide/16 v13, 0x1

    add-long/2addr v8, v13

    goto :goto_11d

    :cond_13e
    const-wide/16 v13, 0x1

    add-long v9, v21, v13

    move-wide/from16 v19, v13

    const/4 v8, 0x3

    goto :goto_d8

    :cond_146
    const-wide/16 v13, 0x1

    const-wide/16 v8, 0x0

    :goto_14a
    cmp-long v3, v8, v1

    if-gez v3, :cond_239

    add-long v6, v1, v8

    long-to-int v6, v6

    aget v7, v12, v6

    and-int/lit16 v7, v7, 0x3ff

    aput v7, v12, v6

    add-long/2addr v8, v13

    const/4 v6, 0x0

    goto :goto_14a

    :cond_15a
    const-wide/16 v6, 0x0

    :goto_15c
    cmp-long v8, v6, v1

    if-gez v8, :cond_173

    add-long v8, v1, v6

    long-to-int v8, v8

    long-to-int v9, v6

    aget v9, v12, v9

    shl-int/lit8 v9, v9, 0x10

    aget v13, v12, v8

    and-int/2addr v13, v11

    or-int/2addr v9, v13

    aput v9, v12, v8

    const-wide/16 v19, 0x1

    add-long v6, v6, v19

    goto :goto_15c

    :cond_173
    const-wide/16 v19, 0x1

    move-wide/from16 v6, v19

    :goto_177
    sub-long v8, p7, v19

    cmp-long v8, v6, v8

    if-gez v8, :cond_224

    const-wide/16 v8, 0x0

    :goto_17f
    cmp-long v13, v8, v1

    if-gez v13, :cond_196

    long-to-int v13, v8

    add-long v10, v1, v8

    long-to-int v10, v10

    aget v10, v12, v10

    and-int/2addr v10, v4

    int-to-long v10, v10

    or-long/2addr v10, v8

    long-to-int v10, v10

    aput v10, v12, v13

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    const v11, 0xffff

    goto :goto_17f

    :cond_196
    const/4 v3, 0x0

    invoke-static {v12, v3, v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v8, 0x0

    :goto_19c
    cmp-long v10, v8, v1

    if-gez v10, :cond_1b6

    long-to-int v10, v8

    aget v11, v12, v10

    shl-int/lit8 v11, v11, 0x10

    add-long v14, v1, v8

    long-to-int v14, v14

    aget v14, v12, v14

    const v13, 0xffff

    and-int v15, v14, v13

    or-int/2addr v11, v15

    aput v11, v12, v10

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_19c

    :cond_1b6
    const-wide/16 v8, 0x2

    sub-long v10, p7, v8

    cmp-long v8, v6, v10

    if-gez v8, :cond_1f9

    const-wide/16 v8, 0x0

    :goto_1c0
    cmp-long v10, v8, v1

    if-gez v10, :cond_1d6

    add-long v10, v1, v8

    long-to-int v10, v10

    long-to-int v11, v8

    aget v11, v12, v11

    and-int/2addr v11, v4

    aget v13, v12, v10

    shr-int/lit8 v13, v13, 0x10

    or-int/2addr v11, v13

    aput v11, v12, v10

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_1c0

    :cond_1d6
    const-wide/16 v8, 0x2

    mul-long v10, v1, v8

    long-to-int v8, v10

    invoke-static {v12, v5, v8}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v8, 0x0

    :goto_1e0
    cmp-long v10, v8, v1

    if-gez v10, :cond_1f9

    add-long v10, v1, v8

    long-to-int v10, v10

    aget v11, v12, v10

    shl-int/lit8 v11, v11, 0x10

    long-to-int v13, v8

    aget v13, v12, v13

    const v14, 0xffff

    and-int/2addr v13, v14

    or-int/2addr v11, v13

    aput v11, v12, v10

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_1e0

    :cond_1f9
    const/4 v3, 0x0

    invoke-static {v12, v3, v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v8, 0x0

    :goto_1ff
    cmp-long v10, v8, v1

    if-gez v10, :cond_21a

    add-long v10, v1, v8

    long-to-int v10, v10

    aget v11, v12, v10

    and-int v13, v11, v4

    long-to-int v15, v8

    aget v15, v12, v15

    const v14, 0xffff

    and-int/2addr v15, v14

    or-int/2addr v13, v15

    if-ge v13, v11, :cond_216

    aput v13, v12, v10

    :cond_216
    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_1ff

    :cond_21a
    const-wide/16 v10, 0x1

    add-long/2addr v6, v10

    move-wide/from16 v19, v10

    const v11, 0xffff

    goto/16 :goto_177

    :cond_224
    const-wide/16 v10, 0x1

    const-wide/16 v6, 0x0

    :goto_228
    cmp-long v8, v6, v1

    if-gez v8, :cond_239

    add-long v8, v1, v6

    long-to-int v8, v8

    aget v9, v12, v8

    const v13, 0xffff

    and-int/2addr v9, v13

    aput v9, v12, v8

    add-long/2addr v6, v10

    goto :goto_228

    :cond_239
    const-wide/16 v6, 0x0

    if-eqz p5, :cond_251

    :goto_23d
    cmp-long v0, v6, v1

    if-gez v0, :cond_24f

    long-to-int v0, v6

    aget-short v8, p5, v0

    shl-int/lit8 v8, v8, 0x10

    int-to-long v8, v8

    add-long/2addr v8, v6

    long-to-int v8, v8

    aput v8, v12, v0

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    goto :goto_23d

    :cond_24f
    const/4 v0, 0x0

    goto :goto_268

    :cond_251
    :goto_251
    cmp-long v8, v6, v1

    if-gez v8, :cond_24f

    long-to-int v8, v6

    int-to-long v9, v0

    add-long/2addr v9, v6

    long-to-int v9, v9

    invoke-static {v12, v9}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->get_q_short([II)S

    move-result v9

    shl-int/lit8 v9, v9, 0x10

    int-to-long v9, v9

    add-long/2addr v9, v6

    long-to-int v9, v9

    aput v9, v12, v8

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    goto :goto_251

    :goto_268
    invoke-static {v12, v0, v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    move-wide/from16 v8, p1

    const-wide/16 v6, 0x2

    const-wide/16 v10, 0x0

    :goto_271
    div-long v15, v1, v6

    cmp-long v0, v10, v15

    if-gez v0, :cond_2c1

    mul-long v14, v10, v6

    add-long v6, v1, v14

    long-to-int v0, v6

    aget v16, v12, v0

    and-int/lit8 v3, v16, 0x1

    move/from16 v24, v5

    int-to-long v4, v3

    add-long/2addr v4, v14

    long-to-int v4, v4

    xor-int/lit8 v5, v4, 0x1

    move-wide/from16 v25, v14

    const/16 v16, 0x3

    shr-long v13, v8, v16

    move-wide v15, v6

    long-to-int v6, v13

    aget-byte v13, p0, v6

    const-wide/16 v17, 0x7

    and-long v1, v8, v17

    long-to-int v1, v1

    shl-int v1, v3, v1

    xor-int/2addr v1, v13

    int-to-byte v1, v1

    aput-byte v1, p0, v6

    add-long v8, v8, p3

    move-wide/from16 v13, v25

    long-to-int v1, v13

    aget v1, v12, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v4

    aput v1, v12, v0

    const-wide/16 v0, 0x1

    add-long v2, v15, v0

    long-to-int v2, v2

    add-long v14, v13, v0

    long-to-int v3, v14

    aget v3, v12, v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v5

    aput v3, v12, v2

    add-long/2addr v10, v0

    move-wide/from16 v1, p9

    move/from16 v5, v24

    const/high16 v4, -0x10000

    const-wide/16 v6, 0x2

    goto :goto_271

    :cond_2c1
    move/from16 v24, v5

    move-wide v0, v6

    mul-long v2, p9, v0

    long-to-int v4, v2

    invoke-static {v12, v5, v4}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    mul-long v10, p7, v0

    const-wide/16 v13, 0x3

    sub-long v13, v10, v13

    mul-long v13, v13, p3

    mul-long/2addr v13, v15

    add-long/2addr v8, v13

    const-wide/16 v25, 0x0

    :goto_2d6
    cmp-long v4, v25, v15

    if-gez v4, :cond_322

    mul-long v13, v25, v0

    add-long v0, p9, v13

    long-to-int v4, v0

    aget v4, v12, v4

    and-int/lit8 v6, v4, 0x1

    move-wide/from16 v27, v8

    int-to-long v7, v6

    add-long/2addr v7, v13

    long-to-int v7, v7

    xor-int/lit8 v8, v7, 0x1

    move-wide/from16 v29, v2

    const/4 v9, 0x3

    shr-long v2, v27, v9

    long-to-int v2, v2

    aget-byte v3, p0, v2

    move-wide/from16 v31, v10

    const-wide/16 v17, 0x7

    and-long v9, v27, v17

    long-to-int v9, v9

    shl-int/2addr v6, v9

    xor-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-long v2, v27, p3

    long-to-int v6, v13

    shl-int/lit8 v7, v7, 0x10

    const v9, 0xffff

    and-int/2addr v4, v9

    or-int/2addr v4, v7

    aput v4, v12, v6

    const-wide/16 v6, 0x1

    add-long/2addr v13, v6

    long-to-int v4, v13

    shl-int/lit8 v8, v8, 0x10

    add-long/2addr v0, v6

    long-to-int v0, v0

    aget v0, v12, v0

    and-int/2addr v0, v9

    or-int/2addr v0, v8

    aput v0, v12, v4

    add-long v25, v25, v6

    move-wide v8, v2

    move-wide/from16 v2, v29

    move-wide/from16 v10, v31

    const-wide/16 v0, 0x2

    goto :goto_2d6

    :cond_322
    move-wide/from16 v29, v2

    move-wide/from16 v27, v8

    move-wide/from16 v31, v10

    const/4 v0, 0x0

    invoke-static {v12, v0, v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v0, 0x2

    sub-long v10, v31, v0

    mul-long v10, v10, p3

    mul-long/2addr v10, v15

    sub-long v17, v27, v10

    mul-int/lit8 v5, v5, 0x4

    new-array v2, v5, [S

    const-wide/16 v3, 0x0

    :goto_33b
    cmp-long v5, v3, v29

    if-gez v5, :cond_358

    mul-long v5, v3, v0

    long-to-int v0, v5

    long-to-int v1, v3

    aget v1, v12, v1

    int-to-short v7, v1

    aput-short v7, v2, v0

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    long-to-int v0, v5

    const/high16 v5, -0x10000

    and-int/2addr v1, v5

    shr-int/lit8 v1, v1, 0x10

    int-to-short v1, v1

    aput-short v1, v2, v0

    add-long/2addr v3, v7

    const-wide/16 v0, 0x2

    goto :goto_33b

    :cond_358
    const-wide/16 v0, 0x0

    :goto_35a
    cmp-long v3, v0, v15

    if-gez v3, :cond_380

    long-to-int v3, v0

    const-wide/16 v4, 0x2

    mul-long v6, v0, v4

    long-to-int v4, v6

    aget v4, v12, v4

    const v5, 0xffff

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x1

    int-to-short v4, v4

    aput-short v4, v2, v3

    add-long v3, v0, v15

    long-to-int v3, v3

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    long-to-int v4, v6

    aget v4, v12, v4

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x1

    int-to-short v4, v4

    aput-short v4, v2, v3

    add-long/2addr v0, v8

    goto :goto_35a

    :cond_380
    const-wide/16 v8, 0x1

    const-wide/16 v22, 0x0

    :goto_384
    cmp-long v0, v22, v15

    const-wide/16 v3, 0x4

    if-gez v0, :cond_3a5

    div-long v0, p9, v3

    add-long v0, p9, v0

    add-long v0, v0, v22

    long-to-int v0, v0

    const-wide/16 v5, 0x2

    mul-long v13, v22, v5

    add-long v3, v13, v8

    long-to-int v1, v3

    aget-short v1, v2, v1

    shl-int/lit8 v1, v1, 0x10

    long-to-int v3, v13

    aget-short v3, v2, v3

    or-int/2addr v1, v3

    aput v1, v12, v0

    add-long v22, v22, v8

    goto :goto_384

    :cond_3a5
    const-wide/16 v5, 0x2

    mul-long v13, p3, v5

    div-long v0, p9, v3

    add-long v10, p9, v0

    long-to-int v0, v10

    mul-int/lit8 v6, v0, 0x2

    sub-long v19, p7, v8

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    move-wide v3, v13

    move-wide/from16 v7, v19

    move-wide/from16 v21, v10

    move-wide v9, v15

    move-object/from16 v11, p11

    invoke-static/range {v0 .. v11}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->cbrecursion([BJJ[SIJJ[I)V

    add-long v1, v17, p3

    const-wide/16 v3, 0x2

    mul-long v10, v21, v3

    add-long/2addr v10, v15

    long-to-int v6, v10

    move-wide v3, v13

    move-wide v9, v15

    move-object/from16 v11, p11

    invoke-static/range {v0 .. v11}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->cbrecursion([BJJ[SIJJ[I)V

    return-void
.end method

.method private static controlbitsfrompermutation([B[SJJ)V
    .registers 25

    .line 0
    move-object/from16 v12, p0

    move-wide/from16 v13, p4

    const-wide/16 v15, 0x2

    mul-long v0, v13, v15

    long-to-int v0, v0

    new-array v11, v0, [I

    long-to-int v9, v13

    new-array v10, v9, [S

    :goto_e
    const/16 v17, 0x0

    move/from16 v0, v17

    :goto_12
    int-to-long v1, v0

    mul-long v3, p2, v15

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    mul-long/2addr v3, v13

    div-long/2addr v3, v15

    const-wide/16 v5, 0x7

    add-long/2addr v3, v5

    const-wide/16 v5, 0x8

    div-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gez v1, :cond_29

    aput-byte v17, v12, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_29
    const-wide/16 v3, 0x1

    const/4 v6, 0x0

    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-wide/from16 v7, p2

    move v15, v9

    move-object/from16 v18, v10

    move-wide/from16 v9, p4

    move-object/from16 v16, v11

    invoke-static/range {v0 .. v11}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->cbrecursion([BJJ[SIJJ[I)V

    move/from16 v0, v17

    :goto_40
    int-to-long v1, v0

    cmp-long v1, v1, v13

    if-gez v1, :cond_4d

    int-to-short v1, v0

    move-object/from16 v2, v18

    aput-short v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_4d
    move-object/from16 v2, v18

    move/from16 v0, v17

    move v1, v0

    :goto_52
    int-to-long v3, v0

    cmp-long v3, v3, p2

    const/4 v4, 0x4

    if-gez v3, :cond_63

    invoke-static {v2, v12, v1, v0, v15}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->layer([S[BIII)V

    int-to-long v5, v1

    shr-long v3, v13, v4

    add-long/2addr v5, v3

    long-to-int v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    :cond_63
    const-wide/16 v5, 0x2

    sub-long v7, p2, v5

    long-to-int v0, v7

    :goto_68
    if-ltz v0, :cond_75

    invoke-static {v2, v12, v1, v0, v15}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->layer([S[BIII)V

    int-to-long v7, v1

    shr-long v9, v13, v4

    add-long/2addr v7, v9

    long-to-int v1, v7

    add-int/lit8 v0, v0, -0x1

    goto :goto_68

    :cond_75
    move/from16 v0, v17

    :goto_77
    int-to-long v3, v0

    cmp-long v1, v3, v13

    if-gez v1, :cond_89

    aget-short v1, p1, v0

    aget-short v3, v2, v0

    xor-int/2addr v1, v3

    or-int v1, v17, v1

    int-to-short v1, v1

    add-int/lit8 v0, v0, 0x1

    move/from16 v17, v1

    goto :goto_77

    :cond_89
    if-nez v17, :cond_8c

    return-void

    :cond_8c
    move-object v10, v2

    move v9, v15

    move-object/from16 v11, v16

    move-wide v15, v5

    goto/16 :goto_e
.end method

.method private static ctz(J)I
    .registers 12

    .line 0
    not-long p0, p0

    const-wide v0, 0x101010101010101L

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_9
    const/16 v5, 0x8

    if-ge v4, v5, :cond_14

    ushr-long v5, p0, v4

    and-long/2addr v0, v5

    add-long/2addr v2, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_14
    const-wide p0, 0x808080808080808L

    and-long/2addr p0, v2

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    const/4 v0, 0x2

    ushr-long v6, p0, v0

    or-long/2addr p0, v6

    ushr-long v6, v2, v5

    and-long v8, v6, p0

    add-long/2addr v2, v8

    :goto_27
    if-ge v0, v5, :cond_33

    ushr-long v8, p0, v5

    and-long/2addr p0, v8

    ushr-long/2addr v6, v5

    and-long v8, v6, p0

    add-long/2addr v2, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_33
    long-to-int p0, v2

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private decrypt([B[B[B)I
    .registers 15

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [S

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    new-array v3, v2, [S

    mul-int/lit8 v4, v0, 0x2

    new-array v4, v4, [S

    mul-int/lit8 v5, v0, 0x2

    new-array v5, v5, [S

    const/4 v6, 0x1

    add-int/2addr v0, v6

    new-array v0, v0, [S

    new-array v7, v2, [S

    div-int/lit8 v2, v2, 0x8

    new-array v2, v2, [B

    const/4 v8, 0x0

    move v9, v8

    :goto_1e
    iget v10, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    if-ge v9, v10, :cond_29

    aget-byte v10, p3, v9

    aput-byte v10, v2, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1e

    :cond_29
    :goto_29
    iget p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 p3, p3, 0x8

    if-ge v10, p3, :cond_34

    aput-byte v8, v2, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_29

    :cond_34
    move p3, v8

    :goto_35
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge p3, v9, :cond_48

    mul-int/lit8 v9, p3, 0x2

    add-int/lit8 v9, v9, 0x28

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    invoke-static {p2, v9, v10}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load_gf([BII)S

    move-result v9

    aput-short v9, v1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_35

    :cond_48
    aput-short v6, v1, v9

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->benes:Lorg/bouncycastle/pqc/crypto/cmce/BENES;

    invoke-virtual {p3, v3, p2}, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->support_gen([S[B)V

    invoke-direct {p0, v4, v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->synd([S[S[S[B)V

    invoke-direct {p0, v0, v4}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->bm([S[S)V

    invoke-direct {p0, v7, v0, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->root([S[S[S)V

    move p2, v8

    :goto_59
    iget p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 p3, p3, 0x8

    if-ge p2, p3, :cond_64

    aput-byte v8, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_59

    :cond_64
    move p2, v8

    move p3, p2

    :goto_66
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge p2, v0, :cond_84

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v2, v7, p2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_iszero(S)S

    move-result v0

    and-int/2addr v0, v6

    int-to-short v0, v0

    div-int/lit8 v2, p2, 0x8

    aget-byte v9, p1, v2

    rem-int/lit8 v10, p2, 0x8

    shl-int v10, v0, v10

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p1, v2

    add-int/2addr p3, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_66

    :cond_84
    invoke-direct {p0, v5, v1, v3, p1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->synd([S[S[S[B)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    xor-int/2addr p1, p3

    :goto_8a
    iget p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 p2, p2, 0x2

    if-ge v8, p2, :cond_99

    aget-short p2, v4, v8

    aget-short p3, v5, v8

    xor-int/2addr p2, p3

    or-int/2addr p1, p2

    add-int/lit8 v8, v8, 0x1

    goto :goto_8a

    :cond_99
    add-int/lit8 p1, p1, -0x1

    shr-int/lit8 p0, p1, 0xf

    and-int/2addr p0, v6

    xor-int/2addr p0, v6

    return p0
.end method

.method private encrypt([B[B[BLjava/security/SecureRandom;)V
    .registers 5

    .line 0
    invoke-direct {p0, p3, p4}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->generate_error_vector([BLjava/security/SecureRandom;)V

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->syndrome([B[B[B)V

    return-void
.end method

.method private eval([SS)S
    .registers 6

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    aget-short v1, p1, v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_15

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v2, v1, p2}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v1

    aget-short v2, p1, v0

    xor-int/2addr v1, v2

    int-to-short v1, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_15
    return v1
.end method

.method private generate_error_vector([BLjava/security/SecureRandom;)V
    .registers 13

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [S

    new-array v2, v0, [S

    new-array v0, v0, [B

    :cond_a
    :goto_a
    iget-boolean v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->countErrorIndices:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_47

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B

    invoke-virtual {p2, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    move v5, v4

    :goto_19
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v6, v6, 0x2

    if-ge v5, v6, :cond_2c

    mul-int/lit8 v6, v5, 0x2

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    invoke-static {v3, v6, v7}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load_gf([BII)S

    move-result v6

    aput-short v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_2c
    move v3, v4

    move v5, v3

    :goto_2e
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v7, v6, 0x2

    if-ge v3, v7, :cond_44

    if-ge v5, v6, :cond_44

    aget-short v6, v1, v3

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v6, v7, :cond_41

    add-int/lit8 v7, v5, 0x1

    aput-short v6, v2, v5

    move v5, v7

    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_44
    if-ge v5, v6, :cond_62

    goto :goto_a

    :cond_47
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    invoke-virtual {p2, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    move v5, v4

    :goto_51
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v5, v6, :cond_62

    mul-int/lit8 v6, v5, 0x2

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    invoke-static {v3, v6, v7}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load_gf([BII)S

    move-result v6

    aput-short v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_51

    :cond_62
    const/4 v3, 0x1

    move v5, v3

    move v6, v4

    :goto_65
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v5, v7, :cond_7c

    if-eq v6, v3, :cond_7c

    move v7, v4

    :goto_6c
    if-ge v7, v5, :cond_79

    aget-short v8, v2, v5

    aget-short v9, v2, v7

    if-ne v8, v9, :cond_76

    move v6, v3

    goto :goto_79

    :cond_76
    add-int/lit8 v7, v7, 0x1

    goto :goto_6c

    :cond_79
    :goto_79
    add-int/lit8 v5, v5, 0x1

    goto :goto_65

    :cond_7c
    if-nez v6, :cond_a

    move p2, v4

    :goto_7f
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge p2, v1, :cond_8f

    aget-short v1, v2, p2

    and-int/lit8 v1, v1, 0x7

    shl-int v1, v3, v1

    int-to-byte v1, v1

    aput-byte v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_7f

    :cond_8f
    move p2, v4

    :goto_90
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v1, v1, 0x8

    if-ge p2, v1, :cond_ba

    aput-byte v4, p1, p2

    move v1, v4

    :goto_99
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v1, v3, :cond_b6

    aget-short v3, v2, v1

    shr-int/lit8 v3, v3, 0x3

    int-to-short v3, v3

    invoke-static {p2, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->same_mask32(SS)B

    move-result v3

    int-to-short v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aget-byte v5, p1, p2

    aget-byte v6, v0, v1

    and-int/2addr v3, v6

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_99

    :cond_b6
    add-int/lit8 p2, p2, 0x1

    int-to-short p2, p2

    goto :goto_90

    :cond_ba
    return-void
.end method

.method private generate_irr_poly([S)I
    .registers 14

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v0, v3, v4

    const/4 v0, 0x0

    aput v1, v3, v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    aget-object v3, v1, v0

    aput-short v4, v3, v0

    aget-object v3, v1, v4

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    invoke-static {p1, v0, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/2addr v3, v2

    sub-int/2addr v3, v4

    new-array v3, v3, [I

    :goto_26
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v2, v6, :cond_4c

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->poly:[I

    aget-object v8, v1, v2

    ushr-int/lit8 v9, v2, 0x1

    aget-object v9, v1, v9

    move-object v10, v3

    invoke-virtual/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_sqr_poly(I[I[S[S[I)V

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->poly:[I

    add-int/lit8 v8, v2, 0x1

    aget-object v8, v1, v8

    aget-object v9, v1, v2

    move-object v10, p1

    move-object v11, v3

    invoke-virtual/range {v5 .. v11}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul_poly(I[I[S[S[S[I)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_26

    :cond_4c
    if-ne v2, v6, :cond_5b

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->poly:[I

    aget-object v8, v1, v2

    ushr-int/2addr v2, v4

    aget-object v9, v1, v2

    move-object v10, v3

    invoke-virtual/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_sqr_poly(I[I[S[S[I)V

    :cond_5b
    move v2, v0

    :goto_5c
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v2, v3, :cond_d4

    add-int/lit8 v3, v2, 0x1

    move v5, v3

    :goto_63
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v5, v6, :cond_89

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-object v7, v1, v2

    aget-short v7, v7, v2

    invoke-virtual {v6, v7}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_iszero(S)S

    move-result v6

    move v7, v2

    :goto_72
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/2addr v8, v4

    if-ge v7, v8, :cond_86

    aget-object v8, v1, v7

    aget-short v9, v8, v2

    aget-short v10, v8, v5

    and-int/2addr v10, v6

    int-to-short v10, v10

    xor-int/2addr v9, v10

    int-to-short v9, v9

    aput-short v9, v8, v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_72

    :cond_86
    add-int/lit8 v5, v5, 0x1

    goto :goto_63

    :cond_89
    aget-object v5, v1, v2

    aget-short v5, v5, v2

    if-nez v5, :cond_91

    const/4 p0, -0x1

    return p0

    :cond_91
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v6, v5}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_inv(S)S

    move-result v5

    move v6, v2

    :goto_98
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/2addr v7, v4

    if-ge v6, v7, :cond_ac

    aget-object v7, v1, v6

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v9, v7, v2

    invoke-virtual {v8, v9, v5}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v8

    aput-short v8, v7, v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_98

    :cond_ac
    move v5, v0

    :goto_ad
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v5, v6, :cond_d2

    if-eq v5, v2, :cond_cf

    aget-object v6, v1, v2

    aget-short v6, v6, v5

    move v7, v2

    :goto_b8
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-gt v7, v8, :cond_cf

    aget-object v8, v1, v7

    aget-short v9, v8, v5

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v11, v8, v2

    invoke-virtual {v10, v11, v6}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v10

    xor-int/2addr v9, v10

    int-to-short v9, v9

    aput-short v9, v8, v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_b8

    :cond_cf
    add-int/lit8 v5, v5, 0x1

    goto :goto_ad

    :cond_d2
    move v2, v3

    goto :goto_5c

    :cond_d4
    aget-object p0, v1, v3

    invoke-static {p0, v0, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v0
.end method

.method public static get_q_short([II)S
    .registers 3

    .line 0
    div-int/lit8 v0, p1, 0x2

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_a

    aget p0, p0, v0

    :goto_8
    int-to-short p0, p0

    return p0

    :cond_a
    aget p0, p0, v0

    const/high16 p1, -0x10000

    and-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x10

    goto :goto_8
.end method

.method private static layer([S[BIII)V
    .registers 16

    .line 0
    const/4 v0, 0x1

    shl-int p3, v0, p3

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_6
    if-ge v2, p4, :cond_32

    move v4, v1

    :goto_9
    if-ge v4, p3, :cond_2e

    add-int v5, v2, v4

    aget-short v6, p0, v5

    add-int v7, v5, p3

    aget-short v8, p0, v7

    xor-int/2addr v8, v6

    shr-int/lit8 v9, v3, 0x3

    add-int/2addr v9, p2

    aget-byte v9, p1, v9

    and-int/lit8 v10, v3, 0x7

    shr-int/2addr v9, v10

    and-int/2addr v9, v0

    neg-int v9, v9

    and-int/2addr v8, v9

    xor-int/2addr v6, v8

    int-to-short v6, v6

    aput-short v6, p0, v5

    aget-short v5, p0, v7

    xor-int/2addr v5, v8

    int-to-short v5, v5

    aput-short v5, p0, v7

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_2e
    mul-int/lit8 v4, p3, 0x2

    add-int/2addr v2, v4

    goto :goto_6

    :cond_32
    return-void
.end method

.method private static min(SI)I
    .registers 2

    .line 0
    if-ge p0, p1, :cond_3

    return p0

    :cond_3
    return p1
.end method

.method private mov_columns([[B[S[J)I
    .registers 30

    .line 0
    move-object/from16 v0, p0

    const/16 v1, 0x40

    new-array v2, v1, [J

    const/16 v3, 0x20

    new-array v4, v3, [J

    const/16 v5, 0x9

    new-array v6, v5, [B

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    sub-int/2addr v7, v3

    div-int/lit8 v8, v7, 0x8

    rem-int/lit8 v9, v7, 0x8

    iget-boolean v10, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    const/4 v11, 0x0

    const/16 v12, 0x8

    if-eqz v10, :cond_4f

    move v10, v11

    :goto_1d
    if-ge v10, v3, :cond_5f

    move v13, v11

    :goto_20
    if-ge v13, v5, :cond_2f

    add-int v14, v7, v10

    aget-object v14, p1, v14

    add-int v15, v8, v13

    aget-byte v14, v14, v15

    aput-byte v14, v6, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_20

    :cond_2f
    move v13, v11

    :goto_30
    if-ge v13, v12, :cond_46

    aget-byte v14, v6, v13

    and-int/lit16 v14, v14, 0xff

    shr-int/2addr v14, v9

    add-int/lit8 v15, v13, 0x1

    aget-byte v16, v6, v15

    rsub-int/lit8 v17, v9, 0x8

    shl-int v16, v16, v17

    or-int v14, v14, v16

    int-to-byte v14, v14

    aput-byte v14, v6, v13

    move v13, v15

    goto :goto_30

    :cond_46
    invoke-static {v6, v11}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v13

    aput-wide v13, v2, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1d

    :cond_4f
    move v10, v11

    :goto_50
    if-ge v10, v3, :cond_5f

    add-int v13, v7, v10

    aget-object v13, p1, v13

    invoke-static {v13, v8}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v13

    aput-wide v13, v2, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_50

    :cond_5f
    const-wide/16 v13, 0x0

    aput-wide v13, p3, v11

    move v10, v11

    :goto_64
    const-wide/16 v15, 0x1

    if-ge v10, v3, :cond_c6

    aget-wide v17, v2, v10

    add-int/lit8 v19, v10, 0x1

    move/from16 v12, v19

    :goto_6e
    if-ge v12, v3, :cond_77

    aget-wide v20, v2, v12

    or-long v17, v17, v20

    add-int/lit8 v12, v12, 0x1

    goto :goto_6e

    :cond_77
    cmp-long v12, v17, v13

    if-nez v12, :cond_7d

    const/4 v0, -0x1

    return v0

    :cond_7d
    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->ctz(J)I

    move-result v12

    int-to-long v13, v12

    aput-wide v13, v4, v10

    aget-wide v20, p3, v11

    long-to-int v13, v13

    shl-long v13, v15, v13

    or-long v13, v20, v13

    aput-wide v13, p3, v11

    move/from16 v13, v19

    :goto_8f
    if-ge v13, v3, :cond_a4

    aget-wide v20, v2, v10

    shr-long v22, v20, v12

    and-long v22, v22, v15

    sub-long v22, v22, v15

    aget-wide v24, v2, v13

    and-long v22, v24, v22

    xor-long v20, v20, v22

    aput-wide v20, v2, v10

    add-int/lit8 v13, v13, 0x1

    goto :goto_8f

    :cond_a4
    move/from16 v13, v19

    :goto_a6
    if-ge v13, v3, :cond_bf

    aget-wide v20, v2, v13

    shr-long v22, v20, v12

    move/from16 v24, v12

    and-long v11, v22, v15

    neg-long v11, v11

    aget-wide v22, v2, v10

    and-long v11, v22, v11

    xor-long v11, v20, v11

    aput-wide v11, v2, v13

    add-int/lit8 v13, v13, 0x1

    move/from16 v12, v24

    const/4 v11, 0x0

    goto :goto_a6

    :cond_bf
    move/from16 v10, v19

    const/16 v12, 0x8

    const-wide/16 v13, 0x0

    goto :goto_64

    :cond_c6
    const/4 v2, 0x0

    :goto_c7
    if-ge v2, v3, :cond_100

    add-int/lit8 v10, v2, 0x1

    move v11, v10

    :goto_cc
    if-ge v11, v1, :cond_fe

    add-int v12, v7, v2

    aget-short v13, p2, v12

    add-int v17, v7, v11

    aget-short v18, p2, v17

    xor-int v13, v13, v18

    int-to-long v14, v13

    int-to-short v13, v11

    move-object/from16 v21, v6

    aget-wide v5, v4, v2

    long-to-int v5, v5

    int-to-short v5, v5

    invoke-static {v13, v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->same_mask64(SS)J

    move-result-wide v5

    and-long/2addr v5, v14

    aget-short v13, p2, v12

    int-to-long v13, v13

    xor-long/2addr v13, v5

    long-to-int v13, v13

    int-to-short v13, v13

    aput-short v13, p2, v12

    aget-short v12, p2, v17

    int-to-long v12, v12

    xor-long/2addr v5, v12

    long-to-int v5, v5

    int-to-short v5, v5

    aput-short v5, p2, v17

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v6, v21

    const/16 v5, 0x9

    const-wide/16 v15, 0x1

    goto :goto_cc

    :cond_fe
    move v2, v10

    goto :goto_c7

    :cond_100
    move-object/from16 v21, v6

    const/4 v1, 0x0

    :goto_103
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v1, v2, :cond_1bd

    iget-boolean v2, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz v2, :cond_13a

    const/16 v2, 0x9

    const/4 v14, 0x0

    :goto_10e
    if-ge v14, v2, :cond_11b

    aget-object v5, p1, v1

    add-int v6, v8, v14

    aget-byte v5, v5, v6

    aput-byte v5, v21, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_10e

    :cond_11b
    const/16 v5, 0x8

    const/4 v14, 0x0

    :goto_11e
    if-ge v14, v5, :cond_132

    aget-byte v6, v21, v14

    and-int/lit16 v6, v6, 0xff

    shr-int/2addr v6, v9

    add-int/lit8 v7, v14, 0x1

    aget-byte v10, v21, v7

    rsub-int/lit8 v11, v9, 0x8

    shl-int/2addr v10, v11

    or-int/2addr v6, v10

    int-to-byte v6, v6

    aput-byte v6, v21, v14

    move v14, v7

    goto :goto_11e

    :cond_132
    move-object/from16 v6, v21

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v10

    goto :goto_146

    :cond_13a
    move-object/from16 v6, v21

    const/16 v2, 0x9

    const/16 v5, 0x8

    aget-object v7, p1, v1

    invoke-static {v7, v8}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v10

    :goto_146
    const/4 v7, 0x0

    :goto_147
    if-ge v7, v3, :cond_166

    shr-long v12, v10, v7

    aget-wide v2, v4, v7

    long-to-int v5, v2

    shr-long v16, v10, v5

    xor-long v12, v12, v16

    const-wide/16 v16, 0x1

    and-long v12, v12, v16

    long-to-int v2, v2

    shl-long v2, v12, v2

    xor-long/2addr v2, v10

    shl-long v10, v12, v7

    xor-long/2addr v10, v2

    add-int/lit8 v7, v7, 0x1

    const/16 v2, 0x9

    const/16 v3, 0x20

    const/16 v5, 0x8

    goto :goto_147

    :cond_166
    const-wide/16 v16, 0x1

    iget-boolean v2, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz v2, :cond_1b0

    const/4 v2, 0x0

    invoke-static {v6, v2, v10, v11}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store8([BIJ)V

    aget-object v2, p1, v1

    add-int/lit8 v3, v8, 0x8

    aget-byte v5, v2, v3

    and-int/lit16 v5, v5, 0xff

    ushr-int/2addr v5, v9

    shl-int/2addr v5, v9

    const/4 v7, 0x7

    aget-byte v10, v6, v7

    and-int/lit16 v10, v10, 0xff

    rsub-int/lit8 v11, v9, 0x8

    ushr-int/2addr v10, v11

    or-int/2addr v5, v10

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    const/4 v3, 0x0

    aget-byte v5, v6, v3

    and-int/lit16 v3, v5, 0xff

    shl-int/2addr v3, v9

    aget-byte v5, v2, v8

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v11

    ushr-int/2addr v5, v11

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v2, v8

    :goto_196
    const/4 v2, 0x1

    if-lt v7, v2, :cond_1b5

    aget-object v2, p1, v1

    add-int v3, v8, v7

    aget-byte v5, v6, v7

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v9

    add-int/lit8 v10, v7, -0x1

    aget-byte v10, v6, v10

    and-int/lit16 v10, v10, 0xff

    ushr-int/2addr v10, v11

    or-int/2addr v5, v10

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    add-int/lit8 v7, v7, -0x1

    goto :goto_196

    :cond_1b0
    aget-object v2, p1, v1

    invoke-static {v2, v8, v10, v11}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store8([BIJ)V

    :cond_1b5
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v21, v6

    const/16 v3, 0x20

    goto/16 :goto_103

    :cond_1bd
    const/4 v1, 0x0

    return v1
.end method

.method private pk_gen([B[B[I[S[J)I
    .registers 24

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [S

    const/4 v5, 0x1

    aput-short v5, v4, v3

    const/4 v3, 0x0

    move v6, v3

    :goto_11
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v6, v7, :cond_26

    mul-int/lit8 v7, v6, 0x2

    add-int/lit8 v7, v7, 0x28

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    move-object/from16 v9, p2

    invoke-static {v9, v7, v8}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load_gf([BII)S

    move-result v7

    aput-short v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_26
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v6, v5, v6

    new-array v7, v6, [J

    move v8, v3

    :goto_2d
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v9, v5, v9

    const/16 v10, 0x1f

    if-ge v8, v9, :cond_4d

    aget v9, p3, v8

    int-to-long v11, v9

    aput-wide v11, v7, v8

    shl-long v9, v11, v10

    aput-wide v9, v7, v8

    int-to-long v11, v8

    or-long/2addr v9, v11

    aput-wide v9, v7, v8

    const-wide v11, 0x7fffffffffffffffL

    and-long/2addr v9, v11

    aput-wide v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2d

    :cond_4d
    invoke-static {v7, v3, v6}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort64([JII)V

    move v6, v5

    :goto_51
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v8, v5, v8

    const/4 v9, -0x1

    if-ge v6, v8, :cond_68

    add-int/lit8 v8, v6, -0x1

    aget-wide v11, v7, v8

    shr-long/2addr v11, v10

    aget-wide v13, v7, v6

    shr-long/2addr v13, v10

    cmp-long v8, v11, v13

    if-nez v8, :cond_65

    return v9

    :cond_65
    add-int/lit8 v6, v6, 0x1

    goto :goto_51

    :cond_68
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    new-array v6, v6, [S

    move v8, v3

    :goto_6d
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v10, v5, v10

    if-ge v8, v10, :cond_80

    aget-wide v10, v7, v8

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    int-to-long v12, v12

    and-long/2addr v10, v12

    long-to-int v10, v10

    int-to-short v10, v10

    aput-short v10, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6d

    :cond_80
    move v7, v3

    :goto_81
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v7, v8, :cond_92

    aget-short v8, v2, v7

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    invoke-static {v8, v10}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->bitrev(SI)S

    move-result v8

    aput-short v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_81

    :cond_92
    new-array v7, v8, [S

    invoke-direct {v0, v7, v4, v6}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->root([S[S[S)V

    move v4, v3

    :goto_98
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v4, v8, :cond_a9

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v10, v7, v4

    invoke-virtual {v8, v10}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_inv(S)S

    move-result v8

    aput-short v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_98

    :cond_a9
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    div-int/lit8 v8, v8, 0x8

    const/4 v10, 0x2

    new-array v10, v10, [I

    aput v8, v10, v5

    aput v4, v10, v3

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[B

    move v8, v3

    :goto_bd
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v8, v10, :cond_d2

    move v10, v3

    :goto_c2
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v11, v11, 0x8

    if-ge v10, v11, :cond_cf

    aget-object v11, v4, v8

    aput-byte v3, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_c2

    :cond_cf
    add-int/lit8 v8, v8, 0x1

    goto :goto_bd

    :cond_d2
    move v8, v3

    :goto_d3
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v8, v10, :cond_151

    move v10, v3

    :goto_d8
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v10, v11, :cond_13a

    move v11, v3

    :goto_dd
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    if-ge v11, v12, :cond_137

    add-int/lit8 v13, v10, 0x7

    aget-short v13, v7, v13

    ushr-int/2addr v13, v11

    and-int/2addr v13, v5

    int-to-byte v13, v13

    shl-int/2addr v13, v5

    int-to-byte v13, v13

    add-int/lit8 v14, v10, 0x6

    aget-short v14, v7, v14

    ushr-int/2addr v14, v11

    and-int/2addr v14, v5

    or-int/2addr v13, v14

    int-to-byte v13, v13

    shl-int/2addr v13, v5

    int-to-byte v13, v13

    add-int/lit8 v14, v10, 0x5

    aget-short v14, v7, v14

    ushr-int/2addr v14, v11

    and-int/2addr v14, v5

    or-int/2addr v13, v14

    int-to-byte v13, v13

    shl-int/2addr v13, v5

    int-to-byte v13, v13

    add-int/lit8 v14, v10, 0x4

    aget-short v14, v7, v14

    ushr-int/2addr v14, v11

    and-int/2addr v14, v5

    or-int/2addr v13, v14

    int-to-byte v13, v13

    shl-int/2addr v13, v5

    int-to-byte v13, v13

    add-int/lit8 v14, v10, 0x3

    aget-short v14, v7, v14

    ushr-int/2addr v14, v11

    and-int/2addr v14, v5

    or-int/2addr v13, v14

    int-to-byte v13, v13

    shl-int/2addr v13, v5

    int-to-byte v13, v13

    add-int/lit8 v14, v10, 0x2

    aget-short v14, v7, v14

    ushr-int/2addr v14, v11

    and-int/2addr v14, v5

    or-int/2addr v13, v14

    int-to-byte v13, v13

    shl-int/2addr v13, v5

    int-to-byte v13, v13

    add-int/lit8 v14, v10, 0x1

    aget-short v14, v7, v14

    ushr-int/2addr v14, v11

    and-int/2addr v14, v5

    or-int/2addr v13, v14

    int-to-byte v13, v13

    shl-int/2addr v13, v5

    int-to-byte v13, v13

    aget-short v14, v7, v10

    ushr-int/2addr v14, v11

    and-int/2addr v14, v5

    or-int/2addr v13, v14

    int-to-byte v13, v13

    mul-int/2addr v12, v8

    add-int/2addr v12, v11

    aget-object v12, v4, v12

    div-int/lit8 v14, v10, 0x8

    aput-byte v13, v12, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_dd

    :cond_137
    add-int/lit8 v10, v10, 0x8

    goto :goto_d8

    :cond_13a
    move v10, v3

    :goto_13b
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v10, v11, :cond_14e

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v12, v7, v10

    aget-short v13, v6, v10

    invoke-virtual {v11, v12, v13}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v11

    aput-short v11, v7, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_13b

    :cond_14e
    add-int/lit8 v8, v8, 0x1

    goto :goto_d3

    :cond_151
    move v6, v3

    :goto_152
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v6, v7, :cond_1dc

    ushr-int/lit8 v8, v6, 0x3

    and-int/lit8 v10, v6, 0x7

    iget-boolean v11, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePivots:Z

    if-eqz v11, :cond_16b

    add-int/lit8 v7, v7, -0x20

    if-ne v6, v7, :cond_16b

    move-object/from16 v11, p5

    invoke-direct {v0, v4, v2, v11}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->mov_columns([[B[S[J)I

    move-result v7

    if-eqz v7, :cond_16d

    return v9

    :cond_16b
    move-object/from16 v11, p5

    :cond_16d
    add-int/lit8 v7, v6, 0x1

    move v12, v7

    :goto_170
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v12, v13, :cond_1a2

    aget-object v13, v4, v6

    aget-byte v13, v13, v8

    aget-object v14, v4, v12

    aget-byte v14, v14, v8

    xor-int/2addr v13, v14

    int-to-byte v13, v13

    shr-int/2addr v13, v10

    int-to-byte v13, v13

    and-int/2addr v13, v5

    int-to-byte v13, v13

    neg-int v13, v13

    int-to-byte v13, v13

    move v14, v3

    :goto_185
    iget v15, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v15, v15, 0x8

    if-ge v14, v15, :cond_19e

    aget-object v15, v4, v6

    aget-byte v16, v15, v14

    aget-object v17, v4, v12

    aget-byte v17, v17, v14

    and-int v17, v17, v13

    xor-int v3, v16, v17

    int-to-byte v3, v3

    aput-byte v3, v15, v14

    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x0

    goto :goto_185

    :cond_19e
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    goto :goto_170

    :cond_1a2
    aget-object v3, v4, v6

    aget-byte v3, v3, v8

    shr-int/2addr v3, v10

    and-int/2addr v3, v5

    if-nez v3, :cond_1ab

    return v9

    :cond_1ab
    const/4 v3, 0x0

    :goto_1ac
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v3, v12, :cond_1d8

    if-eq v3, v6, :cond_1d5

    aget-object v12, v4, v3

    aget-byte v12, v12, v8

    shr-int/2addr v12, v10

    int-to-byte v12, v12

    and-int/2addr v12, v5

    int-to-byte v12, v12

    neg-int v12, v12

    int-to-byte v12, v12

    const/4 v13, 0x0

    :goto_1bd
    iget v14, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v14, v14, 0x8

    if-ge v13, v14, :cond_1d5

    aget-object v14, v4, v3

    aget-byte v15, v14, v13

    aget-object v16, v4, v6

    aget-byte v16, v16, v13

    and-int v16, v16, v12

    xor-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v14, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1bd

    :cond_1d5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1ac

    :cond_1d8
    move v6, v7

    const/4 v3, 0x0

    goto/16 :goto_152

    :cond_1dc
    if-eqz v1, :cond_22b

    iget-boolean v2, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz v2, :cond_22d

    rem-int/lit8 v2, v7, 0x8

    if-nez v2, :cond_1f4

    aget-object v2, v4, v8

    sub-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x8

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v0, v0, 0x8

    const/4 v3, 0x0

    invoke-static {v2, v7, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_22b

    :cond_1f4
    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_1f6
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v3, v7, :cond_22b

    add-int/lit8 v7, v7, -0x1

    div-int/lit8 v7, v7, 0x8

    :goto_1fe
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v8, v8, 0x8

    sub-int/2addr v8, v5

    if-ge v7, v8, :cond_21b

    add-int/lit8 v8, v6, 0x1

    aget-object v9, v4, v3

    aget-byte v10, v9, v7

    and-int/lit16 v10, v10, 0xff

    ushr-int/2addr v10, v2

    add-int/lit8 v7, v7, 0x1

    aget-byte v9, v9, v7

    rsub-int/lit8 v11, v2, 0x8

    shl-int/2addr v9, v11

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v1, v6

    move v6, v8

    goto :goto_1fe

    :cond_21b
    add-int/lit8 v8, v6, 0x1

    aget-object v9, v4, v3

    aget-byte v7, v9, v7

    and-int/lit16 v7, v7, 0xff

    ushr-int/2addr v7, v2

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    add-int/lit8 v3, v3, 0x1

    move v6, v8

    goto :goto_1f6

    :cond_22b
    :goto_22b
    const/4 v0, 0x0

    goto :goto_245

    :cond_22d
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    sub-int/2addr v2, v7

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    :goto_235
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v3, v5, :cond_22b

    aget-object v6, v4, v3

    div-int/lit8 v5, v5, 0x8

    mul-int v7, v2, v3

    invoke-static {v6, v5, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_235

    :goto_245
    return v0
.end method

.method private root([S[S[S)V
    .registers 6

    .line 0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v0, v1, :cond_10

    aget-short v1, p3, v0

    invoke-direct {p0, p2, v1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->eval([SS)S

    move-result v1

    aput-short v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return-void
.end method

.method private static same_mask32(SS)B
    .registers 2

    .line 0
    xor-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    ushr-int/lit8 p0, p0, 0x1f

    neg-int p0, p0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method private static same_mask64(SS)J
    .registers 4

    .line 0
    xor-int/2addr p0, p1

    int-to-long p0, p0

    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    const/16 v0, 0x3f

    ushr-long/2addr p0, v0

    neg-long p0, p0

    return-wide p0
.end method

.method private static sort32([III)V
    .registers 16

    .line 0
    sub-int/2addr p2, p1

    const/4 v0, 0x2

    if-ge p2, v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    :goto_6
    sub-int v1, p2, v0

    if-ge v0, v1, :cond_c

    add-int/2addr v0, v0

    goto :goto_6

    :cond_c
    move v1, v0

    :goto_d
    if-lez v1, :cond_6b

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    sub-int v4, p2, v1

    if-ge v3, v4, :cond_36

    and-int v4, v3, v1

    if-nez v4, :cond_33

    add-int v4, p1, v3

    add-int v5, v4, v1

    aget v6, p0, v5

    aget v7, p0, v4

    xor-int v8, v6, v7

    sub-int v9, v6, v7

    xor-int/2addr v6, v9

    and-int/2addr v6, v8

    xor-int/2addr v6, v9

    shr-int/lit8 v6, v6, 0x1f

    and-int/2addr v6, v8

    xor-int/2addr v7, v6

    aput v7, p0, v4

    aget v4, p0, v5

    xor-int/2addr v4, v6

    aput v4, p0, v5

    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_36
    move v3, v0

    :goto_37
    if-le v3, v1, :cond_68

    :goto_39
    sub-int v4, p2, v3

    if-ge v2, v4, :cond_65

    and-int v4, v2, v1

    if-nez v4, :cond_62

    add-int v4, p1, v2

    add-int v5, v4, v1

    aget v6, p0, v5

    move v7, v3

    :goto_48
    if-le v7, v1, :cond_60

    add-int v8, v4, v7

    aget v9, p0, v8

    xor-int v10, v9, v6

    sub-int v11, v9, v6

    xor-int v12, v11, v9

    and-int/2addr v12, v10

    xor-int/2addr v11, v12

    shr-int/lit8 v11, v11, 0x1f

    and-int/2addr v10, v11

    xor-int/2addr v6, v10

    xor-int/2addr v9, v10

    aput v9, p0, v8

    ushr-int/lit8 v7, v7, 0x1

    goto :goto_48

    :cond_60
    aput v6, p0, v5

    :cond_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_65
    ushr-int/lit8 v3, v3, 0x1

    goto :goto_37

    :cond_68
    ushr-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_6b
    return-void
.end method

.method private static sort64([JII)V
    .registers 21

    .line 0
    sub-int v0, p2, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_6

    return-void

    :cond_6
    const/4 v1, 0x1

    :goto_7
    sub-int v2, v0, v1

    if-ge v1, v2, :cond_d

    add-int/2addr v1, v1

    goto :goto_7

    :cond_d
    move v2, v1

    :goto_e
    if-lez v2, :cond_67

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    sub-int v5, v0, v2

    const/16 v6, 0x3f

    if-ge v4, v5, :cond_35

    and-int v5, v4, v2

    if-nez v5, :cond_32

    add-int v5, p1, v4

    add-int v7, v5, v2

    aget-wide v8, p0, v7

    aget-wide v10, p0, v5

    sub-long v12, v8, v10

    ushr-long/2addr v12, v6

    neg-long v12, v12

    xor-long/2addr v8, v10

    and-long/2addr v8, v12

    xor-long/2addr v10, v8

    aput-wide v10, p0, v5

    aget-wide v5, p0, v7

    xor-long/2addr v5, v8

    aput-wide v5, p0, v7

    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_35
    move v4, v1

    :goto_36
    if-le v4, v2, :cond_64

    :goto_38
    sub-int v5, v0, v4

    if-ge v3, v5, :cond_61

    and-int v5, v3, v2

    if-nez v5, :cond_5e

    add-int v5, p1, v3

    add-int v7, v5, v2

    aget-wide v8, p0, v7

    move v10, v4

    :goto_47
    if-le v10, v2, :cond_5c

    add-int v11, v5, v10

    aget-wide v12, p0, v11

    sub-long v14, v12, v8

    ushr-long/2addr v14, v6

    neg-long v14, v14

    xor-long v16, v8, v12

    and-long v14, v14, v16

    xor-long/2addr v8, v14

    xor-long/2addr v12, v14

    aput-wide v12, p0, v11

    ushr-int/lit8 v10, v10, 0x1

    goto :goto_47

    :cond_5c
    aput-wide v8, p0, v7

    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :cond_61
    ushr-int/lit8 v4, v4, 0x1

    goto :goto_36

    :cond_64
    ushr-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_67
    return-void
.end method

.method private synd([S[S[S[B)V
    .registers 12

    .line 0
    const/4 v0, 0x0

    aget-byte v1, p4, v0

    const/4 v2, 0x1

    and-int/2addr v1, v2

    int-to-short v1, v1

    aget-short v3, p3, v0

    invoke-direct {p0, p2, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->eval([SS)S

    move-result v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v5, v4}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_sq(S)S

    move-result v4

    invoke-virtual {v5, v4}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_inv(S)S

    move-result v4

    neg-int v1, v1

    and-int/2addr v1, v4

    int-to-short v1, v1

    aput-short v1, p1, v0

    move v4, v2

    :goto_1c
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_2d

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v5, v1, v3}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v1

    aput-short v1, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_2d
    move v1, v2

    :goto_2e
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v1, v3, :cond_70

    div-int/lit8 v3, v1, 0x8

    aget-byte v3, p4, v3

    rem-int/lit8 v4, v1, 0x8

    shr-int/2addr v3, v4

    and-int/2addr v3, v2

    int-to-short v3, v3

    aget-short v4, p3, v1

    invoke-direct {p0, p2, v4}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->eval([SS)S

    move-result v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v6, v5}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_sq(S)S

    move-result v5

    invoke-virtual {v6, v5}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_inv(S)S

    move-result v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v6, v5, v3}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v3

    aget-short v5, p1, v0

    xor-int/2addr v5, v3

    int-to-short v5, v5

    aput-short v5, p1, v0

    move v5, v2

    :goto_58
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v6, v6, 0x2

    if-ge v5, v6, :cond_6d

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v6, v3, v4}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v3

    aget-short v6, p1, v5

    xor-int/2addr v6, v3

    int-to-short v6, v6

    aput-short v6, p1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    :cond_6d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_70
    return-void
.end method

.method private syndrome([B[B[B)V
    .registers 16

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [S

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    rem-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    if-ge v3, v4, :cond_15

    aput-byte v2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_15
    move v3, v2

    move v4, v3

    :goto_17
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v3, v5, :cond_a0

    move v5, v2

    :goto_1c
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v6, v6, 0x8

    if-ge v5, v6, :cond_27

    aput-short v2, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_27
    move v5, v2

    :goto_28
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_ROW_BYTES:I

    if-ge v5, v6, :cond_3c

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v7, v7, 0x8

    sub-int/2addr v7, v6

    add-int/2addr v7, v5

    add-int v6, v4, v5

    aget-byte v6, p2, v6

    int-to-short v6, v6

    aput-short v6, v0, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    :cond_3c
    iget-boolean v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_66

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v5, v5, 0x8

    sub-int/2addr v5, v6

    :goto_46
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v7, v7, 0x8

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_ROW_BYTES:I

    sub-int/2addr v7, v8

    if-lt v5, v7, :cond_66

    aget-short v7, v0, v5

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v1

    add-int/lit8 v8, v5, -0x1

    aget-short v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    rsub-int/lit8 v9, v1, 0x8

    ushr-int/2addr v8, v9

    or-int/2addr v7, v8

    and-int/lit16 v7, v7, 0xff

    int-to-short v7, v7

    aput-short v7, v0, v5

    add-int/lit8 v5, v5, -0x1

    goto :goto_46

    :cond_66
    div-int/lit8 v5, v3, 0x8

    aget-short v7, v0, v5

    rem-int/lit8 v8, v3, 0x8

    shl-int v9, v6, v8

    or-int/2addr v7, v9

    int-to-short v7, v7

    aput-short v7, v0, v5

    move v7, v2

    move v9, v7

    :goto_74
    iget v10, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v10, v10, 0x8

    if-ge v7, v10, :cond_84

    aget-short v10, v0, v7

    aget-byte v11, p3, v7

    and-int/2addr v10, v11

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_74

    :cond_84
    ushr-int/lit8 v7, v9, 0x4

    xor-int/2addr v7, v9

    int-to-byte v7, v7

    ushr-int/lit8 v9, v7, 0x2

    xor-int/2addr v7, v9

    int-to-byte v7, v7

    ushr-int/lit8 v9, v7, 0x1

    xor-int/2addr v7, v9

    int-to-byte v7, v7

    and-int/2addr v6, v7

    int-to-byte v6, v6

    aget-byte v7, p1, v5

    shl-int/2addr v6, v8

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_ROW_BYTES:I

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_17

    :cond_a0
    return-void
.end method


# virtual methods
.method public check_c_padding([B)I
    .registers 3

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    add-int/lit8 v0, v0, -0x1

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    rem-int/lit8 p0, p0, 0x8

    ushr-int p0, p1, p0

    int-to-byte p0, p0

    add-int/lit8 p0, p0, -0x1

    int-to-byte p0, p0

    and-int/lit16 p0, p0, 0xff

    ushr-int/lit8 p0, p0, 0x7

    int-to-byte p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public check_pk_padding([B)I
    .registers 6

    .line 0
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v0, v2, :cond_14

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_ROW_BYTES:I

    mul-int v3, v0, v2

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-byte v2, p1, v3

    or-int/2addr v1, v2

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_14
    and-int/lit16 p1, v1, 0xff

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NCOLS:I

    rem-int/lit8 p0, p0, 0x8

    ushr-int p0, p1, p0

    int-to-byte p0, p0

    add-int/lit8 p0, p0, -0x1

    int-to-byte p0, p0

    and-int/lit16 p0, p0, 0xff

    ushr-int/lit8 p0, p0, 0x7

    int-to-byte p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public decompress_private_key([B)[B
    .registers 20

    .line 0
    move-object/from16 v6, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->getPrivateKeySize()I

    move-result v1

    new-array v7, v1, [B

    array-length v1, v0

    const/4 v8, 0x0

    invoke-static {v0, v8, v7, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v1, v1, 0x8

    iget v2, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    const/4 v9, 0x1

    shl-int v2, v9, v2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    iget v2, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    add-int/2addr v1, v2

    const/16 v2, 0x20

    add-int/lit8 v3, v1, 0x20

    new-array v10, v3, [B

    new-instance v4, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    const/16 v5, 0x40

    invoke-interface {v4, v5}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    invoke-interface {v4, v0, v8, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v4, v10, v8, v3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    array-length v2, v0

    const/16 v11, 0x28

    if-gt v2, v11, :cond_6d

    iget v2, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    new-array v2, v2, [S

    iget v3, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    new-array v4, v3, [B

    sub-int v3, v1, v3

    move v5, v8

    :goto_46
    iget v12, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v5, v12, :cond_57

    mul-int/lit8 v12, v5, 0x2

    add-int/2addr v12, v3

    iget v13, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    invoke-static {v10, v12, v13}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load_gf([BII)S

    move-result v12

    aput-short v12, v2, v5

    add-int/2addr v5, v9

    goto :goto_46

    :cond_57
    invoke-direct {v6, v2}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->generate_irr_poly([S)I

    move v3, v8

    :goto_5b
    iget v5, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v3, v5, :cond_68

    mul-int/lit8 v5, v3, 0x2

    aget-short v12, v2, v3

    invoke-static {v4, v5, v12}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store_gf([BIS)V

    add-int/2addr v3, v9

    goto :goto_5b

    :cond_68
    iget v2, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    invoke-static {v4, v8, v7, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6d
    array-length v0, v0

    iget v2, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    add-int/lit8 v3, v2, 0x28

    if-gt v0, v3, :cond_f8

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v3, v9, v0

    new-array v3, v3, [I

    shl-int v4, v9, v0

    new-array v13, v4, [S

    sub-int/2addr v1, v2

    shl-int v0, v9, v0

    mul-int/lit8 v0, v0, 0x4

    sub-int/2addr v1, v0

    move v0, v8

    :goto_85
    iget v2, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v4, v9, v2

    if-ge v0, v4, :cond_96

    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v2, v1

    invoke-static {v10, v2}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load4([BI)I

    move-result v2

    aput v2, v3, v0

    add-int/2addr v0, v9

    goto :goto_85

    :cond_96
    iget-boolean v0, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePivots:Z

    if-eqz v0, :cond_a9

    new-array v5, v9, [J

    const-wide/16 v0, 0x0

    aput-wide v0, v5, v8

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object v2, v7

    move-object v4, v13

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->pk_gen([B[B[I[S[J)I

    goto :goto_e2

    :cond_a9
    shl-int v0, v9, v2

    new-array v1, v0, [J

    move v2, v8

    :goto_ae
    iget v4, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v4, v9, v4

    if-ge v2, v4, :cond_cc

    aget v4, v3, v2

    int-to-long v4, v4

    aput-wide v4, v1, v2

    const/16 v12, 0x1f

    shl-long/2addr v4, v12

    aput-wide v4, v1, v2

    int-to-long v14, v2

    or-long/2addr v4, v14

    aput-wide v4, v1, v2

    const-wide v14, 0x7fffffffffffffffL

    and-long/2addr v4, v14

    aput-wide v4, v1, v2

    add-int/2addr v2, v9

    goto :goto_ae

    :cond_cc
    invoke-static {v1, v8, v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort64([JII)V

    move v0, v8

    :goto_d0
    iget v2, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v2, v9, v2

    if-ge v0, v2, :cond_e2

    aget-wide v2, v1, v0

    iget v4, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    int-to-long v4, v4

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-short v2, v2

    aput-short v2, v13, v0

    add-int/2addr v0, v9

    goto :goto_d0

    :cond_e2
    :goto_e2
    iget v0, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->COND_BYTES:I

    new-array v1, v0, [B

    iget v2, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    int-to-long v14, v2

    shl-int v2, v9, v2

    int-to-long v2, v2

    move-object v12, v1

    move-wide/from16 v16, v2

    invoke-static/range {v12 .. v17}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->controlbitsfrompermutation([B[SJJ)V

    iget v2, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    add-int/2addr v2, v11

    invoke-static {v1, v8, v7, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f8
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->getPrivateKeySize()I

    move-result v0

    iget v1, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v2, v1, 0x8

    sub-int/2addr v0, v2

    div-int/lit8 v1, v1, 0x8

    invoke-static {v10, v8, v7, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v7
.end method

.method public generate_public_key_from_private_key([B)[B
    .registers 14

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->getPublicKeySize()I

    move-result v0

    new-array v0, v0, [B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    const/4 v2, 0x1

    shl-int v3, v2, v1

    new-array v5, v3, [S

    new-array v6, v2, [J

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    aput-wide v3, v6, v7

    shl-int v3, v2, v1

    new-array v4, v3, [I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v3, v3, 0x8

    shl-int v8, v2, v1

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v3, v8

    new-array v8, v3, [B

    const/16 v9, 0x20

    add-int/lit8 v10, v3, -0x20

    iget v11, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    sub-int/2addr v10, v11

    shl-int v1, v2, v1

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v10, v1

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v11, 0x100

    invoke-direct {v1, v11}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    const/16 v11, 0x40

    invoke-interface {v1, v11}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    invoke-interface {v1, p1, v7, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v1, v8, v7, v3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    :goto_41
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v1, v2, v1

    if-ge v7, v1, :cond_52

    mul-int/lit8 v1, v7, 0x4

    add-int/2addr v1, v10

    invoke-static {v8, v1}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load4([BI)I

    move-result v1

    aput v1, v4, v7

    add-int/2addr v7, v2

    goto :goto_41

    :cond_52
    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->pk_gen([B[B[I[S[J)I

    return-object v0
.end method

.method public getCipherTextSize()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    return p0
.end method

.method public getCondBytes()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->COND_BYTES:I

    return p0
.end method

.method public getDefaultSessionKeySize()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->defaultKeySize:I

    return p0
.end method

.method public getIrrBytes()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    return p0
.end method

.method public getPrivateKeySize()I
    .registers 3

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->COND_BYTES:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    add-int/2addr v0, v1

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 p0, p0, 0x8

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x28

    return v0
.end method

.method public getPublicKeySize()I
    .registers 3

    .line 0
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz v0, :cond_11

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 p0, p0, 0x8

    add-int/lit8 v1, v0, -0x1

    div-int/lit8 v1, v1, 0x8

    sub-int/2addr p0, v1

    mul-int/2addr v0, p0

    return v0

    :cond_11
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NCOLS:I

    mul-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public kem_dec([B[B[B)I
    .registers 15

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v1, v0, 0x8

    new-array v1, v1, [B

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    add-int/2addr v0, v2

    new-array v2, v0, [B

    iget-boolean v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_19

    invoke-virtual {p0, p2}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->check_c_padding([B)I

    move-result v3

    goto :goto_1a

    :cond_19
    move v3, v4

    :goto_1a
    invoke-direct {p0, v1, p3, p2}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->decrypt([B[B[B)I

    move-result v5

    int-to-byte v5, v5

    int-to-short v5, v5

    add-int/lit8 v5, v5, -0x1

    int-to-short v5, v5

    shr-int/lit8 v5, v5, 0x8

    int-to-short v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit8 v6, v5, 0x1

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    move v6, v4

    :goto_2f
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v7, v7, 0x8

    if-ge v6, v7, :cond_4c

    add-int/lit8 v7, v6, 0x1

    not-int v8, v5

    add-int/lit8 v9, v6, 0x28

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    add-int/2addr v9, v10

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->COND_BYTES:I

    add-int/2addr v9, v10

    aget-byte v9, p3, v9

    and-int/2addr v8, v9

    aget-byte v6, v1, v6

    and-int/2addr v6, v5

    or-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v2, v7

    move v6, v7

    goto :goto_2f

    :cond_4c
    move p3, v4

    :goto_4d
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    if-ge p3, v1, :cond_5f

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p3

    aget-byte v5, p2, p3

    aput-byte v5, v2, v1

    add-int/lit8 p3, p3, 0x1

    goto :goto_4d

    :cond_5f
    new-instance p2, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 p3, 0x100

    invoke-direct {p2, p3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    invoke-interface {p2, v2, v4, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length p3, p1

    invoke-interface {p2, p1, v4, p3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget-boolean p0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz p0, :cond_7f

    int-to-byte p0, v3

    :goto_72
    array-length p2, p1

    if-ge v4, p2, :cond_7e

    aget-byte p2, p1, v4

    or-int/2addr p2, p0

    int-to-byte p2, p2

    aput-byte p2, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_72

    :cond_7e
    return v3

    :cond_7f
    return v4
.end method

.method public kem_enc([B[B[BLjava/security/SecureRandom;)I
    .registers 9

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v0, v0, 0x8

    new-array v1, v0, [B

    iget-boolean v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_10

    invoke-virtual {p0, p3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->check_pk_padding([B)I

    move-result v2

    goto :goto_11

    :cond_10
    move v2, v3

    :goto_11
    invoke-direct {p0, p1, p3, v1, p4}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->encrypt([B[B[BLjava/security/SecureRandom;)V

    new-instance p3, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 p4, 0x100

    invoke-direct {p3, p4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    const/4 p4, 0x1

    invoke-interface {p3, p4}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    invoke-interface {p3, v1, v3, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length p4, p1

    invoke-interface {p3, p1, v3, p4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length p4, p2

    invoke-interface {p3, p2, v3, p4}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget-boolean p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz p3, :cond_4e

    int-to-byte p3, v2

    xor-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    move p4, v3

    :goto_33
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    if-ge p4, v0, :cond_40

    aget-byte v0, p1, p4

    and-int/2addr v0, p3

    int-to-byte v0, v0

    aput-byte v0, p1, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_33

    :cond_40
    :goto_40
    const/16 p0, 0x20

    if-ge v3, p0, :cond_4d

    aget-byte p0, p2, v3

    and-int/2addr p0, p3

    int-to-byte p0, p0

    aput-byte p0, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    :cond_4d
    return v2

    :cond_4e
    return v3
.end method

.method public kem_keypair([B[BLjava/security/SecureRandom;)V
    .registers 28

    .line 0
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    const/16 v8, 0x20

    new-array v0, v8, [B

    const/4 v9, 0x1

    new-array v10, v9, [B

    const/16 v1, 0x40

    const/4 v11, 0x0

    aput-byte v1, v10, v11

    move-object/from16 v1, p3

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget v1, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v1, v1, 0x8

    iget v2, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v2, v9, v2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    iget v2, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v2, v2, 0x2

    add-int v12, v1, v2

    add-int/lit8 v13, v12, 0x20

    new-array v14, v13, [B

    new-array v15, v9, [J

    const-wide/16 v1, 0x0

    aput-wide v1, v15, v11

    new-instance v5, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x100

    invoke-direct {v5, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    move-object v1, v0

    :goto_38
    invoke-interface {v5, v10, v11, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v2, v0

    invoke-interface {v5, v0, v11, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v5, v14, v11, v13}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    add-int/lit8 v0, v12, 0x20

    invoke-static {v14, v12, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v1, v11, v7, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4, v11, v8}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v16

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    new-array v1, v0, [S

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v12, v0

    move v2, v11

    :goto_58
    iget v3, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v2, v3, :cond_6b

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v0

    iget v8, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    invoke-static {v14, v3, v8}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load_gf([BII)S

    move-result v3

    aput-short v3, v1, v2

    add-int/2addr v2, v9

    const/16 v8, 0x20

    goto :goto_58

    :cond_6b
    invoke-direct {v6, v1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->generate_irr_poly([S)I

    move-result v2

    const/4 v8, -0x1

    if-ne v2, v8, :cond_77

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    goto :goto_c1

    :cond_77
    move v2, v11

    :goto_78
    iget v3, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    const/16 v17, 0x28

    if-ge v2, v3, :cond_8a

    mul-int/lit8 v3, v2, 0x2

    add-int v3, v17, v3

    aget-short v11, v1, v2

    invoke-static {v7, v3, v11}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store_gf([BIS)V

    add-int/2addr v2, v9

    const/4 v11, 0x0

    goto :goto_78

    :cond_8a
    iget v1, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v2, v9, v1

    new-array v3, v2, [I

    shl-int v1, v9, v1

    mul-int/lit8 v1, v1, 0x4

    sub-int v11, v0, v1

    const/4 v0, 0x0

    :goto_97
    iget v1, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v2, v9, v1

    if-ge v0, v2, :cond_a8

    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, v11

    invoke-static {v14, v1}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load4([BI)I

    move-result v1

    aput v1, v3, v0

    add-int/2addr v0, v9

    goto :goto_97

    :cond_a8
    shl-int v0, v9, v1

    new-array v2, v0, [S

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v19, v2

    move-object/from16 v2, p2

    move-object/from16 v18, v4

    move-object/from16 v4, v19

    move-object/from16 v20, v5

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->pk_gen([B[B[I[S[J)I

    move-result v0

    if-ne v0, v8, :cond_cc

    :goto_c1
    move-object/from16 v1, v16

    move-object/from16 v0, v18

    move-object/from16 v5, v20

    const/16 v8, 0x20

    const/4 v11, 0x0

    goto/16 :goto_38

    :cond_cc
    iget v0, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->COND_BYTES:I

    new-array v1, v0, [B

    iget v2, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    int-to-long v3, v2

    shl-int v2, v9, v2

    int-to-long v8, v2

    move-object/from16 v18, v1

    move-wide/from16 v20, v3

    move-wide/from16 v22, v8

    invoke-static/range {v18 .. v23}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->controlbitsfrompermutation([B[SJJ)V

    iget v2, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    add-int/lit8 v2, v2, 0x28

    const/4 v3, 0x0

    invoke-static {v1, v3, v7, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v1, v0, 0x8

    sub-int/2addr v11, v1

    array-length v1, v7

    div-int/lit8 v2, v0, 0x8

    sub-int/2addr v1, v2

    div-int/lit8 v0, v0, 0x8

    invoke-static {v14, v11, v7, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v0, v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePivots:Z

    if-nez v0, :cond_104

    const-wide v0, 0xffffffffL

    const/16 v2, 0x20

    :goto_100
    invoke-static {v7, v2, v0, v1}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store8([BIJ)V

    goto :goto_10a

    :cond_104
    const/4 v0, 0x0

    const/16 v2, 0x20

    aget-wide v0, v15, v0

    goto :goto_100

    :goto_10a
    return-void
.end method
