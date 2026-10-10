###### Class org.bouncycastle.pqc.crypto.gemss.GeMSSEngine (org.bouncycastle.pqc.crypto.gemss.GeMSSEngine)
.class Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;
    }
.end annotation


# instance fields
.field final ACCESS_last_equations8:I

.field Buffer_NB_WORD_GFqn:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

.field Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

.field final ENABLED_REMOVE_ODD_DEGREE:Z

.field final HFEDELTA:I

.field final HFEDeg:I

.field final HFEDegI:I

.field final HFEDegJ:I

.field final HFENr8:I

.field final HFENr8c:I

.field HFE_odd_degree:I

.field final HFEm:I

.field final HFEmq:I

.field final HFEmq8:I

.field final HFEmr:I

.field final HFEmr8:I

.field final HFEn:I

.field HFEn1h_rightmost:I

.field HFEn_1rightmost:I

.field final HFEnq:I

.field final HFEnr:I

.field final HFEnv:I

.field final HFEnvq:I

.field final HFEnvr:I

.field final HFEnvr8:I

.field final HFEv:I

.field final HFEvq:I

.field final HFEvr:I

.field II:I

.field KP:I

.field KX:I

.field final LEN_UNROLLED_64:I

.field final LOST_BITS:I

.field LTRIANGULAR_NV_SIZE:I

.field final LTRIANGULAR_N_SIZE:I

.field final MASK_GF2m:J

.field final MASK_GF2n:J

.field final MATRIXn_SIZE:I

.field final MATRIXnv_SIZE:I

.field final MLv_GFqn_SIZE:I

.field MQv_GFqn_SIZE:I

.field final NB_BITS_UINT:I

.field final NB_BYTES_EQUATION:I

.field final NB_BYTES_GFqm:I

.field final NB_BYTES_GFqn:I

.field final NB_BYTES_GFqnv:I

.field NB_COEFS_HFEPOLY:I

.field final NB_ITE:I

.field NB_MONOMIAL_PK:I

.field NB_MONOMIAL_VINEGAR:I

.field NB_UINT_HFEVPOLY:I

.field NB_WORD_GF2m:I

.field NB_WORD_GF2nv:I

.field final NB_WORD_GF2nvm:I

.field NB_WORD_GFqn:I

.field final NB_WORD_GFqv:I

.field NB_WORD_MMUL:I

.field final NB_WORD_MUL:I

.field final NB_WORD_UNCOMP_EQ:I

.field POW_II:I

.field final SIZE_DIGEST:I

.field final SIZE_DIGEST_UINT:I

.field final SIZE_ROW:I

.field final SIZE_SEED_SK:I

.field final SIZE_SIGN_UNCOMPRESSED:I

.field final Sha3BitStrength:I

.field final ShakeBitStrength:I

.field final VAL_BITS_M:I

.field private buffer:I

.field mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

.field private random:Ljava/security/SecureRandom;

.field rem:Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;

.field sha3Digest:Lorg/bouncycastle/crypto/digests/SHA3Digest;


# direct methods
.method public constructor <init>(IIIIIIII)V
    .registers 44

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v9, 0x40

    iput v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BITS_UINT:I

    const/4 v10, 0x4

    iput v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LEN_UNROLLED_64:I

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    iput v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDELTA:I

    iput v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_ITE:I

    iput v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    iput v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    iput v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegJ:I

    ushr-int/lit8 v11, v2, 0x3

    and-int/lit8 v12, v2, 0x7

    if-eqz v12, :cond_32

    const/4 v12, 0x1

    goto :goto_33

    :cond_32
    const/4 v12, 0x0

    :goto_33
    add-int/2addr v11, v12

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqn:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_ROW:I

    add-int v12, v2, v3

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    ushr-int/lit8 v15, v2, 0x6

    iput v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnq:I

    and-int/lit8 v10, v2, 0x3f

    iput v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnr:I

    ushr-int/lit8 v13, v12, 0x6

    iput v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    and-int/lit8 v9, v12, 0x3f

    iput v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    ushr-int/lit8 v14, v1, 0x3

    iput v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_SEED_SK:I

    add-int/lit8 v14, v2, -0x1

    shl-int/lit8 v19, v14, 0x1

    move/from16 v28, v14

    const/4 v14, 0x6

    ushr-int/lit8 v19, v19, 0x6

    const/16 v20, 0x1

    add-int/lit8 v14, v19, 0x1

    iput v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_MUL:I

    const/16 v1, 0x9

    const/4 v5, 0x6

    if-eq v14, v5, :cond_8f

    if-eq v14, v1, :cond_89

    const/16 v5, 0x11

    if-eq v14, v5, :cond_83

    const/16 v5, 0xc

    if-eq v14, v5, :cond_7d

    const/16 v5, 0xd

    if-eq v14, v5, :cond_75

    goto :goto_95

    :cond_75
    new-instance v5, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul13;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul13;-><init>()V

    :goto_7a
    iput-object v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    goto :goto_95

    :cond_7d
    new-instance v5, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul12;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul12;-><init>()V

    goto :goto_7a

    :cond_83
    new-instance v5, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul17;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul17;-><init>()V

    goto :goto_7a

    :cond_89
    new-instance v5, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul9;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul9;-><init>()V

    goto :goto_7a

    :cond_8f
    new-instance v5, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul6;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul6;-><init>()V

    goto :goto_7a

    :goto_95
    rsub-int/lit8 v5, v10, 0x40

    sub-int v1, v2, v4

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEm:I

    move/from16 v24, v5

    ushr-int/lit8 v5, v1, 0x6

    iput v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq:I

    move/from16 v25, v5

    and-int/lit8 v5, v1, 0x3f

    iput v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr:I

    move/from16 v26, v11

    ushr-int/lit8 v11, v3, 0x6

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEvq:I

    and-int/lit8 v8, v3, 0x3f

    iput v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEvr:I

    if-eqz v8, :cond_b5

    add-int/lit8 v11, v11, 0x1

    :cond_b5
    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqv:I

    ushr-int/lit8 v8, v1, 0x3

    iput v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    and-int/lit8 v1, v1, 0x7

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    if-eqz v1, :cond_c3

    const/4 v11, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v11, 0x0

    :goto_c4
    add-int/2addr v11, v8

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqm:I

    add-int/lit8 v11, v13, 0x1

    mul-int/2addr v11, v13

    const/16 v27, 0x1

    ushr-int/lit8 v11, v11, 0x1

    const/16 v18, 0x40

    mul-int/lit8 v11, v11, 0x40

    add-int/lit8 v29, v13, 0x1

    mul-int v29, v29, v9

    add-int v11, v11, v29

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_UNCOMP_EQ:I

    and-int/lit8 v11, v12, 0x7

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr8:I

    ushr-int/lit8 v29, v12, 0x3

    if-eqz v11, :cond_e4

    const/4 v11, 0x1

    goto :goto_e5

    :cond_e4
    const/4 v11, 0x0

    :goto_e5
    add-int v11, v29, v11

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqnv:I

    add-int/2addr v4, v3

    rsub-int/lit8 v11, v1, 0x8

    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->VAL_BITS_M:I

    invoke-static {v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;->maskUINT(I)J

    move-result-wide v6

    iput-wide v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2m:J

    invoke-static {v10}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;->maskUINT(I)J

    move-result-wide v6

    iput-wide v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2n:J

    if-eqz v10, :cond_102

    const/4 v4, 0x1

    goto :goto_103

    :cond_102
    const/4 v4, 0x0

    :goto_103
    add-int/2addr v4, v15

    iput v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    add-int/lit8 v11, v15, 0x1

    mul-int/2addr v15, v11

    const/4 v11, 0x1

    ushr-int/2addr v15, v11

    const/16 v11, 0x40

    mul-int/2addr v15, v11

    mul-int v11, v4, v10

    add-int/2addr v15, v11

    iput v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_N_SIZE:I

    mul-int v11, v2, v4

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MATRIXn_SIZE:I

    if-eqz v9, :cond_11b

    const/4 v11, 0x1

    goto :goto_11c

    :cond_11b
    const/4 v11, 0x0

    :goto_11c
    add-int/2addr v11, v13

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    mul-int v15, v12, v11

    iput v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MATRIXnv_SIZE:I

    add-int/lit8 v15, v13, 0x1

    mul-int/2addr v13, v15

    const/4 v15, 0x1

    ushr-int/2addr v13, v15

    const/16 v18, 0x40

    mul-int/lit8 v13, v13, 0x40

    mul-int/2addr v9, v11

    add-int/2addr v13, v9

    iput v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_NV_SIZE:I

    add-int/lit8 v9, v3, 0x1

    mul-int v13, v3, v9

    ushr-int/2addr v13, v15

    add-int/2addr v13, v15

    iput v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_VINEGAR:I

    add-int/lit8 v27, v12, 0x1

    mul-int v12, v12, v27

    ushr-int/2addr v12, v15

    add-int/lit8 v15, v12, 0x1

    iput v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    mul-int/2addr v13, v4

    iput v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MQv_GFqn_SIZE:I

    mul-int/2addr v8, v15

    iput v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ACCESS_last_equations8:I

    const/16 v4, 0x8

    add-int/2addr v12, v4

    const/4 v8, 0x3

    ushr-int/2addr v12, v8

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_EQUATION:I

    and-int/lit8 v12, v15, 0x7

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFENr8:I

    rsub-int/lit8 v12, v12, 0x8

    and-int/lit8 v12, v12, 0x7

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFENr8c:I

    const/4 v13, 0x1

    sub-int/2addr v1, v13

    mul-int/2addr v1, v12

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOST_BITS:I

    iput v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_MMUL:I

    const/16 v1, 0xae

    const/16 v12, 0x220

    const/16 v13, 0x192

    const/16 v15, 0x166

    const/16 v8, 0x162

    const/16 v30, 0x2

    const/16 v4, 0x80

    if-eq v2, v1, :cond_1f4

    const/16 v1, 0xaf

    if-eq v2, v1, :cond_1f1

    const/16 v1, 0xb1

    if-eq v2, v1, :cond_1ed

    const/16 v1, 0xb2

    if-eq v2, v1, :cond_1e9

    const/16 v1, 0x109

    if-eq v2, v1, :cond_1e6

    const/16 v1, 0x10a

    if-eq v2, v1, :cond_1e3

    const/16 v1, 0x10c

    if-eq v2, v1, :cond_1e0

    if-eq v2, v8, :cond_1dd

    if-eq v2, v15, :cond_1da

    const/16 v1, 0x16c

    if-eq v2, v1, :cond_1d6

    const/16 v1, 0x16e

    if-eq v2, v1, :cond_1d3

    if-eq v2, v13, :cond_1d0

    const/16 v1, 0x219

    if-eq v2, v1, :cond_1c9

    if-eq v2, v12, :cond_1c4

    const/16 v1, 0x10e

    if-eq v2, v1, :cond_1c1

    const/16 v1, 0x10f

    if-ne v2, v1, :cond_1aa

    const/16 v1, 0x3a

    :goto_1a5
    move v13, v1

    const/4 v1, 0x0

    :goto_1a7
    const/16 v19, 0x0

    goto :goto_1f8

    :cond_1aa
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: need to add support for HFEn="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c1
    const/16 v1, 0x35

    goto :goto_1a5

    :cond_1c4
    move v13, v4

    const/4 v1, 0x1

    const/16 v19, 0x3

    goto :goto_1f8

    :cond_1c9
    const/16 v1, 0xa

    move v13, v1

    move/from16 v19, v30

    const/4 v1, 0x1

    goto :goto_1f8

    :cond_1d0
    const/16 v1, 0xab

    goto :goto_1a5

    :cond_1d3
    const/16 v1, 0x1d

    goto :goto_1a5

    :cond_1d6
    const/4 v1, 0x0

    const/16 v13, 0x9

    goto :goto_1a7

    :cond_1da
    const/16 v1, 0x39

    goto :goto_1a5

    :cond_1dd
    const/16 v1, 0x63

    goto :goto_1a5

    :cond_1e0
    const/16 v1, 0x19

    goto :goto_1a5

    :cond_1e3
    const/16 v1, 0x2f

    goto :goto_1a5

    :cond_1e6
    const/16 v1, 0x2a

    goto :goto_1a5

    :cond_1e9
    const/4 v1, 0x0

    const/16 v13, 0x1f

    goto :goto_1a7

    :cond_1ed
    const/4 v1, 0x0

    const/16 v13, 0x8

    goto :goto_1a7

    :cond_1f1
    const/16 v1, 0x10

    goto :goto_1a5

    :cond_1f4
    const/4 v1, 0x0

    const/16 v13, 0xd

    goto :goto_1a7

    :goto_1f8
    if-eqz v19, :cond_1ff

    rsub-int/lit8 v31, v1, 0x40

    rsub-int/lit8 v32, v19, 0x40

    goto :goto_203

    :cond_1ff
    const/16 v31, 0x0

    const/16 v32, 0x0

    :goto_203
    and-int/lit8 v33, v13, 0x3f

    const/16 v18, 0x40

    rsub-int/lit8 v33, v33, 0x40

    move/from16 v15, p6

    and-int/lit8 v34, v15, 0x1

    if-nez v34, :cond_246

    const/4 v8, 0x1

    iput-boolean v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ENABLED_REMOVE_ODD_DEGREE:Z

    shl-int v27, v8, p7

    add-int/lit8 v12, v27, 0x1

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFE_odd_degree:I

    if-nez v34, :cond_23e

    if-gt v12, v15, :cond_236

    if-le v12, v8, :cond_22e

    add-int/lit8 v12, p8, 0x2

    add-int/lit8 v27, p7, -0x1

    mul-int v27, v27, p7

    ushr-int/lit8 v30, v27, 0x1

    add-int v12, v12, v30

    add-int v12, v12, p7

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_COEFS_HFEPOLY:I

    const/4 v8, 0x0

    goto :goto_255

    :cond_22e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The case where the term X^3 is removing is not implemented."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "It is useless to remove 0 term."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HFEDeg is odd, so to remove the leading term would decrease the degree."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_246
    const/4 v8, 0x0

    iput-boolean v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ENABLED_REMOVE_ODD_DEGREE:Z

    add-int/lit8 v12, p8, 0x2

    mul-int v17, p7, v26

    const/16 v27, 0x1

    ushr-int/lit8 v17, v17, 0x1

    add-int v12, v12, v17

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_COEFS_HFEPOLY:I

    :goto_255
    if-eqz v5, :cond_259

    const/4 v12, 0x1

    goto :goto_25a

    :cond_259
    move v12, v8

    :goto_25a
    add-int v12, v25, v12

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    sub-int v12, v11, v12

    if-eqz v5, :cond_264

    const/4 v5, 0x1

    goto :goto_265

    :cond_264
    move v5, v8

    :goto_265
    add-int/2addr v12, v5

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nvm:I

    const/4 v5, 0x1

    add-int/lit8 v17, p5, -0x1

    mul-int v17, v17, v12

    add-int v11, v11, v17

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_SIGN_UNCOMPRESSED:I

    const/16 v5, 0x20

    const/16 v11, 0x100

    move/from16 v12, p1

    if-gt v12, v4, :cond_283

    iput v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST:I

    const/4 v12, 0x4

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    iput v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ShakeBitStrength:I

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Sha3BitStrength:I

    goto :goto_2a2

    :cond_283
    const/16 v8, 0xc0

    if-gt v12, v8, :cond_295

    const/16 v8, 0x30

    iput v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST:I

    const/4 v8, 0x6

    iput v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ShakeBitStrength:I

    const/16 v8, 0x180

    :goto_292
    iput v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Sha3BitStrength:I

    goto :goto_2a2

    :cond_295
    const/16 v8, 0x40

    iput v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST:I

    const/16 v8, 0x8

    iput v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ShakeBitStrength:I

    const/16 v8, 0x200

    goto :goto_292

    :goto_2a2
    new-instance v8, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Sha3BitStrength:I

    invoke-direct {v8, v12}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    iput-object v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sha3Digest:Lorg/bouncycastle/crypto/digests/SHA3Digest;

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_COEFS_HFEPOLY:I

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_VINEGAR:I

    const/16 v25, 0x1

    add-int/lit8 v12, v12, -0x1

    add-int/2addr v8, v12

    mul-int v3, v3, v26

    add-int/2addr v8, v3

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v8, v3

    iput v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_UINT_HFEVPOLY:I

    mul-int/2addr v9, v3

    iput v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MLv_GFqn_SIZE:I

    const/16 v3, 0x22

    if-le v15, v3, :cond_2c9

    const/16 v3, 0xc4

    if-le v2, v3, :cond_2ed

    if-ge v15, v11, :cond_2ed

    :cond_2c9
    const/16 v3, 0x11

    if-ne v15, v3, :cond_2d1

    const/4 v3, 0x4

    :goto_2ce
    iput v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->II:I

    goto :goto_2d3

    :cond_2d1
    const/4 v3, 0x6

    goto :goto_2ce

    :goto_2d3
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->II:I

    const/4 v8, 0x1

    shl-int v9, v8, v3

    iput v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->POW_II:I

    ushr-int v3, v15, v3

    rem-int v8, v15, v9

    if-eqz v8, :cond_2e3

    const/16 v17, 0x1

    goto :goto_2e5

    :cond_2e3
    const/16 v17, 0x0

    :goto_2e5
    add-int v3, v3, v17

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->KP:I

    sub-int v3, v15, v3

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->KX:I

    :cond_2ed
    if-eqz v19, :cond_328

    const/16 v3, 0x220

    if-ne v2, v3, :cond_30e

    if-ne v13, v4, :cond_30e

    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;

    move-object/from16 v16, v3

    move/from16 v17, v1

    move/from16 v18, v19

    move/from16 v19, v10

    move/from16 v20, v24

    move/from16 v21, v31

    move/from16 v22, v32

    move-wide/from16 v23, v6

    invoke-direct/range {v16 .. v24}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;-><init>(IIIIIIJ)V

    :goto_30a
    iput-object v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem:Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;

    goto/16 :goto_3ce

    :cond_30e
    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;

    move-object/from16 v16, v3

    move/from16 v17, v1

    move/from16 v18, v19

    move/from16 v19, v13

    move/from16 v20, v10

    move/from16 v21, v24

    move/from16 v22, v31

    move/from16 v23, v32

    move/from16 v24, v33

    move-wide/from16 v25, v6

    invoke-direct/range {v16 .. v26}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;-><init>(IIIIIIIIJ)V

    goto :goto_30a

    :cond_328
    if-le v2, v11, :cond_349

    const/16 v1, 0x121

    if-ge v2, v1, :cond_349

    if-le v13, v5, :cond_349

    const/16 v1, 0x40

    if-ge v13, v1, :cond_349

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;

    move-object/from16 v16, v1

    move/from16 v17, v13

    move/from16 v18, v10

    move/from16 v19, v24

    move/from16 v20, v33

    move-wide/from16 v21, v6

    invoke-direct/range {v16 .. v22}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;-><init>(IIIIJ)V

    :goto_345
    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem:Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;

    goto/16 :goto_3ce

    :cond_349
    const/16 v1, 0x162

    if-ne v2, v1, :cond_35f

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;

    move-object/from16 v16, v1

    move/from16 v17, v13

    move/from16 v18, v10

    move/from16 v19, v24

    move/from16 v20, v33

    move-wide/from16 v21, v6

    invoke-direct/range {v16 .. v22}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;-><init>(IIIIJ)V

    goto :goto_345

    :cond_35f
    const/16 v1, 0x166

    if-ne v2, v1, :cond_375

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED358_TRINOMIAL_GF2X;

    move-object/from16 v16, v1

    move/from16 v17, v13

    move/from16 v18, v10

    move/from16 v19, v24

    move/from16 v20, v33

    move-wide/from16 v21, v6

    invoke-direct/range {v16 .. v22}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED358_TRINOMIAL_GF2X;-><init>(IIIIJ)V

    goto :goto_345

    :cond_375
    const/16 v1, 0x192

    if-ne v2, v1, :cond_38b

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;

    move-object/from16 v16, v1

    move/from16 v17, v13

    move/from16 v18, v10

    move/from16 v19, v24

    move/from16 v20, v33

    move-wide/from16 v21, v6

    invoke-direct/range {v16 .. v22}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;-><init>(IIIIJ)V

    goto :goto_345

    :cond_38b
    const/4 v1, 0x6

    if-eq v14, v1, :cond_3bb

    const/16 v1, 0x9

    if-eq v14, v1, :cond_3a9

    const/16 v1, 0xc

    if-eq v14, v1, :cond_397

    goto :goto_3ce

    :cond_397
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;

    move-object/from16 v16, v1

    move/from16 v17, v13

    move/from16 v18, v10

    move/from16 v19, v24

    move/from16 v20, v33

    move-wide/from16 v21, v6

    invoke-direct/range {v16 .. v22}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;-><init>(IIIIJ)V

    goto :goto_345

    :cond_3a9
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;

    move-object/from16 v16, v1

    move/from16 v17, v13

    move/from16 v18, v10

    move/from16 v19, v24

    move/from16 v20, v33

    move-wide/from16 v21, v6

    invoke-direct/range {v16 .. v22}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;-><init>(IIIIJ)V

    goto :goto_345

    :cond_3bb
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;

    move-object/from16 v16, v1

    move/from16 v17, v13

    move/from16 v18, v10

    move/from16 v19, v24

    move/from16 v20, v33

    move-wide/from16 v21, v6

    invoke-direct/range {v16 .. v22}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;-><init>(IIIIJ)V

    goto/16 :goto_345

    :goto_3ce
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v1, v14}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_GFqn:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    const/16 v1, 0x1f

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn_1rightmost:I

    :goto_3e2
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn_1rightmost:I

    ushr-int v4, v28, v3

    if-nez v4, :cond_3ed

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn_1rightmost:I

    goto :goto_3e2

    :cond_3ed
    const/4 v3, 0x1

    add-int/2addr v2, v3

    ushr-int/2addr v2, v3

    :goto_3f0
    iput v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn1h_rightmost:I

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn1h_rightmost:I

    ushr-int v4, v2, v1

    if-nez v4, :cond_3fb

    add-int/lit8 v1, v1, -0x1

    goto :goto_3f0

    :cond_3fb
    sub-int/2addr v1, v3

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn1h_rightmost:I

    return-void
