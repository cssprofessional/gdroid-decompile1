###### Class org.bouncycastle.pqc.legacy.crypto.gmss.GMSSUtils (org.bouncycastle.pqc.legacy.crypto.gmss.GMSSUtils)
.class Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clone([Ljava/util/Vector;)[Ljava/util/Vector;
    .registers 6

    .line 0
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    new-array v0, v0, [Ljava/util/Vector;

    const/4 v1, 0x0

    :goto_8
    array-length v2, p0

    if-eq v1, v2, :cond_2b

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_28

    aget-object v3, v0, v1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_18

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_2b
    return-object v0
.end method

.method public static clone([Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;)[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;
    .registers 4

    .line 0
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static clone([Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;)[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;
    .registers 4

    .line 0
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static clone([Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;)[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;
    .registers 4

    .line 0
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static clone([Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;)[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;
    .registers 4

    .line 0
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static clone([[B)[[B
    .registers 4

    .line 0
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    new-array v0, v0, [[B

    const/4 v1, 0x0

    :goto_8
    array-length v2, p0

    if-eq v1, v2, :cond_16

    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_16
    return-object v0
.end method

.method public static clone([[Ljava/util/Vector;)[[Ljava/util/Vector;
    .registers 4

    .line 0
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    new-array v0, v0, [[Ljava/util/Vector;

    const/4 v1, 0x0

    :goto_8
    array-length v2, p0

    if-eq v1, v2, :cond_16

    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSUtils;->clone([Ljava/util/Vector;)[Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_16
    return-object v0
.end method

.method public static clone([[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;)[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;
    .registers 4

    .line 0
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    new-array v0, v0, [[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    const/4 v1, 0x0

    :goto_8
    array-length v2, p0

    if-eq v1, v2, :cond_16

    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSUtils;->clone([Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;)[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_16
    return-object v0
.end method

.method public static clone([[[B)[[[B
    .registers 4

    .line 0
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    new-array v0, v0, [[[B

    const/4 v1, 0x0

    :goto_8
    array-length v2, p0

    if-eq v1, v2, :cond_16

    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSUtils;->clone([[B)[[B

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_16
    return-object v0
.end method
