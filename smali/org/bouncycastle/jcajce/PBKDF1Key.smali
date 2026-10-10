###### Class org.bouncycastle.jcajce.PBKDF1Key (org.bouncycastle.jcajce.PBKDF1Key)
.class public Lorg/bouncycastle/jcajce/PBKDF1Key;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/jcajce/PBKDFKey;


# instance fields
.field private final converter:Lorg/bouncycastle/crypto/CharToByteConverter;

.field private final password:[C


# direct methods
.method public constructor <init>([CLorg/bouncycastle/crypto/CharToByteConverter;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PBKDF1Key;->password:[C

    iput-object p2, p0, Lorg/bouncycastle/jcajce/PBKDF1Key;->converter:Lorg/bouncycastle/crypto/CharToByteConverter;

    const/4 p0, 0x0

    array-length p2, p1

    invoke-static {p1, p0, v0, p0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .registers 1

    .line 0
    const-string p0, "PBKDF1"

    return-object p0
.end method

.method public getEncoded()[B
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PBKDF1Key;->converter:Lorg/bouncycastle/crypto/CharToByteConverter;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/PBKDF1Key;->password:[C

    invoke-interface {v0, p0}, Lorg/bouncycastle/crypto/CharToByteConverter;->convert([C)[B

    move-result-object p0

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/PBKDF1Key;->converter:Lorg/bouncycastle/crypto/CharToByteConverter;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/CharToByteConverter;->getType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPassword()[C
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/PBKDF1Key;->password:[C

    return-object p0
.end method
