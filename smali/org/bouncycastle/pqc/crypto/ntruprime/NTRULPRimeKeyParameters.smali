###### Class org.bouncycastle.pqc.crypto.ntruprime.NTRULPRimeKeyParameters (org.bouncycastle.pqc.crypto.ntruprime.NTRULPRimeKeyParameters)
.class public Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# instance fields
.field private final params:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;


# direct methods
.method public constructor <init>(ZLorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    return-object p0
.end method
