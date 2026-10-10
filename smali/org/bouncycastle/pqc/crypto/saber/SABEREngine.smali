###### Class org.bouncycastle.pqc.crypto.saber.SABEREngine (org.bouncycastle.pqc.crypto.saber.SABEREngine)
.class Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;
.super Ljava/lang/Object;


# static fields
.field public static final SABER_EP:I = 0xa

.field private static final SABER_HASHBYTES:I = 0x20

.field private static final SABER_KEYBYTES:I = 0x20

.field public static final SABER_N:I = 0x100

.field private static final SABER_NOISE_SEEDBYTES:I = 0x20

.field private static final SABER_SEEDBYTES:I = 0x20


# instance fields
.field private final SABER_BYTES_CCA_DEC:I

.field private final SABER_EQ:I

.field private final SABER_ET:I

.field private final SABER_INDCPA_PUBLICKEYBYTES:I

.field private final SABER_INDCPA_SECRETKEYBYTES:I

.field private final SABER_L:I

.field private final SABER_MU:I

.field private final SABER_POLYBYTES:I

.field private final SABER_POLYCOINBYTES:I

.field private final SABER_POLYCOMPRESSEDBYTES:I

.field private final SABER_POLYVECBYTES:I

.field private final SABER_POLYVECCOMPRESSEDBYTES:I

.field private final SABER_PUBLICKEYBYTES:I

.field private final SABER_SCALEBYTES_KEM:I

.field private final SABER_SECRETKEYBYTES:I

.field private final defaultKeySize:I

.field private final h1:I

.field private final h2:I

.field private final poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

.field protected final symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

.field private final usingAES:Z

.field protected final usingEffectiveMasking:Z

.field private final utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;


