###### Class org.bouncycastle.crypto.prng.ReversedWindowGenerator (org.bouncycastle.crypto.prng.ReversedWindowGenerator)
.class public Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/prng/RandomGenerator;


# instance fields
.field private final generator:Lorg/bouncycastle/crypto/prng/RandomGenerator;

.field private window:[B

.field private windowCount:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/prng/RandomGenerator;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_17

    const/4 v0, 0x2

    if-lt p2, v0, :cond_f

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->generator:Lorg/bouncycastle/crypto/prng/RandomGenerator;

    new-array p1, p2, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->window:[B

    return-void

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "windowSize must be at least 2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "generator cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private doNextBytes([BII)V
    .registers 10

    .line 0
    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p3, :cond_2a

    :try_start_5
    iget v2, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->windowCount:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1a

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->generator:Lorg/bouncycastle/crypto/prng/RandomGenerator;

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->window:[B

    array-length v5, v4

    invoke-interface {v2, v4, v0, v5}, Lorg/bouncycastle/crypto/prng/RandomGenerator;->nextBytes([BII)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->window:[B

    array-length v2, v2

    iput v2, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->windowCount:I

    goto :goto_1a

    :catchall_18
    move-exception p1

    goto :goto_2c

    :cond_1a
    :goto_1a
    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, p2

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->window:[B

    iget v5, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->windowCount:I

    sub-int/2addr v5, v3

    iput v5, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->windowCount:I

    aget-byte v3, v4, v5

    aput-byte v3, p1, v1

    move v1, v2

    goto :goto_3

    :cond_2a
    monitor-exit p0

    return-void

    :goto_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_18

    throw p1
.end method


# virtual methods
.method public addSeedMaterial(J)V
    .registers 4

    .line 0
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->windowCount:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->generator:Lorg/bouncycastle/crypto/prng/RandomGenerator;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/prng/RandomGenerator;->addSeedMaterial(J)V

    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public addSeedMaterial([B)V
    .registers 3

    .line 0
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->windowCount:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->generator:Lorg/bouncycastle/crypto/prng/RandomGenerator;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/prng/RandomGenerator;->addSeedMaterial([B)V

    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public nextBytes([B)V
    .registers 4

    .line 0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->doNextBytes([BII)V

    return-void
.end method

.method public nextBytes([BII)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->doNextBytes([BII)V

    return-void
.end method