.end method

.method private CMP_AND_SWAP_CST_TIME(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .registers 18

    .line 0
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    add-int/lit8 v3, v3, -0x1

    const-wide/16 v4, 0x0

    move-wide v6, v4

    move-wide v8, v6

    :goto_c
    if-lez v3, :cond_20

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v10

    invoke-virtual {p1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v12

    xor-long/2addr v10, v12

    invoke-static {v10, v11}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;->ORBITS_UINT(J)J

    move-result-wide v10

    or-long/2addr v6, v10

    add-long/2addr v8, v6

    add-int/lit8 v3, v3, -0x1

    goto :goto_c

    :cond_20
    const/4 v3, 0x0

    :goto_21
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    if-ge v3, v6, :cond_3d

    int-to-long v6, v3

    xor-long/2addr v6, v8

    invoke-static {v6, v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;->NORBITS_UINT(J)J

    move-result-wide v6

    neg-long v6, v6

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v10

    invoke-virtual {p1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;->CMP_LT_UINT(JJ)J

    move-result-wide v10

    and-long/2addr v6, v10

    or-long/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_3d
    neg-long v3, v4

    move-object/from16 v0, p3

    move-object v1, p1

    move-object/from16 v2, p2

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeFromXorAndMask_xor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;JI)V

    return-void
.end method

.method private LOOPIR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IIIIZ)V
    .registers 22

    .line 0
    const/4 v0, 0x0

    move/from16 v1, p4

    :goto_3
    if-ge v0, v1, :cond_38

    new-instance v9, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    move-object/from16 v10, p3

    invoke-direct {v9, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 v2, 0x1

    move/from16 v12, p5

    move v11, v2

    :goto_10
    if-gt v11, v12, :cond_21

    const/16 v6, 0x40

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v9

    move/from16 v7, p7

    move v8, v11

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPJR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;III)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_21
    if-eqz p8, :cond_2f

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v9

    move/from16 v6, p6

    move/from16 v7, p7

    move v8, v11

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPJR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;III)V

    :cond_2f
    move-object v2, p2

    move/from16 v3, p7

    invoke-virtual {p2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_38
    return-void
.end method

.method private LOOPIR_INIT(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .registers 15

    .line 0
    :goto_0
    if-ge p5, p6, :cond_1d

    const/4 v0, 0x0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    invoke-virtual {p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 v6, 0x0

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPK_COMPLETE(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-virtual {p4, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_1d
    return-void
.end method

.method private LOOPIR_LOOPK_COMPLETE(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .registers 12

    .line 0
    :goto_0
    if-ge p4, p5, :cond_f

    const/4 v4, 0x0

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPK_COMPLETE(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_f
    return-void
.end method

.method private LOOPJR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;III)V
    .registers 10

    .line 0
    invoke-static {p5, p6}, Ljava/lang/Math;->min(II)I

    move-result p0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(J)V

    const/4 p5, 0x0

    move v0, p5

    :goto_b
    if-ge v0, p4, :cond_1f

    invoke-virtual {p2, p5, p3, p5, p0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getDotProduct(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;->XORBITS_UINT(J)J

    move-result-wide v1

    shl-long/2addr v1, v0

    invoke-virtual {p1, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(J)V

    invoke-virtual {p3, p6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1f
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->moveIncremental()V

    return-void
.end method

.method private LOOPJR_NOCST_64(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;IIJII)J
    .registers 13

    .line 0
    :goto_0
    if-ge p3, p4, :cond_17

    const-wide/16 v0, 0x1

    and-long/2addr v0, p5

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_f

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p2, p0, p8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(ILorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V

    :cond_f
    invoke-virtual {p2, p7}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    const/4 p0, 0x1

    ushr-long/2addr p5, p0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_17
    return-wide p5
.end method

.method private LOOPJR_UNROLLED_64(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;IIJII)V
    .registers 22

    .line 0
    move/from16 v3, p3

    move-wide/from16 v9, p5

    :goto_4
    add-int/lit8 v0, p4, -0x3

    if-ge v3, v0, :cond_18

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-direct/range {v4 .. v12}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPJR_NOCST_64(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;IIJII)J

    move-result-wide v9

    add-int/lit8 v3, v3, 0x4

    goto :goto_4

    :cond_18
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v4, p4

    move-wide v5, v9

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPJR_NOCST_64(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;IIJII)J

    return-void
.end method

.method private LOOPKR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;JII)V
    .registers 10

    .line 0
    :goto_0
    if-ge p5, p6, :cond_10

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    const-wide/16 v1, 0x1

    and-long/2addr v1, p3

    neg-long v1, v1

    invoke-virtual {p2, p1, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMaskMove(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    const/4 v0, 0x1

    ushr-long/2addr p3, v0

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_10
    return-void
.end method

.method private LOOPK_COMPLETE(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .registers 13

    .line 0
    :goto_0
    if-ge p4, p5, :cond_12

    invoke-virtual {p2, p4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v3

    const/4 v5, 0x0

    const/16 v6, 0x40

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPKR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;JII)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_12
    iget p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-eqz p4, :cond_23

    invoke-virtual {p2, p5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v3

    const/4 v5, 0x0

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPKR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;JII)V

    :cond_23
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    return-void
.end method

.method private chooseRootHFE_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)I
    .registers 20

    .line 0
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v7, p2

    move-object/from16 v10, p3

    new-instance v11, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    invoke-direct {v11, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v12, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    const/4 v13, 0x1

    shl-int/2addr v0, v13

    sub-int/2addr v0, v13

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v0, v1

    invoke-direct {v12, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v14, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    add-int/2addr v0, v13

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v0, v1

    invoke-direct {v14, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v15, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v15, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;->poly:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v15, v0, v10, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeFromXor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    const/16 v1, 0x22

    const-wide/16 v5, 0x1

    if-le v0, v1, :cond_6e

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    const/16 v2, 0xc4

    if-le v1, v2, :cond_48

    const/16 v1, 0x100

    if-ge v0, v1, :cond_48

    goto :goto_6e

    :cond_48
    const/4 v0, 0x2

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    shl-int v3, v0, v1

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v0, v3

    invoke-virtual {v12, v0, v5, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    iget v4, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v3

    move-object/from16 v5, p2

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->divsqr_r_HFE_cstdeg_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IIILorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    add-int/lit8 v2, v0, 0x1

    iget v3, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    move-object/from16 v0, p0

    move-object/from16 v4, p2

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_sqr_divsqr(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IILorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    goto :goto_71

    :cond_6e
    :goto_6e
    invoke-direct {v8, v12, v7, v15}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->frobeniusMap_multisqr_HFE_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    :goto_71
    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    const-wide/16 v1, 0x1

    invoke-virtual {v12, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v0

    iget-object v3, v7, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;->poly:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v4, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v14, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-direct {v8, v14, v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_copy_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;)V

    invoke-virtual {v14, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    iget v3, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v0, v3

    invoke-virtual {v14, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v14, v10, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    sub-int/2addr v1, v13

    invoke-virtual {v12, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getD_for_not0_or_plus(II)I

    move-result v0

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    invoke-direct {v8, v14, v1, v12, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->gcd_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)I

    move-result v15

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->buffer:I

    if-eqz v0, :cond_ac

    invoke-virtual {v12, v14}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->swap(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    :cond_ac
    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    const/4 v7, 0x0

    invoke-virtual {v12, v7, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->is0_gf2n(II)I

    move-result v0

    if-nez v0, :cond_b6

    return v7

    :cond_b6
    invoke-direct {v8, v14, v15}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->convMonic_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    new-instance v12, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v0, v15

    invoke-direct {v12, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    invoke-direct {v8, v12, v14, v15}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->findRootsSplit_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    if-ne v15, v13, :cond_cc

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v9, v12, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    goto :goto_fb

    :cond_cc
    invoke-virtual {v8, v12, v15}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->fast_sort_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Sha3BitStrength:I

    ushr-int/lit8 v3, v0, 0x3

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqn:I

    invoke-virtual {v10, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->toBytes(I)[B

    move-result-object v4

    iget v6, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqn:I

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Sha3BitStrength:I

    ushr-int/lit8 v0, v0, 0x3

    new-array v10, v0, [B

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move v13, v7

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->getSHA3Hash(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II[BII[B)V

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get()J

    move-result-wide v0

    int-to-long v2, v15

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->remainderUnsigned(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v0, v1

    invoke-virtual {v9, v13, v12, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    :goto_fb
    return v15
.end method

.method private choose_LOOPJR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;IJII)V
    .registers 17

    .line 0
    move-object v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    const/16 v1, 0x8

    if-ge v4, v1, :cond_12

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v5, p4

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPJR_NOCST_64(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;IIJII)J

    goto :goto_1c

    :cond_12
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v5, p4

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPJR_UNROLLED_64(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;IIJII)V

    :goto_1c
    return-void
.end method

.method private convMQ_last_uncompressL_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)J
    .registers 13

    .line 0
    new-instance v6, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    invoke-direct {v6, p2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    add-int/lit8 v0, v0, -0x1

    ushr-int/lit8 v4, v0, 0x6

    and-int/lit8 v0, v0, 0x3f

    invoke-direct {p0, p1, v6, v4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_setpk2_end_move_plus(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;I)I

    move-result v3

    if-eqz v0, :cond_1c

    add-int/lit8 v5, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->setPk2Value(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;III)I

    move-result v3

    :cond_1c
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOST_BITS:I

    sub-int v2, v0, v1

    ushr-int/lit8 v4, v2, 0x6

    and-int/lit8 v2, v2, 0x3f

    const/16 v5, 0x40

    if-eqz v2, :cond_a9

    and-int/lit8 v7, v3, 0x3f

    if-eqz v7, :cond_8d

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    sub-int v9, v8, v1

    add-int/lit8 v9, v9, 0x7

    ushr-int/lit8 v9, v9, 0x3

    and-int/lit8 v9, v9, 0x7

    if-eqz v9, :cond_73

    sub-int/2addr v8, v1

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    sub-int/2addr v8, p0

    and-int/lit8 p0, v8, 0x3f

    rsub-int/lit8 p0, p0, 0x40

    and-int/lit8 p0, p0, 0x3f

    sub-int/2addr v0, p0

    ushr-int/lit8 p0, v0, 0x6

    invoke-virtual {p1, v6, p0, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangePointerUnion_Check(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V

    invoke-virtual {v6, p0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getWithCheck(I)J

    move-result-wide v0

    ushr-long/2addr v0, v7

    invoke-virtual {p1, p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    if-ge p0, v4, :cond_67

    add-int/lit8 v0, p0, 0x1

    invoke-virtual {v6, v0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getWithCheck(I)J

    move-result-wide v1

    rsub-int/lit8 v3, v7, 0x40

    shl-long v3, v1, v3

    invoke-virtual {p1, p0, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    ushr-long/2addr v1, v7

    invoke-virtual {p1, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    goto/16 :goto_d5

    :cond_67
    add-int/2addr v2, v7

    if-le v2, v5, :cond_d5

    add-int/lit8 v0, p0, 0x1

    invoke-virtual {v6, v0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getWithCheck(I)J

    move-result-wide v0

    sub-int/2addr v5, v7

    shl-long/2addr v0, v5

    goto :goto_ce

    :cond_73
    invoke-virtual {p1, v6, v4, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangePointerUnion(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V

    invoke-virtual {v6, v4}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->get(I)J

    move-result-wide v0

    ushr-long/2addr v0, v7

    invoke-virtual {p1, v4, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    add-int/2addr v2, v7

    if-le v2, v5, :cond_d5

    add-int/lit8 p0, v4, 0x1

    invoke-virtual {v6, p0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->get(I)J

    move-result-wide v0

    sub-int/2addr v5, v7

    shl-long/2addr v0, v5

    invoke-virtual {p1, v4, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    goto :goto_d5

    :cond_8d
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    sub-int/2addr p0, v1

    add-int/lit8 p0, p0, 0x7

    ushr-int/lit8 p0, p0, 0x3

    and-int/lit8 p0, p0, 0x7

    if-eqz p0, :cond_a3

    invoke-virtual {p1, v6, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangePointerUnion(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;I)V

    invoke-virtual {v6, v4}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getWithCheck(I)J

    move-result-wide v0

    invoke-virtual {p1, v4, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    goto :goto_d5

    :cond_a3
    add-int/lit8 v4, v4, 0x1

    :cond_a5
    invoke-virtual {p1, v6, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangePointerUnion(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;I)V

    goto :goto_d5

    :cond_a9
    if-eqz v4, :cond_d5

    and-int/lit8 v0, v3, 0x3f

    if-eqz v0, :cond_a5

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    sub-int/2addr p0, v1

    add-int/lit8 p0, p0, 0x7

    ushr-int/lit8 p0, p0, 0x3

    and-int/lit8 p0, p0, 0x7

    if-eqz p0, :cond_d2

    add-int/lit8 p0, v4, -0x1

    invoke-virtual {p1, v6, p0, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangePointerUnion(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V

    invoke-virtual {v6, p0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->get(I)J

    move-result-wide v1

    ushr-long/2addr v1, v0

    invoke-virtual {p1, p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    invoke-virtual {v6, v4}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getWithCheck(I)J

    move-result-wide v1

    sub-int/2addr v5, v0

    shl-long v0, v1, v5

    :goto_ce
    invoke-virtual {p1, p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    goto :goto_d5

    :cond_d2
    invoke-virtual {p1, v6, v4, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangePointerUnion(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V

    :cond_d5
    :goto_d5
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->get()J

    move-result-wide p0

    const-wide/16 v0, 0x1

    and-long/2addr p0, v0

    return-wide p0
.end method

.method private convMQ_uncompressL_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)J
    .registers 9

    .line 0
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    invoke-direct {v2, p2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    invoke-direct {p0, p1, v2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_setpk2_end_move_plus(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;I)I

    move-result v3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-eqz v0, :cond_18

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    add-int/lit8 v5, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->setPk2Value(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;III)I

    :cond_18
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->get()J

    move-result-wide p0

    const-wide/16 v0, 0x1

    and-long/2addr p0, v0

    return-wide p0
.end method

.method private convMonic_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .registers 7

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v2, p2

    invoke-virtual {p1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->inv_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set1_gf2n(II)V

    add-int/lit8 p2, p2, -0x1

    :goto_1c
    const/4 v2, -0x1

    if-eq p2, v2, :cond_2b

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    neg-int v2, v2

    invoke-virtual {p1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    invoke-virtual {p0, p1, p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1c

    :cond_2b
    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    return-void
.end method

.method private copy_for_casct(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .registers 9

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    :goto_5
    const/4 p2, 0x1

    if-le p6, p2, :cond_16

    add-int p2, p7, p6

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr p2, v0

    invoke-virtual {p4, p3, p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-direct {p0, p1, p4, p5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->CMP_AND_SWAP_CST_TIME(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    ushr-int/lit8 p6, p6, 0x1

    goto :goto_5

    :cond_16
    return-void
.end method

.method private copy_move_matrix_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .registers 5

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, v0, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    add-int/lit8 p0, p0, 0x1

    mul-int/2addr p1, p0

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    return-void
.end method

.method private div_q_monic_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .registers 13

    .line 0
    new-instance v6, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    new-instance v7, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    :goto_a
    if-lt p2, p4, :cond_37

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, p4, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->searchDegree(III)I

    move-result p2

    if-ge p2, p4, :cond_15

    goto :goto_37

    :cond_15
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v0, p2

    invoke-virtual {v6, p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    shl-int/lit8 v0, p4, 0x1

    sub-int/2addr v0, p2

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int v0, p2, p4

    add-int/2addr v0, v4

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v0, v1

    invoke-virtual {v7, p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    move-object v0, p0

    move-object v1, v7

    move-object v2, v6

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_mul_rem_xor_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_a

    :cond_37
    :goto_37
    return-void
.end method

.method private div_r_monic_cst_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .registers 13

    .line 0
    new-instance v6, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v7

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    :goto_f
    if-lt p2, p4, :cond_2a

    neg-int v0, p4

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v0, v1

    invoke-virtual {v6, p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_mul_rem_xor_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    neg-int v0, v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_f

    :cond_2a
    invoke-virtual {p1, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    return-void
.end method

.method private div_r_monic_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)I
    .registers 13

    .line 0
    new-instance v6, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    new-instance v7, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    :goto_a
    if-lt p2, p4, :cond_2e

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, p4, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->searchDegree(III)I

    move-result p2

    if-ge p2, p4, :cond_15

    goto :goto_2e

    :cond_15
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v0, p2

    invoke-virtual {v6, p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    neg-int v0, p4

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v0, v1

    invoke-virtual {v7, v6, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, v7

    move-object v2, v6

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_mul_rem_xor_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_a

    :cond_2e
    :goto_2e
    const/4 p3, -0x1

    if-ne p2, p3, :cond_33

    add-int/lit8 p2, p2, 0x1

    :cond_33
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3, p0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->searchDegree(III)I

    move-result p0

    return p0
.end method

.method private divsqr_r_HFE_cstdeg_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IIILorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .registers 10

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr p2, v1

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    new-instance p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    :goto_d
    if-lt p3, p4, :cond_3b

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    neg-int p2, p2

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr p2, v1

    invoke-virtual {p1, v0, p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-virtual {p0, p1, v0, p6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_rem_xorrange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 p2, 0x1

    :goto_1c
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_COEFS_HFEPOLY:I

    if-ge p2, v1, :cond_32

    iget-object v1, p5, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;->L:[I

    aget v1, v1, p2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget-object v1, p5, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;->poly:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v2, p2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_rem_xorrange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1c

    :cond_32
    iget p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    neg-int p2, p2

    invoke-virtual {v0, p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_d

    :cond_3b
    return-void
.end method

.method private dotProduct_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .registers 8

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_MUL:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v1

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v2

    invoke-virtual {p0, v0, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_mul_xorrange_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    const/4 p4, 0x0

    invoke-direct {p0, p1, p4, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    invoke-virtual {p3, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    return-void
.end method

.method private dotproduct_move_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p3, p2, p4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->dotProduct_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    add-int/2addr p4, p1

    add-int/lit8 p4, p4, 0x1

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr p4, p0

    invoke-virtual {p2, p4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    return-void
.end method

.method private evalMQShybrid8_uncomp_nocst_gf2_m(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V
    .registers 8

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    invoke-direct {v0, p4}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->evalMQSnocst8_quo_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr:I

    const/16 p4, 0x8

    if-ge p3, p4, :cond_15

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq:I

    const-wide/16 v1, 0x0

    invoke-virtual {p1, p3, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    :cond_15
    iget p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr:I

    iget p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    sub-int/2addr p3, p4

    :goto_1a
    iget p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr:I

    if-ge p3, p4, :cond_30

    iget p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq:I

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->evalMQnocst_unrolled_no_simd_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)J

    move-result-wide v1

    shl-long/2addr v1, p3

    invoke-virtual {p1, p4, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    iget p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_UNCOMP_EQ:I

    invoke-virtual {v0, p4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1a

    :cond_30
    return-void
.end method

.method private evalMQSnocst8_quo_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V
    .registers 31

    .line 0
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    iget v0, v9, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    iget v1, v9, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEm:I

    ushr-int/lit8 v2, v1, 0x3

    if-eqz v2, :cond_12

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    :cond_12
    move v12, v1

    and-int/lit8 v1, v12, 0x7

    const/4 v13, 0x1

    if-eqz v1, :cond_1d

    ushr-int/lit8 v1, v12, 0x3

    add-int/2addr v1, v13

    :goto_1b
    move v14, v1

    goto :goto_20

    :cond_1d
    ushr-int/lit8 v1, v12, 0x3

    goto :goto_1b

    :goto_20
    ushr-int/lit8 v1, v14, 0x3

    and-int/lit8 v2, v14, 0x7

    const/4 v15, 0x0

    if-eqz v2, :cond_29

    move v2, v13

    goto :goto_2a

    :cond_29
    move v2, v15

    :goto_2a
    add-int v8, v1, v2

    new-instance v7, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    move-object/from16 v1, p3

    invoke-direct {v7, v1}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getArray()[J

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getArray()[J

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v3

    invoke-static {v1, v15, v2, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v7, v14}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    move v5, v15

    :goto_46
    iget v1, v9, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x1

    if-ge v5, v1, :cond_df

    invoke-virtual {v11, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v1

    move/from16 v20, v0

    move-wide/from16 v21, v1

    move v6, v15

    :goto_57
    const/16 v0, 0x40

    if-ge v6, v0, :cond_d2

    and-long v0, v21, v18

    cmp-long v0, v0, v16

    if-eqz v0, :cond_b7

    invoke-virtual {v10, v15, v7, v15, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(ILorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V

    invoke-virtual {v7, v14}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    ushr-long v23, v21, v13

    add-int/lit8 v3, v6, 0x1

    const/16 v4, 0x40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move/from16 v25, v5

    move/from16 v26, v6

    move-wide/from16 v5, v23

    move-object/from16 p3, v7

    move v7, v14

    move/from16 v23, v8

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPJR_UNROLLED_64(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;IIJII)V

    add-int/lit8 v5, v25, 0x1

    move v8, v5

    :goto_83
    iget v0, v9, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    if-ge v8, v0, :cond_9f

    invoke-virtual {v11, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v5

    const/4 v3, 0x0

    const/16 v4, 0x40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move v7, v14

    move/from16 v24, v8

    move/from16 v8, v23

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPJR_UNROLLED_64(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;IIJII)V

    add-int/lit8 v8, v24, 0x1

    goto :goto_83

    :cond_9f
    iget v1, v9, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-eqz v1, :cond_b4

    const/4 v3, 0x0

    invoke-virtual {v11, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move v6, v14

    move/from16 v7, v23

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->choose_LOOPJR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;IJII)V

    :cond_b4
    move-object/from16 v8, p3

    goto :goto_c6

    :cond_b7
    move/from16 v25, v5

    move/from16 v26, v6

    move-object/from16 p3, v7

    move/from16 v23, v8

    mul-int v0, v20, v14

    move-object/from16 v8, p3

    invoke-virtual {v8, v0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    :goto_c6
    ushr-long v21, v21, v13

    add-int/lit8 v6, v26, 0x1

    add-int/lit8 v20, v20, -0x1

    move-object v7, v8

    move/from16 v8, v23

    move/from16 v5, v25

    goto :goto_57

    :cond_d2
    move/from16 v25, v5

    move/from16 v23, v8

    move-object v8, v7

    add-int/lit8 v5, v25, 0x1

    move/from16 v0, v20

    move/from16 v8, v23

    goto/16 :goto_46

    :cond_df
    move/from16 v23, v8

    move-object v8, v7

    iget v2, v9, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-eqz v2, :cond_126

    invoke-virtual {v11, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v1

    move v11, v0

    move-wide/from16 v20, v1

    move v7, v15

    :goto_ee
    iget v0, v9, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-ge v7, v0, :cond_126

    and-long v0, v20, v18

    cmp-long v0, v0, v16

    if-eqz v0, :cond_114

    move/from16 v6, v23

    invoke-virtual {v10, v15, v8, v15, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(ILorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V

    invoke-virtual {v8, v14}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    add-int/lit8 v3, v7, 0x1

    ushr-long v4, v20, v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v22, v6

    move v6, v14

    move/from16 v23, v7

    move/from16 v7, v22

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->choose_LOOPJR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;IJII)V

    goto :goto_11d

    :cond_114
    move/from16 v22, v23

    move/from16 v23, v7

    mul-int v0, v11, v14

    invoke-virtual {v8, v0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    :goto_11d
    ushr-long v20, v20, v13

    add-int/lit8 v7, v23, 0x1

    add-int/lit8 v11, v11, -0x1

    move/from16 v23, v22

    goto :goto_ee

    :cond_126
    move/from16 v22, v23

    and-int/lit8 v0, v12, 0x3f

    if-eqz v0, :cond_135

    add-int/lit8 v8, v22, -0x1

    shl-long v0, v18, v0

    sub-long v0, v0, v18

    invoke-virtual {v10, v8, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    :cond_135
    return-void
.end method

.method private evalMQnocst_unrolled_no_simd_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)J
    .registers 21

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    move-object/from16 v3, p2

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-wide v9, v5

    move v8, v7

    :goto_14
    const-wide/16 v11, 0x1

    const/16 v13, 0x40

    if-ge v8, v13, :cond_2a

    ushr-long v13, v3, v8

    and-long/2addr v11, v13

    cmp-long v11, v11, v5

    if-eqz v11, :cond_27

    invoke-virtual {v2, v8}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->get(I)J

    move-result-wide v11

    and-long/2addr v11, v3

    xor-long/2addr v9, v11

    :cond_27
    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    :cond_2a
    invoke-virtual {v2, v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    const/4 v3, 0x1

    :goto_2e
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    if-ge v3, v4, :cond_59

    add-int/lit8 v8, v3, 0x1

    if-ne v4, v8, :cond_3b

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-eqz v4, :cond_3b

    goto :goto_3c

    :cond_3b
    move v4, v13

    :goto_3c
    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v14

    move v3, v7

    :goto_41
    if-ge v3, v4, :cond_57

    ushr-long v16, v14, v3

    and-long v16, v16, v11

    cmp-long v16, v16, v5

    if-eqz v16, :cond_51

    invoke-virtual {v2, v7, v1, v7, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getDotProduct(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)J

    move-result-wide v16

    xor-long v9, v9, v16

    :cond_51
    invoke-virtual {v2, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    :cond_57
    move v3, v8

    goto :goto_2e

    :cond_59
    invoke-static {v9, v10}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;->XORBITS_UINT(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private findRootsSplit_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .registers 14

    .line 0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_9

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, p0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    return-void

    :cond_9
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_15

    const/4 v1, 0x2

    if-ne p3, v1, :cond_15

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->findRootsSplit2_HT_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    return-void

    :cond_15
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    shl-int/lit8 v2, p3, 0x1

    sub-int/2addr v2, v0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v3, v2

    invoke-direct {v1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v4, p3

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v4, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    add-int/lit8 v5, p3, 0x1

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v6, v5

    invoke-direct {v4, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v6, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v6, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    :cond_39
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v7, v2

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v7, p3

    invoke-virtual {v3, v8, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    :cond_46
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->random:Ljava/security/SecureRandom;

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqn:I

    invoke-virtual {v3, v7, v8, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->fillRandom(ILjava/security/SecureRandom;I)V

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    shl-int/2addr v7, v0

    sub-int/2addr v7, v0

    iget-wide v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2n:J

    invoke-virtual {v3, v7, v8, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v3, v7, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->is0_gf2n(II)I

    move-result v7

    if-nez v7, :cond_46

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v7, v5

    invoke-virtual {v4, p2, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-direct {p0, v3, v1, v4, p3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->traceMap_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    add-int/lit8 v7, p3, -0x1

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v3, v7, v0, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->searchDegree(III)I

    move-result v7

    invoke-direct {p0, v4, p3, v3, v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->gcd_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)I

    move-result v7

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->buffer:I

    if-eqz v7, :cond_39

    if-eq v7, p3, :cond_39

    if-eqz v8, :cond_80

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->swap(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    :cond_80
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v0, v7

    invoke-direct {p0, v6, v4, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->inv_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v1, v7, v0

    invoke-virtual {v4, v1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set1_gf2n(II)V

    add-int/lit8 v0, v7, -0x1

    invoke-direct {p0, v4, v6, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_mul(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-direct {p0, p2, p3, v4, v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->div_q_monic_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-direct {p0, p1, v4, v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->findRootsSplit_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v1, v7

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    new-instance p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v1, v7

    invoke-direct {p1, p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    sub-int/2addr p3, v7

    invoke-direct {p0, v0, p1, p3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->findRootsSplit_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    return-void
.end method

.method private for_and_xor_shift_incre_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .registers 10

    .line 0
    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    :goto_3
    if-ge p0, p3, :cond_18

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(J)V

    const-wide/16 v2, 0x1

    shl-long v4, v2, p0

    invoke-virtual {p1, v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(J)V

    const/4 v4, 0x1

    shl-long/2addr v0, v4

    add-long/2addr v0, v2

    invoke-virtual {p1, p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_18
    return-void
.end method

.method private for_casct_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .registers 8

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v0, p5

    const/4 v1, 0x0

    :goto_4
    if-ge v1, p4, :cond_11

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->CMP_AND_SWAP_CST_TIME(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/2addr v1, p5

    goto :goto_4

    :cond_11
    return-void
.end method

.method private for_copy_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;)V
    .registers 8

    .line 0
    const/4 v0, 0x1

    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_COEFS_HFEPOLY:I

    if-ge v0, v1, :cond_19

    iget-object v1, p2, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;->L:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget-object v1, p2, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;->poly:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v3, v0, v2

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method private for_mul(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .registers 6

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v1, p3

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    :goto_8
    const/4 p1, -0x1

    if-eq p3, p1, :cond_17

    invoke-virtual {p0, v0, v0, p2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    neg-int p1, p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_8

    :cond_17
    return-void
.end method

.method private for_mul_rem_xor_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .registers 8

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v0, p4

    :goto_3
    if-ge p4, p5, :cond_13

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_rem_xorrange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 p4, p4, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    add-int/2addr v0, v1

    goto :goto_3

    :cond_13
    return-void
.end method

.method private for_setPK([B[BIII)I
    .registers 16

    .line 0
    aget-byte v0, p2, p4

    and-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    aput-byte v0, p1, p3

    const/4 v0, 0x2

    move v7, v0

    :goto_9
    if-ge v0, p5, :cond_1e

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    add-int/lit8 v8, v1, -0x1

    sub-int v9, v1, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, v0

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->setPK([B[BIIIIII)I

    move-result v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1e
    return v7
.end method

.method private for_setpk2_end_move_plus(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;I)I
    .registers 12

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    move v5, v0

    :goto_3
    if-ge v1, p3, :cond_1f

    const/16 v7, 0x40

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->setPk2Value(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;III)I

    move-result v0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->setPk2_endValue(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    shl-int/lit8 v2, v1, 0x6

    add-int v5, v0, v2

    goto :goto_3

    :cond_1f
    return v5
.end method

.method private for_sqr_divsqr(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IILorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .registers 14

    .line 0
    :goto_0
    if-ge p2, p3, :cond_1d

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    add-int/lit8 v0, v5, -0x1

    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v0, v5, -0x1

    shl-int/lit8 v4, v0, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->divsqr_r_HFE_cstdeg_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IIILorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1d
    return-void
.end method

.method private frobeniusMap_multisqr_HFE_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .registers 22

    .line 0
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    new-instance v9, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    new-instance v10, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v0, v1

    invoke-direct {v10, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v11, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    new-instance v12, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->KX:I

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    mul-int/2addr v0, v1

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->POW_II:I

    add-int/2addr v0, v1

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v0, v1

    invoke-direct {v12, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->POW_II:I

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->KP:I

    mul-int/2addr v0, v1

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    sub-int/2addr v0, v1

    new-instance v13, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v1, v0

    invoke-direct {v13, v12, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    move-object/from16 v14, p3

    invoke-virtual {v13, v14, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    move-object/from16 v15, p2

    invoke-direct {v7, v13, v15}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_copy_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;)V

    const/16 v16, 0x1

    add-int/lit8 v3, v0, -0x1

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    add-int v2, v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->divsqr_r_HFE_cstdeg_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IIILorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->KP:I

    add-int/lit8 v0, v0, 0x1

    move v6, v0

    :goto_5c
    iget v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    const/4 v1, 0x0

    if-ge v6, v0, :cond_96

    iget v2, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v0, v2

    invoke-virtual {v13, v12, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->POW_II:I

    iget v2, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v0, v2

    invoke-virtual {v13, v1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->POW_II:I

    iget v2, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v0, v2

    iget v3, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    mul-int/2addr v3, v2

    invoke-virtual {v13, v0, v12, v1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    invoke-virtual {v12, v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->POW_II:I

    add-int/lit8 v1, v0, -0x1

    iget v2, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    add-int/2addr v2, v1

    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v5, p2

    move/from16 v17, v6

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->divsqr_r_HFE_cstdeg_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IIILorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    add-int/lit8 v6, v17, 0x1

    goto :goto_5c

    :cond_96
    invoke-virtual {v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->indexReset()V

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    shl-int v0, v16, v0

    iget v2, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->KP:I

    sub-int/2addr v0, v2

    iget v2, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    mul-int/2addr v0, v2

    iget v3, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v0, v3

    mul-int/2addr v2, v3

    invoke-virtual {v8, v1, v12, v0, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    move v0, v1

    :goto_ab
    iget v2, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    iget v3, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    sub-int v4, v2, v3

    iget v5, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->II:I

    sub-int/2addr v4, v5

    div-int/2addr v4, v5

    if-ge v0, v4, :cond_127

    invoke-direct {v7, v10, v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->loop_sqr(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    move/from16 v2, v16

    :goto_bc
    iget v3, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->II:I

    if-ge v2, v3, :cond_c6

    invoke-direct {v7, v10, v10}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->loop_sqr(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_bc

    :cond_c6
    iget v2, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->KP:I

    iget v3, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v2, v3

    invoke-virtual {v11, v10, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-virtual {v13, v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {v9, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    move v2, v1

    :goto_d5
    iget v3, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    if-ge v2, v3, :cond_e9

    invoke-virtual {v7, v9, v13, v11}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v3, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v9, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v3, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v13, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d5

    :cond_e9
    iget v2, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->KP:I

    add-int/lit8 v2, v2, 0x1

    :goto_ed
    iget v3, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    if-ge v2, v3, :cond_111

    iget v3, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v11, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    invoke-virtual {v9, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    move v3, v1

    :goto_fa
    iget v4, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    if-ge v3, v4, :cond_10e

    invoke-virtual {v7, v9, v13, v11}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_rem_xorrange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v4, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v9, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v4, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v13, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_fa

    :cond_10e
    add-int/lit8 v2, v2, 0x1

    goto :goto_ed

    :cond_111
    move v2, v1

    :goto_112
    iget v3, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->KP:I

    if-ge v2, v3, :cond_124

    iget v3, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->POW_II:I

    mul-int/2addr v3, v2

    iget v4, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v3, v4

    mul-int v5, v2, v4

    invoke-virtual {v8, v3, v10, v5, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_112

    :cond_124
    add-int/lit8 v0, v0, 0x1

    goto :goto_ab

    :cond_127
    sub-int/2addr v2, v3

    rem-int v3, v2, v5

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_sqr_divsqr(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IILorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    return-void
.end method

.method private gcd_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)I
    .registers 10

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->buffer:I

    move v3, p2

    move-object p2, p1

    move-object p1, p3

    move p3, v3

    :goto_e
    if-eqz p4, :cond_3c

    shl-int/lit8 v1, p4, 0x1

    if-le v1, p3, :cond_19

    invoke-virtual {p0, p2, p3, p1, p4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->div_r_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)I

    move-result p3

    goto :goto_2f

    :cond_19
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v1, p4

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->inv_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, p4, v1

    invoke-virtual {p1, v2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set1_gf2n(II)V

    add-int/lit8 v1, p4, -0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_mul(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-direct {p0, p2, p3, p1, p4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->div_r_monic_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)I

    move-result p3

    :goto_2f
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->buffer:I

    rsub-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->buffer:I

    move-object v3, p2

    move-object p2, p1

    move-object p1, v3

    move v4, p4

    move p4, p3

    move p3, v4

    goto :goto_e

    :cond_3c
    return p3
.end method

.method private getSHA3Hash(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II[BII[B)V
    .registers 9

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sha3Digest:Lorg/bouncycastle/crypto/digests/SHA3Digest;

    invoke-virtual {v0, p4, p5, p6}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sha3Digest:Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/4 p4, 0x0

    invoke-virtual {p0, p7, p4}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    invoke-virtual {p1, p2, p7, p4, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->fill(I[BII)V

    return-void
.end method

.method private initListDifferences_gf2nx([I)V
    .registers 8

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    const/4 v1, 0x1

    aput v0, p1, v1

    const/4 v0, 0x2

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    if-ge v3, v4, :cond_33

    iget-boolean v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ENABLED_REMOVE_ODD_DEGREE:Z

    if-eqz v4, :cond_26

    shl-int v4, v1, v3

    add-int/2addr v4, v1

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFE_odd_degree:I

    if-le v4, v5, :cond_26

    if-eqz v3, :cond_21

    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    shl-int/2addr v5, v1

    aput v5, p1, v0

    move v0, v4

    :cond_21
    invoke-direct {p0, p1, v0, v1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->setArrayL([IIII)I

    move-result v0

    goto :goto_30

    :cond_26
    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    aput v5, p1, v0

    invoke-direct {p0, p1, v4, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->setArrayL([IIII)I

    move-result v0

    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_33
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegJ:I

    if-eqz v4, :cond_58

    iget-boolean v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ENABLED_REMOVE_ODD_DEGREE:Z

    if-eqz v5, :cond_4e

    shl-int v3, v1, v3

    add-int/2addr v3, v1

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFE_odd_degree:I

    if-le v3, v5, :cond_4e

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    shl-int/2addr v3, v1

    aput v3, p1, v0

    sub-int/2addr v4, v1

    invoke-direct {p0, p1, v2, v1, v4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->setArrayL([IIII)I

    goto :goto_58

    :cond_4e
    add-int/lit8 v3, v0, 0x1

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    aput v5, p1, v0

    sub-int/2addr v4, v1

    invoke-direct {p0, p1, v3, v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->setArrayL([IIII)I

    :cond_58
    :goto_58
    return-void
.end method

.method private inv_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .registers 9

    .line 0
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v0

    invoke-virtual {p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    new-instance p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {p3, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn_1rightmost:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_17
    const/4 v3, -0x1

    if-eq v1, v3, :cond_3f

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    sub-int/2addr v3, v2

    add-int/lit8 v4, v1, 0x1

    ushr-int/2addr v3, v4

    invoke-direct {p0, p3, p1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    move v4, v2

    :goto_24
    if-ge v4, v3, :cond_2c

    invoke-direct {p0, p3, p3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_2c
    invoke-virtual {p0, p1, p1, p3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    sub-int/2addr v3, v2

    ushr-int/2addr v3, v1

    and-int/2addr v3, v2

    if-eqz v3, :cond_3c

    invoke-direct {p0, p3, p1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    :cond_3c
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_3f
    invoke-direct {p0, p1, p1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    return-void
.end method

.method private loop_sqr(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .registers 6

    .line 0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    if-ge v0, v1, :cond_10

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v0, v1

    mul-int/2addr v1, v0

    invoke-direct {p0, p1, v2, p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return-void
.end method

.method private loop_xor_loop_move_xorandmask_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IIIII)I
    .registers 16

    .line 0
    const/4 p0, 0x0

    :goto_1
    if-ge p0, p7, :cond_39

    const-wide/16 v0, 0x1

    shl-long v2, v0, p0

    invoke-virtual {p1, p6, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {p3, p4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    move v2, p5

    :goto_11
    if-ge v2, p8, :cond_2c

    invoke-virtual {p2, p9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    ushr-int/lit8 v3, v2, 0x6

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p3, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v3, p6, 0x1

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get()J

    move-result-wide v4

    ushr-long/2addr v4, p0

    and-long/2addr v4, v0

    neg-long v4, v4

    invoke-virtual {p2, p1, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMask(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_2c
    invoke-virtual {p1, p9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v0, p6, 0x1

    invoke-virtual {p4, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 p0, p0, 0x1

    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    :cond_39
    return p5
.end method

.method private mulMatricesLU_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V
    .registers 21

    .line 0
    move-object/from16 v9, p0

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v10

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$1;->$SwitchMap$org$bouncycastle$pqc$crypto$gemss$GeMSSEngine$FunctionParams:[I

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_29

    const/4 v2, 0x2

    if-ne v0, v2, :cond_21

    iget v0, v9, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    iget v2, v9, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-eqz v2, :cond_1c

    move v3, v1

    goto :goto_1d

    :cond_1c
    const/4 v3, 0x0

    :goto_1d
    move v11, v0

    move v12, v2

    move v13, v3

    goto :goto_30

    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parameter for MULMATRICESLU_GF2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    iget v0, v9, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnq:I

    iget v2, v9, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnr:I

    move v11, v0

    move v13, v1

    move v12, v2

    :goto_30
    new-instance v14, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    move v15, v1

    :goto_38
    if-gt v15, v11, :cond_4d

    const/16 v4, 0x40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object/from16 v3, p3

    move v5, v11

    move v6, v12

    move v7, v15

    move v8, v13

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPIR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IIIIZ)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_38

    :cond_4d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object/from16 v3, p3

    move v4, v12

    move v5, v11

    move v6, v12

    move v7, v15

    move v8, v13

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPIR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IIIIZ)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    return-void
.end method

.method private precSignHFE(Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;[Lorg/bouncycastle/pqc/crypto/gemss/Pointer;[B)V
    .registers 11

    .line 0
    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->precSignHFESeed(Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;[B)V

    iget-object p3, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->F_struct:Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;->L:[I

    invoke-direct {p0, p3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->initListDifferences_gf2nx([I)V

    new-instance p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->F_HFEv:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {p3, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_COEFS_HFEPOLY:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v0, v1

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MQv_GFqn_SIZE:I

    invoke-direct {v0, p3, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    const/4 v2, 0x0

    aput-object v0, p2, v2

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MLv_GFqn_SIZE:I

    invoke-virtual {p3, v0, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    move v3, v2

    :goto_34
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_6e

    shl-int v4, v5, v3

    add-int/2addr v4, v5

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFE_odd_degree:I

    if-le v4, v6, :cond_45

    iget-boolean v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ENABLED_REMOVE_ODD_DEGREE:Z

    if-eqz v4, :cond_45

    goto :goto_46

    :cond_45
    move v5, v2

    :goto_46
    sub-int v4, v3, v5

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v5, v4

    invoke-virtual {v0, p3, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v5, v4

    invoke-virtual {p3, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v3, v3, 0x1

    new-instance v4, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v4, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    aput-object v4, p2, v3

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MLv_GFqn_SIZE:I

    invoke-virtual {p3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    goto :goto_34

    :cond_6e
    iget p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegJ:I

    if-eqz p2, :cond_82

    shl-int v3, v5, v3

    add-int/2addr v3, v5

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFE_odd_degree:I

    if-gt v3, v4, :cond_7a

    goto :goto_7b

    :cond_7a
    move v2, v5

    :goto_7b
    sub-int/2addr p2, v2

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr p2, p0

    invoke-virtual {v0, p3, p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    :cond_82
    iget-object p0, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->F_struct:Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;

    new-instance p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;->poly:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    return-void
.end method

.method private precSignHFESeed(Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;[B)V
    .registers 7

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_UINT_HFEVPOLY:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_NV_SIZE:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_N_SIZE:I

    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MATRIXnv_SIZE:I

    add-int/2addr v2, v0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MATRIXn_SIZE:I

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    iput-object v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->sk_uncomp:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ShakeBitStrength:I

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_SEED_SK:I

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3, v2}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    shl-int/lit8 p2, v0, 0x3

    new-array v2, p2, [B

    invoke-virtual {v1, v2, v3, p2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->sk_uncomp:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-virtual {v1, v3, v2, v3, p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->fill(I[BII)V

    new-instance p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->sk_uncomp:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {p2, v1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iput-object p2, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->S:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MATRIXnv_SIZE:I

    invoke-direct {v0, p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iput-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->T:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    new-instance p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->sk_uncomp:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iput-object p2, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->F_HFEv:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-virtual {p0, p2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->cleanMonicHFEv_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    new-instance p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->sk_uncomp:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_UINT_HFEVPOLY:I

    invoke-direct {p2, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_NV_SIZE:I

    invoke-direct {v0, p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->NV:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {p0, p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->cleanLowerMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->cleanLowerMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->S:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {p0, v2, p2, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mulMatricesLU_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_NV_SIZE:I

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_N_SIZE:I

    invoke-virtual {v0, p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->N:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {p0, p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->cleanLowerMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->cleanLowerMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->T:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mulMatricesLU_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    return-void
.end method

.method private rem_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .registers 5

    .line 0
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v0

    add-int/2addr p2, v0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem:Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->rem_gf2n([JI[J)V

    return-void
.end method

.method private static remainderUnsigned(JJ)J
    .registers 7

    .line 0
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_c

    cmp-long v0, p2, v0

    if-lez v0, :cond_c

    rem-long/2addr p0, p2

    return-wide p0

    :cond_c
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p0, p1}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J)[B

    move-result-object p0

    const/4 p1, 0x1

    invoke-direct {v0, p1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance p0, Ljava/math/BigInteger;

    invoke-static {p2, p3}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private setArrayL([IIII)I
    .registers 7

    .line 0
    :goto_0
    if-ge p3, p4, :cond_d

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    shl-int/2addr v1, p3

    aput v1, p1, p2

    add-int/lit8 p3, p3, 0x1

    move p2, v0

    goto :goto_0

    :cond_d
    return p2
.end method

.method private setPK([B[BIIIIII)I
    .registers 13

    .line 0
    :goto_0
    if-lt p7, p8, :cond_1e

    ushr-int/lit8 v0, p6, 0x3

    add-int/2addr v0, p4

    aget-byte v1, p1, v0

    ushr-int/lit8 v2, p3, 0x3

    add-int/2addr v2, p5

    aget-byte v2, p2, v2

    and-int/lit8 v3, p3, 0x7

    ushr-int/2addr v2, v3

    and-int/lit8 v2, v2, 0x1

    and-int/lit8 v3, p6, 0x7

    shl-int/2addr v2, v3

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/2addr p3, p7

    add-int/lit8 p7, p7, -0x1

    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_1e
    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->buffer:I

    return p6
.end method

.method private setPk2Value(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;III)I
    .registers 11

    .line 0
    const/4 p0, 0x1

    :goto_1
    if-ge p0, p5, :cond_46

    and-int/lit8 v0, p3, 0x3f

    if-eqz v0, :cond_2a

    invoke-virtual {p1, p2, p4, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangePointerUnion(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V

    invoke-virtual {p2, p4}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->get(I)J

    move-result-wide v1

    ushr-long/2addr v1, v0

    invoke-virtual {p1, p4, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    add-int v1, v0, p0

    const/16 v2, 0x40

    if-le v1, v2, :cond_24

    add-int/lit8 v3, p4, 0x1

    invoke-virtual {p2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->get(I)J

    move-result-wide v3

    rsub-int/lit8 v0, v0, 0x40

    shl-long/2addr v3, v0

    invoke-virtual {p1, p4, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    :cond_24
    if-lt v1, v2, :cond_2f

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->moveIncremental()V

    goto :goto_2f

    :cond_2a
    add-int/lit8 v0, p4, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangePointerUnion(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;I)V

    :cond_2f
    :goto_2f
    invoke-virtual {p2, p4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    const-wide/16 v0, 0x1

    shl-long v2, v0, p0

    sub-long/2addr v2, v0

    invoke-virtual {p1, p4, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    add-int/lit8 v0, p4, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    shl-int/lit8 v0, p4, 0x6

    add-int/2addr v0, p0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_46
    return p3
.end method

.method private setPk2_endValue(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V
    .registers 5

    .line 0
    and-int/lit8 p0, p3, 0x3f

    add-int/lit8 p4, p4, 0x1

    if-eqz p0, :cond_a

    invoke-virtual {p1, p2, p4, p0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangePointerUnion(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V

    goto :goto_d

    :cond_a
    invoke-virtual {p1, p2, p4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangePointerUnion(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;I)V

    :goto_d
    return-void
.end method

.method private special_buffer(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .registers 10

    .line 0
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    const/4 v4, 0x2

    add-int/2addr v3, v4

    mul-int/2addr v2, v3

    invoke-direct {v1, p2, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    move v2, v4

    :goto_27
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_ROW:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_35

    add-int/lit8 v3, v2, -0x1

    invoke-direct {p0, p1, v1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->copy_move_matrix_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_35
    iget-boolean v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ENABLED_REMOVE_ODD_DEGREE:Z

    if-eqz v3, :cond_47

    :goto_39
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_ROW:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_47

    add-int/lit8 v3, v2, -0x2

    invoke-direct {p0, p1, v1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->copy_move_matrix_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_47
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set1_gf2n(II)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegJ:I

    invoke-virtual {p1, v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    :goto_54
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_c3

    invoke-virtual {p0, p1, p3, p2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    add-int/2addr v5, v4

    mul-int/2addr v2, v5

    invoke-virtual {v1, p2, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    move v2, v4

    :goto_6c
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    if-ge v2, v5, :cond_76

    invoke-direct {p0, p1, v1, p3, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->dotproduct_move_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    :cond_76
    iget-boolean v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ENABLED_REMOVE_ODD_DEGREE:Z

    if-eqz v5, :cond_93

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p3, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    :goto_7f
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_ROW:I

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_8d

    add-int/lit8 v5, v2, -0x1

    invoke-direct {p0, p1, v1, p3, v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->dotproduct_move_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7f

    :cond_8d
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    neg-int v2, v2

    invoke-virtual {p3, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    :cond_93
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegJ:I

    if-nez v2, :cond_aa

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p3, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_ROW:I

    :goto_a3
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v2, v5

    invoke-virtual {p3, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    goto :goto_c0

    :cond_aa
    invoke-direct {p0, p1, p3, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->dotProduct_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegJ:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v2, v5

    invoke-virtual {p3, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p3, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange_SelfMove(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_ROW:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegJ:I

    sub-int/2addr v2, v5

    goto :goto_a3

    :goto_c0
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    :cond_c3
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->indexReset()V

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->indexReset()V

    return-void
.end method

.method private sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .registers 7

    .line 0
    iget v0, p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr p4, v0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    invoke-virtual {v0, v1, p3, p4}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->sqr_gf2x([J[JI)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    return-void
.end method

.method private sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget p2, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    invoke-virtual {v0, v1, v2, p2}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->sqr_gf2x([J[JI)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem:Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    invoke-virtual {p2, v0, p1, p0}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->rem_gf2n([JI[J)V

    return-void
.end method

.method private sqr_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .registers 8

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v0, p2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v2, p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    const/4 v0, 0x0

    move v3, v0

    :goto_11
    if-ge v3, p2, :cond_30

    invoke-direct {p0, v2, p1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    neg-int v4, v4

    invoke-virtual {p1, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    neg-int v4, v4

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v2, v0, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    neg-int v4, v4

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_30
    invoke-direct {p0, p1, p1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    return-void
.end method

.method private traceMap_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .registers 11

    .line 0
    const/4 v0, 0x1

    move v1, v0

    :goto_2
    shl-int v2, v0, v1

    if-ge v2, p4, :cond_13

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    shl-int v3, v2, v1

    add-int/lit8 v4, v1, -0x1

    shl-int/2addr v2, v4

    invoke-direct {p0, p1, v3, p1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_13
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    if-ge v1, v3, :cond_41

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    shl-int v4, v3, v1

    add-int/lit8 v5, v1, -0x1

    shl-int/2addr v3, v5

    invoke-direct {p0, p2, v4, p1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-direct {p0, p2, v2, p3, p4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->div_r_monic_cst_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v2, p4

    invoke-virtual {p1, p2, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    add-int/2addr v1, v0

    :goto_2b
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    if-ge v1, v2, :cond_41

    add-int/lit8 v2, p4, -0x1

    invoke-direct {p0, p2, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    shl-int/2addr v2, v0

    invoke-direct {p0, p2, v2, p3, p4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->div_r_monic_cst_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v2, p4

    invoke-virtual {p1, p2, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_41
    return-void
.end method

.method private uncompress_signHFE(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;[B)V
    .registers 13

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr8:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    sub-int/2addr p1, v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqnv:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p2, v3, v2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->fillBytes(I[BII)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr8:I

    if-eqz v2, :cond_1c

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqnv:I

    sub-int/2addr v2, v1

    int-to-long v4, p1

    invoke-virtual {v0, v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setAndByte(IJ)V

    :cond_1c
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    shl-int/lit8 v4, v4, 0x3

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    and-int/lit8 v5, v5, 0x7

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    move v4, v1

    :goto_2b
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_ITE:I

    if-ge v4, v5, :cond_f9

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDELTA:I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    add-int/2addr v5, v6

    and-int/lit8 v6, v2, 0x7

    rsub-int/lit8 v7, v6, 0x8

    and-int/lit8 v7, v7, 0x7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-eqz v6, :cond_6b

    ushr-int/lit8 v7, v2, 0x3

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    ushr-int v6, v7, v6

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    shl-int/2addr v6, v7

    invoke-virtual {v0, v6}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setXorByte(I)V

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->VAL_BITS_M:I

    sub-int v6, v5, v6

    if-ltz v6, :cond_57

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextByte()V

    :cond_57
    if-lez v6, :cond_6a

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->VAL_BITS_M:I

    add-int/2addr v2, v7

    ushr-int/lit8 v7, v2, 0x3

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    and-int/lit8 v8, v2, 0x7

    ushr-int/2addr v7, v8

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setXorByte(I)V

    add-int/2addr v2, v6

    goto :goto_6b

    :cond_6a
    add-int/2addr v2, v5

    :cond_6b
    :goto_6b
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDELTA:I

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    add-int/2addr v6, v7

    sub-int/2addr v6, v5

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEm:I

    add-int/2addr v7, v5

    and-int/lit8 v5, v7, 0x7

    if-eqz v5, :cond_bf

    move v7, v3

    :goto_79
    add-int/lit8 v8, v6, -0x1

    ushr-int/lit8 v8, v8, 0x3

    if-ge v7, v8, :cond_9b

    ushr-int/lit8 v8, v2, 0x3

    aget-byte v9, p2, v8

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v5

    invoke-virtual {v0, v9}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setXorByte(I)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextByte()V

    aget-byte v8, p2, v8

    and-int/lit16 v8, v8, 0xff

    rsub-int/lit8 v9, v5, 0x8

    ushr-int/2addr v8, v9

    invoke-virtual {v0, v8}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setXorByte(I)V

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v7, v7, 0x1

    goto :goto_79

    :cond_9b
    ushr-int/lit8 v7, v2, 0x3

    aget-byte v8, p2, v7

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v5

    invoke-virtual {v0, v8}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setXorByte(I)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextByte()V

    add-int/lit8 v6, v6, 0x7

    and-int/lit8 v6, v6, 0x7

    add-int/2addr v6, v1

    rsub-int/lit8 v5, v5, 0x8

    if-le v6, v5, :cond_bd

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    ushr-int v5, v7, v5

    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setByte(I)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextByte()V

    :cond_bd
    add-int/2addr v2, v6

    goto :goto_dc

    :cond_bf
    move v5, v3

    :goto_c0
    add-int/lit8 v7, v6, 0x7

    ushr-int/lit8 v7, v7, 0x3

    if-ge v5, v7, :cond_d5

    ushr-int/lit8 v7, v2, 0x3

    aget-byte v7, p2, v7

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setByte(I)V

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextByte()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_c0

    :cond_d5
    and-int/lit8 v5, v6, 0x7

    rsub-int/lit8 v5, v5, 0x8

    and-int/lit8 v5, v5, 0x7

    sub-int/2addr v2, v5

    :goto_dc
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr8:I

    if-eqz v5, :cond_e5

    const/4 v5, -0x1

    int-to-long v6, p1

    invoke-virtual {v0, v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setAndByte(IJ)V

    :cond_e5
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqnv:I

    and-int/lit8 v5, v5, 0x7

    rsub-int/lit8 v5, v5, 0x8

    and-int/lit8 v5, v5, 0x7

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    and-int/lit8 v6, v6, 0x7

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2b

    :cond_f9
    return-void
.end method

.method private vmpv_xorrange_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .registers 6

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v0, p3, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->V:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->vecMatProduct(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p3, p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MLv_GFqn_SIZE:I

    invoke-virtual {p3, p0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    return-void
.end method


# virtual methods
.method public changeVariablesMQS64_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .registers 25

    .line 0
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    new-instance v10, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    new-instance v11, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    mul-int/2addr v0, v0

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v0, v1

    invoke-direct {v11, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v12, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v12, v8, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    new-instance v13, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v13, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    new-instance v14, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v14, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 v6, 0x0

    :goto_28
    iget v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    const/16 v5, 0x40

    if-ge v6, v0, :cond_9e

    invoke-virtual {v10, v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 v3, 0x0

    :goto_32
    iget v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    if-ge v3, v0, :cond_75

    const/4 v4, 0x0

    :goto_37
    if-ge v4, v5, :cond_6a

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get()J

    move-result-wide v0

    ushr-long v16, v0, v4

    const/16 v18, 0x40

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v13

    move/from16 v19, v3

    move/from16 v20, v4

    move-wide/from16 v3, v16

    move v15, v5

    move/from16 v5, v20

    move/from16 v17, v6

    move/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPKR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;JII)V

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    sub-int v5, v0, v19

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v10

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPK_COMPLETE(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    add-int/lit8 v4, v20, 0x1

    move v5, v15

    move/from16 v6, v17

    move/from16 v3, v19

    goto :goto_37

    :cond_6a
    move/from16 v19, v3

    move v15, v5

    move/from16 v17, v6

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->moveIncremental()V

    add-int/lit8 v3, v19, 0x1

    goto :goto_32

    :cond_75
    move/from16 v17, v6

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-eqz v0, :cond_9b

    const/4 v15, 0x0

    :goto_7c
    iget v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-ge v15, v0, :cond_98

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get()J

    move-result-wide v0

    ushr-long v3, v0, v15

    iget v6, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v13

    move v5, v15

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPKR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;JII)V

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v13, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_7c

    :cond_98
    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->moveIncremental()V

    :cond_9b
    add-int/lit8 v6, v17, 0x1

    goto :goto_28

    :cond_9e
    move v15, v5

    invoke-virtual {v12, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v13, v8, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    new-instance v6, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v6, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 v5, 0x0

    :goto_ad
    iget v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    if-ge v5, v0, :cond_10b

    const/4 v4, 0x0

    :goto_b2
    if-ge v4, v15, :cond_103

    invoke-virtual {v14, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/16 v17, 0x40

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v10

    move-object v3, v12

    move/from16 v18, v4

    move-object v4, v14

    move/from16 v19, v5

    move/from16 v5, v18

    move-object v15, v6

    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPIR_INIT(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    add-int/lit8 v5, v19, 0x1

    move v6, v5

    :goto_ce
    iget v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    if-ge v6, v0, :cond_e5

    const/4 v5, 0x0

    const/16 v17, 0x40

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v10

    move-object v3, v12

    move-object v4, v14

    move/from16 v21, v6

    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPIR_INIT(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    add-int/lit8 v6, v21, 0x1

    goto :goto_ce

    :cond_e5
    iget v6, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-eqz v6, :cond_f3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v10

    move-object v3, v12

    move-object v4, v14

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPIR_INIT(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    :cond_f3
    invoke-virtual {v12, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-virtual {v15, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v4, v18, 0x1

    move-object v6, v15

    move/from16 v5, v19

    const/16 v15, 0x40

    goto :goto_b2

    :cond_103
    move/from16 v19, v5

    move-object v15, v6

    add-int/lit8 v5, v19, 0x1

    const/16 v15, 0x40

    goto :goto_ad

    :cond_10b
    move-object v15, v6

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-eqz v0, :cond_138

    const/4 v6, 0x0

    :goto_111
    iget v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-ge v6, v0, :cond_138

    invoke-virtual {v14, v15}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {v10, v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v5, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v10

    move-object v3, v12

    move-object v4, v14

    move/from16 v17, v5

    move v5, v6

    move/from16 v18, v6

    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPIR_INIT(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    invoke-virtual {v12, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-virtual {v15, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v6, v18, 0x1

    goto :goto_111

    :cond_138
    invoke-virtual {v12, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v13, v8, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-virtual {v14, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 v6, 0x0

    :goto_144
    iget v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    if-ge v6, v0, :cond_19a

    const/4 v0, 0x0

    const/16 v11, 0x40

    :goto_14b
    if-ge v0, v11, :cond_197

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v13, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    iget v2, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v1, v2

    invoke-virtual {v12, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    invoke-virtual {v10, v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    add-int/lit8 v15, v0, 0x1

    const/16 v5, 0x40

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v10

    move v4, v15

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPIR_LOOPK_COMPLETE(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    add-int/lit8 v0, v6, 0x1

    move v5, v0

    :goto_16d
    iget v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    if-ge v5, v0, :cond_183

    const/4 v4, 0x0

    const/16 v17, 0x40

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v10

    move/from16 v18, v5

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPIR_LOOPK_COMPLETE(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    add-int/lit8 v5, v18, 0x1

    goto :goto_16d

    :cond_183
    iget v5, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-eqz v5, :cond_190

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v10

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPIR_LOOPK_COMPLETE(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    :cond_190
    iget v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-virtual {v14, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    move v0, v15

    goto :goto_14b

    :cond_197
    add-int/lit8 v6, v6, 0x1

    goto :goto_144

    :cond_19a
    iget v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-eqz v0, :cond_1c8

    const/4 v15, 0x0

    :goto_19f
    iget v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    add-int/lit8 v0, v0, -0x1

    if-ge v15, v0, :cond_1c8

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v13, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v0, v1

    invoke-virtual {v12, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    invoke-virtual {v10, v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    add-int/lit8 v15, v15, 0x1

    iget v5, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v10

    move v4, v15

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPIR_LOOPK_COMPLETE(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-virtual {v14, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    goto :goto_19f

    :cond_1c8
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->indexReset()V

    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->indexReset()V

    return-void
.end method

.method public cleanLowerMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V
    .registers 6

    .line 0
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$1;->$SwitchMap$org$bouncycastle$pqc$crypto$gemss$GeMSSEngine$FunctionParams:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1b

    const/4 v1, 0x2

    if-ne p2, v1, :cond_13

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    goto :goto_1f

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, ""

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    iget p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnq:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnr:I

    :goto_1f
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v2, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    :goto_24
    if-gt v0, p2, :cond_31

    const/16 p1, 0x40

    invoke-direct {p0, v2, v0, p1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_and_xor_shift_incre_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->moveIncremental()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_31
    invoke-direct {p0, v2, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_and_xor_shift_incre_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    return-void
.end method

.method public cleanMonicHFEv_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .registers 5

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    add-int/lit8 v0, v0, -0x1

    :goto_4
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_UINT_HFEVPOLY:I

    if-ge v0, v1, :cond_11

    iget-wide v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2n:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    add-int/2addr v0, v1

    goto :goto_4

    :cond_11
    return-void
.end method

.method public compress_signHFE([BLorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .registers 15

    .line 0
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getLength()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->toBytes(I)[B

    move-result-object p2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqnv:I

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    shl-int/lit8 v2, v2, 0x3

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    and-int/lit8 v3, v3, 0x7

    add-int/2addr v2, v3

    const/4 v3, 0x1

    move v4, v3

    :goto_1d
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_ITE:I

    if-ge v4, v5, :cond_f4

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDELTA:I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    add-int/2addr v5, v6

    and-int/lit8 v6, v0, 0x7

    rsub-int/lit8 v7, v6, 0x8

    and-int/lit8 v7, v7, 0x7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-eqz v6, :cond_73

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    if-eqz v7, :cond_64

    ushr-int/lit8 v8, v0, 0x3

    aget-byte v9, p1, v8

    aget-byte v10, p2, v2

    and-int/lit16 v10, v10, 0xff

    ushr-int v7, v10, v7

    shl-int v6, v7, v6

    xor-int/2addr v6, v9

    int-to-byte v6, v6

    aput-byte v6, p1, v8

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->VAL_BITS_M:I

    sub-int v7, v5, v6

    if-ltz v7, :cond_4e

    add-int/lit8 v2, v2, 0x1

    :cond_4e
    if-lez v7, :cond_62

    add-int/2addr v0, v6

    ushr-int/lit8 v6, v0, 0x3

    aget-byte v8, p1, v6

    aget-byte v9, p2, v2

    and-int/lit16 v9, v9, 0xff

    and-int/lit8 v10, v0, 0x7

    shl-int/2addr v9, v10

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p1, v6

    add-int/2addr v0, v7

    goto :goto_73

    :cond_62
    :goto_62
    add-int/2addr v0, v5

    goto :goto_73

    :cond_64
    ushr-int/lit8 v7, v0, 0x3

    aget-byte v8, p1, v7

    aget-byte v9, p2, v2

    and-int/lit16 v9, v9, 0xff

    shl-int v6, v9, v6

    xor-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, p1, v7

    goto :goto_62

    :cond_73
    :goto_73
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDELTA:I

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    add-int/2addr v6, v7

    sub-int/2addr v6, v5

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEm:I

    add-int/2addr v7, v5

    and-int/lit8 v5, v7, 0x7

    if-eqz v5, :cond_c5

    move v7, v1

    :goto_81
    add-int/lit8 v8, v6, -0x1

    ushr-int/lit8 v8, v8, 0x3

    if-ge v7, v8, :cond_a0

    ushr-int/lit8 v8, v0, 0x3

    aget-byte v9, p2, v2

    and-int/lit16 v9, v9, 0xff

    ushr-int/2addr v9, v5

    add-int/lit8 v2, v2, 0x1

    aget-byte v10, p2, v2

    and-int/lit16 v10, v10, 0xff

    rsub-int/lit8 v11, v5, 0x8

    shl-int/2addr v10, v11

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p1, v8

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v7, v7, 0x1

    goto :goto_81

    :cond_a0
    ushr-int/lit8 v7, v0, 0x3

    add-int/lit8 v8, v2, 0x1

    aget-byte v9, p2, v2

    and-int/lit16 v9, v9, 0xff

    ushr-int/2addr v9, v5

    int-to-byte v9, v9

    aput-byte v9, p1, v7

    add-int/lit8 v6, v6, 0x7

    and-int/lit8 v6, v6, 0x7

    add-int/2addr v6, v3

    rsub-int/lit8 v5, v5, 0x8

    if-le v6, v5, :cond_c3

    add-int/lit8 v2, v2, 0x2

    aget-byte v8, p2, v8

    and-int/lit16 v8, v8, 0xff

    shl-int v5, v8, v5

    int-to-byte v5, v5

    xor-int/2addr v5, v9

    int-to-byte v5, v5

    aput-byte v5, p1, v7

    move v8, v2

    :cond_c3
    add-int/2addr v0, v6

    goto :goto_e2

    :cond_c5
    move v5, v1

    :goto_c6
    add-int/lit8 v7, v6, 0x7

    ushr-int/lit8 v7, v7, 0x3

    if-ge v5, v7, :cond_da

    ushr-int/lit8 v7, v0, 0x3

    add-int/lit8 v8, v2, 0x1

    aget-byte v2, p2, v2

    aput-byte v2, p1, v7

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v5, v5, 0x1

    move v2, v8

    goto :goto_c6

    :cond_da
    and-int/lit8 v5, v6, 0x7

    rsub-int/lit8 v5, v5, 0x8

    and-int/lit8 v5, v5, 0x7

    sub-int/2addr v0, v5

    move v8, v2

    :goto_e2
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqnv:I

    and-int/lit8 v2, v2, 0x7

    rsub-int/lit8 v2, v2, 0x8

    and-int/lit8 v2, v2, 0x7

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    and-int/lit8 v5, v5, 0x7

    add-int/2addr v2, v5

    add-int/2addr v2, v8

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1d

    :cond_f4
    return-void
.end method

.method public convMQS_one_eq_to_hybrid_rep8_comp_gf2([BLorg/bouncycastle/pqc/crypto/gemss/PointerUnion;[B)V
    .registers 6

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    invoke-virtual {p0, p1, p3, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->convMQ_UL_gf2([B[BI)V

    const/4 p3, 0x0

    move v0, p3

    :goto_7
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    if-ge p3, v1, :cond_1b

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    invoke-virtual {p2, p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->toBytesMove([BII)I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    if-eqz v1, :cond_18

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextByte()V

    :cond_18
    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    :cond_1b
    return-void
.end method

.method public convMQS_one_eq_to_hybrid_rep8_uncomp_gf2([BLorg/bouncycastle/pqc/crypto/gemss/PointerUnion;[B)V
    .registers 18

    .line 0
    move-object v9, p0

    move-object v10, p1

    move-object/from16 v11, p3

    iget v0, v9, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v11, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->convMQ_UL_gf2([B[BI)V

    iget v1, v9, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ACCESS_last_equations8:I

    iget v2, v9, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_EQUATION:I

    mul-int v3, v0, v2

    add-int v6, v1, v3

    mul-int v12, v0, v2

    iget v5, v9, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    move v3, v6

    move v4, v12

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_setPK([B[BIII)I

    move-result v7

    iget v3, v9, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    add-int/lit8 v8, v3, -0x1

    iget v13, v9, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOST_BITS:I

    move v4, v6

    move v5, v12

    move v6, v7

    move v7, v8

    move v8, v13

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->setPK([B[BIIIIII)I

    iget v0, v9, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOST_BITS:I

    add-int/lit8 v0, v0, -0x1

    iget v1, v9, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->buffer:I

    const-wide/16 v2, 0x0

    :goto_37
    if-ltz v0, :cond_4f

    ushr-int/lit8 v4, v1, 0x3

    add-int/2addr v4, v12

    aget-byte v4, v11, v4

    and-int/lit8 v5, v1, 0x7

    ushr-int/2addr v4, v5

    and-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    iget v6, v9, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOST_BITS:I

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v0

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    add-int/2addr v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_37

    :cond_4f
    iget v0, v9, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ACCESS_last_equations8:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v4, v1

    :goto_55
    iget v5, v9, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_71

    iget v5, v9, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_EQUATION:I

    add-int/2addr v0, v5

    aget-byte v5, v10, v0

    iget v6, v9, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFENr8c:I

    mul-int/2addr v6, v4

    ushr-long v6, v2, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    iget v7, v9, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFENr8:I

    shl-int/2addr v6, v7

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v10, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_55

    :cond_71
    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->indexReset()V

    move v0, v1

    :goto_75
    iget v2, v9, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    if-ge v1, v2, :cond_87

    iget v2, v9, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    move-object/from16 v3, p2

    invoke-virtual {v3, p1, v0, v2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->toBytesMove([BII)I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextByte()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_75

    :cond_87
    return-void
.end method

.method public convMQS_one_to_last_mr8_equations_gf2([BLorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V
    .registers 16

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    invoke-direct {v0, p2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    ushr-int/lit8 v1, v1, 0x3

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_11
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    if-ge v3, v5, :cond_74

    invoke-virtual {v0, p2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    move v5, v2

    :goto_19
    const/4 v6, 0x1

    if-ge v5, v1, :cond_45

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getByte()B

    move-result v7

    ushr-int/2addr v7, v3

    and-int/2addr v7, v6

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqm:I

    invoke-virtual {v0, v8}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    move v8, v6

    :goto_28
    const/16 v9, 0x8

    if-ge v8, v9, :cond_3c

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getByte()B

    move-result v9

    ushr-int/2addr v9, v3

    and-int/2addr v9, v6

    shl-int/2addr v9, v8

    xor-int/2addr v7, v9

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqm:I

    invoke-virtual {v0, v9}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_28

    :cond_3c
    add-int/lit8 v6, v4, 0x1

    int-to-byte v7, v7

    aput-byte v7, p1, v4

    add-int/lit8 v5, v5, 0x1

    move v4, v6

    goto :goto_19

    :cond_45
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFENr8:I

    if-eqz v5, :cond_71

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getWithCheck()J

    move-result-wide v7

    ushr-long/2addr v7, v3

    const-wide/16 v9, 0x1

    and-long/2addr v7, v9

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqm:I

    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    :goto_56
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFENr8:I

    if-ge v6, v5, :cond_6a

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getWithCheck()J

    move-result-wide v11

    ushr-long/2addr v11, v3

    and-long/2addr v11, v9

    shl-long/2addr v11, v6

    xor-long/2addr v7, v11

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqm:I

    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_56

    :cond_6a
    add-int/lit8 v5, v4, 0x1

    long-to-int v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, v4

    move v4, v5

    :cond_71
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_74
    return-void
.end method

.method public convMQ_UL_gf2([B[BI)V
    .registers 14

    .line 0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_1a

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ACCESS_last_equations8:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_EQUATION:I

    mul-int v3, v0, v2

    add-int v7, v1, v3

    mul-int v8, v0, v2

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    add-int/lit8 v9, v1, 0x1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v4 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_setPK([B[BIII)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1a
    return-void
.end method

.method public crypto_sign_open([B[B[B)I
    .registers 20

    .line 0
    move-object/from16 v8, p0

    move-object/from16 v4, p2

    new-instance v9, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>([B)V

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFENr8:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_41

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    if-le v0, v2, :cond_41

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    invoke-direct {v0, v9}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    iget v3, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ACCESS_last_equations8:I

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    move v3, v1

    move-wide v10, v5

    :goto_24
    iget v7, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    sub-int/2addr v7, v2

    if-ge v3, v7, :cond_42

    iget v7, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_EQUATION:I

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getByte()B

    move-result v7

    int-to-long v12, v7

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    iget v7, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFENr8:I

    ushr-long/2addr v12, v7

    iget v7, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFENr8c:I

    mul-int/2addr v7, v3

    shl-long/2addr v12, v7

    xor-long/2addr v10, v12

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_41
    move-wide v10, v5

    :cond_42
    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    const/16 v3, 0x40

    if-eqz v0, :cond_ec

    new-instance v7, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v12, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_UNCOMP_EQ:I

    mul-int/2addr v12, v0

    add-int/2addr v12, v2

    invoke-direct {v7, v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    invoke-direct {v0, v9}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    :goto_56
    iget v12, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    sub-int/2addr v12, v2

    if-ge v1, v12, :cond_76

    iget v12, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ACCESS_last_equations8:I

    iget v13, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_EQUATION:I

    mul-int/2addr v13, v1

    add-int/2addr v12, v13

    invoke-virtual {v0, v12}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setByteIndex(I)V

    new-instance v12, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v13, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_UNCOMP_EQ:I

    mul-int/2addr v13, v1

    add-int/2addr v13, v2

    invoke-direct {v12, v7, v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-direct {v8, v12, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->convMQ_uncompressL_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)J

    move-result-wide v12

    shl-long/2addr v12, v1

    xor-long/2addr v5, v12

    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    :cond_76
    iget v12, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ACCESS_last_equations8:I

    iget v13, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_EQUATION:I

    mul-int/2addr v13, v1

    add-int/2addr v12, v13

    invoke-virtual {v0, v12}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setByteIndex(I)V

    new-instance v12, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v13, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_UNCOMP_EQ:I

    mul-int/2addr v13, v1

    add-int/2addr v13, v2

    invoke-direct {v12, v7, v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-direct {v8, v12, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->convMQ_last_uncompressL_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)J

    move-result-wide v12

    shl-long/2addr v12, v1

    xor-long/2addr v5, v12

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFENr8:I

    if-eqz v0, :cond_d0

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-nez v0, :cond_a3

    add-int/2addr v1, v2

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_UNCOMP_EQ:I

    mul-int/2addr v1, v0

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOST_BITS:I

    sub-int/2addr v3, v0

    shl-long v2, v10, v3

    :goto_9f
    invoke-virtual {v7, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    goto :goto_d0

    :cond_a3
    iget v12, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOST_BITS:I

    add-int/2addr v1, v2

    if-le v0, v12, :cond_af

    iget v2, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_UNCOMP_EQ:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v12

    shl-long v2, v10, v0

    goto :goto_9f

    :cond_af
    if-ne v0, v12, :cond_b8

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_UNCOMP_EQ:I

    mul-int/2addr v1, v0

    invoke-virtual {v7, v1, v10, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    goto :goto_d0

    :cond_b8
    iget v13, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_UNCOMP_EQ:I

    mul-int/2addr v13, v1

    sub-int/2addr v13, v2

    sub-int/2addr v12, v0

    sub-int/2addr v3, v12

    shl-long v2, v10, v3

    invoke-virtual {v7, v13, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_UNCOMP_EQ:I

    mul-int/2addr v1, v0

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOST_BITS:I

    iget v2, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    sub-int/2addr v0, v2

    ushr-long v2, v10, v0

    invoke-virtual {v7, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    :cond_d0
    :goto_d0
    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr:I

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    sub-int/2addr v0, v1

    shl-long v0, v5, v0

    invoke-virtual {v7, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(J)V

    array-length v2, v4

    new-instance v5, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    invoke-direct {v5, v7}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move-object v4, v9

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sign_openHFE_huncomp_pk([BI[BLorg/bouncycastle/pqc/crypto/gemss/PointerUnion;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)I

    move-result v0

    return v0

    :cond_ec
    new-instance v10, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_SIGN_UNCOMPRESSED:I

    invoke-direct {v10, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-direct {v0, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v11, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v11, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    new-instance v12, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    invoke-direct {v12, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqnv:I

    move-object/from16 v2, p3

    invoke-virtual {v10, v1, v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->fill(I[BII)V

    new-array v7, v3, [B

    array-length v6, v4

    const/4 v2, 0x0

    const/16 v3, 0x40

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v4, p2

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->getSHA3Hash(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II[BII[B)V

    invoke-direct {v8, v11, v10, v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->evalMQSnocst8_quo_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    invoke-virtual {v11, v12, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->isEqual_nocst_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)I

    move-result v0

    return v0
.end method

.method public div_r_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)I
    .registers 14

    .line 0
    new-instance v6, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v6, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v7, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v7, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v8, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v8, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v0, p4

    invoke-direct {p0, v7, p3, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->inv_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    :goto_19
    if-lt p2, p4, :cond_3e

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, p4, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->searchDegree(III)I

    move-result p2

    if-ge p2, p4, :cond_24

    goto :goto_3e

    :cond_24
    sub-int v0, p2, p4

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v0, v1

    invoke-virtual {v8, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v0, p2

    invoke-virtual {p0, v6, p1, v0, v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, v8

    move-object v2, v6

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_mul_rem_xor_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_19

    :cond_3e
    :goto_3e
    const/4 p3, 0x1

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, p3, p0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->searchDegree(III)I

    move-result p0

    return p0
.end method

.method public evalHFEv_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .registers 24

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v8, p3

    new-instance v9, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_MUL:I

    invoke-direct {v9, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v10, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_MUL:I

    invoke-direct {v10, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v11, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    const/4 v12, 0x1

    add-int/2addr v2, v12

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v2, v3

    invoke-direct {v11, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v13, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v14

    new-instance v15, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqv:I

    invoke-direct {v15, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v7, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v7, v11, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v11, v8, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    sub-int/2addr v2, v12

    iget-wide v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2n:J

    invoke-virtual {v11, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    move v2, v12

    :goto_45
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    const/4 v6, 0x0

    if-gt v2, v3, :cond_58

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    neg-int v3, v3

    invoke-direct {v0, v7, v6, v7, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v7, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    :cond_58
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqv:I

    add-int v4, v2, v3

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    if-ne v4, v5, :cond_64

    :goto_62
    move v5, v3

    goto :goto_67

    :cond_64
    add-int/lit8 v3, v3, -0x1

    goto :goto_62

    :goto_67
    add-int/lit8 v16, v2, -0x1

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnr:I

    rsub-int/lit8 v17, v2, 0x40

    const/4 v3, 0x0

    move-object v2, v15

    move-object/from16 v4, p3

    move/from16 v18, v5

    move/from16 v5, v16

    move/from16 v6, v18

    move-object/from16 v19, v7

    move/from16 v7, v17

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeRotate(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;III)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqv:I

    add-int/2addr v3, v2

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    if-eq v3, v4, :cond_96

    sub-int/2addr v2, v12

    add-int v2, v2, v18

    invoke-virtual {v8, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v2

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnr:I

    ushr-long/2addr v2, v4

    move/from16 v4, v18

    invoke-virtual {v15, v4, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    :cond_96
    invoke-virtual {v0, v9, v15, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->evalMQSv_unrolled_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MQv_GFqn_SIZE:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    invoke-direct {v0, v10, v15, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->vmpv_xorrange_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    move-object/from16 v2, v19

    invoke-virtual {v2, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {v0, v9, v2, v10}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_xorrange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    :goto_a9
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    if-ge v12, v3, :cond_c8

    invoke-direct {v0, v10, v15, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->vmpv_xorrange_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_MMUL:I

    sub-int/2addr v4, v3

    invoke-virtual {v10, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    invoke-virtual {v13, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {v0, v10, v1, v13, v12}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_mul_xorrange_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    const/4 v3, 0x0

    invoke-direct {v0, v10, v3, v10}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {v0, v9, v13, v10}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_xorrange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_a9

    :cond_c8
    const/4 v3, 0x0

    invoke-direct {v0, v10, v15, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->vmpv_xorrange_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {v13, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegJ:I

    if-eqz v4, :cond_e9

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_MMUL:I

    sub-int/2addr v5, v4

    invoke-virtual {v10, v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegJ:I

    invoke-virtual {v0, v10, v1, v13, v4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_mul_xorrange_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v10, v13, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-direct {v0, v10, v3, v10}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    goto :goto_ee

    :cond_e9
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v10, v10, v13, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeFromXor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    :goto_ee
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v4, v5

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    invoke-virtual {v0, v9, v2, v10}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_xorrange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v3, v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {v1, v14}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    return-void
.end method

.method public evalMQSv_unrolled_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .registers 16

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    ushr-int/lit8 v2, v1, 0x6

    and-int/lit8 v1, v1, 0x3f

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    ushr-int/lit8 v4, v3, 0x6

    and-int/lit8 v3, v3, 0x3f

    const/4 v5, 0x0

    if-eqz v3, :cond_18

    const/4 v3, 0x1

    goto :goto_19

    :cond_18
    move v3, v5

    :goto_19
    add-int/2addr v4, v3

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v3

    new-instance v6, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v6, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    move v7, v5

    move v8, v7

    :goto_25
    if-ge v7, v2, :cond_34

    invoke-virtual {p2, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v9

    const/16 v11, 0x40

    invoke-virtual {v0, v9, v10, v8, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRange_xi(JII)I

    move-result v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    :cond_34
    if-eqz v1, :cond_3d

    invoke-virtual {p2, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10, v8, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRange_xi(JII)I

    :cond_3d
    invoke-virtual {p1, p3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-virtual {p3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    :goto_43
    iget p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    if-ge v5, p2, :cond_92

    invoke-virtual {v6, p3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-virtual {p3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 p2, v5, 0x1

    move v1, p2

    :goto_50
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    add-int/lit8 v2, v2, -0x3

    if-ge v1, v2, :cond_7b

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v7

    invoke-virtual {v6, p3, v4, v7, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMaskMove(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v7

    invoke-virtual {v6, p3, v4, v7, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMaskMove(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v7

    invoke-virtual {v6, p3, v4, v7, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMaskMove(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    add-int/lit8 v2, v1, 0x3

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v7

    invoke-virtual {v6, p3, v4, v7, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMaskMove(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_50

    :cond_7b
    :goto_7b
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    if-ge v1, v2, :cond_89

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v7

    invoke-virtual {v6, p3, v4, v7, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMaskMove(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7b

    :cond_89
    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v1

    invoke-virtual {p1, v6, v4, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMask(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    move v5, p2

    goto :goto_43

    :cond_92
    invoke-virtual {p3, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    return-void
.end method

.method public fast_sort_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .registers 23

    .line 0
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    new-instance v10, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v10, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v11, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v11, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v12, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    new-instance v13, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    add-int/lit8 v14, p2, -0x1

    invoke-static {v14}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;->Highest_One(I)I

    move-result v15

    move v7, v15

    :goto_23
    const/4 v6, 0x0

    const/4 v5, 0x1

    if-le v7, v5, :cond_b6

    shl-int/lit8 v0, v7, 0x1

    div-int v5, p2, v0

    mul-int/2addr v0, v5

    sub-int v0, p2, v0

    sub-int/2addr v0, v7

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    invoke-virtual {v12, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v0, v7

    invoke-virtual {v13, v9, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    move v4, v6

    :goto_3d
    if-ge v4, v5, :cond_61

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v11

    move/from16 v18, v4

    move v4, v7

    move/from16 v19, v5

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_casct_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v0, v7

    invoke-virtual {v12, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v0, v7

    invoke-virtual {v13, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v4, v18, 0x1

    move/from16 v5, v19

    goto :goto_3d

    :cond_61
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v11

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_casct_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    move v5, v15

    :goto_6d
    if-le v5, v7, :cond_b0

    :goto_6f
    sub-int v0, p2, v5

    if-ge v6, v0, :cond_a7

    and-int v0, v6, v7

    if-nez v0, :cond_9a

    add-int v0, v6, v7

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v0, v1

    invoke-virtual {v13, v9, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v13

    move-object/from16 v3, p1

    move-object v4, v12

    move/from16 v16, v5

    move-object v5, v11

    move/from16 v17, v6

    move/from16 v6, v16

    move/from16 v18, v7

    move/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->copy_for_casct(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v13, v10, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    goto :goto_a0

    :cond_9a
    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    :goto_a0
    add-int/lit8 v6, v17, 0x1

    move/from16 v5, v16

    move/from16 v7, v18

    goto :goto_6f

    :cond_a7
    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    ushr-int/lit8 v5, v16, 0x1

    goto :goto_6d

    :cond_b0
    move/from16 v18, v7

    ushr-int/lit8 v7, v18, 0x1

    goto/16 :goto_23

    :cond_b6
    invoke-virtual {v12, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v13, v9, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    const/4 v7, 0x2

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v11

    move v4, v14

    move v14, v5

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_casct_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v13, v9, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    :goto_cf
    if-le v15, v14, :cond_f9

    move v7, v6

    :goto_d2
    sub-int v0, p2, v15

    if-ge v7, v0, :cond_f2

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v13

    move-object/from16 v3, p1

    move-object v4, v12

    move-object v5, v11

    move v6, v15

    move/from16 v16, v7

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->copy_for_casct(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v13, v10, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    shl-int/2addr v0, v14

    invoke-virtual {v13, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v7, v16, 0x2

    goto :goto_d2

    :cond_f2
    move/from16 v16, v7

    ushr-int/lit8 v15, v15, 0x1

    move/from16 v6, v16

    goto :goto_cf

    :cond_f9
    return-void
.end method

.method public findRootsSplit2_HT_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .registers 13

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v2

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    const/4 v4, 0x0

    invoke-direct {p0, v0, v4, p2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-direct {p0, p1, v0, v4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->inv_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-virtual {p0, v0, p2, p1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->findRootsSplit_x2_x_c_HT_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    invoke-virtual {p0, p1, v1, p2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move v4, v9

    move-object v5, p1

    move-object v7, p2

    invoke-virtual/range {v3 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeFromXor(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    invoke-virtual {p2, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    return-void
.end method

.method public findRootsSplit_x2_x_c_HT_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .registers 9

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    ushr-int/2addr v1, v2

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn1h_rightmost:I

    move v4, v2

    :goto_14
    const/4 v5, -0x1

    if-eq v3, v5, :cond_3d

    shl-int/2addr v4, v2

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    move v5, v2

    :goto_1c
    if-ge v5, v4, :cond_24

    invoke-direct {p0, v0, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_24
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, v0, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    ushr-int v4, v1, v3

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_3a

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    :cond_3a
    add-int/lit8 v3, v3, -0x1

    goto :goto_14

    :cond_3d
    return-void
.end method

.method public for_mul_xorrange_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .registers 7

    .line 0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_15

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    invoke-virtual {v1, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul_gf2x_xor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p3, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    return-void
.end method

.method public genSecretMQS_gf2_opt(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .registers 25

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v10, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v10, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v11, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    const/4 v12, 0x1

    add-int/2addr v3, v12

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    add-int/2addr v4, v12

    mul-int/2addr v3, v4

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v3, v4

    invoke-direct {v11, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v13, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MQv_GFqn_SIZE:I

    invoke-direct {v13, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    const/4 v14, 0x0

    move v3, v14

    :goto_26
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    if-gt v3, v4, :cond_4b

    move v4, v14

    :goto_2b
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    if-gt v4, v5, :cond_42

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    add-int/2addr v5, v12

    mul-int/2addr v5, v4

    add-int/2addr v5, v3

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v5, v6

    invoke-virtual {v11, v5, v13, v14, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v13, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_42
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v4, v3

    invoke-virtual {v13, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_4b
    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_ROW:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    sub-int/2addr v5, v12

    mul-int/2addr v4, v5

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v4, v5

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    move v4, v12

    :goto_5a
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    if-ge v4, v5, :cond_83

    ushr-int/lit8 v5, v4, 0x6

    and-int/lit8 v6, v4, 0x3f

    const-wide/16 v7, 0x1

    shl-long v6, v7, v6

    invoke-virtual {v3, v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    move v5, v14

    :goto_6a
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    if-ge v5, v6, :cond_7b

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v0, v3, v6, v3, v14}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v3, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6a

    :cond_7b
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5a

    :cond_83
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->indexReset()V

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MQv_GFqn_SIZE:I

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    new-instance v4, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    mul-int/2addr v5, v6

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v5, v6

    invoke-direct {v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    invoke-direct {v0, v4, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->special_buffer(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    new-instance v15, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v15, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    new-instance v9, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v9, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v9, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v9, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    sub-int/2addr v5, v12

    invoke-virtual {v1, v9, v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorMatrix_NoMove(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    invoke-virtual {v13, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    add-int/2addr v5, v12

    invoke-virtual {v1, v13, v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    new-instance v8, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v8, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    move v4, v12

    :goto_d4
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    if-ge v4, v5, :cond_ef

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    invoke-direct {v0, v1, v8, v15, v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->dotProduct_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_ROW:I

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v5, v6

    invoke-virtual {v8, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    invoke-virtual {v1, v9, v5, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_d4

    :cond_ef
    :goto_ef
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    if-ge v4, v5, :cond_107

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v13, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v13, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    invoke-virtual {v1, v13, v5, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_ef

    :cond_107
    new-instance v7, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v7, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    new-instance v6, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_MUL:I

    invoke-direct {v6, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    move v5, v12

    :goto_116
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    if-ge v5, v3, :cond_22b

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v3, v4

    invoke-virtual {v15, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    invoke-virtual {v8, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {v9, v15}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    new-instance v12, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    neg-int v14, v14

    invoke-direct {v12, v8, v14}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-virtual {v3, v4, v11, v12}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul_gf2x(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 v12, 0x1

    :goto_138
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    if-gt v12, v3, :cond_175

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v17, v12, v14

    const/4 v4, 0x0

    const/16 v18, 0x0

    move-object v3, v10

    move/from16 v19, v5

    move-object v5, v9

    move-object/from16 v20, v6

    move/from16 v6, v18

    move-object/from16 v18, v7

    move-object v7, v11

    move-object/from16 v21, v8

    move/from16 v8, v17

    move-object v2, v9

    move v9, v14

    invoke-virtual/range {v3 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeFromXor(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    move-object/from16 v4, v21

    invoke-virtual {v0, v3, v10, v4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_xorrange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v4, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v12, v12, 0x1

    move-object v9, v2

    move-object v8, v4

    move-object/from16 v7, v18

    move/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v2, p2

    goto :goto_138

    :cond_175
    move/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v18, v7

    move-object v4, v8

    move-object v2, v9

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v4, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v5, v19, 0x1

    move v3, v5

    :goto_190
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    if-ge v3, v6, :cond_1e7

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v6

    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v7

    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v8

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v9

    move-object/from16 v12, v20

    invoke-virtual {v0, v12, v4, v15}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    const/16 v16, 0x1

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v0, v12, v4, v15, v14}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_mul_xorrange_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    move/from16 v17, v5

    move-object/from16 v5, v18

    invoke-virtual {v0, v12, v5, v2, v14}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_mul_xorrange_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    const/4 v14, 0x0

    invoke-direct {v0, v1, v14, v12}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_ROW:I

    move-object/from16 v18, v10

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v14, v10

    add-int/2addr v6, v14

    invoke-virtual {v4, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    invoke-virtual {v15, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    invoke-virtual {v5, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v6, v7

    add-int/2addr v9, v6

    invoke-virtual {v2, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v10, v18

    move-object/from16 v18, v5

    move/from16 v5, v17

    goto :goto_190

    :cond_1e7
    move/from16 v17, v5

    move-object/from16 v5, v18

    move-object/from16 v12, v20

    move-object/from16 v18, v10

    invoke-virtual {v13, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    neg-int v6, v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    :goto_1f8
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    if-ge v3, v6, :cond_214

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v6, v8

    invoke-virtual {v13, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    add-int/2addr v6, v7

    invoke-direct {v0, v1, v5, v13, v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->dotProduct_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f8

    :cond_214
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_ROW:I

    mul-int/2addr v6, v3

    add-int/2addr v3, v6

    invoke-virtual {v5, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    move-object v9, v2

    move-object v8, v4

    move-object v7, v5

    move-object v6, v12

    move/from16 v5, v17

    move-object/from16 v10, v18

    const/4 v12, 0x1

    const/4 v14, 0x0

    move-object/from16 v2, p2

    goto/16 :goto_116

    :cond_22b
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MQv_GFqn_SIZE:I

    sub-int/2addr v2, v3

    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_VINEGAR:I

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    mul-int/2addr v2, v0

    invoke-virtual {v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->indexReset()V

    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->indexReset()V

    return-void
.end method

.method public interpolateHFE_FS_ref(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)I
    .registers 23

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v1, p3

    new-instance v10, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-direct {v10, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v11, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    new-instance v12, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v3, v4

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v8, v9, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    new-instance v13, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v13, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    new-instance v14, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v14, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 v15, 0x0

    move v3, v15

    :goto_34
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    if-ge v3, v4, :cond_48

    invoke-virtual {v0, v14, v9, v13}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->evalHFEv_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v14, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-virtual {v13, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_48
    invoke-virtual {v13, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {v14, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    move v1, v15

    :goto_4f
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    if-ge v1, v2, :cond_a9

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v8, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v14, v9, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v8, v14, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-virtual {v11, v14}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {v12, v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    add-int/lit8 v16, v1, 0x1

    move/from16 v7, v16

    :goto_6c
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    if-ge v7, v1, :cond_9c

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v8, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v11, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-virtual {v12, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-virtual {v10, v13, v12, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeFromXor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-virtual {v0, v8, v9, v10}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->evalHFEv_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 v6, 0x0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object v3, v14

    move/from16 v17, v5

    move-object v5, v11

    move/from16 v18, v7

    move/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeXor(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    add-int/lit8 v7, v18, 0x1

    goto :goto_6c

    :cond_9c
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v14, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-virtual {v13, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    move/from16 v1, v16

    goto :goto_4f

    :cond_a9
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->indexReset()V

    return v15
.end method

.method public invMatrixLU_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V
    .registers 25

    .line 0
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v0, p2

    new-instance v12, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v12, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    new-instance v13, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v13, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    new-instance v14, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    move-object/from16 v0, p3

    invoke-direct {v14, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$1;->$SwitchMap$org$bouncycastle$pqc$crypto$gemss$GeMSSEngine$FunctionParams:[I

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v15, 0x0

    const/4 v9, 0x1

    if-eq v0, v9, :cond_40

    const/4 v1, 0x2

    if-ne v0, v1, :cond_38

    iget v0, v10, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    iget v1, v10, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    sub-int/2addr v1, v9

    iget v2, v10, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    iget v3, v10, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    iget v4, v10, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_NV_SIZE:I

    :goto_31
    move v8, v0

    move/from16 v16, v1

    move v7, v2

    move v6, v3

    move v5, v4

    goto :goto_51

    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Input"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    iget v0, v10, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MATRIXn_SIZE:I

    invoke-virtual {v11, v15, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    iget v0, v10, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnq:I

    iget v1, v10, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    sub-int/2addr v1, v9

    iget v2, v10, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v3, v10, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnr:I

    iget v4, v10, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_N_SIZE:I

    goto :goto_31

    :goto_51
    new-instance v4, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v4, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v3, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    move v2, v15

    move/from16 v17, v2

    :goto_5e
    if-ge v2, v8, :cond_99

    const/16 v18, 0x40

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 p2, v2

    move-object v2, v3

    move-object/from16 p3, v3

    move-object v3, v12

    move-object/from16 p4, v4

    move-object v4, v13

    move v15, v5

    move/from16 v5, v17

    move v10, v6

    move/from16 v6, p2

    move/from16 v19, v7

    move/from16 v7, v18

    move/from16 v18, v8

    move/from16 v8, v16

    move v11, v9

    move/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->loop_xor_loop_move_xorandmask_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IIIII)I

    move-result v17

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->moveIncremental()V

    add-int/lit8 v2, p2, 0x1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move v6, v10

    move v9, v11

    move v5, v15

    move/from16 v8, v18

    move/from16 v7, v19

    const/4 v15, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    goto :goto_5e

    :cond_99
    move/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move v15, v5

    move v10, v6

    move/from16 v19, v7

    move v11, v9

    const-wide/16 v8, 0x1

    if-le v10, v11, :cond_cd

    sub-int/2addr v10, v11

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    move-object v3, v12

    move-object v4, v13

    move/from16 v5, v17

    move/from16 v6, p2

    move v7, v10

    move-wide v12, v8

    move/from16 v8, v16

    move/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->loop_xor_loop_move_xorandmask_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IIIII)I

    shl-long v0, v12, v10

    move/from16 v3, p2

    move-object/from16 v2, p4

    invoke-virtual {v2, v3, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    move/from16 v0, v19

    :goto_c9
    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    goto :goto_da

    :cond_cd
    move/from16 v3, p2

    move-object/from16 v2, p4

    move-wide v12, v8

    move/from16 v0, v19

    if-ne v10, v11, :cond_da

    invoke-virtual {v2, v3, v12, v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    goto :goto_c9

    :cond_da
    :goto_da
    invoke-virtual {v14, v15}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    move/from16 v1, v16

    :goto_df
    if-lez v1, :cond_10f

    ushr-int/lit8 v3, v1, 0x6

    rsub-int/lit8 v3, v3, -0x1

    invoke-virtual {v14, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    neg-int v3, v0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    invoke-virtual {v4, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 v5, 0x0

    :goto_f4
    if-ge v5, v1, :cond_10a

    ushr-int/lit8 v6, v5, 0x6

    invoke-virtual {v14, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v6

    and-int/lit8 v8, v5, 0x3f

    ushr-long/2addr v6, v8

    and-long/2addr v6, v12

    neg-long v6, v6

    invoke-virtual {v4, v2, v0, v6, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMask(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    invoke-virtual {v4, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_f4

    :cond_10a
    add-int/lit8 v1, v1, -0x1

    move-object/from16 p3, v4

    goto :goto_df

    :cond_10f
    return-void
.end method

.method public mul_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .registers 7

    .line 0
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v0

    invoke-virtual {p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-virtual {p3, v1, p2, p4}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul_gf2x(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    const/4 p2, 0x0

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    return-void
.end method

.method public mul_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-virtual {v0, v1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul_gf2x(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 p2, 0x0

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    return-void
.end method

.method public mul_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul_gf2x(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p3, p0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    return-void
.end method

.method public mul_rem_xorrange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-virtual {v0, v1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul_gf2x(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem:Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;

    iget-object p3, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    invoke-virtual {p2, p3, p1, p0}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->rem_gf2n_xor([JI[J)V

    return-void
.end method

.method public mul_rem_xorrange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .registers 7

    .line 0
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v0

    invoke-virtual {p3, p4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-virtual {p4, v1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul_gf2x(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem:Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;

    iget-object p4, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    invoke-virtual {p2, p4, p1, p0}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->rem_gf2n_xor([JI[J)V

    invoke-virtual {p3, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    return-void
.end method

.method public mul_xorrange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .registers 4

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul_gf2x_xor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    return-void
.end method

.method public signHFE_FeistelPatarin(Ljava/security/SecureRandom;[B[BII[B)V
    .registers 39

    .line 0
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    iput-object v9, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->random:Ljava/security/SecureRandom;

    new-instance v11, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v11, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v12, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v12, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    and-int/lit8 v13, v1, 0x7

    ushr-int/lit8 v1, v1, 0x3

    const/4 v15, 0x1

    if-eqz v13, :cond_2d

    move v2, v15

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    add-int v7, v1, v2

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEvr:I

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;->maskUINT(I)J

    move-result-wide v5

    new-instance v4, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;

    invoke-direct {v4, v8}, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;)V

    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqv:I

    invoke-direct {v3, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    add-int/2addr v1, v15

    new-array v2, v1, [Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    move-object/from16 v1, p6

    invoke-direct {v8, v4, v2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->precSignHFE(Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;[Lorg/bouncycastle/pqc/crypto/gemss/Pointer;[B)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget-object v14, v4, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->F_struct:Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;->poly:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v1, v14}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    new-instance v14, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v14, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Sha3BitStrength:I

    ushr-int/lit8 v0, v0, 0x3

    new-array v15, v0, [B

    const/16 v16, 0x0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move-object v10, v1

    move-object v1, v14

    move-object/from16 v23, v2

    move/from16 v2, v16

    move-object/from16 v24, v3

    move/from16 v3, v17

    move-object/from16 v25, v4

    move-object/from16 v4, p3

    move-wide/from16 v26, v5

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v28, v12

    move v12, v7

    move-object v7, v15

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->getSHA3Hash(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II[BII[B)V

    new-instance v15, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_SIGN_UNCOMPRESSED:I

    invoke-direct {v15, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v7, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-direct {v7, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    invoke-direct {v0, v7}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const-wide/16 v1, 0x0

    const/4 v5, 0x1

    :goto_97
    iget v3, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_ITE:I

    if-gt v5, v3, :cond_225

    iget v3, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    invoke-virtual {v7, v15, v14, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeFromXor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v3, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    if-eqz v3, :cond_b4

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget-wide v2, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2m:J

    invoke-virtual {v7, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getByte(I)B

    move-result v1

    int-to-long v1, v1

    :cond_b4
    move-wide/from16 v29, v1

    :goto_b6
    iget v1, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    if-eqz v1, :cond_d8

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    iget v2, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqn:I

    iget v3, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqm:I

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v9, v2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->fillRandomBytes(ILjava/security/SecureRandom;I)V

    iget v2, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    const-wide/16 v3, 0x1

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    shl-long/2addr v3, v1

    neg-long v3, v3

    move-object v1, v0

    move-object/from16 p6, v14

    move v14, v5

    move-wide/from16 v5, v29

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setAndThenXorByte(IJJ)V

    goto :goto_e3

    :cond_d8
    move-object/from16 p6, v14

    move v14, v5

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqm:I

    iget v2, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqn:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v1, v9, v2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->fillRandomBytes(ILjava/security/SecureRandom;I)V

    :goto_e3
    iget v1, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_f5

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget-wide v3, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2n:J

    invoke-virtual {v7, v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    :goto_f2
    move-object/from16 v6, v25

    goto :goto_f7

    :cond_f5
    const/4 v2, 0x1

    goto :goto_f2

    :goto_f7
    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->T:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    sget-object v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->N:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {v8, v11, v7, v1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->vecMatProduct(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    move-object/from16 v5, v24

    const/4 v1, 0x0

    invoke-virtual {v5, v1, v9, v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->fillRandom(ILjava/security/SecureRandom;I)V

    if-eqz v13, :cond_10f

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqv:I

    sub-int/2addr v1, v2

    move-wide/from16 v3, v26

    invoke-virtual {v5, v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    goto :goto_111

    :cond_10f
    move-wide/from16 v3, v26

    :goto_111
    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->F_HFEv:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-virtual {v8, v10, v5, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->evalMQSv_unrolled_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 v1, 0x0

    :goto_117
    iget v2, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    if-gt v1, v2, :cond_151

    iget-object v2, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_GFqn:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    move-object/from16 p3, v0

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    move-wide/from16 v26, v3

    aget-object v3, v23, v1

    iget v4, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v0, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    sget-object v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->V:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {v8, v2, v5, v0, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->vecMatProduct(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    add-int/lit8 v2, v1, 0x1

    mul-int v3, v1, v2

    const/4 v4, 0x1

    ushr-int/2addr v3, v4

    add-int/2addr v3, v4

    mul-int v17, v0, v3

    aget-object v18, v23, v1

    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_GFqn:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    const/16 v21, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v10

    move-object/from16 v20, v1

    move/from16 v22, v0

    invoke-virtual/range {v16 .. v22}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeFromXor(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    move-object/from16 v0, p3

    move v1, v2

    move-wide/from16 v3, v26

    goto :goto_117

    :cond_151
    move-object/from16 p3, v0

    move-wide/from16 v26, v3

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->F_struct:Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;

    invoke-direct {v8, v7, v0, v11}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->chooseRootHFE_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)I

    move-result v0

    if-eqz v0, :cond_21a

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get()J

    move-result-wide v2

    iget v4, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnr:I

    shl-long/2addr v2, v4

    invoke-virtual {v7, v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v2, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqv:I

    add-int/lit8 v20, v2, -0x1

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnr:I

    rsub-int/lit8 v21, v1, 0x40

    const/16 v19, 0x0

    move-object/from16 v16, v7

    move/from16 v17, v0

    move-object/from16 v18, v5

    invoke-virtual/range {v16 .. v21}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeRotate(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;III)V

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqv:I

    add-int v2, v0, v1

    iget v3, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    if-ne v2, v3, :cond_19b

    add-int/2addr v0, v1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v1

    iget v3, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnr:I

    rsub-int/lit8 v3, v3, 0x40

    ushr-long/2addr v1, v3

    invoke-virtual {v7, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    :cond_19b
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->S:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->NV:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {v8, v15, v7, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->vecMatProduct(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_ITE:I

    if-eq v14, v0, :cond_1f9

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v14

    iget v2, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nvm:I

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    sub-int/2addr v1, v2

    invoke-virtual {v15, v0, v15, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr:I

    if-eqz v1, :cond_1bd

    iget-wide v1, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2m:J

    not-long v1, v1

    invoke-virtual {v15, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    :cond_1bd
    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST:I

    move-object/from16 v4, p6

    invoke-virtual {v4, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->toBytes(I)[B

    move-result-object v3

    iget v2, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST:I

    array-length v1, v3

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v18, p3

    move-object/from16 v0, p0

    move/from16 v19, v1

    move-object/from16 v1, v28

    move/from16 v20, v2

    move/from16 v2, v16

    move-object/from16 v16, v3

    move-wide/from16 v21, v26

    move/from16 v3, v20

    move-object/from16 v31, v4

    move-object/from16 v4, v16

    move-object/from16 v20, v5

    move/from16 v5, v17

    move-object/from16 v17, v6

    move/from16 v6, v19

    move-object/from16 v19, v7

    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->getSHA3Hash(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II[BII[B)V

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->swap(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    goto :goto_207

    :cond_1f9
    move-object/from16 v18, p3

    move-object/from16 v1, p6

    move-object/from16 v20, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    move-wide/from16 v21, v26

    move-object/from16 v0, v28

    :goto_207
    add-int/lit8 v5, v14, 0x1

    move-object/from16 v28, v0

    move-object v14, v1

    move-object/from16 v25, v17

    move-object/from16 v0, v18

    move-object/from16 v7, v19

    move-object/from16 v24, v20

    move-wide/from16 v26, v21

    move-wide/from16 v1, v29

    goto/16 :goto_97

    :cond_21a
    move-object/from16 v0, p3

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move v5, v14

    move-object/from16 v14, p6

    goto/16 :goto_b6

    :cond_225
    const/4 v2, 0x1

    if-ne v3, v2, :cond_23b

    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getLength()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    invoke-virtual {v15, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->toBytes(I)[B

    move-result-object v0

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqnv:I

    move-object/from16 v2, p2

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_240

    :cond_23b
    move-object/from16 v2, p2

    invoke-virtual {v8, v2, v15}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->compress_signHFE([BLorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    :goto_240
    return-void
.end method

.method public sign_openHFE_huncomp_pk([BI[BLorg/bouncycastle/pqc/crypto/gemss/PointerUnion;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)I
    .registers 25

    .line 0
    move-object/from16 v8, p0

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    new-instance v11, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_SIGN_UNCOMPRESSED:I

    invoke-direct {v11, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v12, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v12, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    new-instance v13, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v13, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/16 v0, 0x40

    new-array v14, v0, [B

    new-instance v15, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_ITE:I

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    mul-int/2addr v0, v1

    invoke-direct {v15, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->get()J

    move-result-wide v6

    const/4 v5, 0x1

    invoke-virtual {v10, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    move-object/from16 v0, p3

    invoke-direct {v8, v11, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->uncompress_signHFE(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;[B)V

    const/4 v2, 0x0

    const/16 v3, 0x40

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v4, p1

    move/from16 v5, v16

    move-wide/from16 v17, v6

    move/from16 v6, p2

    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->getSHA3Hash(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II[BII[B)V

    const/4 v7, 0x1

    :goto_55
    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_ITE:I

    if-ge v7, v0, :cond_7e

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    mul-int v2, v7, v0

    const/4 v5, 0x0

    iget v6, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST:I

    const/16 v3, 0x40

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v4, v14

    move/from16 v16, v7

    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->getSHA3Hash(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II[BII[B)V

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    add-int/lit8 v7, v16, -0x1

    mul-int/2addr v0, v7

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-wide v2, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2m:J

    invoke-virtual {v15, v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    add-int/lit8 v7, v16, 0x1

    goto :goto_55

    :cond_7e
    move/from16 v16, v7

    const/4 v1, 0x1

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    add-int/lit8 v7, v16, -0x1

    mul-int/2addr v0, v7

    iget v2, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    iget-wide v2, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2m:J

    invoke-virtual {v15, v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    invoke-direct {v8, v12, v11, v9, v10}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->evalMQShybrid8_uncomp_nocst_gf2_m(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq:I

    move-wide/from16 v2, v17

    invoke-virtual {v12, v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_ITE:I

    sub-int/2addr v0, v1

    :goto_9c
    if-lez v0, :cond_dd

    iget v4, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    mul-int/2addr v4, v0

    iget v5, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    invoke-virtual {v12, v15, v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    iget v4, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    iget v5, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_ITE:I

    sub-int/2addr v5, v1

    sub-int/2addr v5, v0

    iget v6, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nvm:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iget v5, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    sub-int/2addr v5, v1

    iget-wide v6, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2m:J

    invoke-virtual {v12, v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    iget v5, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    sub-int/2addr v5, v1

    invoke-virtual {v11, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v6

    invoke-virtual {v12, v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    iget v5, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nvm:I

    if-eq v5, v1, :cond_cf

    iget v6, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v12, v6, v11, v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    :cond_cf
    invoke-direct {v8, v13, v12, v9, v10}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->evalMQShybrid8_uncomp_nocst_gf2_m(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    iget v4, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq:I

    invoke-virtual {v13, v4, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    invoke-virtual {v13, v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->swap(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_9c

    :cond_dd
    iget v0, v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    invoke-virtual {v12, v15, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->isEqual_nocst_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)I

    move-result v0

    return v0
.end method

.method public vecMatProduct(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V
    .registers 23

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    move-object/from16 v4, p3

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    sget-object v4, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$1;->$SwitchMap$org$bouncycastle$pqc$crypto$gemss$GeMSSEngine$FunctionParams:[I

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const-string v5, "Invalid input for vecMatProduct"

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v4, v9, :cond_4d

    if-eq v4, v8, :cond_43

    if-eq v4, v7, :cond_37

    if-ne v4, v6, :cond_31

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    invoke-virtual {v1, v10, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnq:I

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    move v13, v10

    goto :goto_57

    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v10, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEvq:I

    :goto_40
    move v13, v10

    move v12, v11

    goto :goto_57

    :cond_43
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-virtual {v1, v10, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    goto :goto_40

    :cond_4d
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v10, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnq:I

    goto :goto_40

    :goto_57
    const-wide/16 v14, 0x1

    if-ge v13, v4, :cond_7a

    invoke-virtual {v2, v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v16

    :goto_5f
    const/16 v6, 0x40

    if-ge v10, v6, :cond_73

    and-long v7, v16, v14

    neg-long v7, v7

    invoke-virtual {v1, v3, v11, v7, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMask(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    invoke-virtual {v3, v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    ushr-long v16, v16, v9

    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x2

    goto :goto_5f

    :cond_73
    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v10, 0x0

    goto :goto_57

    :cond_7a
    sget-object v4, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$1;->$SwitchMap$org$bouncycastle$pqc$crypto$gemss$GeMSSEngine$FunctionParams:[I

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v4, v4, v7

    if-eq v4, v9, :cond_b1

    const/4 v7, 0x2

    if-eq v4, v7, :cond_a3

    const/4 v6, 0x3

    if-eq v4, v6, :cond_94

    const/4 v6, 0x4

    if-ne v4, v6, :cond_8e

    goto :goto_b1

    :cond_8e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_94
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEvr:I

    if-nez v4, :cond_99

    return-void

    :cond_99
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEvq:I

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v4

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEvr:I

    :goto_a1
    const/4 v10, 0x0

    goto :goto_ba

    :cond_a3
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-nez v4, :cond_a8

    return-void

    :cond_a8
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v4

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    goto :goto_a1

    :cond_b1
    :goto_b1
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnq:I

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v4

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnr:I

    goto :goto_a1

    :goto_ba
    if-ge v10, v2, :cond_c9

    and-long v6, v4, v14

    neg-long v6, v6

    invoke-virtual {v1, v3, v11, v6, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMask(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    invoke-virtual {v3, v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    ushr-long/2addr v4, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_ba

    :cond_c9
    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->M:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    move-object/from16 v3, p4

    if-ne v3, v2, :cond_db

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr:I

    if-eqz v2, :cond_db

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    sub-int/2addr v2, v9

    iget-wide v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2m:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    :cond_db
    return-void
.end method

###### Class org.bouncycastle.pqc.crypto.gemss.GeMSSEngine.AnonymousClass1 (org.bouncycastle.pqc.crypto.gemss.GeMSSEngine$1)
.class synthetic Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$bouncycastle$pqc$crypto$gemss$GeMSSEngine$FunctionParams:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->values()[Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$1;->$SwitchMap$org$bouncycastle$pqc$crypto$gemss$GeMSSEngine$FunctionParams:[I

    :try_start_9
    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->N:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$1;->$SwitchMap$org$bouncycastle$pqc$crypto$gemss$GeMSSEngine$FunctionParams:[I

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->NV:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$1;->$SwitchMap$org$bouncycastle$pqc$crypto$gemss$GeMSSEngine$FunctionParams:[I

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->V:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$1;->$SwitchMap$org$bouncycastle$pqc$crypto$gemss$GeMSSEngine$FunctionParams:[I

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->M:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method

###### Class org.bouncycastle.pqc.crypto.gemss.GeMSSEngine.FunctionParams (org.bouncycastle.pqc.crypto.gemss.GeMSSEngine$FunctionParams)
.class final enum Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FunctionParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

.field public static final enum M:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

.field public static final enum N:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

.field public static final enum NV:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

.field public static final enum V:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;


# direct methods
.method private static synthetic $values()[Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;
    .registers 4

    .line 0
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->NV:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->V:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->N:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    sget-object v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->M:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    filled-new-array {v0, v1, v2, v3}, [Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    const-string v1, "NV"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->NV:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    const-string v1, "V"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->V:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    const-string v1, "N"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->N:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    const-string v1, "M"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->M:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->$values()[Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->$VALUES:[Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;
    .registers 2

    .line 0
    const-class v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    return-object p0
.end method

.method public static values()[Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;
    .registers 1

    .line 0
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->$VALUES:[Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {v0}, [Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    return-object v0
.end method
