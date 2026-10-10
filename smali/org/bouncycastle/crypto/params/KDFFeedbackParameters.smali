###### Class org.bouncycastle.crypto.params.KDFFeedbackParameters (org.bouncycastle.crypto.params.KDFFeedbackParameters)
.class public final Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationParameters;


# static fields
.field private static final UNUSED_R:I = -0x1


# instance fields
.field private final fixedInputData:[B

.field private final iv:[B

.field private final ki:[B

.field private final r:I

.field private final useCounter:Z


# direct methods
.method private constructor <init>([B[B[BIZ)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2b

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->ki:[B

    const/4 p1, 0x0

    if-nez p3, :cond_13

    new-array p3, p1, [B

    iput-object p3, p0, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->fixedInputData:[B

    goto :goto_19

    :cond_13
    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p3

    iput-object p3, p0, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->fixedInputData:[B

    :goto_19
    iput p4, p0, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->r:I

    if-nez p2, :cond_22

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->iv:[B

    goto :goto_28

    :cond_22
    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->iv:[B

    :goto_28
    iput-boolean p5, p0, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->useCounter:Z

    return-void

    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A KDF requires Ki (a seed) as input"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createWithCounter([B[B[BI)Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;
    .registers 11

    .line 0
    const/16 v0, 0x8

    if-eq p3, v0, :cond_19

    const/16 v0, 0x10

    if-eq p3, v0, :cond_19

    const/16 v0, 0x18

    if-eq p3, v0, :cond_19

    const/16 v0, 0x20

    if-ne p3, v0, :cond_11

    goto :goto_19

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length of counter should be 8, 16, 24 or 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    :goto_19
    new-instance v6, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;-><init>([B[B[BIZ)V

    return-object v6
.end method

.method public static createWithoutCounter([B[B[B)Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;
    .registers 10

    .line 0
    new-instance v6, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;-><init>([B[B[BIZ)V

    return-object v6
.end method


# virtual methods
.method public getFixedInputData()[B
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->fixedInputData:[B

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getIV()[B
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->iv:[B

    return-object p0
.end method

.method public getKI()[B
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->ki:[B

    return-object p0
.end method

.method public getR()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->r:I

    return p0
.end method

.method public useCounter()Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->useCounter:Z

    return p0
.end method
