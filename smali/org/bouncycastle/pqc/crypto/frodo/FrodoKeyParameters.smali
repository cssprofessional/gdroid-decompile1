###### Class org.bouncycastle.pqc.crypto.frodo.FrodoKeyParameters (org.bouncycastle.pqc.crypto.frodo.FrodoKeyParameters)
.class public Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# instance fields
.field private params:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;


# direct methods
.method public constructor <init>(ZLorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    return-object p0
.end method
