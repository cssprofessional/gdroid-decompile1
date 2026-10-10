###### Class org.bouncycastle.pqc.crypto.sphincsplus.SIG (org.bouncycastle.pqc.crypto.sphincsplus.SIG)
.class Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;
.super Ljava/lang/Object;


# instance fields
.field private final r:[B

.field private final sig_fors:[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

.field private final sig_ht:[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;


# direct methods
.method public constructor <init>(IIIIII[B)V
    .registers 15

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->r:[B

    const/4 v1, 0x0

    invoke-static {p7, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v0, p2, [Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->sig_fors:[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

    move v2, p1

    move v0, v1

    :goto_11
    if-eq v0, p2, :cond_35

    new-array v3, p1, [B

    invoke-static {p7, v2, v3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, p1

    new-array v4, p3, [[B

    move v5, v1

    :goto_1c
    if-eq v5, p3, :cond_29

    new-array v6, p1, [B

    aput-object v6, v4, v5

    invoke-static {p7, v2, v6, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_29
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->sig_fors:[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

    new-instance v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

    invoke-direct {v6, v3, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;-><init>([B[[B)V

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_35
    new-array p2, p4, [Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->sig_ht:[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    move p2, v1

    :goto_3a
    if-eq p2, p4, :cond_60

    mul-int p3, p6, p1

    new-array v0, p3, [B

    invoke-static {p7, v2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, p3

    new-array p3, p5, [[B

    move v3, v1

    :goto_47
    if-eq v3, p5, :cond_54

    new-array v4, p1, [B

    aput-object v4, p3, v3

    invoke-static {p7, v2, v4, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    :cond_54
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->sig_ht:[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    invoke-direct {v4, v0, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;-><init>([B[[B)V

    aput-object v4, v3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3a

    :cond_60
    array-length p0, p7

    if-ne v2, p0, :cond_64

    return-void

    :cond_64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "signature wrong length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getR()[B
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->r:[B

    return-object p0
.end method

.method public getSIG_FORS()[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->sig_fors:[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

    return-object p0
.end method

.method public getSIG_HT()[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->sig_ht:[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    return-object p0
.end method
