###### Class org.bouncycastle.pqc.crypto.rainbow.ComputeInField (org.bouncycastle.pqc.crypto.rainbow.ComputeInField)
.class Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private gaussElim([[S)V
    .registers 11

    .line 0
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_70

    add-int/lit8 v2, v1, 0x1

    move v3, v2

    :goto_8
    array-length v4, p1

    if-ge v3, v4, :cond_2b

    aget-object v4, p1, v1

    aget-short v4, v4, v1

    if-nez v4, :cond_28

    move v4, v1

    :goto_12
    aget-object v5, p1, v0

    array-length v5, v5

    if-ge v4, v5, :cond_28

    aget-object v5, p1, v1

    aget-short v6, v5, v4

    aget-object v7, p1, v3

    aget-short v7, v7, v4

    invoke-static {v6, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v6

    aput-short v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_2b
    aget-object v3, p1, v1

    aget-short v3, v3, v1

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->invElem(S)S

    move-result v3

    if-eqz v3, :cond_68

    aget-object v4, p1, v1

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multVect(S[S)[S

    move-result-object v3

    aput-object v3, p1, v1

    move v3, v0

    :goto_3e
    array-length v4, p1

    if-ge v3, v4, :cond_66

    if-ne v1, v3, :cond_44

    goto :goto_63

    :cond_44
    aget-object v4, p1, v3

    aget-short v4, v4, v1

    move v5, v1

    :goto_49
    aget-object v6, p1, v0

    array-length v6, v6

    if-ge v5, v6, :cond_63

    aget-object v6, p1, v1

    aget-short v6, v6, v5

    invoke-static {v6, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v6

    aget-object v7, p1, v3

    aget-short v8, v7, v5

    invoke-static {v8, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v6

    aput-short v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    :cond_63
    :goto_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    :cond_66
    move v1, v2

    goto :goto_2

    :cond_68
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "The matrix is not invertible"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_70
    return-void
.end method


# virtual methods
.method public addMatrix([[S[[S)[[S
    .registers 9

    .line 0
    array-length p0, p1

    array-length v0, p2

    if-ne p0, v0, :cond_40

    const/4 p0, 0x0

    aget-object v0, p1, p0

    array-length v1, v0

    aget-object v2, p2, p0

    array-length v2, v2

    if-ne v1, v2, :cond_40

    array-length v1, p1

    array-length v0, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v0, v2, v3

    aput v1, v2, p0

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    move v1, p0

    :goto_20
    array-length v2, p1

    if-ge v1, v2, :cond_3f

    move v2, p0

    :goto_24
    aget-object v3, p1, p0

    array-length v3, v3

    if-ge v2, v3, :cond_3c

    aget-object v3, v0, v1

    aget-object v4, p1, v1

    aget-short v4, v4, v2

    aget-object v5, p2, v1

    aget-short v5, v5, v2

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_3f
    return-object v0

    :cond_40
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Addition is not possible!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addMatrixTranspose([[S)[[S
    .registers 4

    .line 0
    array-length v0, p1

    const/4 v1, 0x0

    aget-object v1, p1, v1

    array-length v1, v1

    if-ne v0, v1, :cond_10

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->transpose([[S)[[S

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object p0

    return-object p0

    :cond_10
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

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_17
    return-object v0

    :cond_18
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Addition is not possible! vector1.length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " vector2.length: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public inverse([[S)[[S
    .registers 10

    .line 0
    array-length v0, p1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    array-length v2, v2

    if-ne v0, v2, :cond_6a

    :try_start_7
    array-length v0, p1

    array-length v2, p1

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v2, v4, v5

    aput v0, v4, v1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    move v2, v1

    :goto_1b
    array-length v4, p1

    if-ge v2, v4, :cond_3b

    aget-object v4, p1, v2

    aget-object v6, v0, v2

    array-length v7, p1

    invoke-static {v4, v1, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, p1

    :goto_27
    array-length v6, p1

    mul-int/2addr v6, v3

    if-ge v4, v6, :cond_32

    aget-object v6, v0, v2

    aput-short v1, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    :cond_32
    aget-object v4, v0, v2

    array-length v6, v0

    add-int/2addr v6, v2

    aput-short v5, v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_3b
    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->gaussElim([[S)V

    array-length p0, v0

    array-length p1, v0

    new-array v2, v3, [I

    aput p1, v2, v5

    aput p0, v2, v1

    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[S

    :goto_4e
    array-length p1, v0

    if-ge v1, p1, :cond_67

    array-length p1, v0

    :goto_52
    array-length v2, v0

    mul-int/2addr v2, v3

    if-ge p1, v2, :cond_64

    aget-object v2, p0, v1

    array-length v4, v0

    sub-int v4, p1, v4

    aget-object v5, v0, v1

    aget-short v5, v5, p1

    aput-short v5, v2, v4
    :try_end_61
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_61} :catch_68

    add-int/lit8 p1, p1, 0x1

    goto :goto_52

    :cond_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    :cond_67
    return-object p0

    :catch_68
    const/4 p0, 0x0

    return-object p0

    :cond_6a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "The matrix is not invertible. Please choose another one!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
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

    invoke-static {p1, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

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

    invoke-static {p1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

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

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

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

    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v3

    aget-short v4, v0, v1

    invoke-static {v4, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

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
    const/4 p0, 0x0

    aget-object v0, p1, p0

    array-length v0, v0

    array-length v1, p2

    if-ne v0, v1, :cond_49

    array-length v0, p1

    aget-object v1, p2, p0

    array-length v1, v1

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

    :goto_1c
    array-length v2, p1

    if-ge v1, v2, :cond_48

    move v2, p0

    :goto_20
    array-length v3, p2

    if-ge v2, v3, :cond_45

    move v3, p0

    :goto_24
    aget-object v4, p2, p0

    array-length v4, v4

    if-ge v3, v4, :cond_42

    aget-object v4, p1, v1

    aget-short v4, v4, v2

    aget-object v5, p2, v2

    aget-short v5, v5, v3

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v4

    aget-object v5, v0, v1

    aget-short v6, v5, v3

    invoke-static {v6, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v4

    aput-short v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_48
    return-object v0

    :cond_49
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Multiplication is not possible!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public multiplyMatrix_quad([[S[S)S
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 0
    array-length p0, p1

    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v2, v1

    if-ne p0, v2, :cond_3c

    array-length p0, v1

    array-length v1, p2

    if-ne p0, v1, :cond_3c

    array-length p0, p1

    new-array p0, p0, [S

    move v1, v0

    move v2, v1

    :goto_10
    array-length v3, p1

    if-ge v1, v3, :cond_3b

    move v3, v0

    :goto_14
    array-length v4, p2

    if-ge v3, v4, :cond_2c

    aget-object v4, p1, v1

    aget-short v4, v4, v3

    aget-short v5, p2, v3

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v4

    aget-short v5, p0, v1

    invoke-static {v5, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v4

    aput-short v4, p0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_2c
    aget-short v3, p0, v1

    aget-short v4, p2, v1

    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v3

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_3b
    return v2

    :cond_3c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Multiplication is not possible!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public obfuscate_l1_polys([[S[[[S[[[S)[[[S
    .registers 12

    .line 0
    const/4 p0, 0x0

    aget-object v0, p2, p0

    array-length v1, v0

    aget-object v2, p3, p0

    array-length v3, v2

    if-ne v1, v3, :cond_82

    aget-object v0, v0, p0

    array-length v0, v0

    aget-object v1, v2, p0

    array-length v3, v1

    if-ne v0, v3, :cond_82

    array-length v0, p2

    aget-object v3, p1, p0

    array-length v3, v3

    if-ne v0, v3, :cond_82

    array-length v0, p3

    array-length v3, p1

    if-ne v0, v3, :cond_82

    array-length v0, p3

    array-length v2, v2

    array-length v1, v1

    const/4 v3, 0x3

    new-array v3, v3, [I

    const/4 v4, 0x2

    aput v1, v3, v4

    const/4 v1, 0x1

    aput v2, v3, v1

    aput v0, v3, p0

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[S

    move v1, p0

    :goto_32
    aget-object v2, p2, p0

    array-length v2, v2

    if-ge v1, v2, :cond_81

    move v2, p0

    :goto_38
    aget-object v3, p2, p0

    aget-object v3, v3, p0

    array-length v3, v3

    if-ge v2, v3, :cond_7e

    move v3, p0

    :goto_40
    array-length v4, p1

    if-ge v3, v4, :cond_7b

    move v4, p0

    :goto_44
    aget-object v5, p1, p0

    array-length v5, v5

    if-ge v4, v5, :cond_66

    aget-object v5, p1, v3

    aget-short v5, v5, v4

    aget-object v6, p2, v4

    aget-object v6, v6, v1

    aget-short v6, v6, v2

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v5

    aget-object v6, v0, v3

    aget-object v6, v6, v1

    aget-short v7, v6, v2

    invoke-static {v7, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v5

    aput-short v5, v6, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    :cond_66
    aget-object v4, v0, v3

    aget-object v4, v4, v1

    aget-object v5, p3, v3

    aget-object v5, v5, v1

    aget-short v5, v5, v2

    aget-short v6, v4, v2

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v5

    aput-short v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    :cond_7b
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    :cond_7e
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_81
    return-object v0

    :cond_82
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Multiplication not possible!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public solveEquation([[S[S)[S
    .registers 12

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

    array-length v3, p1

    new-array v3, v3, [S

    move v4, v1

    :goto_1e
    array-length v5, p1

    if-ge v4, v5, :cond_3c

    aget-object v5, p1, v4

    aget-object v6, v0, v4

    aget-object v7, p1, v1

    array-length v7, v7

    invoke-static {v5, v1, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v5, v0, v4

    array-length v6, p2

    aget-short v7, p2, v4

    array-length v8, p2

    aget-short v8, v5, v8

    invoke-static {v7, v8}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v7

    aput-short v7, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_3c
    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->gaussElim([[S)V

    :goto_3f
    array-length p0, v0

    if-ge v1, p0, :cond_4c

    aget-object p0, v0, v1

    array-length p1, p2

    aget-short p0, p0, p1

    aput-short p0, v3, v1
    :try_end_49
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_49} :catch_4d

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    :cond_4c
    return-object v3

    :catch_4d
    return-object v2
.end method

.method public to_UT([[S)[[S
    .registers 9

    .line 0
    array-length p0, p1

    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    if-ne p0, v1, :cond_43

    array-length p0, p1

    array-length v1, p1

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

    :goto_1a
    array-length v2, p1

    if-ge v1, v2, :cond_42

    aget-object v2, p0, v1

    aget-object v3, p1, v1

    aget-short v3, v3, v1

    aput-short v3, v2, v1

    add-int/lit8 v2, v1, 0x1

    move v3, v2

    :goto_28
    aget-object v4, p1, v0

    array-length v4, v4

    if-ge v3, v4, :cond_40

    aget-object v4, p0, v1

    aget-object v5, p1, v1

    aget-short v5, v5, v3

    aget-object v6, p1, v3

    aget-short v6, v6, v1

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v5

    aput-short v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_40
    move v1, v2

    goto :goto_1a

    :cond_42
    return-object p0

    :cond_43
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Computation to upper triangular matrix is not possible!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public transpose([[S)[[S
    .registers 7

    .line 0
    const/4 p0, 0x0

    aget-object v0, p1, p0

    array-length v0, v0

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

    :goto_16
    array-length v2, p1

    if-ge v1, v2, :cond_2d

    move v2, p0

    :goto_1a
    aget-object v3, p1, p0

    array-length v3, v3

    if-ge v2, v3, :cond_2a

    aget-object v3, v0, v2

    aget-object v4, p1, v1

    aget-short v4, v4, v2

    aput-short v4, v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_2d
    return-object v0
.end method
