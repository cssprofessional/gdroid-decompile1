###### Class org.bouncycastle.jcajce.spec.HybridValueParameterSpec (org.bouncycastle.jcajce.spec.HybridValueParameterSpec)
.class public Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;
.implements Ljavax/security/auth/Destroyable;


# instance fields
.field private volatile baseSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final doPrepend:Z

.field private final hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile t:[B


# direct methods
.method public constructor <init>([BLjava/security/spec/AlgorithmParameterSpec;)V
    .registers 4

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;-><init>([BZLjava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method public constructor <init>([BZLjava/security/spec/AlgorithmParameterSpec;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->t:[B

    iput-object p3, p0, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->baseSpec:Ljava/security/spec/AlgorithmParameterSpec;

    iput-boolean p2, p0, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->doPrepend:Z

    return-void
.end method

.method private checkDestroyed()V
    .registers 2

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "spec has been destroyed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->t:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->t:[B

    iput-object v0, p0, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->baseSpec:Ljava/security/spec/AlgorithmParameterSpec;

    :cond_13
    return-void
.end method

.method public getBaseParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->baseSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->checkDestroyed()V

    return-object v0
.end method

.method public getT()[B
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->t:[B

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->checkDestroyed()V

    return-object v0
.end method

.method public isDestroyed()Z
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isPrependedT()Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->doPrepend:Z

    return p0
.end method
