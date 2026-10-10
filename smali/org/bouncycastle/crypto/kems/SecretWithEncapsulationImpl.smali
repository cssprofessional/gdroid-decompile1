###### Class org.bouncycastle.crypto.kems.SecretWithEncapsulationImpl (org.bouncycastle.crypto.kems.SecretWithEncapsulationImpl)
.class Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/SecretWithEncapsulation;


# instance fields
.field private final cipher_text:[B

.field private final hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final sessionKey:[B


# direct methods
.method public constructor <init>([B[B)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;->hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;->sessionKey:[B

    iput-object p2, p0, Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;->cipher_text:[B

    return-void
.end method


# virtual methods
.method public checkDestroyed()V
    .registers 2

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "data has been destroyed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public destroy()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/DestroyFailedException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;->hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;->sessionKey:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    iget-object p0, p0, Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;->cipher_text:[B

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    :cond_13
    return-void
.end method

.method public getEncapsulation()[B
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;->cipher_text:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;->checkDestroyed()V

    return-object v0
.end method

.method public getSecret()[B
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;->sessionKey:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;->checkDestroyed()V

    return-object v0
.end method

.method public isDestroyed()Z
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;->hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method
