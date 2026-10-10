###### Class org.bouncycastle.pqc.legacy.crypto.rainbow.RainbowKeyParameters (org.bouncycastle.pqc.legacy.crypto.rainbow.RainbowKeyParameters)
.class public Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# instance fields
.field private docLength:I


# direct methods
.method public constructor <init>(ZI)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyParameters;->docLength:I

    return-void
.end method


# virtual methods
.method public getDocLength()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyParameters;->docLength:I

    return p0
.end method
