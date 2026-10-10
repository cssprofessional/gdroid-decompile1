###### Class org.bouncycastle.pqc.crypto.cmce.BENES12 (org.bouncycastle.pqc.crypto.cmce.BENES12)
.class Lorg/bouncycastle/pqc/crypto/cmce/BENES12;
.super Lorg/bouncycastle/pqc/crypto/cmce/BENES;


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/cmce/BENES;-><init>(III)V

    return-void
.end method

.method private apply_benes([B[BI)V
    .registers 14

    .line 0
    const/16 v0, 0x40

    new-array v1, v0, [J

    new-array v2, v0, [J

    const/4 v3, 0x0

    move v4, v3

    :goto_8
    if-ge v4, v0, :cond_15

    mul-int/lit8 v5, v4, 0x8

    invoke-static {p1, v5}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v5

    aput-wide v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_15
    const/16 v4, 0x100

    if-nez p3, :cond_20

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->SYS_T:I

    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x28

    goto :goto_30

    :cond_20
    iget p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->SYS_T:I

    mul-int/lit8 p3, p3, 0x2

    add-int/lit8 p3, p3, 0x28

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->GFBITS:I

    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, -0x2

    mul-int/2addr p0, v4

    add-int/2addr p0, p3

    const/16 v4, -0x100

    :goto_30
    invoke-static {v1, v1}, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->transpose_64x64([J[J)V

    move p3, v3

    :goto_34
    const/4 v5, 0x5

    if-gt p3, v5, :cond_51

    move v5, v3

    :goto_38
    if-ge v5, v0, :cond_47

    mul-int/lit8 v6, v5, 0x4

    add-int/2addr v6, p0

    invoke-static {p2, v6}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load4([BI)I

    move-result v6

    int-to-long v6, v6

    aput-wide v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    :cond_47
    invoke-static {v2, v2}, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->transpose_64x64([J[J)V

    invoke-static {v1, v2, p3}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->layerBenes([J[JI)V

    add-int/2addr p0, v4

    add-int/lit8 p3, p3, 0x1

    goto :goto_34

    :cond_51
    invoke-static {v1, v1}, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->transpose_64x64([J[J)V

    move p3, v3

    :goto_55
    const/16 v6, 0x20

    if-gt p3, v5, :cond_6f

    move v7, v3

    :goto_5a
    if-ge v7, v6, :cond_68

    mul-int/lit8 v8, v7, 0x8

    add-int/2addr v8, p0

    invoke-static {p2, v8}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v8

    aput-wide v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5a

    :cond_68
    invoke-static {v1, v2, p3}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->layerBenes([J[JI)V

    add-int/2addr p0, v4

    add-int/lit8 p3, p3, 0x1

    goto :goto_55

    :cond_6f
    const/4 p3, 0x4

    :goto_70
    if-ltz p3, :cond_88

    move v7, v3

    :goto_73
    if-ge v7, v6, :cond_81

    mul-int/lit8 v8, v7, 0x8

    add-int/2addr v8, p0

    invoke-static {p2, v8}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v8

    aput-wide v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_73

    :cond_81
    invoke-static {v1, v2, p3}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->layerBenes([J[JI)V

    add-int/2addr p0, v4

    add-int/lit8 p3, p3, -0x1

    goto :goto_70

    :cond_88
    invoke-static {v1, v1}, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->transpose_64x64([J[J)V

    :goto_8b
    if-ltz v5, :cond_a7

    move p3, v3

    :goto_8e
    if-ge p3, v0, :cond_9d

    mul-int/lit8 v6, p3, 0x4

    add-int/2addr v6, p0

    invoke-static {p2, v6}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load4([BI)I

    move-result v6

    int-to-long v6, v6

    aput-wide v6, v2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_8e

    :cond_9d
    invoke-static {v2, v2}, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->transpose_64x64([J[J)V

    invoke-static {v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->layerBenes([J[JI)V

    add-int/2addr p0, v4

    add-int/lit8 v5, v5, -0x1

    goto :goto_8b

    :cond_a7
    invoke-static {v1, v1}, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->transpose_64x64([J[J)V

    :goto_aa
    if-ge v3, v0, :cond_b6

    mul-int/lit8 p0, v3, 0x8

    aget-wide p2, v1, v3

    invoke-static {p1, p0, p2, p3}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store8([BIJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_aa

    :cond_b6
    return-void
.end method

.method public static layerBenes([J[JI)V
    .registers 14

    .line 0
    const/4 v0, 0x1

    shl-int p2, v0, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    const/16 v2, 0x40

    if-ge v0, v2, :cond_2a

    move v2, v0

    :goto_a
    add-int v3, v0, p2

    if-ge v2, v3, :cond_26

    aget-wide v3, p0, v2

    add-int v5, v2, p2

    aget-wide v6, p0, v5

    xor-long/2addr v6, v3

    add-int/lit8 v8, v1, 0x1

    aget-wide v9, p1, v1

    and-long/2addr v6, v9

    xor-long/2addr v3, v6

    aput-wide v3, p0, v2

    aget-wide v3, p0, v5

    xor-long/2addr v3, v6

    aput-wide v3, p0, v5

    add-int/lit8 v2, v2, 0x1

    move v1, v8

    goto :goto_a

    :cond_26
    mul-int/lit8 v2, p2, 0x2

    add-int/2addr v0, v2

    goto :goto_5

    :cond_2a
    return-void
.end method


# virtual methods
.method public support_gen([S[B)V
    .registers 14

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->GFBITS:I

    const/4 v1, 0x1

    shl-int v2, v1, v0

    div-int/lit8 v2, v2, 0x8

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v2, v3, v1

    const/4 v2, 0x0

    aput v0, v3, v2

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    move v3, v2

    :goto_18
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->GFBITS:I

    if-ge v3, v4, :cond_2f

    move v4, v2

    :goto_1d
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->GFBITS:I

    shl-int v5, v1, v5

    div-int/lit8 v5, v5, 0x8

    if-ge v4, v5, :cond_2c

    aget-object v5, v0, v3

    aput-byte v2, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_2f
    move v3, v2

    :goto_30
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->GFBITS:I

    shl-int v5, v1, v4

    if-ge v3, v5, :cond_56

    int-to-short v5, v3

    invoke-static {v5, v4}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->bitrev(SI)S

    move-result v4

    move v5, v2

    :goto_3c
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->GFBITS:I

    if-ge v5, v6, :cond_53

    aget-object v6, v0, v5

    div-int/lit8 v7, v3, 0x8

    aget-byte v8, v6, v7

    shr-int v9, v4, v5

    and-int/2addr v9, v1

    rem-int/lit8 v10, v3, 0x8

    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_56
    move v3, v2

    :goto_57
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->GFBITS:I

    if-ge v3, v4, :cond_63

    aget-object v4, v0, v3

    invoke-direct {p0, v4, p2, v2}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->apply_benes([B[BI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_57

    :cond_63
    move p2, v2

    :goto_64
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->SYS_N:I

    if-ge p2, v3, :cond_89

    aput-short v2, p1, p2

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->GFBITS:I

    sub-int/2addr v3, v1

    :goto_6d
    if-ltz v3, :cond_86

    aget-short v4, p1, p2

    shl-int/2addr v4, v1

    int-to-short v4, v4

    aput-short v4, p1, p2

    aget-object v5, v0, v3

    div-int/lit8 v6, p2, 0x8

    aget-byte v5, v5, v6

    rem-int/lit8 v6, p2, 0x8

    shr-int/2addr v5, v6

    and-int/2addr v5, v1

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, p1, p2

    add-int/lit8 v3, v3, -0x1

    goto :goto_6d

    :cond_86
    add-int/lit8 p2, p2, 0x1

    goto :goto_64

    :cond_89
    return-void
.end method
