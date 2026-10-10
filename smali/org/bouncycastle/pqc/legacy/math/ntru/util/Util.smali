###### Class org.bouncycastle.pqc.legacy.math.ntru.util.Util (org.bouncycastle.pqc.legacy.math.ntru.util.Util)
.class public Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;
.super Ljava/lang/Object;


# static fields
.field private static volatile IS_64_BITNESS_KNOWN:Z

.field private static volatile IS_64_BIT_JVM:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateRandomTernary(IIIZLjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/TernaryPolynomial;
    .registers 5

    .line 0
    if-eqz p3, :cond_7

    invoke-static {p0, p1, p2, p4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->generateRandom(IIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-static {p0, p1, p2, p4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;->generateRandom(IIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;

    move-result-object p0

    return-object p0
.end method

.method public static generateRandomTernary(IIILjava/security/SecureRandom;)[I
    .registers 10

    .line 0
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v2

    :goto_15
    if-ge v5, p1, :cond_1d

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_1d
    move p1, v2

    :goto_1e
    if-ge p1, p2, :cond_26

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1e

    :cond_26
    :goto_26
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, p0, :cond_30

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_30
    invoke-static {v4, p3}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    new-array p1, p0, [I

    :goto_35
    if-ge v2, p0, :cond_46

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_46
    return-object p1
.end method

.method public static invert(II)I
    .registers 2

    .line 0
    rem-int/2addr p0, p1

    if-gez p0, :cond_4

    add-int/2addr p0, p1

    :cond_4
    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/IntEuclidean;->calculate(II)Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/IntEuclidean;

    move-result-object p0

    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/IntEuclidean;->x:I

    return p0
.end method

.method public static is64BitJVM()Z
    .registers 4

    .line 0
    sget-boolean v0, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->IS_64_BITNESS_KNOWN:Z

    if-nez v0, :cond_39

    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sun.arch.data.model"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "amd64"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_34

    const-string v2, "x86_64"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    const-string v2, "ppc64"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_34

    :cond_32
    const/4 v0, 0x0

    goto :goto_35

    :cond_34
    :goto_34
    move v0, v3

    :goto_35
    sput-boolean v0, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->IS_64_BIT_JVM:Z

    sput-boolean v3, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->IS_64_BITNESS_KNOWN:Z

    :cond_39
    sget-boolean v0, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->IS_64_BIT_JVM:Z

    return v0
.end method

.method public static pow(III)I
    .registers 5

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p1, :cond_9

    mul-int/2addr v0, p0

    rem-int/2addr v0, p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    return v0
.end method

.method public static pow(JIJ)J
    .registers 8

    .line 0
    const-wide/16 v0, 0x1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p2, :cond_a

    mul-long/2addr v0, p0

    rem-long/2addr v0, p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    return-wide v0
.end method

.method public static readFullLength(Ljava/io/InputStream;I)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    new-array v0, p1, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result p0

    if-ne p0, p1, :cond_9

    return-object v0

    :cond_9
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Not enough bytes to read."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
