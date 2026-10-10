###### Class org.bouncycastle.pqc.crypto.DigestingStateAwareMessageSigner (org.bouncycastle.pqc.crypto.DigestingStateAwareMessageSigner)
.class public Lorg/bouncycastle/pqc/crypto/DigestingStateAwareMessageSigner;
.super Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;


# instance fields
.field private final signer:Lorg/bouncycastle/pqc/crypto/StateAwareMessageSigner;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/StateAwareMessageSigner;Lorg/bouncycastle/crypto/Digest;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;-><init>(Lorg/bouncycastle/pqc/crypto/MessageSigner;Lorg/bouncycastle/crypto/Digest;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/DigestingStateAwareMessageSigner;->signer:Lorg/bouncycastle/pqc/crypto/StateAwareMessageSigner;

    return-void
.end method


# virtual methods
.method public getUpdatedPrivateKey()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/DigestingStateAwareMessageSigner;->signer:Lorg/bouncycastle/pqc/crypto/StateAwareMessageSigner;

    invoke-interface {p0}, Lorg/bouncycastle/pqc/crypto/StateAwareMessageSigner;->getUpdatedPrivateKey()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p0

    return-object p0
.end method
