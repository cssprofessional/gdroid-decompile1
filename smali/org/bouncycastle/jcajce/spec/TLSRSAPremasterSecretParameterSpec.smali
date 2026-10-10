###### Class org.bouncycastle.jcajce.spec.TLSRSAPremasterSecretParameterSpec (org.bouncycastle.jcajce.spec.TLSRSAPremasterSecretParameterSpec)
.class public Lorg/bouncycastle/jcajce/spec/TLSRSAPremasterSecretParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final protocolVersion:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/jcajce/spec/TLSRSAPremasterSecretParameterSpec;->protocolVersion:I

    return-void
.end method


# virtual methods
.method public getProtocolVersion()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/jcajce/spec/TLSRSAPremasterSecretParameterSpec;->protocolVersion:I

    return p0
.end method
