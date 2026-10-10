###### Class org.bouncycastle.crypto.constraints.ConstraintUtils (org.bouncycastle.crypto.constraints.ConstraintUtils)
.class public Lorg/bouncycastle/crypto/constraints/ConstraintUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitsOfSecurityFor(Ljava/math/BigInteger;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    invoke-static {p0}, Lorg/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityForFF(I)I

    move-result p0

    return p0
.end method

.method public static bitsOfSecurityFor(Lorg/bouncycastle/math/ec/ECCurve;)I
    .registers 2

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    div-int/lit8 p0, p0, 0x2

    const/16 v0, 0x100

    if-le p0, v0, :cond_d

    move p0, v0

    :cond_d
    return p0
.end method

.method public static bitsOfSecurityForFF(I)I
    .registers 2

    .line 0
    const/16 v0, 0x800

    if-lt p0, v0, :cond_1c

    const/16 v0, 0xc00

    if-lt p0, v0, :cond_19

    const/16 v0, 0x1e00

    if-lt p0, v0, :cond_16

    const/16 v0, 0x3c00

    if-lt p0, v0, :cond_13

    const/16 p0, 0x100

    goto :goto_1b

    :cond_13
    const/16 p0, 0xc0

    goto :goto_1b

    :cond_16
    const/16 p0, 0x80

    goto :goto_1b

    :cond_19
    const/16 p0, 0x70

    :goto_1b
    return p0

    :cond_1c
    const/16 v0, 0x400

    if-lt p0, v0, :cond_23

    const/16 p0, 0x50

    goto :goto_25

    :cond_23
    const/16 p0, 0x14

    :goto_25
    return p0
.end method
