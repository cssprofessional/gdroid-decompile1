###### Class org.bouncycastle.pqc.legacy.crypto.gmss.GMSSStateAwareSigner (org.bouncycastle.pqc.legacy.crypto.gmss.GMSSStateAwareSigner)
.class public Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/StateAwareMessageSigner;


# instance fields
.field private final gmssSigner:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;

.field private key:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lorg/bouncycastle/util/Memoable;

    if-eqz v0, :cond_1a

    check-cast p1, Lorg/bouncycastle/util/Memoable;

    invoke-interface {p1}, Lorg/bouncycastle/util/Memoable;->copy()Lorg/bouncycastle/util/Memoable;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;

    new-instance v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner$1;

    invoke-direct {v1, p0, p1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner$1;-><init>(Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;Lorg/bouncycastle/util/Memoable;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;-><init>(Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;->gmssSigner:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;

    return-void

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "digest must implement Memoable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public generateSignature([B)[B
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;->gmssSigner:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->generateSignature([B)[B

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextKey()Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;

    return-object p1

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "signing key no longer usable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUpdatedPrivateKey()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 4

    .line 0
    if-eqz p1, :cond_16

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_12

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;

    :goto_f
    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;

    goto :goto_16

    :cond_12
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;

    goto :goto_f

    :cond_16
    :goto_16
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;->gmssSigner:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public verifySignature([B[B)Z
    .registers 3

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;->gmssSigner:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->verifySignature([B[B)Z

    move-result p0

    return p0
.end method

###### Class org.bouncycastle.pqc.legacy.crypto.gmss.GMSSStateAwareSigner.AnonymousClass1 (org.bouncycastle.pqc.legacy.crypto.gmss.GMSSStateAwareSigner$1)
.class Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;-><init>(Lorg/bouncycastle/crypto/Digest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;

.field final synthetic val$dig:Lorg/bouncycastle/util/Memoable;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;Lorg/bouncycastle/util/Memoable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner$1;->this$0:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;

    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner$1;->val$dig:Lorg/bouncycastle/util/Memoable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lorg/bouncycastle/crypto/Digest;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner$1;->val$dig:Lorg/bouncycastle/util/Memoable;

    invoke-interface {p0}, Lorg/bouncycastle/util/Memoable;->copy()Lorg/bouncycastle/util/Memoable;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/Digest;

    return-object p0
.end method
