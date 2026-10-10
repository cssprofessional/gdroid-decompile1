###### Class org.bouncycastle.pqc.crypto.picnic.PicnicPrivateKeyParameters (org.bouncycastle.pqc.crypto.picnic.PicnicPrivateKeyParameters)
.class public Lorg/bouncycastle/pqc/crypto/picnic/PicnicPrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/picnic/PicnicKeyParameters;


# instance fields
.field private final privateKey:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;[B)V
    .registers 4

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;)V

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPrivateKeyParameters;->privateKey:[B

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPrivateKeyParameters;->privateKey:[B

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method
