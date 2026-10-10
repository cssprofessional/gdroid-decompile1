###### Class org.bouncycastle.crypto.params.HKDFParameters (org.bouncycastle.crypto.params.HKDFParameters)
.class public Lorg/bouncycastle/crypto/params/HKDFParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationParameters;


# instance fields
.field private final ikm:[B

.field private final info:[B

.field private final salt:[B

.field private final skipExpand:Z


# direct methods
.method private constructor <init>([BZ[B[B)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2c

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->ikm:[B

    iput-boolean p2, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->skipExpand:Z

    if-eqz p3, :cond_1a

    array-length p1, p3

    if-nez p1, :cond_13

    goto :goto_1a

    :cond_13
    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->salt:[B

    goto :goto_1d

    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->salt:[B

    :goto_1d
    if-nez p4, :cond_25

    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->info:[B

    goto :goto_2b

    :cond_25
    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->info:[B

    :goto_2b
    return-void

    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "IKM (input keying material) should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([B[B[B)V
    .registers 5

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/bouncycastle/crypto/params/HKDFParameters;-><init>([BZ[B[B)V

    return-void
.end method

.method public static defaultParameters([B)Lorg/bouncycastle/crypto/params/HKDFParameters;
    .registers 4

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/params/HKDFParameters;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lorg/bouncycastle/crypto/params/HKDFParameters;-><init>([BZ[B[B)V

    return-object v0
.end method

.method public static skipExtractParameters([B[B)Lorg/bouncycastle/crypto/params/HKDFParameters;
    .registers 5

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/params/HKDFParameters;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/bouncycastle/crypto/params/HKDFParameters;-><init>([BZ[B[B)V

    return-object v0
.end method


# virtual methods
.method public getIKM()[B
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->ikm:[B

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getInfo()[B
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->info:[B

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getSalt()[B
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->salt:[B

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public skipExtract()Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->skipExpand:Z

    return p0
.end method
