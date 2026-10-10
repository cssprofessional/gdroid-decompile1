###### Class org.bouncycastle.pqc.crypto.hqc.ReedMuller (org.bouncycastle.pqc.crypto.hqc.ReedMuller)
.class Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Bit0Mask(I)I
    .registers 1

    .line 0
    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    return p0
.end method

.method public static decode([B[JII)V
    .registers 15

    .line 0
    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    invoke-static {v3, p1}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromLongArrayToByte32Array([I[J)V

    const/4 v4, 0x0

    move v5, v4

    :goto_13
    const/4 v6, 0x4

    if-ge v5, v1, :cond_31

    new-instance v7, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;

    invoke-direct {v7}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;-><init>()V

    aput-object v7, v2, v5

    move v7, v4

    :goto_1e
    if-ge v7, v6, :cond_2e

    aget-object v8, v2, v5

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    mul-int/lit8 v9, v5, 0x4

    add-int/2addr v9, v7

    aget v9, v3, v9

    aput v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    :cond_2e
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_31
    const/16 v3, 0x80

    new-array v5, v3, [I

    move v7, v4

    :goto_36
    if-ge v7, p2, :cond_53

    mul-int v8, v7, p3

    invoke-static {v5, v2, v8, p3}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->expandThenSum([I[Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;II)V

    new-array v8, v3, [I

    invoke-static {v5, v8}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->hadamardTransform([I[I)V

    aget v9, v8, v4

    mul-int/lit8 v10, p3, 0x40

    sub-int/2addr v9, v10

    aput v9, v8, v4

    invoke-static {v8}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->findPeaks([I)I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    :cond_53
    mul-int/lit8 p2, v1, 0x4

    new-array p2, p2, [I

    move p3, v4

    move v3, p3

    :goto_59
    if-ge p3, v1, :cond_67

    aget-object v5, v2, p3

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    array-length v7, v5

    invoke-static {v5, v4, p2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v6

    add-int/lit8 p3, p3, 0x1

    goto :goto_59

    :cond_67
    invoke-static {p1, p2}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromByte32ArrayToLongArray([J[I)V

    array-length p1, p0

    invoke-static {v0, v4, p0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static encode([J[BII)V
    .registers 12

    .line 0
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    mul-int v0, p2, p3

    new-array v1, v0, [Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v0, :cond_16

    new-instance v4, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;

    invoke-direct {v4}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;-><init>()V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_16
    move v3, v2

    :goto_17
    if-ge v3, p2, :cond_31

    mul-int v4, v3, p3

    aget-object v5, v1, v4

    aget-byte v6, p1, v3

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->encodeSub(Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;I)V

    const/4 v5, 0x1

    :goto_23
    if-ge v5, p3, :cond_2e

    add-int v6, v4, v5

    aget-object v7, v1, v4

    aput-object v7, v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_31
    mul-int/lit8 p1, v0, 0x4

    new-array p1, p1, [I

    move p2, v2

    move p3, p2

    :goto_37
    if-ge p2, v0, :cond_46

    aget-object v3, v1, p2

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    array-length v4, v3

    invoke-static {v3, v2, p1, p3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p2, p2, 0x1

    goto :goto_37

    :cond_46
    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromByte32ArrayToLongArray([J[I)V

    return-void
.end method

.method public static encodeSub(Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;I)V
    .registers 6

    .line 0
    shr-int/lit8 v0, p1, 0x7

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v1

    const v2, -0x55555556

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    shr-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v1

    const v2, -0x33333334

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    shr-int/lit8 v1, p1, 0x2

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v1

    const v2, -0xf0f0f10

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    shr-int/lit8 v1, p1, 0x3

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v1

    const v2, -0xff0100

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    shr-int/lit8 v1, p1, 0x4

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v1

    const/high16 v2, -0x10000

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    const/4 v2, 0x0

    aput v0, v1, v2

    shr-int/lit8 v1, p1, 0x5

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v2

    xor-int/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    const/4 v3, 0x1

    aput v0, v2, v3

    shr-int/lit8 p1, p1, 0x6

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result p1

    xor-int/2addr p1, v0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    const/4 v2, 0x3

    aput p1, v0, v2

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v0

    xor-int/2addr p1, v0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    const/4 v0, 0x2

    aput p1, p0, v0

    return-void
.end method

.method private static expandThenSum([I[Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;II)V
    .registers 14

    .line 0
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x4

    const/16 v3, 0x20

    const/4 v4, 0x1

    if-ge v1, v2, :cond_1e

    move v2, v0

    :goto_9
    if-ge v2, v3, :cond_1b

    aget-object v5, p1, p2

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    aget v5, v5, v1

    mul-int/lit8 v6, v1, 0x20

    add-int/2addr v6, v2

    shr-int/2addr v5, v2

    and-int/2addr v5, v4

    aput v5, p0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1e
    move v1, v4

    :goto_1f
    if-ge v1, p3, :cond_42

    move v5, v0

    :goto_22
    if-ge v5, v2, :cond_3f

    move v6, v0

    :goto_25
    if-ge v6, v3, :cond_3c

    mul-int/lit8 v7, v5, 0x20

    add-int/2addr v7, v6

    aget v8, p0, v7

    add-int v9, v1, p2

    aget-object v9, p1, v9

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    aget v9, v9, v5

    shr-int/2addr v9, v6

    and-int/2addr v9, v4

    add-int/2addr v8, v9

    aput v8, p0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    :cond_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_42
    return-void
.end method

.method private static findPeaks([I)I
    .registers 10

    .line 0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_5
    const/16 v5, 0x80

    if-ge v1, v5, :cond_22

    aget v5, p0, v1

    if-lez v5, :cond_f

    const/4 v6, -0x1

    goto :goto_10

    :cond_f
    move v6, v0

    :goto_10
    and-int v7, v6, v5

    not-int v6, v6

    neg-int v8, v5

    and-int/2addr v6, v8

    or-int/2addr v6, v7

    if-le v6, v4, :cond_19

    move v2, v5

    :cond_19
    if-le v6, v4, :cond_1c

    move v3, v1

    :cond_1c
    if-le v6, v4, :cond_1f

    move v4, v6

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_22
    if-lez v2, :cond_25

    const/4 v0, 0x1

    :cond_25
    mul-int/2addr v0, v5

    or-int p0, v3, v0

    return p0
.end method

.method private static hadamardTransform([I[I)V
    .registers 12

    .line 0
    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    const/4 v4, 0x7

    if-ge v3, v4, :cond_2f

    move v4, v2

    :goto_11
    const/16 v5, 0x40

    if-ge v4, v5, :cond_2c

    mul-int/lit8 v5, v4, 0x2

    aget v6, v1, v5

    add-int/lit8 v7, v5, 0x1

    aget v8, v1, v7

    add-int/2addr v6, v8

    aput v6, v0, v4

    add-int/lit8 v6, v4, 0x40

    aget v5, v1, v5

    aget v7, v1, v7

    sub-int/2addr v5, v7

    aput v5, v0, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_2f
    array-length v3, p0

    invoke-static {v0, v2, p0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p1

    invoke-static {v1, v2, p1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

###### Class org.bouncycastle.pqc.crypto.hqc.ReedMuller.Codeword (org.bouncycastle.pqc.crypto.hqc.ReedMuller$Codeword)
.class Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Codeword"
.end annotation


# instance fields
.field type32:[I

.field type8:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type8:[I

    return-void
.end method
