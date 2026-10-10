###### Class org.bouncycastle.pqc.legacy.crypto.mceliece.McElieceCCA2KeyParameters (org.bouncycastle.pqc.legacy.crypto.mceliece.McElieceCCA2KeyParameters)
.class public Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# instance fields
.field private params:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyParameters;->params:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDigest()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyParameters;->params:Ljava/lang/String;

    return-object p0
.end method
