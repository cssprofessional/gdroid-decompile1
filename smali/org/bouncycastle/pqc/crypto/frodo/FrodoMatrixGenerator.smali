###### Class org.bouncycastle.pqc.crypto.frodo.FrodoMatrixGenerator (org.bouncycastle.pqc.crypto.frodo.FrodoMatrixGenerator)
.class abstract Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;,
        Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;
    }
.end annotation


# instance fields
.field n:I

.field q:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->n:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->q:I

    return-void
.end method


# virtual methods
.method public abstract genMatrix([B)[S
.end method

###### Class org.bouncycastle.pqc.crypto.frodo.FrodoMatrixGenerator.Aes128MatrixGenerator (org.bouncycastle.pqc.crypto.frodo.FrodoMatrixGenerator$Aes128MatrixGenerator)
.class Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;
.super Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Aes128MatrixGenerator"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;-><init>(II)V

    return-void
.end method


# virtual methods
.method public genMatrix([B)[S
    .registers 13

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->n:I

    mul-int/2addr v0, v0

    new-array v0, v0, [S

    const/16 v1, 0x10

    new-array v2, v1, [B

    new-array v1, v1, [B

    new-instance v3, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    new-instance v4, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v4, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    const/4 p1, 0x1

    invoke-interface {v3, p1, v4}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    const/4 v4, 0x0

    move v5, v4

    :goto_1b
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->n:I

    if-ge v5, v6, :cond_50

    int-to-short v6, v5

    invoke-static {v6, v2, v4}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S[BI)V

    move v6, v4

    :goto_24
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->n:I

    if-ge v6, v7, :cond_4d

    int-to-short v7, v6

    const/4 v8, 0x2

    invoke-static {v7, v2, v8}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S[BI)V

    invoke-interface {v3, v2, v4, v1, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move v7, v4

    :goto_31
    const/16 v8, 0x8

    if-ge v7, v8, :cond_4a

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->n:I

    mul-int/2addr v8, v5

    add-int/2addr v8, v6

    add-int/2addr v8, v7

    mul-int/lit8 v9, v7, 0x2

    invoke-static {v1, v9}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v9

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->q:I

    sub-int/2addr v10, p1

    and-int/2addr v9, v10

    int-to-short v9, v9

    aput-short v9, v0, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_31

    :cond_4a
    add-int/lit8 v6, v6, 0x8

    goto :goto_24

    :cond_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_50
    return-object v0
.end method

###### Class org.bouncycastle.pqc.crypto.frodo.FrodoMatrixGenerator.Shake128MatrixGenerator (org.bouncycastle.pqc.crypto.frodo.FrodoMatrixGenerator$Shake128MatrixGenerator)
.class Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;
.super Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Shake128MatrixGenerator"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;-><init>(II)V

    return-void
.end method


# virtual methods
.method public genMatrix([B)[S
    .registers 13

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->n:I

    mul-int v1, v0, v0

    new-array v1, v1, [S

    mul-int/lit8 v0, v0, 0x10

    div-int/lit8 v0, v0, 0x8

    new-array v2, v0, [B

    array-length v3, p1

    const/4 v4, 0x2

    add-int/2addr v3, v4

    new-array v5, v3, [B

    array-length v6, p1

    const/4 v7, 0x0

    invoke-static {p1, v7, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v4, 0x80

    invoke-direct {p1, v4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    move v4, v7

    :goto_1e
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->n:I

    if-ge v4, v6, :cond_48

    invoke-static {v4, v5, v7}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S[BI)V

    invoke-interface {p1, v5, v7, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p1, v2, v7, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move v6, v7

    :goto_2c
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->n:I

    if-ge v6, v8, :cond_44

    mul-int/2addr v8, v4

    add-int/2addr v8, v6

    mul-int/lit8 v9, v6, 0x2

    invoke-static {v2, v9}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v9

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->q:I

    add-int/lit8 v10, v10, -0x1

    and-int/2addr v9, v10

    int-to-short v9, v9

    aput-short v9, v1, v8

    add-int/lit8 v6, v6, 0x1

    int-to-short v6, v6

    goto :goto_2c

    :cond_44
    add-int/lit8 v4, v4, 0x1

    int-to-short v4, v4

    goto :goto_1e

    :cond_48
    return-object v1
.end method
