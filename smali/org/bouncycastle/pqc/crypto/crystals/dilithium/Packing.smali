###### Class org.bouncycastle.pqc.crypto.crystals.dilithium.Packing (org.bouncycastle.pqc.crypto.crystals.dilithium.Packing)
.class Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Packing;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static packPublicKey(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)[B
    .registers 8

    .line 0
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getCryptoPublicKeyBytes()I

    move-result v0

    add-int/lit8 v0, v0, -0x20

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumK()I

    move-result v3

    if-ge v2, v3, :cond_22

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->polyt1Pack()[B

    move-result-object v3

    mul-int/lit16 v4, v2, 0x140

    const/16 v5, 0x140

    invoke-static {v3, v1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_22
    return-object v0
.end method

.method public static packSecretKey([B[B[BLorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)[[B
    .registers 11

    .line 0
    const/4 v0, 0x6

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p2, v0, p0

    const/4 p0, 0x2

    aput-object p1, v0, p0

    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumL()I

    move-result p0

    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyEtaPackedBytes()I

    move-result p1

    mul-int/2addr p0, p1

    new-array p0, p0, [B

    const/4 p1, 0x3

    aput-object p0, v0, p1

    move p0, v1

    :goto_1b
    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumL()I

    move-result p2

    if-ge p0, p2, :cond_32

    invoke-virtual {p4, p0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object p2

    aget-object v2, v0, p1

    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyEtaPackedBytes()I

    move-result v3

    mul-int/2addr v3, p0

    invoke-virtual {p2, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->polyEtaPack([BI)[B

    add-int/lit8 p0, p0, 0x1

    goto :goto_1b

    :cond_32
    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumK()I

    move-result p0

    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyEtaPackedBytes()I

    move-result p1

    mul-int/2addr p0, p1

    new-array p0, p0, [B

    const/4 p1, 0x4

    aput-object p0, v0, p1

    move p0, v1

    :goto_41
    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumK()I

    move-result p2

    if-ge p0, p2, :cond_58

    invoke-virtual {p5, p0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object p2

    aget-object p4, v0, p1

    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyEtaPackedBytes()I

    move-result v2

    mul-int/2addr v2, p0

    invoke-virtual {p2, p4, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->polyEtaPack([BI)[B

    add-int/lit8 p0, p0, 0x1

    goto :goto_41

    :cond_58
    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumK()I

    move-result p0

    mul-int/lit16 p0, p0, 0x1a0

    new-array p0, p0, [B

    const/4 p1, 0x5

    aput-object p0, v0, p1

    :goto_63
    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumK()I

    move-result p0

    if-ge v1, p0, :cond_77

    invoke-virtual {p3, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object p0

    aget-object p2, v0, p1

    mul-int/lit16 p4, v1, 0x1a0

    invoke-virtual {p0, p2, p4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->polyt0Pack([BI)[B

    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    :cond_77
    return-object v0
.end method

.method public static packSignature([BLorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)[B
    .registers 10

    .line 0
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getCryptoBytes()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumCTilde()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumCTilde()I

    move-result p0

    move v1, v2

    :goto_13
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumL()I

    move-result v3

    if-ge v1, v3, :cond_31

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->zPack()[B

    move-result-object v3

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyZPackedBytes()I

    move-result v4

    mul-int/2addr v4, v1

    add-int/2addr v4, p0

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyZPackedBytes()I

    move-result v5

    invoke-static {v3, v2, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_31
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumL()I

    move-result p1

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyZPackedBytes()I

    move-result v1

    mul-int/2addr p1, v1

    add-int/2addr p0, p1

    move p1, v2

    :goto_3c
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumOmega()I

    move-result v1

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumK()I

    move-result v3

    add-int/2addr v1, v3

    if-ge p1, v1, :cond_4e

    add-int v1, p0, p1

    aput-byte v2, v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3c

    :cond_4e
    move p1, v2

    move v1, p1

    :goto_50
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumK()I

    move-result v3

    if-ge p1, v3, :cond_7b

    move v3, v2

    :goto_57
    const/16 v4, 0x100

    if-ge v3, v4, :cond_6f

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v4

    if-eqz v4, :cond_6c

    add-int/lit8 v4, v1, 0x1

    add-int/2addr v1, p0

    int-to-byte v5, v3

    aput-byte v5, v0, v1

    move v1, v4

    :cond_6c
    add-int/lit8 v3, v3, 0x1

    goto :goto_57

    :cond_6f
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumOmega()I

    move-result v3

    add-int/2addr v3, p0

    add-int/2addr v3, p1

    int-to-byte v4, v1

    aput-byte v4, v0, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_50

    :cond_7b
    return-object v0
.end method

.method public static unpackPublicKey(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;[BLorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    .registers 7

    .line 0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumK()I

    move-result v1

    if-ge v0, v1, :cond_1b

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v1

    mul-int/lit16 v2, v0, 0x140

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v3, v0, 0x140

    add-int/lit8 v3, v3, 0x20

    invoke-static {p1, v2, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->polyt1Unpack([B)V

    goto :goto_1

    :cond_1b
    return-object p0
.end method

.method public static unpackSecretKey(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;[B[B[BLorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V
    .registers 11

    .line 0
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumL()I

    move-result v2

    if-ge v1, v2, :cond_17

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v2

    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyEtaPackedBytes()I

    move-result v3

    mul-int/2addr v3, v1

    invoke-virtual {v2, p4, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->polyEtaUnpack([BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_17
    move p1, v0

    :goto_18
    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumK()I

    move-result p4

    if-ge p1, p4, :cond_2d

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object p4

    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyEtaPackedBytes()I

    move-result v1

    mul-int/2addr v1, p1

    invoke-virtual {p4, p5, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->polyEtaUnpack([BI)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_18

    :cond_2d
    :goto_2d
    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumK()I

    move-result p1

    if-ge v0, p1, :cond_3f

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object p1

    mul-int/lit16 p2, v0, 0x1a0

    invoke-virtual {p1, p3, p2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->polyt0Unpack([BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_3f
    return-void
.end method

.method public static unpackSignature(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;[BLorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)Z
    .registers 11

    .line 0
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumCTilde()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumL()I

    move-result v3

    if-ge v2, v3, :cond_26

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v3

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyZPackedBytes()I

    move-result v4

    mul-int/2addr v4, v2

    add-int/2addr v4, v0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyZPackedBytes()I

    move-result v5

    mul-int/2addr v5, v2

    add-int/2addr v5, v0

    invoke-static {p2, v4, v5}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->zUnpack([B)V

    goto :goto_6

    :cond_26
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumL()I

    move-result p0

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyZPackedBytes()I

    move-result v2

    mul-int/2addr p0, v2

    add-int/2addr v0, p0

    move p0, v1

    move v2, p0

    :goto_32
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumK()I

    move-result v3

    const/4 v4, 0x1

    if-ge p0, v3, :cond_9e

    move v3, v1

    :goto_3a
    const/16 v5, 0x100

    if-ge v3, v5, :cond_48

    invoke-virtual {p1, p0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v5

    invoke-virtual {v5, v3, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :cond_48
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumOmega()I

    move-result v3

    add-int/2addr v3, v0

    add-int/2addr v3, p0

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    if-lt v3, v2, :cond_9d

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumOmega()I

    move-result v3

    add-int/2addr v3, v0

    add-int/2addr v3, p0

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumOmega()I

    move-result v5

    if-le v3, v5, :cond_65

    goto :goto_9d

    :cond_65
    move v3, v2

    :goto_66
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumOmega()I

    move-result v5

    add-int/2addr v5, v0

    add-int/2addr v5, p0

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    if-ge v3, v5, :cond_92

    if-le v3, v2, :cond_82

    add-int v5, v0, v3

    aget-byte v6, p2, v5

    and-int/lit16 v6, v6, 0xff

    sub-int/2addr v5, v4

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    if-gt v6, v5, :cond_82

    return v1

    :cond_82
    invoke-virtual {p1, p0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v5

    add-int v6, v0, v3

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_66

    :cond_92
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumOmega()I

    move-result v2

    add-int/2addr v2, v0

    add-int/2addr v2, p0

    aget-byte v2, p2, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_32

    :cond_9d
    :goto_9d
    return v1

    :cond_9e
    :goto_9e
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumOmega()I

    move-result p0

    if-ge v2, p0, :cond_b0

    add-int p0, v0, v2

    aget-byte p0, p2, p0

    and-int/lit16 p0, p0, 0xff

    if-eqz p0, :cond_ad

    return v1

    :cond_ad
    add-int/lit8 v2, v2, 0x1

    goto :goto_9e

    :cond_b0
    return v4
.end method
