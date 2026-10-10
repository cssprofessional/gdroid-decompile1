###### Class org.bouncycastle.pqc.crypto.sphincs.Wots (org.bouncycastle.pqc.crypto.sphincs.Wots)
.class Lorg/bouncycastle/pqc/crypto/sphincs/Wots;
.super Ljava/lang/Object;


# static fields
.field static final WOTS_L:I = 0x43

.field static final WOTS_L1:I = 0x40

.field static final WOTS_LOGW:I = 0x4

.field static final WOTS_LOG_L:I = 0x7

.field static final WOTS_SIGBYTES:I = 0x860

.field static final WOTS_W:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clear([BII)V
    .registers 6

    .line 0
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-eq v1, p2, :cond_b

    add-int v2, v1, p1

    aput-byte v0, p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    return-void
.end method

.method public static expand_seed([BI[BI)V
    .registers 11

    .line 0
    const/16 v0, 0x860

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->clear([BII)V

    const-wide/16 v3, 0x860

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/Seed;->prg([BIJ[BI)V

    return-void
.end method

.method public static gen_chain(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BII)V
    .registers 16

    .line 0
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x20

    if-ge v1, v2, :cond_11

    add-int v2, v1, p2

    add-int v3, v1, p4

    aget-byte v3, p3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    :goto_11
    if-ge v0, p7, :cond_27

    const/16 p3, 0x10

    if-ge v0, p3, :cond_27

    mul-int/lit8 p3, v0, 0x20

    add-int v7, p6, p3

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p1

    move v5, p2

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_n_n_mask([BI[BI[BI)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_27
    return-void
.end method


# virtual methods
.method public wots_pkgen(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V
    .registers 16

    .line 0
    invoke-static {p2, p3, p4, p5}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->expand_seed([BI[BI)V

    const/4 p0, 0x0

    :goto_4
    const/16 p4, 0x43

    if-ge p0, p4, :cond_1a

    mul-int/lit8 p4, p0, 0x20

    add-int v4, p3, p4

    const/16 v7, 0xf

    move-object v0, p1

    move-object v1, p2

    move v2, v4

    move-object v3, p2

    move-object v5, p6

    move v6, p7

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->gen_chain(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BII)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    :cond_1a
    return-void
.end method

.method public wots_sign(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[B[B[B)V
    .registers 21

    .line 0
    move/from16 v0, p3

    const/16 v1, 0x43

    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_9
    const/16 v6, 0x40

    if-ge v4, v6, :cond_28

    div-int/lit8 v6, v4, 0x2

    aget-byte v6, p4, v6

    and-int/lit8 v7, v6, 0xf

    aput v7, v2, v4

    add-int/lit8 v7, v4, 0x1

    and-int/lit16 v6, v6, 0xff

    ushr-int/lit8 v6, v6, 0x4

    aput v6, v2, v7

    aget v7, v2, v4

    rsub-int/lit8 v7, v7, 0xf

    add-int/2addr v5, v7

    rsub-int/lit8 v6, v6, 0xf

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x2

    goto :goto_9

    :cond_28
    :goto_28
    if-ge v4, v1, :cond_33

    and-int/lit8 v6, v5, 0xf

    aput v6, v2, v4

    ushr-int/lit8 v5, v5, 0x4

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_33
    move-object/from16 v4, p2

    move-object/from16 v5, p5

    invoke-static {v4, v0, v5, v3}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->expand_seed([BI[BI)V

    :goto_3a
    if-ge v3, v1, :cond_51

    mul-int/lit8 v5, v3, 0x20

    add-int v10, v0, v5

    const/4 v12, 0x0

    aget v13, v2, v3

    move-object v6, p1

    move-object/from16 v7, p2

    move v8, v10

    move-object/from16 v9, p2

    move-object/from16 v11, p6

    invoke-static/range {v6 .. v13}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->gen_chain(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :cond_51
    return-void
.end method

.method public wots_verify(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[B[B)V
    .registers 18

    .line 0
    const/16 v0, 0x43

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_7
    const/16 v5, 0x40

    if-ge v3, v5, :cond_26

    div-int/lit8 v5, v3, 0x2

    aget-byte v5, p5, v5

    and-int/lit8 v6, v5, 0xf

    aput v6, v1, v3

    add-int/lit8 v6, v3, 0x1

    and-int/lit16 v5, v5, 0xff

    ushr-int/lit8 v5, v5, 0x4

    aput v5, v1, v6

    aget v6, v1, v3

    rsub-int/lit8 v6, v6, 0xf

    add-int/2addr v4, v6

    rsub-int/lit8 v5, v5, 0xf

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x2

    goto :goto_7

    :cond_26
    :goto_26
    if-ge v3, v0, :cond_31

    and-int/lit8 v5, v4, 0xf

    aput v5, v1, v3

    ushr-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_31
    :goto_31
    if-ge v2, v0, :cond_48

    mul-int/lit8 v5, v2, 0x20

    add-int v7, p4, v5

    aget v3, v1, v2

    mul-int/lit8 v9, v3, 0x20

    rsub-int/lit8 v10, v3, 0xf

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object/from16 v8, p6

    invoke-static/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->gen_chain(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_48
    return-void
.end method