# direct methods
.method public constructor <init>(IIZZ)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->defaultKeySize:I

    iput-boolean p3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->usingAES:Z

    iput-boolean p4, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->usingEffectiveMasking:Z

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    const/4 p2, 0x2

    const/4 v0, 0x3

    const/16 v1, 0x8

    if-ne p1, p2, :cond_18

    const/16 p2, 0xa

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_MU:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_ET:I

    goto :goto_24

    :cond_18
    if-ne p1, v0, :cond_20

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_MU:I

    const/4 p2, 0x4

    :goto_1d
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_ET:I

    goto :goto_24

    :cond_20
    const/4 p2, 0x6

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_MU:I

    goto :goto_1d

    :goto_24
    if-eqz p3, :cond_2e

    new-instance p2, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;

    invoke-direct {p2}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;-><init>()V

    :goto_2b
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    goto :goto_34

    :cond_2e
    new-instance p2, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$ShakeSymmetric;

    invoke-direct {p2}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$ShakeSymmetric;-><init>()V

    goto :goto_2b

    :goto_34
    const/16 p2, 0x40

    if-eqz p4, :cond_3f

    const/16 p3, 0xc

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_EQ:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYCOINBYTES:I

    goto :goto_4a

    :cond_3f
    const/16 p3, 0xd

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_EQ:I

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_MU:I

    mul-int/lit16 p3, p3, 0x100

    div-int/2addr p3, v1

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYCOINBYTES:I

    :goto_4a
    iget p3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_EQ:I

    mul-int/lit16 p4, p3, 0x100

    div-int/2addr p4, v1

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYBYTES:I

    mul-int/2addr p4, p1

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYVECBYTES:I

    const/16 v0, 0x140

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYCOMPRESSEDBYTES:I

    mul-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYVECCOMPRESSEDBYTES:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_ET:I

    mul-int/lit16 v2, v0, 0x100

    div-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_SCALEBYTES_KEM:I

    add-int/lit8 v1, p1, 0x20

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_INDCPA_PUBLICKEYBYTES:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_INDCPA_SECRETKEYBYTES:I

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_PUBLICKEYBYTES:I

    add-int/2addr p4, v1

    add-int/2addr p4, p2

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_SECRETKEYBYTES:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_BYTES_CCA_DEC:I

    add-int/lit8 p1, p3, -0xb

    const/4 p2, 0x1

    shl-int p1, p2, p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->h1:I

    rsub-int/lit8 p1, v0, 0x9

    shl-int p1, p2, p1

    rsub-int p1, p1, 0x100

    add-int/lit8 p3, p3, -0xb

    shl-int/2addr p2, p3

    add-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->h2:I

    new-instance p1, Lorg/bouncycastle/pqc/crypto/saber/Utils;

    invoke-direct {p1, p0}, Lorg/bouncycastle/pqc/crypto/saber/Utils;-><init>(Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    new-instance p1, Lorg/bouncycastle/pqc/crypto/saber/Poly;

    invoke-direct {p1, p0}, Lorg/bouncycastle/pqc/crypto/saber/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    return-void
.end method

.method public static cmov([B[BIIB)V
    .registers 8

    .line 0
    neg-int p4, p4

    int-to-byte p4, p4

    const/4 v0, 0x0

    :goto_3
    if-ge v0, p3, :cond_14

    aget-byte v1, p0, v0

    add-int v2, v0, p2

    aget-byte v2, p1, v2

    xor-int/2addr v2, v1

    and-int/2addr v2, p4

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_14
    return-void
.end method

.method private indcpa_kem_dec([B[B[B)V
    .registers 11

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    const/16 v4, 0x100

    aput v4, v2, v3

    const/4 v5, 0x0

    aput v0, v2, v5

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[S

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    new-array v1, v1, [I

    aput v4, v1, v3

    aput v6, v1, v5

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    new-array v1, v4, [S

    new-array v3, v4, [S

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    invoke-virtual {v6, p1, v5, v2}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->BS2POLVECq([BI[[S)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->BS2POLVECp([B[[S)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    invoke-virtual {p1, v0, v2, v1}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->InnerProd([[S[[S[S)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYVECCOMPRESSEDBYTES:I

    invoke-virtual {p1, p2, v0, v3}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->BS2POLT([BI[S)V

    :goto_3d
    if-ge v5, v4, :cond_58

    aget-short p1, v1, v5

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->h2:I

    add-int/2addr p1, p2

    aget-short p2, v3, v5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_ET:I

    rsub-int/lit8 v0, v0, 0xa

    shl-int/2addr p2, v0

    sub-int/2addr p1, p2

    const p2, 0xffff

    and-int/2addr p1, p2

    shr-int/lit8 p1, p1, 0x9

    int-to-short p1, p1

    aput-short p1, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    :cond_58
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    invoke-virtual {p0, p3, v1}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->POLmsg2BS([B[S)V

    return-void
.end method

.method private indcpa_kem_enc([B[B[B[B)V
    .registers 21

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x2

    const/16 v6, 0x100

    aput v6, v4, v5

    const/4 v7, 0x1

    aput v3, v4, v7

    const/4 v8, 0x0

    aput v3, v4, v8

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[[S

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    new-array v10, v5, [I

    aput v6, v10, v7

    aput v9, v10, v8

    invoke-static {v3, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[S

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    new-array v11, v5, [I

    aput v6, v11, v7

    aput v10, v11, v8

    invoke-static {v3, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[S

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    new-array v5, v5, [I

    aput v6, v5, v7

    aput v11, v5, v8

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[S

    new-array v5, v6, [S

    new-array v7, v6, [S

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYVECCOMPRESSEDBYTES:I

    array-length v12, v1

    invoke-static {v1, v11, v12}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    invoke-virtual {v12, v4, v11}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->GenMatrix([[[S[B)V

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    move-object/from16 v12, p2

    invoke-virtual {v11, v9, v12}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->GenSecret([[S[B)V

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    invoke-virtual {v11, v4, v9, v10, v8}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->MatrixVectorMul([[[S[[S[[SI)V

    move v4, v8

    :goto_65
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    const v12, 0xffff

    if-ge v4, v11, :cond_85

    move v11, v8

    :goto_6d
    if-ge v11, v6, :cond_82

    aget-object v13, v10, v4

    aget-short v14, v13, v11

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->h1:I

    add-int/2addr v14, v15

    and-int/2addr v14, v12

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_EQ:I

    add-int/lit8 v15, v15, -0xa

    ushr-int/2addr v14, v15

    int-to-short v14, v14

    aput-short v14, v13, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_6d

    :cond_82
    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    :cond_85
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    invoke-virtual {v4, v2, v10}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->POLVECp2BS([B[[S)V

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    invoke-virtual {v4, v1, v3}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->BS2POLVECp([B[[S)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    invoke-virtual {v1, v3, v9, v7}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->InnerProd([[S[[S[S)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    move-object/from16 v3, p1

    invoke-virtual {v1, v3, v5}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->BS2POLmsg([B[S)V

    :goto_9b
    if-ge v8, v6, :cond_b3

    aget-short v1, v7, v8

    aget-short v3, v5, v8

    shl-int/lit8 v3, v3, 0x9

    sub-int/2addr v1, v3

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->h1:I

    add-int/2addr v1, v3

    and-int/2addr v1, v12

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_ET:I

    rsub-int/lit8 v3, v3, 0xa

    ushr-int/2addr v1, v3

    int-to-short v1, v1

    aput-short v1, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_9b

    :cond_b3
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYVECCOMPRESSEDBYTES:I

    invoke-virtual {v1, v2, v0, v7}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->POLT2BS([BI[S)V

    return-void
.end method

.method private indcpa_kem_keypair([B[BLjava/security/SecureRandom;)V
    .registers 14

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x2

    const/16 v3, 0x100

    aput v3, v1, v2

    const/4 v4, 0x1

    aput v0, v1, v4

    const/4 v5, 0x0

    aput v0, v1, v5

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[S

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    new-array v7, v2, [I

    aput v3, v7, v4

    aput v6, v7, v5

    invoke-static {v0, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[S

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    new-array v2, v2, [I

    aput v3, v2, v4

    aput v7, v2, v5

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    const/16 v2, 0x20

    new-array v7, v2, [B

    new-array v8, v2, [B

    invoke-virtual {p3, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    invoke-virtual {v9, v7, v7, v2, v2}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;->prf([B[BII)V

    invoke-virtual {p3, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    invoke-virtual {p3, v1, v7}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->GenMatrix([[[S[B)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    invoke-virtual {p3, v6, v8}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->GenSecret([[S[B)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    invoke-virtual {p3, v1, v6, v0, v4}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->MatrixVectorMul([[[S[[S[[SI)V

    move p3, v5

    :goto_55
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    if-ge p3, v1, :cond_75

    move v1, v5

    :goto_5a
    if-ge v1, v3, :cond_72

    aget-object v4, v0, p3

    aget-short v8, v4, v1

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->h1:I

    add-int/2addr v8, v9

    const v9, 0xffff

    and-int/2addr v8, v9

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_EQ:I

    add-int/lit8 v9, v9, -0xa

    ushr-int/2addr v8, v9

    int-to-short v8, v8

    aput-short v8, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    :cond_72
    add-int/lit8 p3, p3, 0x1

    goto :goto_55

    :cond_75
    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    invoke-virtual {p3, p2, v6}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->POLVECq2BS([B[[S)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    invoke-virtual {p2, p1, v0}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->POLVECp2BS([B[[S)V

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYVECCOMPRESSEDBYTES:I

    invoke-static {v7, v5, p1, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static verify([B[BI)I
    .registers 8

    .line 0
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p2, :cond_f

    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    xor-int/2addr v3, v4

    int-to-long v3, v3

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_f
    neg-long p0, v0

    const/16 p2, 0x3f

    ushr-long/2addr p0, p2

    long-to-int p0, p0

    return p0
.end method


# virtual methods
.method public crypto_kem_dec([B[B[B)I
    .registers 13

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_BYTES_CCA_DEC:I

    new-array v0, v0, [B

    const/16 v1, 0x40

    new-array v2, v1, [B

    new-array v3, v1, [B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_INDCPA_SECRETKEYBYTES:I

    array-length v5, p3

    invoke-static {p3, v4, v5}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-direct {p0, p3, p2, v2}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->indcpa_kem_dec([B[B[B)V

    const/4 v5, 0x0

    move v6, v5

    :goto_16
    const/16 v7, 0x20

    if-ge v6, v7, :cond_27

    add-int/lit8 v7, v6, 0x20

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_SECRETKEYBYTES:I

    sub-int/2addr v8, v1

    add-int/2addr v8, v6

    aget-byte v8, p3, v8

    aput-byte v8, v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_27
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    invoke-virtual {v6, v3, v2}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;->hash_g([B[B)V

    invoke-static {v3, v7, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {p0, v2, v1, v4, v0}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->indcpa_kem_enc([B[B[B[B)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_BYTES_CCA_DEC:I

    invoke-static {p2, v0, v1}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->verify([B[BI)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    invoke-virtual {v1, v3, p2, v7}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;->hash_h([B[BI)V

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_SECRETKEYBYTES:I

    sub-int/2addr p2, v7

    int-to-byte v0, v0

    invoke-static {v3, p3, p2, v7, v0}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->cmov([B[BIIB)V

    new-array p2, v7, [B

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    invoke-virtual {p3, p2, v3, v5}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;->hash_h([B[BI)V

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->defaultKeySize:I

    div-int/lit8 p0, p0, 0x8

    invoke-static {p2, v5, p1, v5, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v5
.end method

.method public crypto_kem_enc([B[B[BLjava/security/SecureRandom;)I
    .registers 11

    .line 0
    const/16 v0, 0x40

    new-array v1, v0, [B

    new-array v2, v0, [B

    const/16 v3, 0x20

    new-array v4, v3, [B

    invoke-virtual {p4, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    const/4 v5, 0x0

    invoke-virtual {p4, v4, v4, v5}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;->hash_h([B[BI)V

    invoke-static {v4, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    invoke-virtual {p4, v2, p3, v3}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;->hash_h([B[BI)V

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    invoke-virtual {p4, v1, v2}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;->hash_g([B[B)V

    invoke-static {v1, v3, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p4

    invoke-direct {p0, v2, p4, p3, p1}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->indcpa_kem_enc([B[B[B[B)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    invoke-virtual {p3, v1, p1, v3}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;->hash_h([B[BI)V

    new-array p1, v3, [B

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    invoke-virtual {p3, p1, v1, v5}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;->hash_h([B[BI)V

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->defaultKeySize:I

    div-int/lit8 p0, p0, 0x8

    invoke-static {p1, v5, p2, v5, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v5
.end method

.method public crypto_kem_keypair([B[BLjava/security/SecureRandom;)I
    .registers 8

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->indcpa_kem_keypair([B[BLjava/security/SecureRandom;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_INDCPA_PUBLICKEYBYTES:I

    if-ge v1, v2, :cond_13

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_INDCPA_SECRETKEYBYTES:I

    add-int/2addr v2, v1

    aget-byte v3, p1, v1

    aput-byte v3, p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_SECRETKEYBYTES:I

    add-int/lit8 v2, v2, -0x40

    invoke-virtual {v1, p2, p1, v2}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;->hash_h([B[BI)V

    const/16 p1, 0x20

    new-array v1, p1, [B

    invoke-virtual {p3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_SECRETKEYBYTES:I

    sub-int/2addr p0, p1

    invoke-static {v1, v0, p2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v0
.end method

.method public getCipherTextSize()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_BYTES_CCA_DEC:I

    return p0
.end method

.method public getPrivateKeySize()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_SECRETKEYBYTES:I

    return p0
.end method

.method public getPublicKeySize()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_PUBLICKEYBYTES:I

    return p0
.end method

.method public getSABER_EP()I
    .registers 1

    .line 0
    const/16 p0, 0xa

    return p0
.end method

.method public getSABER_ET()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_ET:I

    return p0
.end method

.method public getSABER_KEYBYTES()I
    .registers 1

    .line 0
    const/16 p0, 0x20

    return p0
.end method

.method public getSABER_L()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    return p0
.end method

.method public getSABER_MU()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_MU:I

    return p0
.end method

.method public getSABER_N()I
    .registers 1

    .line 0
    const/16 p0, 0x100

    return p0
.end method

.method public getSABER_NOISE_SEEDBYTES()I
    .registers 1

    .line 0
    const/16 p0, 0x20

    return p0
.end method

.method public getSABER_POLYBYTES()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYBYTES:I

    return p0
.end method

.method public getSABER_POLYCOINBYTES()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYCOINBYTES:I

    return p0
.end method

.method public getSABER_POLYVECBYTES()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYVECBYTES:I

    return p0
.end method

.method public getSABER_SEEDBYTES()I
    .registers 1

    .line 0
    const/16 p0, 0x20

    return p0
.end method

.method public getSessionKeySize()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->defaultKeySize:I

    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public getUtils()Lorg/bouncycastle/pqc/crypto/saber/Utils;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    return-object p0
.end method
