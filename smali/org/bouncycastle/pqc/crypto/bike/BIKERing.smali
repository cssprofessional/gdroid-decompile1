###### Class org.bouncycastle.pqc.crypto.bike.BIKERing (org.bouncycastle.pqc.crypto.bike.BIKERing)
.class Lorg/bouncycastle/pqc/crypto/bike/BIKERing;
.super Ljava/lang/Object;


# static fields
.field private static final PERMUTATION_CUTOFF:I = 0x40


# instance fields
.field private final bits:I

.field private final halfPowers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final size:I

.field private final sizeExt:I


# direct methods
.method public constructor <init>(I)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->halfPowers:Ljava/util/Map;

    const v1, -0xffff

    and-int/2addr v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_21

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->bits:I

    add-int/lit8 v1, p1, 0x3f

    ushr-int/lit8 v1, v1, 0x6

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->sizeExt:I

    invoke-static {v0, p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->generateHalfPowersInv(Ljava/util/Map;I)V

    return-void

    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static generateHalfPower(III)I
    .registers 9

    .line 0
    const/4 v0, 0x1

    :goto_1
    const-wide v1, 0xffffffffL

    const/16 v3, 0x20

    if-lt p2, v3, :cond_18

    mul-int v4, p1, v0

    int-to-long v4, v4

    and-long/2addr v1, v4

    int-to-long v4, p0

    mul-long/2addr v1, v4

    int-to-long v4, v0

    add-long/2addr v1, v4

    ushr-long v0, v1, v3

    long-to-int v0, v0

    add-int/lit8 p2, p2, -0x20

    goto :goto_1

    :cond_18
    if-lez p2, :cond_28

    const/4 v3, -0x1

    neg-int v4, p2

    ushr-int/2addr v3, v4

    mul-int/2addr p1, v0

    and-int/2addr p1, v3

    int-to-long v3, p1

    and-long/2addr v1, v3

    int-to-long p0, p0

    mul-long/2addr v1, p0

    int-to-long p0, v0

    add-long/2addr v1, p0

    ushr-long p0, v1, p2

    long-to-int v0, p0

    :cond_28
    return v0
.end method

.method private static generateHalfPowersInv(Ljava/util/Map;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 0
    add-int/lit8 v0, p1, -0x2

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x20

    neg-int v2, p1

    invoke-static {v2}, Lorg/bouncycastle/math/raw/Mod;->inverse32(I)I

    move-result v2

    const/4 v3, 0x1

    move v4, v3

    :goto_f
    if-ge v4, v1, :cond_59

    add-int/lit8 v5, v4, -0x1

    shl-int v5, v3, v5

    const/16 v6, 0x40

    if-lt v5, v6, :cond_32

    invoke-static {v5}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_32

    invoke-static {v5}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p1, v2, v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->generateHalfPower(III)I

    move-result v5

    invoke-static {v5}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_32
    shl-int v5, v3, v4

    and-int v7, v0, v5

    if-eqz v7, :cond_56

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v5, v0

    if-lt v5, v6, :cond_56

    invoke-static {v5}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_56

    invoke-static {v5}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1, v2, v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->generateHalfPower(III)I

    move-result v5

    invoke-static {v5}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_56
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_59
    return-void
.end method

.method private static implModAdd(III)I
    .registers 3

    .line 0
    add-int/2addr p1, p2

    sub-int/2addr p1, p0

    shr-int/lit8 p2, p1, 0x1f

    and-int/2addr p0, p2

    add-int/2addr p1, p0

    return p1
.end method

.method private static implMulwAcc([JJJ[JI)V
    .registers 21

    .line 0
    move-wide v0, p1

    const/4 v2, 0x1

    aput-wide p3, p0, v2

    const/4 v3, 0x2

    :goto_5
    const/16 v4, 0x10

    if-ge v3, v4, :cond_19

    ushr-int/lit8 v4, v3, 0x1

    aget-wide v4, p0, v4

    shl-long/2addr v4, v2

    aput-wide v4, p0, v3

    add-int/lit8 v6, v3, 0x1

    xor-long v4, v4, p3

    aput-wide v4, p0, v6

    add-int/lit8 v3, v3, 0x2

    goto :goto_5

    :cond_19
    long-to-int v3, v0

    and-int/lit8 v4, v3, 0xf

    aget-wide v4, p0, v4

    const/4 v6, 0x4

    ushr-int/2addr v3, v6

    and-int/lit8 v3, v3, 0xf

    aget-wide v7, p0, v3

    shl-long/2addr v7, v6

    xor-long v3, v4, v7

    const-wide/16 v7, 0x0

    const/16 v5, 0x38

    :cond_2b
    ushr-long v9, v0, v5

    long-to-int v9, v9

    and-int/lit8 v10, v9, 0xf

    aget-wide v10, p0, v10

    ushr-int/2addr v9, v6

    and-int/lit8 v9, v9, 0xf

    aget-wide v12, p0, v9

    shl-long/2addr v12, v6

    xor-long v9, v10, v12

    shl-long v11, v9, v5

    xor-long/2addr v3, v11

    neg-int v11, v5

    ushr-long/2addr v9, v11

    xor-long/2addr v7, v9

    add-int/lit8 v5, v5, -0x8

    if-gtz v5, :cond_2b

    const/4 v5, 0x0

    :goto_45
    const/4 v6, 0x7

    if-ge v5, v6, :cond_59

    const-wide v9, -0x101010101010102L

    and-long/2addr v0, v9

    ushr-long/2addr v0, v2

    shl-long v9, p3, v5

    const/16 v6, 0x3f

    shr-long/2addr v9, v6

    and-long/2addr v9, v0

    xor-long/2addr v7, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    :cond_59
    aget-wide v0, p5, p6

    xor-long/2addr v0, v3

    aput-wide v0, p5, p6

    add-int/lit8 v0, p6, 0x1

    aget-wide v1, p5, v0

    xor-long/2addr v1, v7

    aput-wide v1, p5, v0

    return-void
.end method

.method private implPermute([JI[J)V
    .registers 24

    .line 0
    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->bits:I

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->halfPowers:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v3

    invoke-static {v1, v3, v3}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v4

    invoke-static {v1, v4, v4}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v5

    sub-int v6, v1, v5

    invoke-static {v1, v6, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v2

    invoke-static {v1, v6, v3}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v7

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v3

    invoke-static {v1, v6, v4}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v8

    invoke-static {v1, v2, v4}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v9

    invoke-static {v1, v7, v4}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v10

    invoke-static {v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v4

    const/4 v12, 0x0

    :goto_3f
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    if-ge v12, v13, :cond_e4

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    :goto_46
    const/16 v11, 0x40

    if-ge v15, v11, :cond_de

    invoke-static {v1, v6, v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v6

    invoke-static {v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v2

    invoke-static {v1, v7, v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v7

    invoke-static {v1, v3, v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v3

    invoke-static {v1, v8, v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v8

    invoke-static {v1, v9, v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v9

    invoke-static {v1, v10, v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v10

    invoke-static {v1, v4, v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v4

    ushr-int/lit8 v11, v6, 0x6

    aget-wide v16, p1, v11

    ushr-long v16, v16, v6

    const-wide/16 v18, 0x1

    and-long v16, v16, v18

    shl-long v16, v16, v15

    or-long v13, v13, v16

    ushr-int/lit8 v11, v2, 0x6

    aget-wide v16, p1, v11

    ushr-long v16, v16, v2

    and-long v16, v16, v18

    add-int/lit8 v11, v15, 0x1

    shl-long v16, v16, v11

    or-long v13, v13, v16

    ushr-int/lit8 v11, v7, 0x6

    aget-wide v16, p1, v11

    ushr-long v16, v16, v7

    and-long v16, v16, v18

    add-int/lit8 v11, v15, 0x2

    shl-long v16, v16, v11

    or-long v13, v13, v16

    ushr-int/lit8 v11, v3, 0x6

    aget-wide v16, p1, v11

    ushr-long v16, v16, v3

    and-long v16, v16, v18

    add-int/lit8 v11, v15, 0x3

    shl-long v16, v16, v11

    or-long v13, v13, v16

    ushr-int/lit8 v11, v8, 0x6

    aget-wide v16, p1, v11

    ushr-long v16, v16, v8

    and-long v16, v16, v18

    add-int/lit8 v11, v15, 0x4

    shl-long v16, v16, v11

    or-long v13, v13, v16

    ushr-int/lit8 v11, v9, 0x6

    aget-wide v16, p1, v11

    ushr-long v16, v16, v9

    and-long v16, v16, v18

    add-int/lit8 v11, v15, 0x5

    shl-long v16, v16, v11

    or-long v13, v13, v16

    ushr-int/lit8 v11, v10, 0x6

    aget-wide v16, p1, v11

    ushr-long v16, v16, v10

    and-long v16, v16, v18

    add-int/lit8 v11, v15, 0x6

    shl-long v16, v16, v11

    or-long v13, v13, v16

    ushr-int/lit8 v11, v4, 0x6

    aget-wide v16, p1, v11

    ushr-long v16, v16, v4

    and-long v16, v16, v18

    add-int/lit8 v11, v15, 0x7

    shl-long v16, v16, v11

    or-long v13, v13, v16

    add-int/lit8 v15, v15, 0x8

    goto/16 :goto_46

    :cond_de
    aput-wide v13, p3, v12

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3f

    :cond_e4
    add-int/lit8 v13, v13, -0x1

    aget-wide v2, p3, v13

    const-wide/16 v4, -0x1

    neg-int v0, v1

    ushr-long v0, v4, v0

    and-long/2addr v0, v2

    aput-wide v0, p3, v13

    return-void
.end method

.method private implSquare([J[J)V
    .registers 4

    .line 0
    const/4 v0, 0x0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    invoke-static {p1, v0, p0, p2, v0}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128([JII[JI)V

    return-void
.end method


# virtual methods
.method public add([J[J[J)V
    .registers 9

    .line 0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    if-ge v0, v1, :cond_f

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    xor-long/2addr v1, v3

    aput-wide v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method

.method public addTo([J[J)V
    .registers 8

    .line 0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    if-ge v0, v1, :cond_f

    aget-wide v1, p2, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method

.method public copy([J[J)V
    .registers 6

    .line 0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    if-ge v0, v1, :cond_c

    aget-wide v1, p1, v0

    aput-wide v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    return-void
.end method

.method public create()[J
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    new-array p0, p0, [J

    return-object p0
.end method

.method public createExt()[J
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->sizeExt:I

    new-array p0, p0, [J

    return-object p0
.end method

.method public decodeBytes([B[J)V
    .registers 7

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->bits:I

    and-int/lit8 v0, v0, 0x3f

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, p2, v2, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[JII)V

    const/16 v1, 0x8

    new-array v1, v1, [B

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    add-int/lit8 v3, v3, -0x1

    shl-int/lit8 v3, v3, 0x3

    add-int/lit8 v0, v0, 0x7

    ushr-int/lit8 v0, v0, 0x3

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    add-int/lit8 p0, p0, -0x1

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v0

    aput-wide v0, p2, p0

    return-void
.end method

.method public encodeBitsTransposed([J)[B
    .registers 10

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->bits:I

    new-array v0, v0, [B

    const/4 v1, 0x0

    aget-wide v2, p1, v1

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    :goto_f
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->bits:I

    if-ge v1, v2, :cond_23

    sub-int/2addr v2, v1

    ushr-int/lit8 v3, v1, 0x6

    aget-wide v6, p1, v3

    and-int/lit8 v3, v1, 0x3f

    ushr-long/2addr v6, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_23
    return-object v0
.end method

.method public encodeBytes([J[B)V
    .registers 8

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->bits:I

    and-int/lit8 v0, v0, 0x3f

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, p2, v2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian([JII[BI)V

    const/16 v1, 0x8

    new-array v1, v1, [B

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    add-int/lit8 v3, v3, -0x1

    aget-wide v3, p1, v3

    invoke-static {v3, v4, v1, v2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    add-int/lit8 p0, p0, -0x1

    shl-int/lit8 p0, p0, 0x3

    add-int/lit8 v0, v0, 0x7

    ushr-int/lit8 p1, v0, 0x3

    invoke-static {v1, v2, p2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getSize()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    return p0
.end method

.method public getSizeExt()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->sizeExt:I

    return p0
.end method

.method public implMultiplyAcc([J[J[J)V
    .registers 15

    .line 0
    const/16 v0, 0x10

    new-array v0, v0, [J

    const/4 v8, 0x0

    move v9, v8

    :goto_6
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    if-ge v9, v1, :cond_18

    aget-wide v2, p1, v9

    aget-wide v4, p2, v9

    shl-int/lit8 v7, v9, 0x1

    move-object v1, v0

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implMulwAcc([JJJ[JI)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_18
    aget-wide v1, p3, v8

    const/4 v3, 0x1

    aget-wide v4, p3, v3

    move v6, v3

    :goto_1e
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    if-ge v6, v7, :cond_32

    shl-int/lit8 v7, v6, 0x1

    aget-wide v9, p3, v7

    xor-long/2addr v1, v9

    xor-long v9, v1, v4

    aput-wide v9, p3, v6

    add-int/2addr v7, v3

    aget-wide v9, p3, v7

    xor-long/2addr v4, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    :cond_32
    xor-long/2addr v1, v4

    :goto_33
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    if-ge v8, v4, :cond_40

    add-int/2addr v4, v8

    aget-wide v5, p3, v8

    xor-long/2addr v5, v1

    aput-wide v5, p3, v4

    add-int/lit8 v8, v8, 0x1

    goto :goto_33

    :cond_40
    add-int/lit8 p0, v4, -0x1

    move v8, v3

    :goto_43
    mul-int/lit8 v1, p0, 0x2

    if-ge v8, v1, :cond_6a

    invoke-static {p0, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int v2, v8, v1

    move v9, v1

    move v10, v2

    :goto_4f
    if-ge v10, v9, :cond_67

    aget-wide v1, p1, v10

    aget-wide v3, p1, v9

    xor-long v2, v1, v3

    aget-wide v4, p2, v10

    aget-wide v6, p2, v9

    xor-long/2addr v4, v6

    move-object v1, v0

    move-object v6, p3

    move v7, v8

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implMulwAcc([JJJ[JI)V

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_4f

    :cond_67
    add-int/lit8 v8, v8, 0x1

    goto :goto_43

    :cond_6a
    return-void
.end method

.method public inv([J[J)V
    .registers 11

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->create()[J

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->create()[J

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->create()[J

    move-result-object v2

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->copy([J[J)V

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->copy([J[J)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->bits:I

    add-int/lit8 p1, p1, -0x2

    invoke-static {p1}, Lorg/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x20

    const/4 v4, 0x1

    move v5, v4

    :goto_1e
    if-ge v5, v3, :cond_3c

    add-int/lit8 v6, v5, -0x1

    shl-int v6, v4, v6

    invoke-virtual {p0, v0, v6, v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->squareN([JI[J)V

    invoke-virtual {p0, v0, v1, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->multiply([J[J[J)V

    shl-int v6, v4, v5

    and-int v7, p1, v6

    if-eqz v7, :cond_39

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v6, p1

    invoke-virtual {p0, v0, v6, v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->squareN([JI[J)V

    invoke-virtual {p0, v2, v1, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->multiply([J[J[J)V

    :cond_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_3c
    invoke-virtual {p0, v2, p2}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->square([J[J)V

    return-void
.end method

.method public multiply([J[J[J)V
    .registers 5

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->createExt()[J

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implMultiplyAcc([J[J[J)V

    invoke-virtual {p0, v0, p3}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->reduce([J[J)V

    return-void
.end method

.method public reduce([J[J)V
    .registers 14

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->bits:I

    and-int/lit8 v0, v0, 0x3f

    rsub-int/lit8 v4, v0, 0x40

    const-wide/16 v0, -0x1

    ushr-long v9, v0, v4

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    add-int/lit8 v0, v3, -0x1

    aget-wide v5, p1, v0

    const/4 v8, 0x0

    move v1, v3

    move-object v2, p1

    move-object v7, p2

    invoke-static/range {v1 .. v8}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBits64(I[JIIJ[JI)J

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->addTo([J[J)V

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    add-int/lit8 p0, p0, -0x1

    aget-wide v0, p2, p0

    and-long/2addr v0, v9

    aput-wide v0, p2, p0

    return-void
.end method

.method public square([J[J)V
    .registers 4

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->createExt()[J

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implSquare([J[J)V

    invoke-virtual {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->reduce([J[J)V

    return-void
.end method

.method public squareN([JI[J)V
    .registers 5

    .line 0
    const/16 v0, 0x40

    if-lt p2, v0, :cond_8

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implPermute([JI[J)V

    return-void

    :cond_8
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->createExt()[J

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implSquare([J[J)V

    :goto_f
    invoke-virtual {p0, v0, p3}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->reduce([J[J)V

    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_1a

    invoke-direct {p0, p3, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implSquare([J[J)V

    goto :goto_f

    :cond_1a
    return-void
.end method
