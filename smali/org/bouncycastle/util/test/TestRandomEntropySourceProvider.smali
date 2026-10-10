###### Class org.bouncycastle.util.test.TestRandomEntropySourceProvider (org.bouncycastle.util.test.TestRandomEntropySourceProvider)
.class public Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/prng/EntropySourceProvider;


# instance fields
.field private final _predictionResistant:Z

.field private final _sr:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;->_sr:Ljava/security/SecureRandom;

    iput-boolean p1, p0, Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;->_predictionResistant:Z

    return-void
.end method

.method public static synthetic access$000(Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;->_predictionResistant:Z

    return p0
.end method

.method public static synthetic access$100(Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;)Ljava/security/SecureRandom;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;->_sr:Ljava/security/SecureRandom;

    return-object p0
.end method


# virtual methods
.method public get(I)Lorg/bouncycastle/crypto/prng/EntropySource;
    .registers 3

    .line 0
    new-instance v0, Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider$1;-><init>(Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;I)V

    return-object v0
.end method

###### Class org.bouncycastle.util.test.TestRandomEntropySourceProvider.AnonymousClass1 (org.bouncycastle.util.test.TestRandomEntropySourceProvider$1)
.class Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/prng/EntropySource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;->get(I)Lorg/bouncycastle/crypto/prng/EntropySource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;

.field final synthetic val$bitsRequired:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider$1;->this$0:Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;

    iput p2, p0, Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider$1;->val$bitsRequired:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public entropySize()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider$1;->val$bitsRequired:I

    return p0
.end method

.method public getEntropy()[B
    .registers 2

    .line 0
    iget v0, p0, Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider$1;->val$bitsRequired:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iget-object p0, p0, Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider$1;->this$0:Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;

    invoke-static {p0}, Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;->access$100(Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;)Ljava/security/SecureRandom;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method public isPredictionResistant()Z
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider$1;->this$0:Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;

    invoke-static {p0}, Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;->access$000(Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;)Z

    move-result p0

    return p0
.end method
