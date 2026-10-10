###### Class org.bouncycastle.pqc.crypto.picnic.Tree (org.bouncycastle.pqc.crypto.picnic.Tree)
.class Lorg/bouncycastle/pqc/crypto/picnic/Tree;
.super Ljava/lang/Object;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static final MAX_SEED_SIZE_BYTES:I = 0x20


# instance fields
.field private dataSize:I

.field private depth:I

.field private engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

.field private exists:[Z

.field private haveNode:[Z

.field nodes:[[B

.field private numLeaves:I

.field private numNodes:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    const-class v0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->ceil_log2(I)I

    move-result p1

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->depth:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    shl-int p1, v1, p1

    sub-int/2addr p1, p2

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->dataSize:I

    const/4 p1, 0x2

    new-array p1, p1, [I

    aput p3, p1, v1

    const/4 p2, 0x0

    aput v0, p1, p2

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    move p1, p2

    :goto_2e
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    if-ge p1, v0, :cond_3b

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    new-array v2, p3, [B

    aput-object v2, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2e

    :cond_3b
    new-array p1, v0, [Z

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    new-array p1, v0, [Z

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists:[Z

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    sub-int p3, v0, p3

    invoke-static {p1, p3, v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([ZIIZ)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    sub-int/2addr p1, p3

    :goto_4f
    if-lez p1, :cond_6a

    mul-int/lit8 p3, p1, 0x2

    add-int/lit8 v0, p3, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists(I)Z

    move-result v0

    if-nez v0, :cond_63

    add-int/lit8 p3, p3, 0x2

    invoke-direct {p0, p3}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists(I)Z

    move-result p3

    if-eqz p3, :cond_67

    :cond_63
    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists:[Z

    aput-boolean v1, p3, p1

    :cond_67
    add-int/lit8 p1, p1, -0x1

    goto :goto_4f

    :cond_6a
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists:[Z

    aput-boolean v1, p0, p2

    return-void
.end method

.method private computeParentHash(I[B)V
    .registers 9

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getParent(I)I

    move-result p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    aget-boolean v1, v0, p1

    if-eqz v1, :cond_12

    return-void

    :cond_12
    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v2, v1, 0x1

    aget-boolean v0, v0, v2

    if-nez v0, :cond_1b

    return-void

    :cond_1b
    const/4 v0, 0x2

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    aget-boolean v3, v3, v1

    if-nez v3, :cond_2a

    return-void

    :cond_2a
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v4, v3, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    aget-object v2, v5, v2

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/4 v5, 0x0

    invoke-interface {v4, v2, v5, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->hasRightChild(I)Z

    move-result v2

    if-eqz v2, :cond_53

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v3, v2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    aget-object v1, v4, v1

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v3, v1, v5, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    :cond_53
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/16 v2, 0x20

    invoke-interface {v1, p2, v5, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {p1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object v1

    invoke-interface {p2, v1, v5, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v0, p2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    aget-object v1, v1, p1

    iget p2, p2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v0, v1, v5, p2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    const/4 p2, 0x1

    aput-boolean p2, p0, p1

    return-void
.end method

.method private contains([III)Z
    .registers 6

    .line 0
    const/4 p0, 0x0

    move v0, p0

    :goto_2
    if-ge v0, p2, :cond_d

    aget v1, p1, v0

    if-ne v1, p3, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_d
    return p0
.end method

.method private exists(I)Z
    .registers 3

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    if-lt p1, v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method private expandSeeds([BI)V
    .registers 15

    .line 0
    const/16 v0, 0x40

    new-array v0, v0, [B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    const/4 v8, 0x1

    sub-int/2addr v1, v8

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getParent(I)I

    move-result v9

    const/4 v10, 0x0

    move v11, v10

    :goto_e
    if-gt v11, v9, :cond_5d

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    aget-boolean v1, v1, v11

    if-nez v1, :cond_17

    goto :goto_5a

    :cond_17
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    aget-object v3, v1, v11

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, v0

    move-object v4, p1

    move v6, p2

    move v7, v11

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->hashSeed([B[B[BBII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    mul-int/lit8 v2, v11, 0x2

    add-int/lit8 v3, v2, 0x1

    aget-boolean v1, v1, v3

    if-nez v1, :cond_3d

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    aget-object v1, v1, v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {v0, v10, v1, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    aput-boolean v8, v1, v3

    :cond_3d
    add-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    aget-boolean v1, v1, v2

    if-nez v1, :cond_5a

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    aget-object v3, v3, v2

    invoke-static {v0, v1, v3, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    aput-boolean v8, v1, v2

    :cond_5a
    :goto_5a
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    :cond_5d
    return-void
.end method

.method private getParent(I)I
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->isLeftChild(I)Z

    move-result p0

    if-eqz p0, :cond_b

    add-int/lit8 p1, p1, -0x1

    :goto_8
    div-int/lit8 p1, p1, 0x2

    return p1

    :cond_b
    add-int/lit8 p1, p1, -0x2

    goto :goto_8
.end method

.method private getRevealedMerkleNodes([II[I)[I
    .registers 12

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    sub-int v1, v0, v1

    new-array v0, v0, [Z

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    const/4 v4, 0x1

    if-ge v3, p2, :cond_15

    aget v5, p1, v3

    add-int/2addr v5, v1

    aput-boolean v4, v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_15
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getParent(I)I

    move-result v3

    :goto_1c
    if-lez v3, :cond_45

    invoke-direct {p0, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists(I)Z

    move-result v5

    if-nez v5, :cond_25

    goto :goto_42

    :cond_25
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v6, v5, 0x2

    invoke-direct {p0, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists(I)Z

    move-result v7

    add-int/lit8 v5, v5, 0x1

    if-eqz v7, :cond_3c

    aget-boolean v5, v0, v5

    if-eqz v5, :cond_42

    aget-boolean v5, v0, v6

    if-eqz v5, :cond_42

    aput-boolean v4, v0, v3

    goto :goto_42

    :cond_3c
    aget-boolean v5, v0, v5

    if-eqz v5, :cond_42

    aput-boolean v4, v0, v3

    :cond_42
    :goto_42
    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    :cond_45
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    new-array v3, v3, [I

    move v4, v2

    move v5, v4

    :goto_4b
    if-ge v4, p2, :cond_6c

    aget v6, p1, v4

    add-int/2addr v6, v1

    :cond_50
    invoke-direct {p0, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getParent(I)I

    move-result v7

    aget-boolean v7, v0, v7

    if-nez v7, :cond_63

    invoke-direct {p0, v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->contains([III)Z

    move-result v7

    if-nez v7, :cond_69

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_69

    :cond_63
    invoke-direct {p0, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getParent(I)I

    move-result v6

    if-nez v6, :cond_50

    :cond_69
    :goto_69
    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    :cond_6c
    aput v5, p3, v2

    return-object v3
.end method

.method private getRevealedNodes([II[I)[I
    .registers 13

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->depth:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput p2, v2, v1

    const/4 v3, 0x0

    aput v0, v2, v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    move v4, v3

    :goto_15
    if-ge v4, p2, :cond_33

    aget v5, p1, v4

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    aget-object v6, v2, v3

    aput v5, v6, v4

    move v6, v1

    :goto_24
    invoke-direct {p0, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getParent(I)I

    move-result v5

    if-eqz v5, :cond_30

    aget-object v7, v2, v6

    aput v5, v7, v4

    add-int/2addr v6, v1

    goto :goto_24

    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_33
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    new-array p1, p1, [I

    move v4, v3

    move v5, v4

    :goto_39
    if-ge v4, v0, :cond_79

    move v6, v3

    :goto_3c
    if-ge v6, p2, :cond_76

    aget-object v7, v2, v4

    aget v7, v7, v6

    invoke-direct {p0, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->hasSibling(I)Z

    move-result v7

    if-nez v7, :cond_49

    goto :goto_73

    :cond_49
    aget-object v7, v2, v4

    aget v7, v7, v6

    invoke-direct {p0, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getSibling(I)I

    move-result v7

    aget-object v8, v2, v4

    invoke-direct {p0, v8, p2, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->contains([III)Z

    move-result v8

    if-nez v8, :cond_73

    :goto_59
    invoke-direct {p0, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->hasRightChild(I)Z

    move-result v8

    if-nez v8, :cond_69

    invoke-direct {p0, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->isLeafNode(I)Z

    move-result v8

    if-nez v8, :cond_69

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v1

    goto :goto_59

    :cond_69
    invoke-direct {p0, p1, v5, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->contains([III)Z

    move-result v8

    if-nez v8, :cond_73

    aput v7, p1, v5

    add-int/lit8 v5, v5, 0x1

    :cond_73
    :goto_73
    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    :cond_76
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :cond_79
    aput v5, p3, v3

    return-object p1
.end method

.method private getSibling(I)I
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->isLeftChild(I)Z

    move-result v0

    if-eqz v0, :cond_16

    add-int/lit8 p1, p1, 0x1

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    if-ge p1, p0, :cond_d

    return p1

    :cond_d
    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->LOG:Ljava/util/logging/Logger;

    const-string p1, "getSibling: request for node with not sibling"

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_16
    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private hasRightChild(I)Z
    .registers 4

    .line 0
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    if-ge v0, v1, :cond_10

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists(I)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private hasSibling(I)Z
    .registers 5

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->isLeftChild(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    add-int/2addr p1, v2

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists(I)Z

    move-result p0

    if-nez p0, :cond_17

    return v1

    :cond_17
    return v2
.end method

.method private hashSeed([B[B[BBII)V
    .registers 9

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0, p4}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v0, p4, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget p4, p4, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1, p4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/16 p4, 0x20

    invoke-interface {p2, p3, v1, p4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const p3, 0xffff

    and-int p4, p5, p3

    int-to-short p4, p4

    invoke-static {p4}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S)[B

    move-result-object p4

    const/4 p5, 0x2

    invoke-interface {p2, p4, v1, p5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    and-int/2addr p3, p6

    int-to-short p3, p3

    invoke-static {p3}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S)[B

    move-result-object p3

    invoke-interface {p2, p3, v1, p5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/2addr p0, p5

    invoke-interface {p2, p1, v1, p0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-void
.end method

.method private isLeafNode(I)Z
    .registers 3

    .line 0
    mul-int/lit8 p1, p1, 0x2

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    if-lt p1, p0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private isLeftChild(I)Z
    .registers 2

    .line 0
    rem-int/lit8 p1, p1, 0x2

    const/4 p0, 0x1

    if-ne p1, p0, :cond_6

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method


# virtual methods
.method public addMerkleNodes([II[BI)I
    .registers 11

    .line 0
    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getRevealedMerkleNodes([II[I)[I

    move-result-object p1

    move p2, v0

    :goto_a
    aget v2, v1, v0

    const/4 v3, -0x1

    if-ge p2, v2, :cond_2a

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->dataSize:I

    sub-int/2addr p4, v2

    if-gez p4, :cond_15

    return v3

    :cond_15
    mul-int v3, p2, v2

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    aget v5, p1, p2

    aget-object v4, v4, v5

    invoke-static {p3, v3, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    aget v3, p1, p2

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_2a
    if-eqz p4, :cond_2d

    return v3

    :cond_2d
    return v0
.end method

.method public buildMerkleTree([[B[B)V
    .registers 10

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    if-ge v2, v3, :cond_22

    aget-object v3, p1, v2

    if-eqz v3, :cond_1f

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    add-int v5, v0, v2

    aget-object v4, v4, v5

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->dataSize:I

    invoke-static {v3, v1, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v5

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_22
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    :goto_24
    if-lez p1, :cond_2c

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->computeParentHash(I[B)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_24

    :cond_2c
    return-void
.end method

.method public generateSeeds([B[BI)V
    .registers 6

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    const/4 v0, 0x1

    aput-boolean v0, p1, v1

    invoke-direct {p0, p2, p3}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->expandSeeds([BI)V

    return-void
.end method

.method public getLeaf(I)[B
    .registers 4

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    sub-int/2addr v0, v1

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    add-int/2addr v0, p1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getLeaves()[[B
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    return-object p0
.end method

.method public getLeavesOffset()I
    .registers 2

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public hasLeftChild(Lorg/bouncycastle/pqc/crypto/picnic/Tree;I)Z
    .registers 3

    .line 0
    mul-int/lit8 p2, p2, 0x2

    const/4 p1, 0x1

    add-int/2addr p2, p1

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    if-ge p2, p0, :cond_9

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public openMerkleTree([II[I)[B
    .registers 9

    .line 0
    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getRevealedMerkleNodes([II[I)[I

    move-result-object p1

    const/4 p2, 0x0

    aget v1, v0, p2

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->dataSize:I

    mul-int/2addr v1, v2

    aput v1, p3, p2

    new-array p3, v1, [B

    move v1, p2

    :goto_12
    aget v2, v0, p2

    if-ge v1, v2, :cond_26

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    aget v3, p1, v1

    aget-object v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->dataSize:I

    mul-int v4, v1, v3

    invoke-static {v2, p2, p3, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_26
    return-object p3
.end method

.method public openMerkleTreeSize([II)I
    .registers 4

    .line 0
    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getRevealedMerkleNodes([II[I)[I

    const/4 p1, 0x0

    aget p1, v0, p1

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    mul-int/2addr p1, p0

    return p1
.end method

.method public reconstructSeeds([II[BI[BI)I
    .registers 13

    .line 0
    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getRevealedNodes([II[I)[I

    move-result-object p1

    move p2, v0

    :goto_a
    aget v2, v1, v0

    if-ge p2, v2, :cond_2c

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    sub-int/2addr p4, v2

    if-gez p4, :cond_17

    const/4 p0, -0x1

    return p0

    :cond_17
    mul-int v3, p2, v2

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    aget v5, p1, p2

    aget-object v4, v4, v5

    invoke-static {p3, v3, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    aget v3, p1, p2

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_2c
    invoke-direct {p0, p5, p6}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->expandSeeds([BI)V

    return v0
.end method

.method public revealSeeds([II[BI)I
    .registers 10

    .line 0
    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getRevealedNodes([II[I)[I

    move-result-object p1

    move p2, v0

    :goto_a
    aget v2, v1, v0

    if-ge p2, v2, :cond_2b

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    sub-int/2addr p4, v2

    if-gez p4, :cond_1d

    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->LOG:Ljava/util/logging/Logger;

    const-string p1, "Insufficient sized buffer provided to revealSeeds"

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v0

    :cond_1d
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    aget v4, p1, p2

    aget-object v3, v3, v4

    mul-int v4, p2, v2

    invoke-static {v3, v0, p3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_2b
    array-length p0, p3

    sub-int/2addr p0, p4

    return p0
.end method

.method public revealSeedsSize([II)I
    .registers 5

    .line 0
    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getRevealedNodes([II[I)[I

    aget p1, v1, v0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/2addr p1, p0

    return p1
.end method

.method public verifyMerkleTree([[B[B)I
    .registers 10

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    const/4 v4, -0x1

    if-ge v2, v3, :cond_2c

    aget-object v3, p1, v2

    if-eqz v3, :cond_29

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    add-int v6, v0, v2

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_19

    return v4

    :cond_19
    if-eqz v3, :cond_29

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    aget-object v4, v4, v6

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->dataSize:I

    invoke-static {v3, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v6

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_2c
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    :goto_2e
    if-lez p1, :cond_36

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->computeParentHash(I[B)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2e

    :cond_36
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    aget-boolean p0, p0, v1

    if-nez p0, :cond_3d

    return v4

    :cond_3d
    return v1
.end method
