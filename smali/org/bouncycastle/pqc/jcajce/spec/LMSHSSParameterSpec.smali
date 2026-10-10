###### Class org.bouncycastle.pqc.jcajce.spec.LMSHSSParameterSpec (org.bouncycastle.pqc.jcajce.spec.LMSHSSParameterSpec)
.class public Lorg/bouncycastle/pqc/jcajce/spec/LMSHSSParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final specs:[Lorg/bouncycastle/pqc/jcajce/spec/LMSParameterSpec;


# direct methods
.method public constructor <init>([Lorg/bouncycastle/pqc/jcajce/spec/LMSParameterSpec;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [Lorg/bouncycastle/pqc/jcajce/spec/LMSParameterSpec;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/bouncycastle/pqc/jcajce/spec/LMSParameterSpec;

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/LMSHSSParameterSpec;->specs:[Lorg/bouncycastle/pqc/jcajce/spec/LMSParameterSpec;

    return-void
.end method


# virtual methods
.method public getLMSSpecs()[Lorg/bouncycastle/pqc/jcajce/spec/LMSParameterSpec;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/spec/LMSHSSParameterSpec;->specs:[Lorg/bouncycastle/pqc/jcajce/spec/LMSParameterSpec;

    invoke-virtual {p0}, [Lorg/bouncycastle/pqc/jcajce/spec/LMSParameterSpec;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/bouncycastle/pqc/jcajce/spec/LMSParameterSpec;

    return-object p0
.end method
