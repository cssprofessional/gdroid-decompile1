###### Class org.bouncycastle.pqc.legacy.crypto.ntru.IndexGenerator (org.bouncycastle.pqc.legacy.crypto.ntru.IndexGenerator)
.class public Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;
    }
.end annotation


# instance fields
.field private N:I

.field private buf:Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;

.field private c:I

.field private counter:I

.field private hLen:I

.field private hashAlg:Lorg/bouncycastle/crypto/Digest;

.field private initialized:Z

.field private minCallsR:I

.field private remLen:I

.field private seed:[B

.field private totLen:I


# direct methods
.method public constructor <init>([BLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->seed:[B

    iget p1, p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->N:I

    iget p1, p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->c:I

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->c:I

    iget p1, p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsR:I

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->minCallsR:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->totLen:I

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->remLen:I

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->counter:I

    iget-object p2, p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p2

    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->hLen:I

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->initialized:Z

    return-void
.end method

.method public static synthetic access$000([BI)[B
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->copyOf([BI)[B

    move-result-object p0

    return-object p0
.end method

.method private appendHash(Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;[B)V
    .registers 7

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->seed:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->counter:I

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->putInt(Lorg/bouncycastle/crypto/Digest;I)V

    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p0, p2, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    invoke-virtual {p1, p2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->appendBits([B)V

    return-void
.end method

.method private static copyOf([BI)[B
    .registers 4

    .line 0
    new-array v0, p1, [B

    array-length v1, p0

    if-ge p1, v1, :cond_6

    goto :goto_7

    :cond_6
    array-length p1, p0

    :goto_7
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private putInt(Lorg/bouncycastle/crypto/Digest;I)V
    .registers 3

    .line 0
    shr-int/lit8 p0, p2, 0x18

    int-to-byte p0, p0

    invoke-interface {p1, p0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    shr-int/lit8 p0, p2, 0x10

    int-to-byte p0, p0

    invoke-interface {p1, p0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    shr-int/lit8 p0, p2, 0x8

    int-to-byte p0, p0

    invoke-interface {p1, p0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    int-to-byte p0, p2

    invoke-interface {p1, p0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method


# virtual methods
.method public nextIndex()I
    .registers 8

    .line 0
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->initialized:Z

    const/4 v1, 0x1

    if-nez v0, :cond_30

    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->buf:Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    :goto_14
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->counter:I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->minCallsR:I

    if-ge v2, v3, :cond_25

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->buf:Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;

    invoke-direct {p0, v2, v0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->appendHash(Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;[B)V

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->counter:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->counter:I

    goto :goto_14

    :cond_25
    mul-int/lit8 v3, v3, 0x8

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->hLen:I

    mul-int/2addr v3, v0

    iput v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->totLen:I

    iput v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->remLen:I

    iput-boolean v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->initialized:Z

    :cond_30
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->totLen:I

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->c:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->totLen:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->buf:Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->remLen:I

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->getTrailing(I)Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;

    move-result-object v0

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->remLen:I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->c:I

    if-ge v2, v3, :cond_7f

    sub-int/2addr v3, v2

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->counter:I

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->hLen:I

    add-int v5, v3, v4

    sub-int/2addr v5, v1

    div-int/2addr v5, v4

    add-int/2addr v2, v5

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v4, v4, [B

    :cond_57
    :goto_57
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->counter:I

    if-ge v5, v2, :cond_6d

    invoke-direct {p0, v0, v4}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->appendHash(Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;[B)V

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->counter:I

    add-int/2addr v5, v1

    iput v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->counter:I

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->hLen:I

    mul-int/lit8 v6, v5, 0x8

    if-le v3, v6, :cond_57

    mul-int/lit8 v5, v5, 0x8

    sub-int/2addr v3, v5

    goto :goto_57

    :cond_6d
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->hLen:I

    mul-int/lit8 v2, v2, 0x8

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->remLen:I

    new-instance v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;-><init>()V

    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->buf:Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->appendBits([B)V

    goto :goto_82

    :cond_7f
    sub-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->remLen:I

    :goto_82
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->c:I

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->getLeadingAsInt(I)I

    move-result v0

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->c:I

    shl-int v3, v1, v2

    shl-int v2, v1, v2

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->N:I

    rem-int/2addr v2, v4

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_30

    rem-int/2addr v0, v4

    return v0
.end method

###### Class org.bouncycastle.pqc.legacy.crypto.ntru.IndexGenerator.BitString (org.bouncycastle.pqc.legacy.crypto.ntru.IndexGenerator$BitString)
.class public Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitString"
.end annotation


# instance fields
.field bytes:[B

.field lastByteBits:I

.field numBytes:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    return-void
.end method


# virtual methods
.method public appendBits(B)V
    .registers 8

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    array-length v2, v1

    if-ne v0, v2, :cond_10

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->access$000([BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    :cond_10
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    const/16 v1, 0x8

    if-nez v0, :cond_21

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    const/4 v2, 0x0

    aput-byte p1, v0, v2

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->lastByteBits:I

    goto :goto_47

    :cond_21
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->lastByteBits:I

    if-ne v2, v1, :cond_2e

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    aput-byte p1, v1, v0

    goto :goto_47

    :cond_2e
    rsub-int/lit8 v1, v2, 0x8

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    add-int/lit8 v4, v0, -0x1

    aget-byte v5, v3, v4

    and-int/lit16 p1, p1, 0xff

    shl-int v2, p1, v2

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    shr-int p0, p1, v1

    int-to-byte p0, p0

    aput-byte p0, v3, v0

    :goto_47
    return-void
.end method

.method public appendBits([B)V
    .registers 4

    .line 0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-eq v0, v1, :cond_c

    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->appendBits(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    return-void
.end method

.method public getBytes()[B
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getLeadingAsInt(I)I
    .registers 5

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->lastByteBits:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    div-int/lit8 p1, v0, 0x8

    rem-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    aget-byte v1, v1, p1

    and-int/lit16 v1, v1, 0xff

    ushr-int/2addr v1, v0

    rsub-int/lit8 v0, v0, 0x8

    :goto_17
    add-int/lit8 p1, p1, 0x1

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    if-ge p1, v2, :cond_28

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    aget-byte v2, v2, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v0

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x8

    goto :goto_17

    :cond_28
    return v1
.end method

.method public getTrailing(I)Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;
    .registers 7

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;-><init>()V

    add-int/lit8 v1, p1, 0x7

    const/16 v2, 0x8

    div-int/2addr v1, v2

    iput v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    new-array v1, v1, [B

    iput-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    const/4 v1, 0x0

    :goto_11
    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    if-ge v1, v3, :cond_20

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    aget-byte v4, v4, v1

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_20
    rem-int/2addr p1, v2

    iput p1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->lastByteBits:I

    if-nez p1, :cond_28

    iput v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->lastByteBits:I

    goto :goto_38

    :cond_28
    rsub-int/lit8 p0, p1, 0x20

    iget-object p1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    add-int/lit8 v1, v3, -0x1

    add-int/lit8 v3, v3, -0x1

    aget-byte v2, p1, v3

    shl-int/2addr v2, p0

    ushr-int p0, v2, p0

    int-to-byte p0, p0

    aput-byte p0, p1, v1

    :goto_38
    return-object v0
.end method
