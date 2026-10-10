###### Class org.bouncycastle.jcajce.spec.KEMGenerateSpec (org.bouncycastle.jcajce.spec.KEMGenerateSpec)
.class public Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final keyAlgorithmName:Ljava/lang/String;

.field private final keySizeInBits:I

.field private final publicKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 4

    .line 0
    const/16 v0, 0x100

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;-><init>(Ljava/security/PublicKey;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/security/PublicKey;Ljava/lang/String;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->publicKey:Ljava/security/PublicKey;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->keyAlgorithmName:Ljava/lang/String;

    iput p3, p0, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->keySizeInBits:I

    return-void
.end method


# virtual methods
.method public getKeyAlgorithmName()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->keyAlgorithmName:Ljava/lang/String;

    return-object p0
.end method

.method public getKeySize()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->keySizeInBits:I

    return p0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->publicKey:Ljava/security/PublicKey;

    return-object p0
.end method
