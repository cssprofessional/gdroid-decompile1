###### Class org.bouncycastle.crypto.params.ISO18033KDFParameters (org.bouncycastle.crypto.params.ISO18033KDFParameters)
.class public Lorg/bouncycastle/crypto/params/ISO18033KDFParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationParameters;


# instance fields
.field seed:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/ISO18033KDFParameters;->seed:[B

    return-void
.end method


# virtual methods
.method public getSeed()[B
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/params/ISO18033KDFParameters;->seed:[B

    return-object p0
.end method
