###### Class org.bouncycastle.pqc.legacy.crypto.rainbow.Layer (org.bouncycastle.pqc.legacy.crypto.rainbow.Layer)
.class public Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;
.super Ljava/lang/Object;


# instance fields
.field private coeff_alpha:[[[S

.field private coeff_beta:[[[S

.field private coeff_eta:[S

.field private coeff_gamma:[[S

.field private oi:I

.field private vi:I

.field private viNext:I


# direct methods
.method public constructor <init>(BB[[[S[[[S[[S[S)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->vi:I

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->viNext:I

    sub-int/2addr p2, p1

    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    iput-object p3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_alpha:[[[S

    iput-object p4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_beta:[[[S

    iput-object p5, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_gamma:[[S

    iput-object p6, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_eta:[S

    return-void
.end method

.method public constructor <init>(IILjava/security/SecureRandom;)V
    .registers 9

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->vi:I

    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->viNext:I

    sub-int/2addr p2, p1

    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x2

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const/4 v3, 0x0

    aput p2, v1, v3

    sget-object p2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[S

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_alpha:[[[S

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->vi:I

    new-array v0, v0, [I

    aput v4, v0, v2

    aput v4, v0, p1

    aput v1, v0, v3

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_beta:[[[S

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->viNext:I

    new-array v2, v2, [I

    aput v1, v2, p1

    aput v0, v2, v3

    invoke-static {p2, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[S

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_gamma:[[S

    iget p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    new-array p2, p1, [S

    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_eta:[S

    move p2, v3

    :goto_4d
    if-ge p2, p1, :cond_71

    move v0, v3

    :goto_50
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    if-ge v0, v1, :cond_6e

    move v1, v3

    :goto_55
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->vi:I

    if-ge v1, v2, :cond_6b

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_alpha:[[[S

    aget-object v2, v2, p2

    aget-object v2, v2, v0

    invoke-virtual {p3}, Ljava/util/Random;->nextInt()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    aput-short v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    :cond_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    :cond_6e
    add-int/lit8 p2, p2, 0x1

    goto :goto_4d

    :cond_71
    move p2, v3

    :goto_72
    if-ge p2, p1, :cond_96

    move v0, v3

    :goto_75
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->vi:I

    if-ge v0, v1, :cond_93

    move v1, v3

    :goto_7a
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->vi:I

    if-ge v1, v2, :cond_90

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_beta:[[[S

    aget-object v2, v2, p2

    aget-object v2, v2, v0

    invoke-virtual {p3}, Ljava/util/Random;->nextInt()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    aput-short v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7a

    :cond_90
    add-int/lit8 v0, v0, 0x1

    goto :goto_75

    :cond_93
    add-int/lit8 p2, p2, 0x1

    goto :goto_72

    :cond_96
    move p2, v3

    :goto_97
    if-ge p2, p1, :cond_b1

    move v0, v3

    :goto_9a
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->viNext:I

    if-ge v0, v1, :cond_ae

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_gamma:[[S

    aget-object v1, v1, p2

    invoke-virtual {p3}, Ljava/util/Random;->nextInt()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9a

    :cond_ae
    add-int/lit8 p2, p2, 0x1

    goto :goto_97

    :cond_b1
    :goto_b1
    if-ge v3, p1, :cond_c1

    iget-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_eta:[S

    invoke-virtual {p3}, Ljava/util/Random;->nextInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    aput-short v0, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_b1

    :cond_c1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x0

    if-eqz p1, :cond_53

    instance-of v1, p1, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;

    if-nez v1, :cond_8

    goto :goto_53

    :cond_8
    check-cast p1, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->vi:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->getVi()I

    move-result v2

    if-ne v1, v2, :cond_53

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->viNext:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->getViNext()I

    move-result v2

    if-ne v1, v2, :cond_53

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->getOi()I

    move-result v2

    if-ne v1, v2, :cond_53

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_alpha:[[[S

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->getCoeffAlpha()[[[S

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;->equals([[[S[[[S)Z

    move-result v1

    if-eqz v1, :cond_53

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_beta:[[[S

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->getCoeffBeta()[[[S

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;->equals([[[S[[[S)Z

    move-result v1

    if-eqz v1, :cond_53

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_gamma:[[S

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->getCoeffGamma()[[S

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;->equals([[S[[S)Z

    move-result v1

    if-eqz v1, :cond_53

    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_eta:[S

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->getCoeffEta()[S

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;->equals([S[S)Z

    move-result p0

    if-eqz p0, :cond_53

    const/4 v0, 0x1

    :cond_53
    :goto_53
    return v0
.end method

.method public getCoeffAlpha()[[[S
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_alpha:[[[S

    return-object p0
.end method

.method public getCoeffBeta()[[[S
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_beta:[[[S

    return-object p0
.end method

.method public getCoeffEta()[S
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_eta:[S

    return-object p0
.end method

.method public getCoeffGamma()[[S
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_gamma:[[S

    return-object p0
.end method

.method public getOi()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    return p0
.end method

.method public getVi()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->vi:I

    return p0
.end method

.method public getViNext()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->viNext:I

    return p0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->vi:I

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->viNext:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_alpha:[[[S

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([[[S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_beta:[[[S

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([[[S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_gamma:[[S

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([[S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_eta:[S

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->hashCode([S)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public plugInVinegars([S)[[S
    .registers 11

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    new-array v2, v2, [S

    move v3, v1

    :goto_1a
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    if-ge v3, v4, :cond_4d

    move v4, v1

    :goto_1f
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->vi:I

    if-ge v4, v5, :cond_4a

    move v5, v1

    :goto_24
    iget v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->vi:I

    if-ge v5, v6, :cond_47

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_beta:[[[S

    aget-object v6, v6, v3

    aget-object v6, v6, v4

    aget-short v6, v6, v5

    aget-short v7, p1, v4

    invoke-static {v6, v7}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v6

    aget-short v7, p1, v5

    invoke-static {v6, v7}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v6

    aget-short v7, v2, v3

    invoke-static {v7, v6}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v6

    aput-short v6, v2, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_4d
    move v3, v1

    :goto_4e
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    if-ge v3, v4, :cond_7d

    move v4, v1

    :goto_53
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    if-ge v4, v5, :cond_7a

    move v5, v1

    :goto_58
    iget v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->vi:I

    if-ge v5, v6, :cond_77

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_alpha:[[[S

    aget-object v6, v6, v3

    aget-object v6, v6, v4

    aget-short v6, v6, v5

    aget-short v7, p1, v5

    invoke-static {v6, v7}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v6

    aget-object v7, v0, v3

    aget-short v8, v7, v4

    invoke-static {v8, v6}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v6

    aput-short v6, v7, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    :cond_77
    add-int/lit8 v4, v4, 0x1

    goto :goto_53

    :cond_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    :cond_7d
    move v3, v1

    :goto_7e
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    if-ge v3, v4, :cond_a1

    move v4, v1

    :goto_83
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->vi:I

    if-ge v4, v5, :cond_9e

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_gamma:[[S

    aget-object v5, v5, v3

    aget-short v5, v5, v4

    aget-short v6, p1, v4

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v5

    aget-short v6, v2, v3

    invoke-static {v6, v5}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v5

    aput-short v5, v2, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_83

    :cond_9e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7e

    :cond_a1
    move p1, v1

    :goto_a2
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    if-ge p1, v3, :cond_c8

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->vi:I

    :goto_a8
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->viNext:I

    if-ge v3, v4, :cond_c5

    aget-object v4, v0, p1

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->vi:I

    sub-int v6, v3, v5

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_gamma:[[S

    aget-object v7, v7, p1

    aget-short v7, v7, v3

    sub-int v5, v3, v5

    aget-short v5, v4, v5

    invoke-static {v7, v5}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v5

    aput-short v5, v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_a8

    :cond_c5
    add-int/lit8 p1, p1, 0x1

    goto :goto_a2

    :cond_c8
    move p1, v1

    :goto_c9
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    if-ge p1, v3, :cond_dc

    aget-short v3, v2, p1

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_eta:[S

    aget-short v4, v4, p1

    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v3

    aput-short v3, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_c9

    :cond_dc
    :goto_dc
    iget p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    if-ge v1, p1, :cond_e9

    aget-object v3, v0, v1

    aget-short v4, v2, v1

    aput-short v4, v3, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_dc

    :cond_e9
    return-object v0
.end method
