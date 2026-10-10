###### Class org.bouncycastle.pqc.crypto.newhope.NHPrivateKeyParameters (org.bouncycastle.pqc.crypto.newhope.NHPrivateKeyParameters)
.class public Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# instance fields
.field final secData:[S


# direct methods
.method public constructor <init>([S)V
    .registers 3

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([S)[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;->secData:[S

    return-void
.end method


# virtual methods
.method public getSecData()[S
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;->secData:[S

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([S)[S

    move-result-object p0

    return-object p0
.end method
