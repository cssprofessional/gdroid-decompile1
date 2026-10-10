###### Class org.bouncycastle.jce.spec.ECKeySpec (org.bouncycastle.jce.spec.ECKeySpec)
.class public Lorg/bouncycastle/jce/spec/ECKeySpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private spec:Lorg/bouncycastle/jce/spec/ECParameterSpec;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jce/spec/ECParameterSpec;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/spec/ECKeySpec;->spec:Lorg/bouncycastle/jce/spec/ECParameterSpec;

    return-void
.end method


# virtual methods
.method public getParams()Lorg/bouncycastle/jce/spec/ECParameterSpec;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/jce/spec/ECKeySpec;->spec:Lorg/bouncycastle/jce/spec/ECParameterSpec;

    return-object p0
.end method
