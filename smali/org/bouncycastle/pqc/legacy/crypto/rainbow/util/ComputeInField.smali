###### Class org.bouncycastle.pqc.legacy.crypto.rainbow.util.ComputeInField (org.bouncycastle.pqc.legacy.crypto.rainbow.util.ComputeInField)
.class public Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;
.super Ljava/lang/Object;


# instance fields
.field private A:[[S

.field x:[S


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private computeZerosAbove()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-lez v0, :cond_4c

    add-int/lit8 v1, v0, -0x1

    :goto_9
    if-ltz v1, :cond_49

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v3, v2, v1

    aget-short v3, v3, v0

    aget-object v2, v2, v0

    aget-short v2, v2, v0

    invoke-static {v2}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v2

    if-eqz v2, :cond_41

    move v4, v0

    :goto_1c
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v6, v5

    mul-int/lit8 v6, v6, 0x2

    if-ge v4, v6, :cond_3e

    aget-object v5, v5, v0

    aget-short v5, v5, v4

    invoke-static {v5, v2}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v5

    invoke-static {v3, v5}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v6, v6, v1

    aget-short v7, v6, v4

    invoke-static {v7, v5}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v5

    aput-short v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_3e
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_41
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "The matrix is not invertible"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_49
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_4c
    return-void
.end method

.method private computeZerosUnder(Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 0
    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    goto :goto_d

    :cond_8
    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    :goto_d
    const/4 v0, 0x0

    :goto_e
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_58

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    :goto_18
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v4, v3

    if-ge v2, v4, :cond_56

    aget-object v4, v3, v2

    aget-short v4, v4, v0

    aget-object v3, v3, v0

    aget-short v3, v3, v0

    invoke-static {v3}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v3

    if-eqz v3, :cond_4e

    move v5, v0

    :goto_2c
    if-ge v5, p1, :cond_4b

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v6, v6, v0

    aget-short v6, v6, v5

    invoke-static {v6, v3}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v6

    invoke-static {v4, v6}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v6

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v7, v7, v2

    aget-short v8, v7, v5

    invoke-static {v8, v6}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v6

    aput-short v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_4e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Matrix not invertible! We have to choose another one!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_56
    move v0, v1

    goto :goto_e

    :cond_58
    return-void
.end method

.method private substitute()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    aget-short v0, v1, v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->x:[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v2, v4

    array-length v2, v2

    aget-short v2, v4, v2

    invoke-static {v2, v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v0

    aput-short v0, v1, v3

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    :goto_2c
    if-ltz v0, :cond_6e

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v2, v1, v0

    array-length v3, v1

    aget-short v2, v2, v3

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_38
    if-le v1, v0, :cond_4f

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v3, v3, v0

    aget-short v3, v3, v1

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->x:[S

    aget-short v4, v4, v1

    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v3

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_38

    :cond_4f
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v1, v1, v0

    aget-short v1, v1, v0

    invoke-static {v1}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v1

    if-eqz v1, :cond_66

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->x:[S

    invoke-static {v2, v1}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v1

    aput-short v1, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2c

    :cond_66
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not solvable equation system"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6e
    return-void

    :cond_6f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The equation system is not solvable"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addSquareMatrix([[S[[S)[[S
    .registers 9

    .line 0
    array-length p0, p1

    array-length v0, p2

    if-ne p0, v0, :cond_3e

    const/4 p0, 0x0

    aget-object v0, p1, p0

    array-length v0, v0

    aget-object v1, p2, p0

    array-length v1, v1

    if-ne v0, v1, :cond_3e

    array-length v0, p1

    array-length v1, p1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    aput v0, v2, p0

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    move v1, p0

    :goto_20
    array-length v2, p1

    if-ge v1, v2, :cond_3d

    move v2, p0

    :goto_24
    array-length v3, p2

    if-ge v2, v3, :cond_3a

    aget-object v3, v0, v1

    aget-object v4, p1, v1

    aget-short v4, v4, v2

    aget-object v5, p2, v1

    aget-short v5, v5, v2

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_3d
    return-object v0

    :cond_3e
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Addition is not possible!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addVect([S[S)[S
    .registers 7

    .line 0
    array-length p0, p1

    array-length v0, p2

    if-ne p0, v0, :cond_18

    array-length p0, p1

    new-array v0, p0, [S

    const/4 v1, 0x0

    :goto_8
    if-ge v1, p0, :cond_17

    aget-short v2, p1, v1

    aget-short v3, p2, v1

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_17
    return-object v0

    :cond_18
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Multiplication is not possible!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public inverse([[S)[[S
    .registers 9

    .line 0
    :try_start_0
    array-length v0, p1

    array-length v1, p1

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v1, 0x0

    aput v0, v3, v1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v0, p1

    aget-object v3, p1, v1

    array-length v3, v3

    if-ne v0, v3, :cond_a5

    move v0, v1

    :goto_1d
    array-length v3, p1

    if-ge v0, v3, :cond_4a

    move v3, v1

    :goto_21
    array-length v5, p1

    if-ge v3, v5, :cond_31

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v5, v5, v0

    aget-object v6, p1, v0

    aget-short v6, v6, v3

    aput-short v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_31
    array-length v3, p1

    :goto_32
    array-length v5, p1

    mul-int/2addr v5, v2

    if-ge v3, v5, :cond_3f

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v5, v5, v0

    aput-short v1, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_3f
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v5, v3, v0

    array-length v3, v3

    add-int/2addr v3, v0

    aput-short v4, v5, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_4a
    invoke-direct {p0, v4}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->computeZerosUnder(Z)V

    move p1, v1

    :goto_4e
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v3, v0

    if-ge p1, v3, :cond_72

    aget-object v0, v0, p1

    aget-short v0, v0, p1

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v0

    move v3, p1

    :goto_5c
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v6, v5

    mul-int/2addr v6, v2

    if-ge v3, v6, :cond_6f

    aget-object v5, v5, p1

    aget-short v6, v5, v3

    invoke-static {v6, v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v6

    aput-short v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    :cond_6f
    add-int/lit8 p1, p1, 0x1

    goto :goto_4e

    :cond_72
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->computeZerosAbove()V

    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v0, p1

    array-length p1, p1

    new-array v3, v2, [I

    aput p1, v3, v4

    aput v0, v3, v1

    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[S

    :goto_87
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v3, v0

    if-ge v1, v3, :cond_a4

    array-length v0, v0

    :goto_8d
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v4, v3

    mul-int/2addr v4, v2

    if-ge v0, v4, :cond_a1

    aget-object v4, p1, v1

    array-length v5, v3

    sub-int v5, v0, v5

    aget-object v3, v3, v1

    aget-short v3, v3, v0

    aput-short v3, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_8d

    :cond_a1
    add-int/lit8 v1, v1, 0x1

    goto :goto_87

    :cond_a4
    return-object p1

    :cond_a5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "The matrix is not invertible. Please choose another one!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_ad
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_ad} :catch_ad

    :catch_ad
    const/4 p0, 0x0

    return-object p0
.end method

.method public multMatrix(S[[S)[[S
    .registers 8

    .line 0
    array-length p0, p2

    const/4 v0, 0x0

    aget-object v1, p2, v0

    array-length v1, v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    aput p0, v2, v0

    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[S

    move v1, v0

    :goto_16
    array-length v2, p2

    if-ge v1, v2, :cond_31

    move v2, v0

    :goto_1a
    aget-object v3, p2, v0

    array-length v3, v3

    if-ge v2, v3, :cond_2e

    aget-object v3, p0, v1

    aget-object v4, p2, v1

    aget-short v4, v4, v2

    invoke-static {p1, v4}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_31
    return-object p0
.end method

.method public multVect(S[S)[S
    .registers 6

    .line 0
    array-length p0, p2

    new-array v0, p0, [S

    const/4 v1, 0x0

    :goto_4
    if-ge v1, p0, :cond_11

    aget-short v2, p2, v1

    invoke-static {p1, v2}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_11
    return-object v0
.end method

.method public multVects([S[S)[[S
    .registers 9

    .line 0
    array-length p0, p1

    array-length v0, p2

    if-ne p0, v0, :cond_32

    array-length p0, p1

    array-length v0, p2

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v0, 0x0

    aput p0, v1, v0

    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[S

    move v1, v0

    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_31

    move v2, v0

    :goto_1c
    array-length v3, p2

    if-ge v2, v3, :cond_2e

    aget-object v3, p0, v1

    aget-short v4, p1, v1

    aget-short v5, p2, v2

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_31
    return-object p0

    :cond_32
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Multiplication is not possible!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public multiplyMatrix([[S[S)[S
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    aget-object v0, p1, p0

    array-length v0, v0

    array-length v1, p2

    if-ne v0, v1, :cond_2b

    array-length v0, p1

    new-array v0, v0, [S

    move v1, p0

    :goto_b
    array-length v2, p1

    if-ge v1, v2, :cond_2a

    move v2, p0

    :goto_f
    array-length v3, p2

    if-ge v2, v3, :cond_27

    aget-object v3, p1, v1

    aget-short v3, v3, v2

    aget-short v4, p2, v2

    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v3

    aget-short v4, v0, v1

    invoke-static {v4, v3}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v3

    aput-short v3, v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_2a
    return-object v0

    :cond_2b
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Multiplication is not possible!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public multiplyMatrix([[S[[S)[[S
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    array-length v2, p2

    if-ne v1, v2, :cond_4f

    array-length v1, p1

    aget-object v2, p2, v0

    array-length v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v1, v3, v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    move v1, v0

    :goto_1e
    array-length v2, p1

    if-ge v1, v2, :cond_4c

    move v2, v0

    :goto_22
    array-length v3, p2

    if-ge v2, v3, :cond_49

    move v3, v0

    :goto_26
    aget-object v4, p2, v0

    array-length v4, v4

    if-ge v3, v4, :cond_46

    aget-object v4, p1, v1

    aget-short v4, v4, v2

    aget-object v5, p2, v2

    aget-short v5, v5, v3

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v5, v5, v1

    aget-short v6, v5, v3

    invoke-static {v6, v4}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v4

    aput-short v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_4c
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    return-object p0

    :cond_4f
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Multiplication is not possible!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public solveEquation([[S[S)[S
    .registers 9

    .line 0
    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    return-object v2

    :cond_6
    :try_start_6
    array-length v0, p1

    array-length v1, p1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v1, v4, v3

    const/4 v1, 0x0

    aput v0, v4, v1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v0, p1

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->x:[S

    move v0, v1

    :goto_22
    array-length v3, p1

    if-ge v0, v3, :cond_3b

    move v3, v1

    :goto_26
    aget-object v4, p1, v1

    array-length v4, v4

    if-ge v3, v4, :cond_38

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v4, v4, v0

    aget-object v5, p1, v0

    aget-short v5, v5, v3

    aput-short v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_3b
    move p1, v1

    :goto_3c
    array-length v0, p2

    if-ge p1, v0, :cond_52

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v0, v0, p1

    array-length v3, p2

    aget-short v4, p2, p1

    array-length v5, p2

    aget-short v5, v0, v5

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v4

    aput-short v4, v0, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_3c

    :cond_52
    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->computeZerosUnder(Z)V

    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->substitute()V

    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->x:[S
    :try_end_5a
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_5a} :catch_5b

    return-object p0

    :catch_5b
    return-object v2
.end method
