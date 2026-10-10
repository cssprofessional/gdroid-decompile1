###### Class org.bouncycastle.pqc.crypto.picnic.PicnicKeyParameters (org.bouncycastle.pqc.crypto.picnic.PicnicKeyParameters)
.class public Lorg/bouncycastle/pqc/crypto/picnic/PicnicKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# instance fields
.field final parameters:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;


# direct methods
.method public constructor <init>(ZLorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicKeyParameters;->parameters:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicKeyParameters;->parameters:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    return-object p0
.end method
