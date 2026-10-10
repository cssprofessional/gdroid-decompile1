###### Class org.bouncycastle.pqc.crypto.cmce.GF12 (org.bouncycastle.pqc.crypto.cmce.GF12)
.class final Lorg/bouncycastle/pqc/crypto/cmce/GF12;
.super Lorg/bouncycastle/pqc/crypto/cmce/GF;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/cmce/GF;-><init>()V

    return-void
.end method

.method private gf_mul_ext_par(SSSS)I
    .registers 10

    .line 0
    and-int/lit8 p0, p2, 0x1

    mul-int/2addr p0, p1

    and-int/lit8 v0, p4, 0x1

    mul-int/2addr v0, p3

    const/4 v1, 0x1

    move v2, v1

    :goto_8
    const/16 v3, 0xc

    if-ge v2, v3, :cond_18

    shl-int v3, v1, v2

    and-int v4, p2, v3

    mul-int/2addr v4, p1

    xor-int/2addr p0, v4

    and-int/2addr v3, p4

    mul-int/2addr v3, p3

    xor-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_18
    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public gf_frac(SS)S
    .registers 3

    .line 0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_inv(S)S

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_mul(SS)S

    move-result p0

    return p0
.end method

.method public gf_inv(S)S
    .registers 5

    .line 0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_mul(SS)S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v1

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_mul(SS)S

    move-result v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v2

    invoke-virtual {p0, v2, v1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_mul(SS)S

    move-result v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v1

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_mul(SS)S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_mul(SS)S

    move-result p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result p0

    return p0
.end method

.method public gf_mul(SS)S
    .registers 7

    .line 0
    and-int/lit8 v0, p2, 0x1

    mul-int/2addr v0, p1

    const/4 v1, 0x1

    move v2, v1

    :goto_5
    const/16 v3, 0xc

    if-ge v2, v3, :cond_11

    shl-int v3, v1, v2

    and-int/2addr v3, p2

    mul-int/2addr v3, p1

    xor-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_11
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_reduce(I)S

    move-result p0

    return p0
.end method

.method public gf_mul_ext(SS)I
    .registers 6

    .line 0
    and-int/lit8 p0, p2, 0x1

    mul-int/2addr p0, p1

    const/4 v0, 0x1

    move v1, v0

    :goto_5
    const/16 v2, 0xc

    if-ge v1, v2, :cond_11

    shl-int v2, v0, v1

    and-int/2addr v2, p2

    mul-int/2addr v2, p1

    xor-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return p0
.end method

.method public gf_mul_poly(I[I[S[S[S[I)V
    .registers 21

    .line 0
    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    aget-short v4, p4, v3

    aget-short v5, p5, v3

    invoke-virtual {p0, v4, v5}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_mul_ext(SS)I

    move-result v4

    aput v4, p6, v3

    const/4 v4, 0x1

    move v5, v4

    :goto_11
    if-ge v5, v1, :cond_3b

    add-int v6, v5, v5

    add-int/lit8 v7, v6, -0x1

    aput v3, p6, v7

    aget-short v7, p4, v5

    aget-short v8, p5, v5

    move v9, v3

    :goto_1e
    if-ge v9, v5, :cond_32

    add-int v10, v5, v9

    aget v11, p6, v10

    aget-short v12, p5, v9

    aget-short v13, p4, v9

    invoke-direct {p0, v7, v12, v13, v8}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_mul_ext_par(SSSS)I

    move-result v12

    xor-int/2addr v11, v12

    aput v11, p6, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_1e

    :cond_32
    invoke-virtual {p0, v7, v8}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_mul_ext(SS)I

    move-result v7

    aput v7, p6, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_3b
    add-int/lit8 v5, v1, -0x1

    mul-int/lit8 v5, v5, 0x2

    :goto_3f
    if-lt v5, v1, :cond_61

    aget v6, p6, v5

    move v7, v3

    :goto_44
    array-length v8, v2

    sub-int/2addr v8, v4

    if-ge v7, v8, :cond_55

    sub-int v8, v5, v1

    aget v9, v2, v7

    add-int/2addr v8, v9

    aget v9, p6, v8

    xor-int/2addr v9, v6

    aput v9, p6, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_44

    :cond_55
    sub-int v7, v5, v1

    aget v8, p6, v7

    shl-int/lit8 v6, v6, 0x1

    xor-int/2addr v6, v8

    aput v6, p6, v7

    add-int/lit8 v5, v5, -0x1

    goto :goto_3f

    :cond_61
    :goto_61
    if-ge v3, v1, :cond_6e

    aget v2, p6, v3

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_reduce(I)S

    move-result v2

    aput-short v2, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    :cond_6e
    return-void
.end method

.method public gf_reduce(I)S
    .registers 5

    .line 0
    and-int/lit16 p0, p1, 0xfff

    ushr-int/lit8 v0, p1, 0xc

    const v1, 0x1ff000

    and-int/2addr v1, p1

    ushr-int/lit8 v1, v1, 0x9

    const/high16 v2, 0xe00000

    and-int/2addr v2, p1

    ushr-int/lit8 v2, v2, 0x12

    ushr-int/lit8 p1, p1, 0x15

    xor-int/2addr p0, v0

    xor-int/2addr p0, v1

    xor-int/2addr p0, v2

    xor-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method public gf_sq(S)S
    .registers 2

    .line 0
    invoke-static {p1}, Lorg/bouncycastle/math/raw/Interleave;->expand16to32(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_reduce(I)S

    move-result p0

    return p0
.end method

.method public gf_sq_ext(S)I
    .registers 2

    .line 0
    invoke-static {p1}, Lorg/bouncycastle/math/raw/Interleave;->expand16to32(I)I

    move-result p0

    return p0
.end method

.method public gf_sqr_poly(I[I[S[S[I)V
    .registers 12

    .line 0
    const/4 v0, 0x0

    aget-short v1, p4, v0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq_ext(S)I

    move-result v1

    aput v1, p5, v0

    const/4 v1, 0x1

    move v2, v1

    :goto_b
    if-ge v2, p1, :cond_1e

    add-int v3, v2, v2

    add-int/lit8 v4, v3, -0x1

    aput v0, p5, v4

    aget-short v4, p4, v2

    invoke-virtual {p0, v4}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq_ext(S)I

    move-result v4

    aput v4, p5, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1e
    add-int/lit8 p4, p1, -0x1

    mul-int/lit8 p4, p4, 0x2

    :goto_22
    if-lt p4, p1, :cond_44

    aget v2, p5, p4

    move v3, v0

    :goto_27
    array-length v4, p2

    sub-int/2addr v4, v1

    if-ge v3, v4, :cond_38

    sub-int v4, p4, p1

    aget v5, p2, v3

    add-int/2addr v4, v5

    aget v5, p5, v4

    xor-int/2addr v5, v2

    aput v5, p5, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_38
    sub-int v3, p4, p1

    aget v4, p5, v3

    shl-int/lit8 v2, v2, 0x1

    xor-int/2addr v2, v4

    aput v2, p5, v3

    add-int/lit8 p4, p4, -0x1

    goto :goto_22

    :cond_44
    :goto_44
    if-ge v0, p1, :cond_51

    aget p2, p5, v0

    invoke-virtual {p0, p2}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_reduce(I)S

    move-result p2

    aput-short p2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    :cond_51
    return-void
.end method
