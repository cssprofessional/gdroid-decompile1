###### Class org.bouncycastle.pqc.crypto.bike.BIKEEngine (org.bouncycastle.pqc.crypto.bike.BIKEEngine)
.class Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;
.super Ljava/lang/Object;


# instance fields
.field private L_BYTE:I

.field private R2_BYTE:I

.field private R_BYTE:I

.field private final bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

.field private hw:I

.field private nbIter:I

.field private r:I

.field private t:I

.field private tau:I

.field private w:I


# direct methods
.method public constructor <init>(IIIIII)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->w:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->t:I

    iput p5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->nbIter:I

    iput p6, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->tau:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    div-int/lit8 p4, p4, 0x8

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    add-int/lit8 p2, p1, 0x7

    ushr-int/lit8 p2, p2, 0x3

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    mul-int/lit8 p2, p1, 0x2

    add-int/lit8 p2, p2, 0x7

    ushr-int/lit8 p2, p2, 0x3

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R2_BYTE:I

    new-instance p2, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-direct {p2, p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;-><init>(I)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    return-void
.end method

.method private BFIter([B[BI[I[I[I[I[B[B[B)V
    .registers 22

    .line 0
    move-object v6, p0

    move-object v7, p1

    move-object/from16 v0, p6

    move-object/from16 v1, p10

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->ctrAll([I[B[B)V

    const/4 v8, 0x0

    aget-byte v0, v1, v8

    and-int/lit16 v0, v0, 0xff

    sub-int v2, v0, p3

    shr-int/lit8 v2, v2, 0x1f

    const/4 v9, 0x1

    add-int/2addr v2, v9

    iget v3, v6, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->tau:I

    sub-int v3, p3, v3

    sub-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v9

    aget-byte v3, p2, v8

    int-to-byte v2, v2

    xor-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, p2, v8

    aput-byte v2, p8, v8

    int-to-byte v0, v0

    aput-byte v0, p9, v8

    move v0, v9

    :goto_29
    iget v2, v6, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    if-ge v0, v2, :cond_4e

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    sub-int v4, v3, p3

    shr-int/lit8 v4, v4, 0x1f

    add-int/2addr v4, v9

    iget v5, v6, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->tau:I

    sub-int v5, p3, v5

    sub-int/2addr v3, v5

    shr-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v9

    sub-int/2addr v2, v0

    aget-byte v5, p2, v2

    int-to-byte v4, v4

    xor-int/2addr v5, v4

    int-to-byte v5, v5

    aput-byte v5, p2, v2

    aput-byte v4, p8, v0

    int-to-byte v2, v3

    aput-byte v2, p9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_4e
    move-object/from16 v0, p7

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->ctrAll([I[B[B)V

    aget-byte v0, v1, v8

    and-int/lit16 v0, v0, 0xff

    sub-int v2, v0, p3

    shr-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v9

    iget v3, v6, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->tau:I

    sub-int v3, p3, v3

    sub-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v9

    iget v3, v6, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    aget-byte v4, p2, v3

    int-to-byte v2, v2

    xor-int/2addr v4, v2

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    aput-byte v2, p8, v3

    int-to-byte v0, v0

    aput-byte v0, p9, v3

    move v0, v9

    :goto_73
    iget v2, v6, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    if-ge v0, v2, :cond_9d

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    sub-int v4, v3, p3

    shr-int/lit8 v4, v4, 0x1f

    add-int/2addr v4, v9

    iget v5, v6, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->tau:I

    sub-int v5, p3, v5

    sub-int/2addr v3, v5

    shr-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v9

    add-int v5, v2, v2

    sub-int/2addr v5, v0

    aget-byte v10, p2, v5

    int-to-byte v4, v4

    xor-int/2addr v10, v4

    int-to-byte v10, v10

    aput-byte v10, p2, v5

    add-int v5, v2, v0

    aput-byte v4, p8, v5

    add-int/2addr v2, v0

    int-to-byte v3, v3

    aput-byte v3, p9, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    :cond_9d
    move v10, v8

    :goto_9e
    iget v0, v6, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 v0, v0, 0x2

    if-ge v10, v0, :cond_b7

    aget-byte v0, p8, v10

    if-eqz v0, :cond_aa

    move v5, v9

    goto :goto_ab

    :cond_aa
    move v5, v8

    :goto_ab
    move-object v0, p0

    move-object v1, p1

    move v2, v10

    move-object v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->recomputeSyndrome([BI[I[IZ)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_9e

    :cond_b7
    return-void
.end method

.method private BFIter2([B[BI[I[I[I[I[B)V
    .registers 21

    .line 0
    move-object v6, p0

    move-object v7, p1

    move-object/from16 v0, p8

    iget v1, v6, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 v1, v1, 0x2

    new-array v8, v1, [I

    move-object/from16 v1, p6

    invoke-direct {p0, v1, p1, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->ctrAll([I[B[B)V

    const/4 v9, 0x0

    aget-byte v1, v0, v9

    and-int/lit16 v1, v1, 0xff

    sub-int/2addr v1, p3

    shr-int/lit8 v1, v1, 0x1f

    const/4 v10, 0x1

    add-int/2addr v1, v10

    aget-byte v2, p2, v9

    int-to-byte v3, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p2, v9

    aput v1, v8, v9

    move v1, v10

    :goto_23
    iget v2, v6, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    if-ge v1, v2, :cond_3c

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v3, p3

    shr-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v10

    sub-int/2addr v2, v1

    aget-byte v4, p2, v2

    int-to-byte v5, v3

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p2, v2

    aput v3, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_3c
    move-object/from16 v1, p7

    invoke-direct {p0, v1, p1, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->ctrAll([I[B[B)V

    aget-byte v1, v0, v9

    and-int/lit16 v1, v1, 0xff

    sub-int/2addr v1, p3

    shr-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v10

    iget v2, v6, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    aget-byte v3, p2, v2

    int-to-byte v4, v1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    aput v1, v8, v2

    move v1, v10

    :goto_55
    iget v2, v6, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    if-ge v1, v2, :cond_71

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v3, p3

    shr-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v10

    add-int v4, v2, v2

    sub-int/2addr v4, v1

    aget-byte v5, p2, v4

    int-to-byte v11, v3

    xor-int/2addr v5, v11

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    add-int/2addr v2, v1

    aput v3, v8, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    :cond_71
    move v11, v9

    :goto_72
    iget v0, v6, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 v0, v0, 0x2

    if-ge v11, v0, :cond_8c

    aget v0, v8, v11

    if-ne v0, v10, :cond_7e

    move v5, v10

    goto :goto_7f

    :cond_7e
    move v5, v9

    :goto_7f
    move-object v0, p0

    move-object v1, p1

    move v2, v11

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->recomputeSyndrome([BI[I[IZ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_72

    :cond_8c
    return-void
.end method

.method private BFMaskedIter([B[B[BI[I[I[I[I)V
    .registers 21

    .line 0
    move-object v6, p0

    move-object v7, p1

    move-object v0, p2

    move/from16 v1, p4

    iget v2, v6, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 v2, v2, 0x2

    new-array v8, v2, [I

    const/4 v9, 0x0

    move v2, v9

    :goto_d
    iget v3, v6, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    const/4 v10, 0x1

    if-ge v2, v3, :cond_2b

    aget-byte v3, p3, v2

    if-ne v3, v10, :cond_26

    move-object/from16 v3, p7

    invoke-direct {p0, v3, p1, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->ctr([I[BI)I

    move-result v4

    if-lt v4, v1, :cond_1f

    goto :goto_20

    :cond_1f
    move v10, v9

    :goto_20
    invoke-direct {p0, p2, v2, v10}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->updateNewErrorIndex([BIZ)V

    aput v10, v8, v2

    goto :goto_28

    :cond_26
    move-object/from16 v3, p7

    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_2b
    move v2, v9

    :goto_2c
    iget v3, v6, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    if-ge v2, v3, :cond_51

    add-int/2addr v3, v2

    aget-byte v3, p3, v3

    if-ne v3, v10, :cond_4c

    move-object/from16 v3, p8

    invoke-direct {p0, v3, p1, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->ctr([I[BI)I

    move-result v4

    if-lt v4, v1, :cond_3f

    move v4, v10

    goto :goto_40

    :cond_3f
    move v4, v9

    :goto_40
    iget v5, v6, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    add-int/2addr v5, v2

    invoke-direct {p0, p2, v5, v4}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->updateNewErrorIndex([BIZ)V

    iget v5, v6, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    add-int/2addr v5, v2

    aput v4, v8, v5

    goto :goto_4e

    :cond_4c
    move-object/from16 v3, p8

    :goto_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_51
    move v11, v9

    :goto_52
    iget v0, v6, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 v0, v0, 0x2

    if-ge v11, v0, :cond_6c

    aget v0, v8, v11

    if-ne v0, v10, :cond_5e

    move v5, v10

    goto :goto_5f

    :cond_5e
    move v5, v9

    :goto_5f
    move-object v0, p0

    move-object v1, p1

    move v2, v11

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->recomputeSyndrome([BI[I[IZ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_52

    :cond_6c
    return-void
.end method

.method private BGFDecoder([B[I[I)[B
    .registers 24

    .line 0
    move-object/from16 v11, p0

    iget v0, v11, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 v0, v0, 0x2

    new-array v12, v0, [B

    move-object/from16 v13, p2

    invoke-direct {v11, v13}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->getColumnFromCompactVersion([I)[I

    move-result-object v14

    move-object/from16 v15, p3

    invoke-direct {v11, v15}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->getColumnFromCompactVersion([I)[I

    move-result-object v16

    iget v0, v11, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 v1, v0, 0x2

    new-array v10, v1, [B

    new-array v9, v0, [B

    mul-int/lit8 v0, v0, 0x2

    new-array v8, v0, [B

    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEUtils;->getHammingWeight([B)I

    move-result v0

    iget v1, v11, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    invoke-direct {v11, v0, v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->threshold(II)I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v14

    move-object/from16 v7, v16

    move-object/from16 v17, v8

    move-object v8, v10

    move-object/from16 v18, v9

    move-object/from16 v9, v17

    move-object/from16 v19, v10

    move-object/from16 v10, v18

    invoke-direct/range {v0 .. v10}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->BFIter([B[BI[I[I[I[I[B[B[B)V

    iget v0, v11, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    const/4 v9, 0x1

    add-int/2addr v0, v9

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, v19

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object v7, v14

    move-object/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->BFMaskedIter([B[B[BI[I[I[I[I)V

    iget v0, v11, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    add-int/2addr v0, v9

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, v17

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->BFMaskedIter([B[B[BI[I[I[I[I)V

    :goto_68
    iget v0, v11, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->nbIter:I

    if-ge v9, v0, :cond_90

    const/4 v0, 0x0

    move-object/from16 v10, v19

    invoke-static {v10, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEUtils;->getHammingWeight([B)I

    move-result v0

    iget v1, v11, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    invoke-direct {v11, v0, v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->threshold(II)I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v14

    move-object/from16 v7, v16

    move-object/from16 v8, v18

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->BFIter2([B[BI[I[I[I[I[B)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_68

    :cond_90
    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEUtils;->getHammingWeight([B)I

    move-result v0

    if-nez v0, :cond_97

    return-object v12

    :cond_97
    const/4 v0, 0x0

    return-object v0
.end method

.method private computeSyndrome([B[B)[B
    .registers 6

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->create()[J

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->create()[J

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v2, p1, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->decodeBytes([B[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {p1, p2, v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->decodeBytes([B[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {p1, v0, v1, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->multiply([J[J[J)V

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->encodeBitsTransposed([J)[B

    move-result-object p0

    return-object p0
.end method

.method private convertToCompact([I[B)V
    .registers 11

    .line 0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    if-ge v1, v3, :cond_2c

    move v3, v0

    :goto_8
    const/16 v4, 0x8

    if-ge v3, v4, :cond_29

    mul-int/lit8 v4, v1, 0x8

    add-int/2addr v4, v3

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    if-ne v4, v5, :cond_14

    goto :goto_29

    :cond_14
    aget-byte v5, p2, v1

    shr-int/2addr v5, v3

    and-int/lit8 v5, v5, 0x1

    neg-int v6, v5

    and-int/2addr v4, v6

    aget v7, p1, v2

    not-int v6, v6

    and-int/2addr v6, v7

    or-int/2addr v4, v6

    aput v4, p1, v2

    add-int/2addr v2, v5

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    rem-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_29
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2c
    return-void
.end method

.method private ctr([I[BI)I
    .registers 13

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    add-int/lit8 v0, v0, -0x4

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-gt v1, v0, :cond_47

    aget v3, p1, v1

    add-int/2addr v3, p3

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    sub-int/2addr v3, v4

    add-int/lit8 v5, v1, 0x1

    aget v5, p1, v5

    add-int/2addr v5, p3

    sub-int/2addr v5, v4

    add-int/lit8 v6, v1, 0x2

    aget v6, p1, v6

    add-int/2addr v6, p3

    sub-int/2addr v6, v4

    add-int/lit8 v7, v1, 0x3

    aget v7, p1, v7

    add-int/2addr v7, p3

    sub-int/2addr v7, v4

    shr-int/lit8 v8, v3, 0x1f

    and-int/2addr v8, v4

    add-int/2addr v3, v8

    shr-int/lit8 v8, v5, 0x1f

    and-int/2addr v8, v4

    add-int/2addr v5, v8

    shr-int/lit8 v8, v6, 0x1f

    and-int/2addr v8, v4

    add-int/2addr v6, v8

    shr-int/lit8 v8, v7, 0x1f

    and-int/2addr v4, v8

    add-int/2addr v7, v4

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    aget-byte v3, p2, v5

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    aget-byte v3, p2, v6

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    aget-byte v3, p2, v7

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x4

    goto :goto_6

    :cond_47
    :goto_47
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    if-ge v1, v0, :cond_5d

    aget v0, p1, v1

    add-int/2addr v0, p3

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    sub-int/2addr v0, v3

    shr-int/lit8 v4, v0, 0x1f

    and-int/2addr v3, v4

    add-int/2addr v0, v3

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    :cond_5d
    return v2
.end method

.method private ctrAll([I[B[B)V
    .registers 14

    .line 0
    const/4 v0, 0x0

    aget v1, p1, v0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    sub-int/2addr v2, v1

    invoke-static {p2, v1, p3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v0, p3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x1

    :goto_d
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    if-ge v1, v2, :cond_bc

    aget v2, p1, v1

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    sub-int/2addr v3, v2

    add-int/lit8 v4, v3, -0x4

    move v5, v0

    :goto_19
    if-gt v5, v4, :cond_54

    aget-byte v6, p3, v5

    add-int v7, v2, v5

    aget-byte v8, p2, v7

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    add-int/lit8 v6, v5, 0x1

    aget-byte v8, p3, v6

    add-int/lit8 v9, v7, 0x1

    aget-byte v9, p2, v9

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p3, v6

    add-int/lit8 v6, v5, 0x2

    aget-byte v8, p3, v6

    add-int/lit8 v9, v7, 0x2

    aget-byte v9, p2, v9

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p3, v6

    add-int/lit8 v6, v5, 0x3

    aget-byte v8, p3, v6

    add-int/lit8 v7, v7, 0x3

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v8, v7

    int-to-byte v7, v8

    aput-byte v7, p3, v6

    add-int/lit8 v5, v5, 0x4

    goto :goto_19

    :cond_54
    :goto_54
    if-ge v5, v3, :cond_65

    aget-byte v4, p3, v5

    add-int v6, v2, v5

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, p3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_54

    :cond_65
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    add-int/lit8 v2, v2, -0x4

    move v4, v3

    :goto_6a
    if-gt v4, v2, :cond_a5

    aget-byte v5, p3, v4

    sub-int v6, v4, v3

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p3, v4

    add-int/lit8 v5, v4, 0x1

    aget-byte v6, p3, v5

    sub-int v7, v5, v3

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    add-int/lit8 v5, v4, 0x2

    aget-byte v6, p3, v5

    sub-int v7, v5, v3

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    add-int/lit8 v5, v4, 0x3

    aget-byte v6, p3, v5

    sub-int v7, v5, v3

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    add-int/lit8 v4, v4, 0x4

    goto :goto_6a

    :cond_a5
    :goto_a5
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    if-ge v4, v2, :cond_b8

    aget-byte v2, p3, v4

    sub-int v5, v4, v3

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a5

    :cond_b8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_d

    :cond_bc
    return-void
.end method

.method private functionH([B)[B
    .registers 6

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    array-length v2, p1

    const/4 v3, 0x0

    invoke-interface {v1, p1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 p1, p1, 0x2

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->t:I

    invoke-static {v0, p1, p0, v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEUtils;->generateRandomByteArray([BIILorg/bouncycastle/crypto/Xof;)V

    return-object v0
.end method

.method private functionK([B[B[B[B)V
    .registers 9

    .line 0
    const/16 v0, 0x30

    new-array v0, v0, [B

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v2, 0x180

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    array-length p1, p2

    invoke-virtual {v1, p2, v3, p1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    array-length p1, p3

    invoke-virtual {v1, p3, v3, p1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    invoke-virtual {v1, v0, v3}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    invoke-static {v0, v3, p4, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private functionL([B[B[B)V
    .registers 8

    .line 0
    const/16 v0, 0x30

    new-array v0, v0, [B

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v2, 0x180

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    array-length p1, p2

    invoke-virtual {v1, p2, v3, p1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    invoke-virtual {v1, v0, v3}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    invoke-static {v0, v3, p3, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private getColumnFromCompactVersion([I)[I
    .registers 6

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    aget v2, p1, v1

    if-nez v2, :cond_1b

    aput v1, v0, v1

    const/4 v1, 0x1

    :goto_c
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    if-ge v1, v2, :cond_2c

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    sub-int/2addr v2, v1

    aget v2, p1, v2

    sub-int/2addr v3, v2

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1b
    :goto_1b
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    if-ge v1, v2, :cond_2c

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    aget v2, p1, v2

    sub-int/2addr v3, v2

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2c
    return-object v0
.end method

.method private recomputeSyndrome([BI[I[IZ)V
    .registers 9

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    const/4 v1, 0x0

    if-ge p2, v0, :cond_23

    :goto_5
    iget p4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    if-ge v1, p4, :cond_47

    aget p4, p3, v1

    if-gt p4, p2, :cond_16

    sub-int p4, p2, p4

    aget-byte v0, p1, p4

    xor-int/2addr v0, p5

    int-to-byte v0, v0

    aput-byte v0, p1, p4

    goto :goto_20

    :cond_16
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    add-int/2addr v0, p2

    sub-int/2addr v0, p4

    aget-byte p4, p1, v0

    xor-int/2addr p4, p5

    int-to-byte p4, p4

    aput-byte p4, p1, v0

    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_23
    :goto_23
    iget p3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    if-ge v1, p3, :cond_47

    aget p3, p4, v1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    sub-int v2, p2, v0

    if-gt p3, v2, :cond_39

    sub-int v0, p2, v0

    sub-int/2addr v0, p3

    aget-byte p3, p1, v0

    xor-int/2addr p3, p5

    int-to-byte p3, p3

    aput-byte p3, p1, v0

    goto :goto_44

    :cond_39
    sub-int p3, v0, p3

    sub-int v0, p2, v0

    add-int/2addr p3, v0

    aget-byte v0, p1, p3

    xor-int/2addr v0, p5

    int-to-byte v0, v0

    aput-byte v0, p1, p3

    :goto_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_47
    return-void
.end method

.method private splitEBytes([B[B[B)V
    .registers 10

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    and-int/lit8 v0, v0, 0x7

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    add-int/lit8 v3, v1, -0x1

    aget-byte v3, p1, v3

    const/4 v4, -0x1

    shl-int/2addr v4, v0

    int-to-byte v4, v4

    add-int/lit8 v1, v1, -0x1

    not-int v5, v4

    and-int/2addr v5, v3

    int-to-byte v5, v5

    aput-byte v5, p2, v1

    and-int p2, v3, v4

    int-to-byte p2, p2

    :goto_1f
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    if-ge v2, v1, :cond_35

    add-int/2addr v1, v2

    aget-byte v1, p1, v1

    rsub-int/lit8 v3, v0, 0x8

    shl-int v3, v1, v3

    and-int/lit16 p2, p2, 0xff

    ushr-int/2addr p2, v0

    or-int/2addr p2, v3

    int-to-byte p2, p2

    aput-byte p2, p3, v2

    add-int/lit8 v2, v2, 0x1

    move p2, v1

    goto :goto_1f

    :cond_35
    return-void
.end method

.method private threshold(II)I
    .registers 9

    .line 0
    const/16 p0, 0x3023

    if-eq p2, p0, :cond_32

    const/16 p0, 0x6053

    if-eq p2, p0, :cond_25

    const p0, 0xa00d

    if-ne p2, p0, :cond_1f

    const-wide v3, 0x4031e0e560418937L    # 17.8785

    const/16 v5, 0x45

    const-wide v1, 0x3f707a8c0d3f02caL    # 0.00402312

    :goto_19
    move v0, p1

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->thresholdFromParameters(IDDI)I

    move-result p0

    return p0

    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_25
    const-wide v3, 0x402e84816f0068dcL    # 15.2588

    const/16 v5, 0x34

    const-wide v1, 0x3f7590c0ad03d9a9L    # 0.005265

    goto :goto_19

    :cond_32
    const-wide v3, 0x402b0f5c28f5c28fL    # 13.53

    const/16 v5, 0x24

    const-wide v1, 0x3f7c8ee1afb2e092L    # 0.0069722

    goto :goto_19
.end method

.method private static thresholdFromParameters(IDDI)I
    .registers 8

    .line 0
    int-to-double v0, p0

    mul-double/2addr p1, v0

    add-double/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    invoke-static {p5, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private updateNewErrorIndex([BIZ)V
    .registers 5

    .line 0
    if-eqz p2, :cond_10

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    if-eq p2, p0, :cond_10

    if-le p2, p0, :cond_e

    mul-int/lit8 v0, p0, 0x2

    sub-int/2addr v0, p2

    add-int p2, v0, p0

    goto :goto_10

    :cond_e
    sub-int p2, p0, p2

    :cond_10
    :goto_10
    aget-byte p0, p1, p2

    xor-int/2addr p0, p3

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method


# virtual methods
.method public decaps([B[B[B[B[B[B)V
    .registers 14

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    new-array v1, v0, [I

    new-array v0, v0, [I

    invoke-direct {p0, v1, p2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->convertToCompact([I[B)V

    invoke-direct {p0, v0, p3}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->convertToCompact([I[B)V

    invoke-direct {p0, p5, p2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->computeSyndrome([B[B)[B

    move-result-object p2

    invoke-direct {p0, p2, v1, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->BGFDecoder([B[I[I)[B

    move-result-object p2

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    mul-int/lit8 p3, p3, 0x2

    new-array v0, p3, [B

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 p3, p3, 0x2

    const/4 v1, 0x0

    invoke-static {v0, p2, v1, p3}, Lorg/bouncycastle/pqc/crypto/bike/BIKEUtils;->fromBitArrayToByteArray([B[BII)V

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    new-array p3, p2, [B

    new-array p2, p2, [B

    invoke-direct {p0, v0, p3, p2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->splitEBytes([B[B[B)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    new-array v6, v1, [B

    invoke-direct {p0, p3, p2, v6}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->functionL([B[B[B)V

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    invoke-static {p2, p6, v6}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    invoke-direct {p0, v6}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->functionH([B)[B

    move-result-object v3

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R2_BYTE:I

    const/4 v4, 0x0

    const/4 v1, 0x0

    move v2, v5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/util/Arrays;->areEqual([BII[BII)Z

    move-result p2

    if-eqz p2, :cond_4a

    invoke-direct {p0, v6, p5, p6, p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->functionK([B[B[B[B)V

    goto :goto_4d

    :cond_4a
    invoke-direct {p0, p4, p5, p6, p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->functionK([B[B[B[B)V

    :goto_4d
    return-void
.end method

.method public encaps([B[B[B[BLjava/security/SecureRandom;)V
    .registers 12

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    new-array v0, v0, [B

    invoke-virtual {p5, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->functionH([B)[B

    move-result-object p5

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    new-array v2, v1, [B

    new-array v1, v1, [B

    invoke-direct {p0, p5, v2, v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->splitEBytes([B[B[B)V

    iget-object p5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {p5}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->create()[J

    move-result-object p5

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->create()[J

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v4, v2, p5}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->decodeBytes([B[J)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v4, v1, v3}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->decodeBytes([B[J)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->create()[J

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v5, p4, v4}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->decodeBytes([B[J)V

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {p4, v4, v3, v4}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->multiply([J[J[J)V

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {p4, v4, p5, v4}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->add([J[J[J)V

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {p4, v4, p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->encodeBytes([J[B)V

    invoke-direct {p0, v2, v1, p2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->functionL([B[B[B)V

    iget p4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    invoke-static {p4, v0, p2}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->functionK([B[B[B[B)V

    return-void
.end method

.method public genKeyPair([B[B[B[BLjava/security/SecureRandom;)V
    .registers 10

    .line 0
    const/16 v0, 0x40

    new-array v0, v0, [B

    invoke-virtual {p5, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance p5, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x100

    invoke-direct {p5, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    const/4 v2, 0x0

    invoke-interface {p5, v0, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    invoke-static {p1, v1, v3, p5}, Lorg/bouncycastle/pqc/crypto/bike/BIKEUtils;->generateRandomByteArray([BIILorg/bouncycastle/crypto/Xof;)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    invoke-static {p2, v1, v3, p5}, Lorg/bouncycastle/pqc/crypto/bike/BIKEUtils;->generateRandomByteArray([BIILorg/bouncycastle/crypto/Xof;)V

    iget-object p5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {p5}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->create()[J

    move-result-object p5

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->create()[J

    move-result-object v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v3, p1, p5}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->decodeBytes([B[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {p1, p2, v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->decodeBytes([B[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->create()[J

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {p2, p5, p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->inv([J[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {p2, p1, v1, p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->multiply([J[J[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {p2, p1, p4}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->encodeBytes([J[B)V

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    array-length p1, p3

    invoke-static {v0, p0, p3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getSessionKeySize()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    return p0
.end method
