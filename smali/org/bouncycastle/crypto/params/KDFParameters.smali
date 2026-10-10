###### Class org.bouncycastle.crypto.params.KDFParameters (org.bouncycastle.crypto.params.KDFParameters)
.class public Lorg/bouncycastle/crypto/params/KDFParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationParameters;


# instance fields
.field iv:[B

.field shared:[B


# direct methods
.method public constructor <init>([B[B)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/KDFParameters;->shared:[B

    iput-object p2, p0, Lorg/bouncycastle/crypto/params/KDFParameters;->iv:[B

    return-void
.end method


# virtual methods
.method public getIV()[B
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/params/KDFParameters;->iv:[B

    return-object p0
.end method

.method public getSharedSecret()[B
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/params/KDFParameters;->shared:[B

    return-object p0
.end method
