###### Class org.bouncycastle.pqc.legacy.crypto.qtesla.QTESLASecurityCategory (org.bouncycastle.pqc.legacy.crypto.qtesla.QTESLASecurityCategory)
.class public Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASecurityCategory;
.super Ljava/lang/Object;


# static fields
.field public static final PROVABLY_SECURE_I:I = 0x5

.field public static final PROVABLY_SECURE_III:I = 0x6


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(I)Ljava/lang/String;
    .registers 4

    .line 0
    const/4 v0, 0x5

    if-eq p0, v0, :cond_20

    const/4 v0, 0x6

    if-ne p0, v0, :cond_9

    const-string p0, "qTESLA-p-III"

    return-object p0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown security category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    const-string p0, "qTESLA-p-I"

    return-object p0
.end method

.method public static getPrivateSize(I)I
    .registers 4

    .line 0
    const/4 v0, 0x5

    if-eq p0, v0, :cond_20

    const/4 v0, 0x6

    if-ne p0, v0, :cond_9

    const/16 p0, 0x3068

    return p0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown security category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    const/16 p0, 0x1468

    return p0
.end method

.method public static getPublicSize(I)I
    .registers 4

    .line 0
    const/4 v0, 0x5

    if-eq p0, v0, :cond_21

    const/4 v0, 0x6

    if-ne p0, v0, :cond_a

    const p0, 0x9620

    return p0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown security category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    const/16 p0, 0x3a20

    return p0
.end method

.method public static getSignatureSize(I)I
    .registers 4

    .line 0
    const/4 v0, 0x5

    if-eq p0, v0, :cond_20

    const/4 v0, 0x6

    if-ne p0, v0, :cond_9

    const/16 p0, 0x1620

    return p0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown security category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    const/16 p0, 0xa20

    return p0
.end method

.method public static validate(I)V
    .registers 4

    .line 0
    const/4 v0, 0x5

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x6

    if-ne p0, v0, :cond_7

    goto :goto_1e

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown security category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    :goto_1e
    return-void
.end method
