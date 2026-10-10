###### Class org.bouncycastle.jcajce.provider.drbg.IncrementalEntropySourceProvider (org.bouncycastle.jcajce.provider.drbg.IncrementalEntropySourceProvider)
.class Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/prng/EntropySourceProvider;


# instance fields
.field private final predictionResistant:Z

.field private final random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;->random:Ljava/security/SecureRandom;

    iput-boolean p2, p0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;->predictionResistant:Z

    return-void
.end method

.method public static synthetic access$000(Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;->predictionResistant:Z

    return p0
.end method

.method public static synthetic access$100(J)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 0
    invoke-static {p0, p1}, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;->sleep(J)V

    return-void
.end method

.method public static synthetic access$200(Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;)Ljava/security/SecureRandom;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;->random:Ljava/security/SecureRandom;

    return-object p0
.end method

.method private static sleep(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 0
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_9

    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V

    :cond_9
    return-void
.end method


# virtual methods
.method public get(I)Lorg/bouncycastle/crypto/prng/EntropySource;
    .registers 3

    .line 0
    new-instance v0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider$1;-><init>(Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;I)V

    return-object v0
.end method

###### Class org.bouncycastle.jcajce.provider.drbg.IncrementalEntropySourceProvider.AnonymousClass1 (org.bouncycastle.jcajce.provider.drbg.IncrementalEntropySourceProvider$1)
.class Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;->get(I)Lorg/bouncycastle/crypto/prng/EntropySource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final numBytes:I

.field final synthetic this$0:Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;

.field final synthetic val$bitsRequired:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider$1;->this$0:Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;

    iput p2, p0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider$1;->val$bitsRequired:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 p2, p2, 0x7

    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider$1;->numBytes:I

    return-void
.end method


# virtual methods
.method public entropySize()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider$1;->val$bitsRequired:I

    return p0
.end method

.method public getEntropy()[B
    .registers 3

    .line 0
    const-wide/16 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider$1;->getEntropy(J)[B

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "initial entropy fetch interrupted"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getEntropy(J)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 0
    iget v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider$1;->numBytes:I

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    iget v4, p0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider$1;->numBytes:I

    div-int/lit8 v5, v4, 0x8

    const/16 v6, 0x8

    if-ge v3, v5, :cond_24

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;->access$100(J)V

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider$1;->this$0:Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;

    invoke-static {v4}, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;->access$200(Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;)Ljava/security/SecureRandom;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v4

    mul-int/lit8 v5, v3, 0x8

    array-length v6, v4

    invoke-static {v4, v2, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_24
    div-int/lit8 v3, v4, 0x8

    mul-int/2addr v3, v6

    sub-int/2addr v4, v3

    if-eqz v4, :cond_3d

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;->access$100(J)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider$1;->this$0:Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;->access$200(Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;)Ljava/security/SecureRandom;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object p0

    array-length p1, p0

    sub-int/2addr v0, p1

    array-length p1, p0

    invoke-static {p0, v2, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3d
    return-object v1
.end method

.method public isPredictionResistant()Z
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider$1;->this$0:Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;->access$000(Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;)Z

    move-result p0

    return p0
.end method
