###### Class org.bouncycastle.pqc.crypto.falcon.FalconCodec (org.bouncycastle.pqc.crypto.falcon.FalconCodec)
.class Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;
.super Ljava/lang/Object;


# instance fields
.field final max_FG_bits:[B

.field final max_fg_bits:[B

.field final max_sig_bits:[B


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    new-array v1, v0, [B

    fill-array-data v1, :array_1c

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_fg_bits:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_26

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_FG_bits:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_30

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_sig_bits:[B

    return-void

    nop

    :array_1c
    .array-data 1
        0x0t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x7t
        0x7t
        0x6t
        0x6t
        0x5t
    .end array-data

    :array_26
    .array-data 1
        0x0t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
    .end array-data

    :array_30
    .array-data 1
        0x0t
        0xat
        0xbt
        0xbt
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
    .end array-data
.end method


# virtual methods
.method public comp_decode([SII[BII)I
    .registers 15

    .line 0
    const/4 p0, 0x1

    shl-int p3, p0, p3

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_8
    if-ge v1, p3, :cond_4e

    if-lt v4, p6, :cond_d

    return v0

    :cond_d
    shl-int/lit8 v2, v2, 0x8

    add-int v5, p5, v4

    aget-byte v5, p4, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    ushr-int v5, v2, v3

    and-int/lit16 v6, v5, 0x80

    and-int/lit8 v5, v5, 0x7f

    :cond_1e
    if-nez v3, :cond_30

    if-lt v4, p6, :cond_23

    return v0

    :cond_23
    shl-int/lit8 v2, v2, 0x8

    add-int v3, p5, v4

    aget-byte v3, p4, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    add-int/lit8 v4, v4, 0x1

    const/16 v3, 0x8

    :cond_30
    add-int/lit8 v3, v3, -0x1

    ushr-int v7, v2, v3

    and-int/2addr v7, p0

    if-eqz v7, :cond_47

    if-eqz v6, :cond_3c

    if-nez v5, :cond_3c

    return v0

    :cond_3c
    add-int v7, p2, v1

    if-eqz v6, :cond_41

    neg-int v5, v5

    :cond_41
    int-to-short v5, v5

    aput-short v5, p1, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_47
    add-int/lit16 v5, v5, 0x80

    const/16 v7, 0x7ff

    if-le v5, v7, :cond_1e

    return v0

    :cond_4e
    shl-int p1, p0, v3

    sub-int/2addr p1, p0

    and-int p0, v2, p1

    if-eqz p0, :cond_56

    return v0

    :cond_56
    return v4
.end method

.method public comp_encode([BII[SII)I
    .registers 15

    .line 0
    const/4 p0, 0x1

    shl-int p6, p0, p6

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, p6, :cond_18

    add-int v2, p5, v1

    aget-short v2, p4, v2

    const/16 v3, -0x7ff

    if-lt v2, v3, :cond_17

    const/16 v3, 0x7ff

    if-le v2, v3, :cond_14

    goto :goto_17

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_17
    :goto_17
    return v0

    :cond_18
    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_1c
    const/16 v5, 0x8

    if-ge v1, p6, :cond_4e

    shl-int/lit8 v3, v3, 0x1

    add-int v6, p5, v1

    aget-short v6, p4, v6

    if-gez v6, :cond_2b

    neg-int v6, v6

    or-int/lit8 v3, v3, 0x1

    :cond_2b
    shl-int/lit8 v3, v3, 0x7

    and-int/lit8 v7, v6, 0x7f

    or-int/2addr v3, v7

    ushr-int/lit8 v6, v6, 0x7

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v6, p0

    shl-int/2addr v3, v6

    or-int/2addr v3, p0

    add-int/2addr v2, v6

    :goto_38
    if-lt v2, v5, :cond_4b

    add-int/lit8 v2, v2, -0x8

    if-eqz p1, :cond_48

    if-lt v4, p3, :cond_41

    return v0

    :cond_41
    add-int v6, p2, v4

    ushr-int v7, v3, v2

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    :cond_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_4e
    if-lez v2, :cond_5e

    if-eqz p1, :cond_5c

    if-lt v4, p3, :cond_55

    return v0

    :cond_55
    add-int/2addr p2, v4

    sub-int/2addr v5, v2

    shl-int p0, v3, v5

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    :cond_5c
    add-int/lit8 v4, v4, 0x1

    :cond_5e
    return v4
.end method

.method public modq_decode([SII[BII)I
    .registers 13

    .line 0
    const/4 p0, 0x1

    shl-int p3, p0, p3

    mul-int/lit8 v0, p3, 0xe

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    const/4 v1, 0x0

    if-le v0, p6, :cond_d

    return v1

    :cond_d
    move p6, v1

    move v2, p6

    move v3, v2

    :goto_10
    if-ge p6, p3, :cond_37

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, p5, 0x1

    aget-byte p5, p4, p5

    and-int/lit16 p5, p5, 0xff

    or-int/2addr v2, p5

    add-int/lit8 p5, v3, 0x8

    const/16 v5, 0xe

    if-lt p5, v5, :cond_35

    add-int/lit8 v3, v3, -0x6

    ushr-int p5, v2, v3

    and-int/lit16 p5, p5, 0x3fff

    const/16 v5, 0x3001

    if-lt p5, v5, :cond_2c

    return v1

    :cond_2c
    add-int v5, p2, p6

    int-to-short p5, p5

    aput-short p5, p1, v5

    add-int/lit8 p6, p6, 0x1

    :goto_33
    move p5, v4

    goto :goto_10

    :cond_35
    move v3, p5

    goto :goto_33

    :cond_37
    shl-int p1, p0, v3

    sub-int/2addr p1, p0

    and-int p0, v2, p1

    if-eqz p0, :cond_3f

    return v1

    :cond_3f
    return v0
.end method

.method public modq_encode([BII[SII)I
    .registers 13

    .line 0
    const/4 p0, 0x1

    shl-int/2addr p0, p6

    const/4 p6, 0x0

    move v0, p6

    :goto_4
    const v1, 0xffff

    if-ge v0, p0, :cond_16

    add-int v2, p5, v0

    aget-short v2, p4, v2

    and-int/2addr v1, v2

    const/16 v2, 0x3001

    if-lt v1, v2, :cond_13

    return p6

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_16
    mul-int/lit8 v0, p0, 0xe

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    if-nez p1, :cond_1f

    return v0

    :cond_1f
    if-le v0, p3, :cond_22

    return p6

    :cond_22
    move p3, p6

    move v2, p3

    :goto_24
    const/16 v3, 0x8

    if-ge p6, p0, :cond_42

    shl-int/lit8 v2, v2, 0xe

    add-int v4, p5, p6

    aget-short v4, p4, v4

    and-int/2addr v4, v1

    or-int/2addr v2, v4

    add-int/lit8 p3, p3, 0xe

    :goto_32
    if-lt p3, v3, :cond_3f

    add-int/lit8 p3, p3, -0x8

    add-int/lit8 v4, p2, 0x1

    shr-int v5, v2, p3

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    move p2, v4

    goto :goto_32

    :cond_3f
    add-int/lit8 p6, p6, 0x1

    goto :goto_24

    :cond_42
    if-lez p3, :cond_4a

    sub-int/2addr v3, p3

    shl-int p0, v2, v3

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    :cond_4a
    return v0
.end method

.method public trim_i16_decode([SIII[BII)I
    .registers 16

    .line 0
    const/4 p0, 0x1

    shl-int p3, p0, p3

    mul-int v0, p3, p4

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    const/4 v1, 0x0

    if-le v0, p7, :cond_d

    return v1

    :cond_d
    shl-int p7, p0, p4

    sub-int/2addr p7, p0

    add-int/lit8 v2, p4, -0x1

    shl-int v2, p0, v2

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_17
    if-ge v3, p3, :cond_42

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, p6, 0x1

    aget-byte p6, p5, p6

    and-int/lit16 p6, p6, 0xff

    or-int/2addr v4, p6

    add-int/lit8 v5, v5, 0x8

    :goto_24
    if-lt v5, p4, :cond_40

    if-ge v3, p3, :cond_40

    sub-int/2addr v5, p4

    ushr-int p6, v4, v5

    and-int/2addr p6, p7

    and-int v7, p6, v2

    neg-int v7, v7

    or-int/2addr p6, v7

    neg-int v7, v2

    if-ne p6, v7, :cond_34

    return v1

    :cond_34
    and-int v7, p6, v2

    neg-int v7, v7

    or-int/2addr p6, v7

    add-int v7, p2, v3

    int-to-short p6, p6

    aput-short p6, p1, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_40
    move p6, v6

    goto :goto_17

    :cond_42
    shl-int p1, p0, v5

    sub-int/2addr p1, p0

    and-int p0, v4, p1

    if-eqz p0, :cond_4a

    return v1

    :cond_4a
    return v0
.end method

.method public trim_i16_encode([BII[SIII)I
    .registers 14

    .line 0
    const/4 p0, 0x1

    shl-int p6, p0, p6

    add-int/lit8 v0, p7, -0x1

    shl-int v0, p0, v0

    sub-int/2addr v0, p0

    neg-int v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, p6, :cond_1a

    add-int v4, p5, v3

    aget-short v4, p4, v4

    if-lt v4, v1, :cond_19

    if-le v4, v0, :cond_16

    goto :goto_19

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_19
    :goto_19
    return v2

    :cond_1a
    mul-int v0, p6, p7

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    if-nez p1, :cond_23

    return v0

    :cond_23
    if-le v0, p3, :cond_26

    return v2

    :cond_26
    shl-int p3, p0, p7

    sub-int/2addr p3, p0

    move p0, v2

    move v1, p0

    :goto_2b
    const/16 v3, 0x8

    if-ge v2, p6, :cond_49

    shl-int/2addr v1, p7

    add-int v4, p5, v2

    aget-short v4, p4, v4

    and-int/lit16 v4, v4, 0xfff

    and-int/2addr v4, p3

    or-int/2addr v1, v4

    add-int/2addr p0, p7

    :goto_39
    if-lt p0, v3, :cond_46

    add-int/lit8 p0, p0, -0x8

    add-int/lit8 v4, p2, 0x1

    shr-int v5, v1, p0

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    move p2, v4

    goto :goto_39

    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_49
    if-lez p0, :cond_51

    sub-int/2addr v3, p0

    shl-int p0, v1, v3

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    :cond_51
    return v0
.end method

.method public trim_i8_decode([BIII[BII)I
    .registers 16

    .line 0
    const/4 p0, 0x1

    shl-int p3, p0, p3

    mul-int v0, p3, p4

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    const/4 v1, 0x0

    if-le v0, p7, :cond_d

    return v1

    :cond_d
    shl-int p7, p0, p4

    sub-int/2addr p7, p0

    add-int/lit8 v2, p4, -0x1

    shl-int v2, p0, v2

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_17
    if-ge v3, p3, :cond_3e

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, p6, 0x1

    aget-byte p6, p5, p6

    and-int/lit16 p6, p6, 0xff

    or-int/2addr v4, p6

    add-int/lit8 v5, v5, 0x8

    :goto_24
    if-lt v5, p4, :cond_3c

    if-ge v3, p3, :cond_3c

    sub-int/2addr v5, p4

    ushr-int p6, v4, v5

    and-int/2addr p6, p7

    and-int v7, p6, v2

    neg-int v7, v7

    or-int/2addr p6, v7

    neg-int v7, v2

    if-ne p6, v7, :cond_34

    return v1

    :cond_34
    add-int v7, p2, v3

    int-to-byte p6, p6

    aput-byte p6, p1, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_3c
    move p6, v6

    goto :goto_17

    :cond_3e
    shl-int p1, p0, v5

    sub-int/2addr p1, p0

    and-int p0, v4, p1

    if-eqz p0, :cond_46

    return v1

    :cond_46
    return v0
.end method

.method public trim_i8_encode([BII[BIII)I
    .registers 14

    .line 0
    const/4 p0, 0x1

    shl-int p6, p0, p6

    add-int/lit8 v0, p7, -0x1

    shl-int v0, p0, v0

    sub-int/2addr v0, p0

    neg-int v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, p6, :cond_1a

    add-int v4, p5, v3

    aget-byte v4, p4, v4

    if-lt v4, v1, :cond_19

    if-le v4, v0, :cond_16

    goto :goto_19

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_19
    :goto_19
    return v2

    :cond_1a
    mul-int v0, p6, p7

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    if-nez p1, :cond_23

    return v0

    :cond_23
    if-le v0, p3, :cond_26

    return v2

    :cond_26
    shl-int p3, p0, p7

    sub-int/2addr p3, p0

    move p0, v2

    move v1, p0

    :goto_2b
    const/16 v3, 0x8

    if-ge v2, p6, :cond_4b

    shl-int/2addr v1, p7

    add-int v4, p5, v2

    aget-byte v4, p4, v4

    const v5, 0xffff

    and-int/2addr v4, v5

    and-int/2addr v4, p3

    or-int/2addr v1, v4

    add-int/2addr p0, p7

    :goto_3b
    if-lt p0, v3, :cond_48

    add-int/lit8 p0, p0, -0x8

    add-int/lit8 v4, p2, 0x1

    ushr-int v5, v1, p0

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    move p2, v4

    goto :goto_3b

    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_4b
    if-lez p0, :cond_53

    sub-int/2addr v3, p0

    shl-int p0, v1, v3

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    :cond_53
    return v0
.end method
