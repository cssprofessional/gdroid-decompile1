###### Class org.bouncycastle.pqc.crypto.sphincs.Horst (org.bouncycastle.pqc.crypto.sphincs.Horst)
.class Lorg/bouncycastle/pqc/crypto/sphincs/Horst;
.super Ljava/lang/Object;


# static fields
.field static final HORST_K:I = 0x20

.field static final HORST_LOGT:I = 0x10

.field static final HORST_SIGBYTES:I = 0x3400

.field static final HORST_SKBYTES:I = 0x20

.field static final HORST_T:I = 0x10000

.field static final N_MASKS:I = 0x20


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static expand_seed([B[B)V
    .registers 8

    .line 0
    const-wide/32 v2, 0x200000

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sphincs/Seed;->prg([BIJ[BI)V

    return-void
.end method

.method public static horst_sign(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[B[B[B[B)I
    .registers 28

    .line 0
    const/high16 v0, 0x200000

    new-array v0, v0, [B

    const v1, 0x3fffe0

    new-array v1, v1, [B

    move-object/from16 v2, p4

    invoke-static {v0, v2}, Lorg/bouncycastle/pqc/crypto/sphincs/Horst;->expand_seed([B[B)V

    const/4 v9, 0x0

    move v2, v9

    :goto_10
    const/high16 v3, 0x10000

    const v10, 0xffff

    const/16 v11, 0x20

    if-ge v2, v3, :cond_25

    add-int/2addr v10, v2

    mul-int/2addr v10, v11

    mul-int/lit8 v3, v2, 0x20

    move-object/from16 v12, p0

    invoke-virtual {v12, v1, v10, v0, v3}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_n_n([BI[BI)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_25
    move-object/from16 v12, p0

    move v13, v9

    :goto_28
    const/16 v2, 0x10

    const/4 v3, 0x1

    if-ge v13, v2, :cond_6c

    rsub-int/lit8 v2, v13, 0x10

    shl-int v2, v3, v2

    sub-int/2addr v2, v3

    int-to-long v14, v2

    rsub-int/lit8 v2, v13, 0xf

    shl-int v8, v3, v2

    add-int/lit8 v2, v8, -0x1

    int-to-long v6, v2

    move v5, v9

    :goto_3b
    if-ge v5, v8, :cond_69

    int-to-long v2, v5

    add-long/2addr v2, v6

    const-wide/16 v16, 0x20

    mul-long v2, v2, v16

    long-to-int v4, v2

    mul-int/lit8 v2, v5, 0x2

    int-to-long v2, v2

    add-long/2addr v2, v14

    mul-long v2, v2, v16

    long-to-int v3, v2

    mul-int/lit8 v16, v13, 0x40

    move-object/from16 v2, p0

    move/from16 v17, v3

    move-object v3, v1

    move/from16 v18, v5

    move-object v5, v1

    move-wide/from16 v19, v6

    move/from16 v6, v17

    move-object/from16 v7, p5

    move/from16 v17, v8

    move/from16 v8, v16

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    add-int/lit8 v5, v18, 0x1

    move/from16 v8, v17

    move-wide/from16 v6, v19

    goto :goto_3b

    :cond_69
    add-int/lit8 v13, v13, 0x1

    goto :goto_28

    :cond_6c
    const/16 v2, 0x7e0

    move v4, v2

    move/from16 v2, p2

    :goto_71
    const/16 v5, 0xfe0

    if-ge v4, v5, :cond_7f

    add-int/lit8 v5, v2, 0x1

    aget-byte v6, v1, v4

    aput-byte v6, p1, v2

    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_71

    :cond_7f
    move v4, v9

    :goto_80
    if-ge v4, v11, :cond_c9

    mul-int/lit8 v5, v4, 0x2

    aget-byte v6, p6, v5

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v3

    aget-byte v5, p6, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v6, v5

    move v5, v9

    :goto_91
    if-ge v5, v11, :cond_a0

    add-int/lit8 v7, v2, 0x1

    mul-int/lit8 v8, v6, 0x20

    add-int/2addr v8, v5

    aget-byte v8, v0, v8

    aput-byte v8, p1, v2

    add-int/lit8 v5, v5, 0x1

    move v2, v7

    goto :goto_91

    :cond_a0
    add-int/2addr v6, v10

    move v5, v9

    :goto_a2
    const/16 v7, 0xa

    if-ge v5, v7, :cond_c6

    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_ad

    add-int/lit8 v6, v6, 0x1

    goto :goto_af

    :cond_ad
    add-int/lit8 v6, v6, -0x1

    :goto_af
    move v7, v9

    :goto_b0
    if-ge v7, v11, :cond_bf

    add-int/lit8 v8, v2, 0x1

    mul-int/lit8 v12, v6, 0x20

    add-int/2addr v12, v7

    aget-byte v12, v1, v12

    aput-byte v12, p1, v2

    add-int/lit8 v7, v7, 0x1

    move v2, v8

    goto :goto_b0

    :cond_bf
    add-int/lit8 v6, v6, -0x1

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v5, v5, 0x1

    goto :goto_a2

    :cond_c6
    add-int/lit8 v4, v4, 0x1

    goto :goto_80

    :cond_c9
    :goto_c9
    if-ge v9, v11, :cond_d2

    aget-byte v0, v1, v9

    aput-byte v0, p3, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_c9

    :cond_d2
    const/16 v0, 0x3400

    return v0
.end method

.method public static horst_verify(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[B[B)I
    .registers 23

    .line 0
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move/from16 v9, p3

    const/16 v0, 0x400

    new-array v10, v0, [B

    add-int/lit16 v0, v9, 0x800

    const/4 v11, 0x0

    move v12, v11

    :goto_e
    const/16 v13, 0x8

    const/16 v14, 0x20

    if-ge v12, v14, :cond_c4

    mul-int/lit8 v1, v12, 0x2

    aget-byte v2, p5, v1

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    add-int/2addr v1, v3

    aget-byte v1, p5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v13

    add-int/2addr v2, v1

    and-int/lit8 v1, v2, 0x1

    if-nez v1, :cond_38

    invoke-virtual {v7, v10, v11, v8, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_n_n([BI[BI)I

    move v1, v11

    :goto_2a
    if-ge v1, v14, :cond_48

    add-int/lit8 v4, v1, 0x20

    add-int/lit8 v5, v0, 0x20

    add-int/2addr v5, v1

    aget-byte v5, v8, v5

    aput-byte v5, v10, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_38
    invoke-virtual {v7, v10, v14, v8, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_n_n([BI[BI)I

    move v1, v11

    :goto_3c
    if-ge v1, v14, :cond_48

    add-int/lit8 v4, v0, 0x20

    add-int/2addr v4, v1

    aget-byte v4, v8, v4

    aput-byte v4, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_48
    add-int/lit8 v0, v0, 0x40

    move v13, v0

    move v15, v3

    :goto_4c
    const/16 v0, 0xa

    if-ge v15, v0, :cond_96

    ushr-int/lit8 v16, v2, 0x1

    and-int/lit8 v0, v16, 0x1

    if-nez v0, :cond_73

    add-int/lit8 v0, v15, -0x1

    mul-int/lit8 v6, v0, 0x40

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v3, v10

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    move v0, v11

    :goto_66
    if-ge v0, v14, :cond_8f

    add-int/lit8 v1, v0, 0x20

    add-int v2, v13, v0

    aget-byte v2, v8, v2

    aput-byte v2, v10, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    :cond_73
    add-int/lit8 v0, v15, -0x1

    mul-int/lit8 v6, v0, 0x40

    const/16 v2, 0x20

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v3, v10

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    move v0, v11

    :goto_84
    if-ge v0, v14, :cond_8f

    add-int v1, v13, v0

    aget-byte v1, v8, v1

    aput-byte v1, v10, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_84

    :cond_8f
    add-int/lit8 v13, v13, 0x20

    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v16

    goto :goto_4c

    :cond_96
    ushr-int/lit8 v15, v2, 0x1

    const/4 v4, 0x0

    const/16 v6, 0x240

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v3, v10

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    move v0, v11

    :goto_a6
    if-ge v0, v14, :cond_bf

    mul-int/lit8 v1, v15, 0x20

    add-int/2addr v1, v9

    add-int/2addr v1, v0

    aget-byte v1, v8, v1

    aget-byte v2, v10, v0

    if-eq v1, v2, :cond_bc

    move v0, v11

    :goto_b3
    if-ge v0, v14, :cond_ba

    aput-byte v11, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b3

    :cond_ba
    const/4 v0, -0x1

    return v0

    :cond_bc
    add-int/lit8 v0, v0, 0x1

    goto :goto_a6

    :cond_bf
    add-int/lit8 v12, v12, 0x1

    move v0, v13

    goto/16 :goto_e

    :cond_c4
    move v12, v11

    :goto_c5
    if-ge v12, v14, :cond_dc

    mul-int/lit8 v2, v12, 0x20

    mul-int/lit8 v0, v12, 0x40

    add-int v4, v9, v0

    const/16 v6, 0x280

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    add-int/lit8 v12, v12, 0x1

    goto :goto_c5

    :cond_dc
    move v8, v11

    :goto_dd
    const/16 v0, 0x10

    if-ge v8, v0, :cond_f3

    mul-int/lit8 v2, v8, 0x20

    mul-int/lit8 v4, v8, 0x40

    const/16 v6, 0x2c0

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v3, v10

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    add-int/lit8 v8, v8, 0x1

    goto :goto_dd

    :cond_f3
    move v8, v11

    :goto_f4
    if-ge v8, v13, :cond_108

    mul-int/lit8 v2, v8, 0x20

    mul-int/lit8 v4, v8, 0x40

    const/16 v6, 0x300

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v3, v10

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    add-int/lit8 v8, v8, 0x1

    goto :goto_f4

    :cond_108
    move v8, v11

    :goto_109
    const/4 v0, 0x4

    if-ge v8, v0, :cond_11e

    mul-int/lit8 v2, v8, 0x20

    mul-int/lit8 v4, v8, 0x40

    const/16 v6, 0x340

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v3, v10

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    add-int/lit8 v8, v8, 0x1

    goto :goto_109

    :cond_11e
    move v8, v11

    :goto_11f
    const/4 v0, 0x2

    if-ge v8, v0, :cond_134

    mul-int/lit8 v2, v8, 0x20

    mul-int/lit8 v4, v8, 0x40

    const/16 v6, 0x380

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v3, v10

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    add-int/lit8 v8, v8, 0x1

    goto :goto_11f

    :cond_134
    const/4 v4, 0x0

    const/16 v6, 0x3c0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v10

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    return v11
.end method
