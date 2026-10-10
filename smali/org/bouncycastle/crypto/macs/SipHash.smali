###### Class org.bouncycastle.crypto.macs.SipHash (org.bouncycastle.crypto.macs.SipHash)
.class public Lorg/bouncycastle/crypto/macs/SipHash;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


# instance fields
.field protected final c:I

.field protected final d:I

.field protected k0:J

.field protected k1:J

.field protected m:J

.field protected v0:J

.field protected v1:J

.field protected v2:J

.field protected v3:J

.field protected wordCount:I

.field protected wordPos:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordCount:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->c:I

    const/4 v0, 0x4

    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->d:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordCount:I

    iput p1, p0, Lorg/bouncycastle/crypto/macs/SipHash;->c:I

    iput p2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->d:I

    return-void
.end method

.method public static rotateLeft(JI)J
    .registers 5

    .line 0
    shl-long v0, p0, p2

    neg-int p2, p2

    ushr-long/2addr p0, p2

    or-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public applySipRounds(I)V
    .registers 13

    .line 0
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v1:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    const/4 v8, 0x0

    :goto_9
    if-ge v8, p1, :cond_38

    add-long/2addr v0, v2

    add-long/2addr v4, v6

    const/16 v9, 0xd

    invoke-static {v2, v3, v9}, Lorg/bouncycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v2

    const/16 v9, 0x10

    invoke-static {v6, v7, v9}, Lorg/bouncycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v6

    xor-long/2addr v2, v0

    xor-long/2addr v6, v4

    const/16 v9, 0x20

    invoke-static {v0, v1, v9}, Lorg/bouncycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v0

    add-long/2addr v4, v2

    add-long/2addr v0, v6

    const/16 v10, 0x11

    invoke-static {v2, v3, v10}, Lorg/bouncycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v2

    const/16 v10, 0x15

    invoke-static {v6, v7, v10}, Lorg/bouncycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v6

    xor-long/2addr v2, v4

    xor-long/2addr v6, v0

    invoke-static {v4, v5, v9}, Lorg/bouncycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v4

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_38
    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v1:J

    iput-wide v4, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    iput-wide v6, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    return-void
.end method

.method public doFinal([BI)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash;->doFinal()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    const/16 p0, 0x8

    return p0
.end method

.method public doFinal()J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 0
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    iget v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    rsub-int/lit8 v3, v2, 0x7

    shl-int/lit8 v3, v3, 0x3

    ushr-long/2addr v0, v3

    const/16 v3, 0x8

    ushr-long/2addr v0, v3

    iget v3, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordCount:I

    shl-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v2

    int-to-long v2, v3

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v6, 0x38

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash;->processMessageWord()V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    xor-long/2addr v0, v4

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    iget v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->d:I

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/macs/SipHash;->applySipRounds(I)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v1:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    xor-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash;->reset()V

    return-wide v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SipHash-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/bouncycastle/crypto/macs/SipHash;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->d:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMacSize()I
    .registers 1

    .line 0
    const/16 p0, 0x8

    return p0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 0
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_2a

    check-cast p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p1

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_22

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->k0:J

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->k1:J

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash;->reset()V

    return-void

    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'params\' must be a 128-bit key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'params\' must be an instance of KeyParameter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public processMessageWord()V
    .registers 5

    .line 0
    iget v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordCount:I

    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    iget v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->c:I

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/macs/SipHash;->applySipRounds(I)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    return-void
.end method

.method public reset()V
    .registers 7

    .line 0
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->k0:J

    const-wide v2, 0x736f6d6570736575L    # 1.0986868386607877E248

    xor-long/2addr v2, v0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->k1:J

    const-wide v4, 0x646f72616e646f6dL    # 6.222199573468475E175

    xor-long/2addr v4, v2

    iput-wide v4, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v1:J

    const-wide v4, 0x6c7967656e657261L    # 3.4208747916531402E214

    xor-long/2addr v0, v4

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    const-wide v0, 0x7465646279746573L    # 4.901176695720602E252

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordCount:I

    return-void
.end method

.method public update(B)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 0
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    const/16 v2, 0x8

    ushr-long/2addr v0, v2

    int-to-long v3, p1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 p1, 0x38

    shl-long/2addr v3, p1

    or-long/2addr v0, v3

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    iget p1, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    if-ne p1, v2, :cond_1d

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash;->processMessageWord()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    :cond_1d
    return-void
.end method

.method public update([BII)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 0
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    and-int/lit8 v3, v2, -0x8

    iget v4, v0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    const/16 v5, 0x38

    const-wide/16 v6, 0xff

    const/16 v8, 0x8

    const/4 v9, 0x0

    if-nez v4, :cond_3b

    :goto_12
    if-ge v9, v3, :cond_22

    add-int v4, p2, v9

    invoke-static {v1, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v10

    iput-wide v10, v0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash;->processMessageWord()V

    add-int/lit8 v9, v9, 0x8

    goto :goto_12

    :cond_22
    :goto_22
    if-ge v9, v2, :cond_36

    iget-wide v10, v0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    ushr-long/2addr v10, v8

    iput-wide v10, v0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    add-int v4, p2, v9

    aget-byte v4, v1, v4

    int-to-long v12, v4

    and-long/2addr v12, v6

    shl-long/2addr v12, v5

    or-long/2addr v10, v12

    iput-wide v10, v0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    add-int/lit8 v9, v9, 0x1

    goto :goto_22

    :cond_36
    sub-int v1, v2, v3

    iput v1, v0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    goto :goto_80

    :cond_3b
    shl-int/lit8 v4, v4, 0x3

    move v10, v9

    :goto_3e
    if-ge v10, v3, :cond_5b

    add-int v11, p2, v10

    invoke-static {v1, v11}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v11

    shl-long v13, v11, v4

    iget-wide v5, v0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    neg-int v7, v4

    ushr-long/2addr v5, v7

    or-long/2addr v5, v13

    iput-wide v5, v0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash;->processMessageWord()V

    iput-wide v11, v0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    add-int/lit8 v10, v10, 0x8

    const/16 v5, 0x38

    const-wide/16 v6, 0xff

    goto :goto_3e

    :cond_5b
    :goto_5b
    if-ge v10, v2, :cond_80

    iget-wide v3, v0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    ushr-long/2addr v3, v8

    iput-wide v3, v0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    add-int v5, p2, v10

    aget-byte v5, v1, v5

    int-to-long v5, v5

    const-wide/16 v11, 0xff

    and-long/2addr v5, v11

    const/16 v7, 0x38

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    iput-wide v3, v0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    iget v3, v0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    if-ne v3, v8, :cond_7d

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash;->processMessageWord()V

    iput v9, v0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    :cond_7d
    add-int/lit8 v10, v10, 0x1

    goto :goto_5b

    :cond_80
    :goto_80
    return-void
.end method
