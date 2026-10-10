###### Class org.bouncycastle.pqc.crypto.gemss.PointerUnion (org.bouncycastle.pqc.crypto.gemss.PointerUnion)
.class Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
.super Lorg/bouncycastle/pqc/crypto/gemss/Pointer;


# instance fields
.field protected remainder:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 0
    ushr-int/lit8 v0, p1, 0x3

    and-int/lit8 p1, p1, 0x7

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    move p1, v1

    :goto_a
    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    return-void
.end method

.method public constructor <init>([B)V
    .registers 13

    .line 0
    array-length v0, p1

    shr-int/lit8 v0, v0, 0x3

    array-length v1, p1

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    move v1, v2

    :goto_c
    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    move v0, v2

    move v1, v0

    :goto_12
    array-length v3, p1

    if-ge v0, v3, :cond_3a

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    array-length v3, v3

    if-ge v1, v3, :cond_3a

    move v3, v2

    :goto_1b
    const/16 v4, 0x8

    if-ge v3, v4, :cond_37

    array-length v4, p1

    if-ge v0, v4, :cond_37

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    aget-wide v5, v4, v1

    aget-byte v7, p1, v0

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    shl-int/lit8 v9, v3, 0x3

    shl-long/2addr v7, v9

    or-long/2addr v5, v7

    aput-wide v5, v4, v1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_3a
    iput v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    return-void
.end method


# virtual methods
.method public changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V
    .registers 3

    .line 0
    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    return-void
.end method

.method public fill(I[BII)V
    .registers 15

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-eqz v0, :cond_39

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    aget-wide v3, v2, v1

    shl-int/lit8 v5, v0, 0x3

    const-wide/16 v6, -0x1

    shl-long v5, v6, v5

    not-long v5, v5

    and-long/2addr v3, v5

    aput-wide v3, v2, v1

    const/4 v2, 0x0

    :goto_16
    const/16 v3, 0x8

    if-ge v0, v3, :cond_33

    if-ge v2, p4, :cond_33

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    aget-wide v4, v3, v1

    aget-byte v6, p2, p3

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    shl-int/lit8 v8, v0, 0x3

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, v3, v1

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_33
    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    sub-int/2addr v3, v0

    sub-int/2addr p4, v3

    :cond_39
    invoke-super {p0, p1, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->fill(I[BII)V

    return-void
.end method

.method public fillBytes(I[BII)V
    .registers 14

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    add-int/2addr p1, v0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    ushr-int/lit8 v1, p1, 0x3

    add-int/2addr v0, v1

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_3b

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    aget-wide v2, v1, v0

    shl-int/lit8 v4, p1, 0x3

    const-wide/16 v5, -0x1

    shl-long v4, v5, v4

    not-long v4, v4

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    const/4 v1, 0x0

    :goto_1b
    const/16 v2, 0x8

    if-ge p1, v2, :cond_38

    if-ge v1, p4, :cond_38

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    aget-wide v3, v2, v0

    aget-byte v5, p2, p3

    int-to-long v5, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    shl-int/lit8 v7, p1, 0x3

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    aput-wide v3, v2, v0

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1b

    :cond_38
    add-int/lit8 v0, v0, 0x1

    sub-int/2addr p4, v1

    :cond_3b
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    sub-int/2addr v0, p1

    invoke-super {p0, v0, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->fill(I[BII)V

    return-void
.end method

.method public fillRandomBytes(ILjava/security/SecureRandom;I)V
    .registers 5

    .line 0
    new-array v0, p3, [B

    invoke-virtual {p2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->fillBytes(I[BII)V

    return-void
.end method

.method public get()J
    .registers 7

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    aget-wide v0, v0, p0

    return-wide v0

    :cond_b
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    aget-wide v2, v1, p0

    shl-int/lit8 v4, v0, 0x3

    ushr-long/2addr v2, v4

    add-int/lit8 p0, p0, 0x1

    aget-wide v4, v1, p0

    rsub-int/lit8 p0, v0, 0x8

    shl-int/lit8 p0, p0, 0x3

    shl-long v0, v4, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public get(I)J
    .registers 7

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr p0, p1

    aget-wide p0, v0, p0

    return-wide p0

    :cond_c
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int v2, p0, p1

    aget-wide v2, v1, v2

    shl-int/lit8 v4, v0, 0x3

    ushr-long/2addr v2, v4

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x1

    aget-wide p0, v1, p0

    rsub-int/lit8 v0, v0, 0x8

    shl-int/lit8 v0, v0, 0x3

    shl-long/2addr p0, v0

    or-long/2addr p0, v2

    return-wide p0
.end method

.method public getByte()B
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    aget-wide v0, v0, v1

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 p0, p0, 0x3

    ushr-long/2addr v0, p0

    long-to-int p0, v0

    int-to-byte p0, p0

    return p0
.end method

.method public getByte(I)B
    .registers 5

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    add-int v2, p1, v1

    ushr-int/lit8 v2, v2, 0x3

    add-int/2addr v0, v2

    add-int/2addr v1, p1

    and-int/lit8 p1, v1, 0x7

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    aget-wide v0, p0, v0

    shl-int/lit8 p0, p1, 0x3

    ushr-long p0, v0, p0

    long-to-int p0, p0

    int-to-byte p0, p0

    return p0
.end method

.method public getWithCheck()J
    .registers 6

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    array-length v2, v1

    if-lt v0, v2, :cond_a

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_a
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez p0, :cond_11

    aget-wide v0, v1, v0

    return-wide v0

    :cond_11
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_1c

    aget-wide v0, v1, v0

    shl-int/lit8 p0, p0, 0x3

    ushr-long/2addr v0, p0

    return-wide v0

    :cond_1c
    aget-wide v2, v1, v0

    shl-int/lit8 v4, p0, 0x3

    ushr-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    aget-wide v0, v1, v0

    rsub-int/lit8 p0, p0, 0x8

    shl-int/lit8 p0, p0, 0x3

    shl-long/2addr v0, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public getWithCheck(I)J
    .registers 7

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    array-length v1, v0

    if-lt p1, v1, :cond_b

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_b
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez p0, :cond_12

    aget-wide p0, v0, p1

    return-wide p0

    :cond_12
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1e

    aget-wide v0, v0, p1

    shl-int/lit8 p0, p0, 0x3

    ushr-long p0, v0, p0

    return-wide p0

    :cond_1e
    aget-wide v1, v0, p1

    shl-int/lit8 v3, p0, 0x3

    ushr-long/2addr v1, v3

    add-int/lit8 p1, p1, 0x1

    aget-wide v3, v0, p1

    rsub-int/lit8 p0, p0, 0x8

    shl-int/lit8 p0, p0, 0x3

    shl-long p0, v3, p0

    or-long/2addr p0, v1

    return-wide p0
.end method

.method public indexReset()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    return-void
.end method

.method public moveNextByte()V
    .registers 4

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    ushr-int/lit8 v2, v0, 0x3

    add-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    and-int/lit8 v0, v0, 0x7

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    return-void
.end method

.method public moveNextBytes(I)V
    .registers 4

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    add-int/2addr v0, p1

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    ushr-int/lit8 v1, v0, 0x3

    add-int/2addr p1, v1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    and-int/lit8 p1, v0, 0x7

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    return-void
.end method

.method public set(IJ)V
    .registers 16

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v0, :cond_8

    invoke-super {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    goto :goto_32

    :cond_8
    shl-int/lit8 v1, v0, 0x3

    rsub-int/lit8 v0, v0, 0x8

    shl-int/lit8 v0, v0, 0x3

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int v3, p0, p1

    shl-long v4, p2, v1

    add-int v6, p0, p1

    aget-wide v6, v2, v6

    const-wide/16 v8, -0x1

    ushr-long v10, v8, v0

    and-long/2addr v6, v10

    or-long/2addr v4, v6

    aput-wide v4, v2, v3

    add-int v3, p0, p1

    add-int/lit8 v3, v3, 0x1

    ushr-long/2addr p2, v0

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x1

    aget-wide p0, v2, p0

    shl-long v0, v8, v1

    and-long/2addr p0, v0

    or-long/2addr p0, p2

    aput-wide p0, v2, v3

    :goto_32
    return-void
.end method

.method public setAnd(IJ)V
    .registers 16

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v0, :cond_8

    invoke-super {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    goto :goto_2d

    :cond_8
    shl-int/lit8 v1, v0, 0x3

    rsub-int/lit8 v0, v0, 0x8

    shl-int/lit8 v0, v0, 0x3

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int v3, p0, p1

    aget-wide v4, v2, v3

    shl-long v6, p2, v1

    const-wide/16 v8, -0x1

    ushr-long v10, v8, v0

    or-long/2addr v6, v10

    and-long/2addr v4, v6

    aput-wide v4, v2, v3

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x1

    aget-wide v3, v2, p0

    ushr-long p1, p2, v0

    shl-long v0, v8, v1

    or-long/2addr p1, v0

    and-long/2addr p1, v3

    aput-wide p1, v2, p0

    :goto_2d
    return-void
.end method

.method public setAndByte(IJ)V
    .registers 9

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    add-int/2addr p1, v0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    shl-int/lit8 v0, v0, 0x3

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x3

    and-int/lit8 p1, p1, 0x7

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    aget-wide v1, p0, v0

    const-wide/16 v3, 0xff

    and-long/2addr p2, v3

    shl-int/lit8 p1, p1, 0x3

    shl-long/2addr p2, p1

    shl-long/2addr v3, p1

    not-long v3, v3

    or-long p1, p2, v3

    and-long/2addr p1, v1

    aput-wide p1, p0, v0

    return-void
.end method

.method public setAndThenXorByte(IJJ)V
    .registers 13

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    add-int/2addr p1, v0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    shl-int/lit8 v0, v0, 0x3

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x3

    and-int/lit8 p1, p1, 0x7

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    aget-wide v1, p0, v0

    const-wide/16 v3, 0xff

    and-long/2addr p2, v3

    shl-int/lit8 p1, p1, 0x3

    shl-long/2addr p2, p1

    shl-long v5, v3, p1

    not-long v5, v5

    or-long/2addr p2, v5

    and-long/2addr p2, v1

    aput-wide p2, p0, v0

    and-long/2addr p4, v3

    shl-long/2addr p4, p1

    xor-long p1, p2, p4

    aput-wide p1, p0, v0

    return-void
.end method

.method public setByte(I)V
    .registers 10

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    int-to-long v2, p1

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 p1, p0, 0x3

    shl-long/2addr v2, p1

    aget-wide v4, v0, v1

    rsub-int/lit8 p0, p0, 0x8

    shl-int/lit8 p0, p0, 0x3

    const-wide/16 v6, -0x1

    ushr-long p0, v6, p0

    and-long/2addr p0, v4

    or-long/2addr p0, v2

    aput-wide p0, v0, v1

    return-void
.end method

.method public setByteIndex(I)V
    .registers 3

    .line 0
    and-int/lit8 v0, p1, 0x7

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    ushr-int/lit8 p1, p1, 0x3

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    return-void
.end method

.method public setRangeClear(II)V
    .registers 12

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v0, :cond_8

    invoke-super {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    goto :goto_31

    :cond_8
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v2, p1

    aget-wide v3, v1, v2

    rsub-int/lit8 v0, v0, 0x8

    shl-int/lit8 v0, v0, 0x3

    const-wide/16 v5, -0x1

    ushr-long v7, v5, v0

    and-long/2addr v3, v7

    aput-wide v3, v1, v2

    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    aget-wide v1, p1, v0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 p0, p0, 0x3

    shl-long v3, v5, p0

    and-long/2addr v1, v3

    aput-wide v1, p1, v0

    :goto_31
    return-void
.end method

.method public setXor(IJ)V
    .registers 11

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v0, :cond_8

    invoke-super {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    goto :goto_25

    :cond_8
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int v2, p0, p1

    aget-wide v3, v1, v2

    shl-int/lit8 v5, v0, 0x3

    shl-long v5, p2, v5

    xor-long/2addr v3, v5

    aput-wide v3, v1, v2

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x1

    aget-wide v2, v1, p0

    rsub-int/lit8 p1, v0, 0x8

    shl-int/lit8 p1, p1, 0x3

    ushr-long p1, p2, p1

    xor-long/2addr p1, v2

    aput-wide p1, v1, p0

    :goto_25
    return-void
.end method

.method public setXor(J)V
    .registers 9

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v0, :cond_8

    invoke-super {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(J)V

    goto :goto_21

    :cond_8
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    aget-wide v2, v1, p0

    shl-int/lit8 v4, v0, 0x3

    shl-long v4, p1, v4

    xor-long/2addr v2, v4

    aput-wide v2, v1, p0

    add-int/lit8 p0, p0, 0x1

    aget-wide v2, v1, p0

    rsub-int/lit8 v0, v0, 0x8

    shl-int/lit8 v0, v0, 0x3

    ushr-long/2addr p1, v0

    xor-long/2addr p1, v2

    aput-wide p1, v1, p0

    :goto_21
    return-void
.end method

.method public setXorByte(I)V
    .registers 10

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    aget-wide v2, v0, v1

    int-to-long v4, p1

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 p0, p0, 0x3

    shl-long p0, v4, p0

    xor-long/2addr p0, v2

    aput-wide p0, v0, v1

    return-void
.end method

.method public setXorRangeAndMask(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V
    .registers 21

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v2, :cond_c

    invoke-super/range {p0 .. p4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMask(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    return-void

    :cond_c
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget v4, v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    shl-int/lit8 v5, v2, 0x3

    rsub-int/lit8 v2, v2, 0x8

    shl-int/lit8 v2, v2, 0x3

    const/4 v6, 0x0

    move/from16 v7, p2

    :goto_19
    if-ge v6, v7, :cond_38

    iget-object v8, v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v9, v4, 0x1

    aget-wide v10, v8, v4

    and-long v10, v10, p3

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    aget-wide v12, v4, v3

    shl-long v14, v10, v5

    xor-long/2addr v12, v14

    aput-wide v12, v4, v3

    add-int/lit8 v3, v3, 0x1

    aget-wide v12, v4, v3

    ushr-long/2addr v10, v2

    xor-long/2addr v10, v12

    aput-wide v10, v4, v3

    add-int/lit8 v6, v6, 0x1

    move v4, v9

    goto :goto_19

    :cond_38
    return-void
.end method

.method public toBytes(I)[B
    .registers 8

    .line 0
    new-array v0, p1, [B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    :goto_4
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    add-int v3, p1, v2

    if-ge v1, v3, :cond_21

    sub-int v2, v1, v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    ushr-int/lit8 v5, v1, 0x3

    add-int/2addr v4, v5

    aget-wide v3, v3, v4

    and-int/lit8 v5, v1, 0x7

    shl-int/lit8 v5, v5, 0x3

    ushr-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_21
    return-object v0
.end method

.method public toBytesMove([BII)I
    .registers 12

    .line 0
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p3, :cond_27

    add-int/lit8 v2, p2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    aget-wide v5, v3, v4

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    add-int/lit8 v7, v3, 0x1

    iput v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v3, v3, 0x3

    ushr-long/2addr v5, v3

    long-to-int v3, v5

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    const/16 p2, 0x8

    if-ne v7, p2, :cond_23

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    :cond_23
    add-int/lit8 v1, v1, 0x1

    move p2, v2

    goto :goto_2

    :cond_27
    return p2
.end method
