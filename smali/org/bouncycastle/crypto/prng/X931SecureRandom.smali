###### Class org.bouncycastle.crypto.prng.X931SecureRandom (org.bouncycastle.crypto.prng.X931SecureRandom)
.class public Lorg/bouncycastle/crypto/prng/X931SecureRandom;
.super Ljava/security/SecureRandom;


# instance fields
.field private final drbg:Lorg/bouncycastle/crypto/prng/X931RNG;

.field private final predictionResistant:Z

.field private final randomSource:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/prng/X931RNG;Z)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->randomSource:Ljava/security/SecureRandom;

    iput-object p2, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->drbg:Lorg/bouncycastle/crypto/prng/X931RNG;

    iput-boolean p3, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->predictionResistant:Z

    return-void
.end method


# virtual methods
.method public generateSeed(I)[B
    .registers 2

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->drbg:Lorg/bouncycastle/crypto/prng/X931RNG;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/prng/X931RNG;->getEntropySource()Lorg/bouncycastle/crypto/prng/EntropySource;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/prng/EntropyUtil;->generateSeed(Lorg/bouncycastle/crypto/prng/EntropySource;I)[B

    move-result-object p0

    return-object p0
.end method

.method public nextBytes([B)V
    .registers 4

    .line 0
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->drbg:Lorg/bouncycastle/crypto/prng/X931RNG;

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->predictionResistant:Z

    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/crypto/prng/X931RNG;->generate([BZ)I

    move-result v0

    if-gez v0, :cond_1a

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->drbg:Lorg/bouncycastle/crypto/prng/X931RNG;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/prng/X931RNG;->reseed()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->drbg:Lorg/bouncycastle/crypto/prng/X931RNG;

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->predictionResistant:Z

    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/crypto/prng/X931RNG;->generate([BZ)I

    goto :goto_1a

    :catchall_18
    move-exception p1

    goto :goto_1c

    :cond_1a
    :goto_1a
    monitor-exit p0

    return-void

    :goto_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_18

    throw p1
.end method

.method public setSeed(J)V
    .registers 4

    .line 0
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->randomSource:Ljava/security/SecureRandom;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1, p2}, Ljava/security/SecureRandom;->setSeed(J)V

    goto :goto_b

    :catchall_9
    move-exception p1

    goto :goto_d

    :cond_b
    :goto_b
    monitor-exit p0

    return-void

    :goto_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_9

    throw p1
.end method

.method public setSeed([B)V
    .registers 3

    .line 0
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->randomSource:Ljava/security/SecureRandom;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->setSeed([B)V

    goto :goto_b

    :catchall_9
    move-exception p1

    goto :goto_d

    :cond_b
    :goto_b
    monitor-exit p0

    return-void

    :goto_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_9

    throw p1
.end method
