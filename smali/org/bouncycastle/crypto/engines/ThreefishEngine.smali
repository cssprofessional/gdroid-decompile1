###### Class org.bouncycastle.crypto.engines.ThreefishEngine (org.bouncycastle.crypto.engines.ThreefishEngine)
.class public Lorg/bouncycastle/crypto/engines/ThreefishEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;,
        Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;,
        Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;,
        Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;
    }
.end annotation


# static fields
.field public static final BLOCKSIZE_1024:I = 0x400

.field public static final BLOCKSIZE_256:I = 0x100

.field public static final BLOCKSIZE_512:I = 0x200

.field private static final C_240:J = 0x1bd11bdaa9fc1a22L

.field private static final MAX_ROUNDS:I = 0x50

.field private static MOD17:[I = null

.field private static MOD3:[I = null

.field private static MOD5:[I = null

.field private static MOD9:[I = null

.field private static final ROUNDS_1024:I = 0x50

.field private static final ROUNDS_256:I = 0x48

.field private static final ROUNDS_512:I = 0x48

.field private static final TWEAK_SIZE_BYTES:I = 0x10

.field private static final TWEAK_SIZE_WORDS:I = 0x2


# instance fields
.field private blocksizeBytes:I

.field private blocksizeWords:I

.field private cipher:Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;

.field private currentBlock:[J

.field private forEncryption:Z

.field private kw:[J

.field private t:[J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 0
    const/16 v0, 0x50

    new-array v0, v0, [I

    sput-object v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD9:[I

    array-length v1, v0

    new-array v1, v1, [I

    sput-object v1, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD17:[I

    array-length v1, v0

    new-array v1, v1, [I

    sput-object v1, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD5:[I

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD3:[I

    const/4 v0, 0x0

    :goto_16
    sget-object v1, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD9:[I

    array-length v2, v1

    if-ge v0, v2, :cond_34

    sget-object v2, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD17:[I

    rem-int/lit8 v3, v0, 0x11

    aput v3, v2, v0

    rem-int/lit8 v2, v0, 0x9

    aput v2, v1, v0

    sget-object v1, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD5:[I

    rem-int/lit8 v2, v0, 0x5

    aput v2, v1, v0

    sget-object v1, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD3:[I

    rem-int/lit8 v2, v0, 0x3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_34
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->t:[J

    div-int/lit8 v1, p1, 0x8

    iput v1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    div-int/lit8 v1, v1, 0x8

    iput v1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    new-array v2, v1, [J

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->currentBlock:[J

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [J

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->kw:[J

    const/16 v2, 0x100

    if-eq p1, v2, :cond_3e

    const/16 v2, 0x200

    if-eq p1, v2, :cond_38

    const/16 v2, 0x400

    if-ne p1, v2, :cond_30

    new-instance p1, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;

    invoke-direct {p1, v1, v0}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;-><init>([J[J)V

    :goto_2d
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->cipher:Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;

    goto :goto_44

    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid blocksize - Threefish is defined with block size of 256, 512, or 1024 bits"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    new-instance p1, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;

    invoke-direct {p1, v1, v0}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;-><init>([J[J)V

    goto :goto_2d

    :cond_3e
    new-instance p1, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;

    invoke-direct {p1, v1, v0}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;-><init>([J[J)V

    goto :goto_2d

    :goto_44
    return-void
.end method

.method public static synthetic access$000()[I
    .registers 1

    .line 0
    sget-object v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD5:[I

    return-object v0
.end method

.method public static synthetic access$100()[I
    .registers 1

    .line 0
    sget-object v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD3:[I

    return-object v0
.end method

.method public static synthetic access$200()[I
    .registers 1

    .line 0
    sget-object v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD9:[I

    return-object v0
.end method

.method public static synthetic access$300()[I
    .registers 1

    .line 0
    sget-object v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD17:[I

    return-object v0
.end method

.method public static bytesToWord([BI)J
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static rotlXor(JIJ)J
    .registers 7

    .line 0
    shl-long v0, p0, p2

    neg-int p2, p2

    ushr-long/2addr p0, p2

    or-long/2addr p0, v0

    xor-long/2addr p0, p3

    return-wide p0
.end method

.method private setKey([J)V
    .registers 9

    .line 0
    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    if-ne v0, v1, :cond_24

    const/4 v0, 0x0

    const-wide v1, 0x1bd11bdaa9fc1a22L    # 1.080841987832705E-174

    move v3, v0

    :goto_c
    iget v4, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    if-ge v3, v4, :cond_1a

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->kw:[J

    aget-wide v5, p1, v3

    aput-wide v5, v4, v3

    xor-long/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1a
    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->kw:[J

    aput-wide v1, p0, v4

    add-int/lit8 p1, v4, 0x1

    invoke-static {p0, v0, p0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Threefish key must be same size as block ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " words)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setTweak([J)V
    .registers 10

    .line 0
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->t:[J

    const/4 v0, 0x0

    aget-wide v2, p1, v0

    aput-wide v2, p0, v0

    const/4 v0, 0x1

    aget-wide v4, p1, v0

    aput-wide v4, p0, v0

    xor-long v6, v2, v4

    aput-wide v6, p0, v1

    const/4 p1, 0x3

    aput-wide v2, p0, p1

    const/4 p1, 0x4

    aput-wide v4, p0, p1

    return-void

    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tweak must be 2 words."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static wordToBytes(J[BI)V
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    return-void
.end method

.method public static xorRotr(JIJ)J
    .registers 5

    .line 0
    xor-long/2addr p0, p3

    ushr-long p3, p0, p2

    neg-int p2, p2

    shl-long/2addr p0, p2

    or-long/2addr p0, p3

    return-wide p0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Threefish-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBlockSize()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    return p0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 0
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/TweakableBlockCipherParameters;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/TweakableBlockCipherParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/TweakableBlockCipherParameters;->getKey()Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/TweakableBlockCipherParameters;->getTweak()[B

    move-result-object v0

    goto :goto_21

    :cond_15
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_7c

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v2

    move-object v0, v1

    :goto_21
    const/4 v3, 0x0

    if-eqz v2, :cond_4f

    array-length v4, v2

    iget v5, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    if-ne v4, v5, :cond_31

    iget v4, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    new-array v4, v4, [J

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[J)V

    goto :goto_50

    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Threefish key must be same size as block ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes)"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4f
    move-object v4, v1

    :goto_50
    if-eqz v0, :cond_66

    array-length v1, v0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5e

    const/4 v1, 0x2

    new-array v1, v1, [J

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[J)V

    goto :goto_66

    :cond_5e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Threefish tweak must be 16 bytes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_66
    :goto_66
    invoke-virtual {p0, p1, v4, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->init(Z[J[J)V

    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x100

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object p1

    invoke-direct {v0, p0, v1, p2, p1}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void

    :cond_7c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid parameter passed to Threefish init - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public init(Z[J[J)V
    .registers 4

    .line 0
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->forEncryption:Z

    if-eqz p2, :cond_7

    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->setKey([J)V

    :cond_7
    if-eqz p3, :cond_c

    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->setTweak([J)V

    :cond_c
    return-void
.end method

.method public processBlock([BI[BI)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    add-int v1, p2, v0

    array-length v2, p1

    if-gt v1, v2, :cond_25

    add-int/2addr v0, p4

    array-length v1, p3

    if-gt v0, v1, :cond_1d

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->currentBlock:[J

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[J)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->currentBlock:[J

    invoke-virtual {p0, p1, p1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->processBlock([J[J)I

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->currentBlock:[J

    invoke-static {p1, p3, p4}, Lorg/bouncycastle/util/Pack;->longToLittleEndian([J[BI)V

    iget p0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    return p0

    :cond_1d
    new-instance p0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p1, "Output buffer too short"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_25
    new-instance p0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p1, "Input buffer too short"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public processBlock([J[J)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->kw:[J

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_34

    array-length v0, p1

    if-ne v0, v1, :cond_2c

    array-length v0, p2

    if-ne v0, v1, :cond_24

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->forEncryption:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->cipher:Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->encryptBlock([J[J)V

    goto :goto_21

    :cond_1c
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->cipher:Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->decryptBlock([J[J)V

    :goto_21
    iget p0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    return p0

    :cond_24
    new-instance p0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p1, "Output buffer too short"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2c
    new-instance p0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p1, "Input buffer too short"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Threefish engine not initialised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reset()V
    .registers 1

    .line 0
    return-void
.end method

###### Class org.bouncycastle.crypto.engines.ThreefishEngine.Threefish1024Cipher (org.bouncycastle.crypto.engines.ThreefishEngine$Threefish1024Cipher)
.class final Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;
.super Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ThreefishEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Threefish1024Cipher"
.end annotation


# static fields
.field private static final ROTATION_0_0:I = 0x18

.field private static final ROTATION_0_1:I = 0xd

.field private static final ROTATION_0_2:I = 0x8

.field private static final ROTATION_0_3:I = 0x2f

.field private static final ROTATION_0_4:I = 0x8

.field private static final ROTATION_0_5:I = 0x11

.field private static final ROTATION_0_6:I = 0x16

.field private static final ROTATION_0_7:I = 0x25

.field private static final ROTATION_1_0:I = 0x26

.field private static final ROTATION_1_1:I = 0x13

.field private static final ROTATION_1_2:I = 0xa

.field private static final ROTATION_1_3:I = 0x37

.field private static final ROTATION_1_4:I = 0x31

.field private static final ROTATION_1_5:I = 0x12

.field private static final ROTATION_1_6:I = 0x17

.field private static final ROTATION_1_7:I = 0x34

.field private static final ROTATION_2_0:I = 0x21

.field private static final ROTATION_2_1:I = 0x4

.field private static final ROTATION_2_2:I = 0x33

.field private static final ROTATION_2_3:I = 0xd

.field private static final ROTATION_2_4:I = 0x22

.field private static final ROTATION_2_5:I = 0x29

.field private static final ROTATION_2_6:I = 0x3b

.field private static final ROTATION_2_7:I = 0x11

.field private static final ROTATION_3_0:I = 0x5

.field private static final ROTATION_3_1:I = 0x14

.field private static final ROTATION_3_2:I = 0x30

.field private static final ROTATION_3_3:I = 0x29

.field private static final ROTATION_3_4:I = 0x2f

.field private static final ROTATION_3_5:I = 0x1c

.field private static final ROTATION_3_6:I = 0x10

.field private static final ROTATION_3_7:I = 0x19

.field private static final ROTATION_4_0:I = 0x29

.field private static final ROTATION_4_1:I = 0x9

.field private static final ROTATION_4_2:I = 0x25

.field private static final ROTATION_4_3:I = 0x1f

.field private static final ROTATION_4_4:I = 0xc

.field private static final ROTATION_4_5:I = 0x2f

.field private static final ROTATION_4_6:I = 0x2c

.field private static final ROTATION_4_7:I = 0x1e

.field private static final ROTATION_5_0:I = 0x10

.field private static final ROTATION_5_1:I = 0x22

.field private static final ROTATION_5_2:I = 0x38

.field private static final ROTATION_5_3:I = 0x33

.field private static final ROTATION_5_4:I = 0x4

.field private static final ROTATION_5_5:I = 0x35

.field private static final ROTATION_5_6:I = 0x2a

.field private static final ROTATION_5_7:I = 0x29

.field private static final ROTATION_6_0:I = 0x1f

.field private static final ROTATION_6_1:I = 0x2c

.field private static final ROTATION_6_2:I = 0x2f

.field private static final ROTATION_6_3:I = 0x2e

.field private static final ROTATION_6_4:I = 0x13

.field private static final ROTATION_6_5:I = 0x2a

.field private static final ROTATION_6_6:I = 0x2c

.field private static final ROTATION_6_7:I = 0x19

.field private static final ROTATION_7_0:I = 0x9

.field private static final ROTATION_7_1:I = 0x30

.field private static final ROTATION_7_2:I = 0x23

.field private static final ROTATION_7_3:I = 0x34

.field private static final ROTATION_7_4:I = 0x17

.field private static final ROTATION_7_5:I = 0x1f

.field private static final ROTATION_7_6:I = 0x25

.field private static final ROTATION_7_7:I = 0x14


# direct methods
.method public constructor <init>([J[J)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;-><init>([J[J)V

    return-void
.end method


# virtual methods
.method public decryptBlock([J[J)V
    .registers 83

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->kw:[J

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->t:[J

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$300()[I

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v3

    array-length v4, v1

    const/16 v5, 0x21

    if-ne v4, v5, :cond_508

    array-length v4, v0

    const/4 v5, 0x5

    if-ne v4, v5, :cond_502

    const/4 v4, 0x0

    aget-wide v6, p1, v4

    const/4 v8, 0x1

    aget-wide v9, p1, v8

    const/4 v11, 0x2

    aget-wide v12, p1, v11

    const/4 v14, 0x3

    aget-wide v15, p1, v14

    const/4 v14, 0x4

    aget-wide v17, p1, v14

    aget-wide v19, p1, v5

    const/16 v21, 0x6

    aget-wide v22, p1, v21

    const/16 v24, 0x7

    aget-wide v25, p1, v24

    const/16 v11, 0x8

    aget-wide v27, p1, v11

    const/16 v4, 0x9

    aget-wide v29, p1, v4

    const/16 v11, 0xa

    aget-wide v31, p1, v11

    const/16 v33, 0xb

    aget-wide v34, p1, v33

    const/16 v11, 0xc

    aget-wide v36, p1, v11

    const/16 v5, 0xd

    aget-wide v38, p1, v5

    const/16 v40, 0xe

    aget-wide v41, p1, v40

    const/16 v43, 0xf

    aget-wide v44, p1, v43

    const/16 v11, 0x13

    :goto_52
    if-lt v11, v8, :cond_47b

    aget v46, v2, v11

    aget v47, v3, v11

    add-int/lit8 v48, v46, 0x1

    aget-wide v49, v1, v48

    sub-long v6, v6, v49

    add-int/lit8 v49, v46, 0x2

    aget-wide v50, v1, v49

    sub-long v9, v9, v50

    add-int/lit8 v50, v46, 0x3

    aget-wide v51, v1, v50

    sub-long v12, v12, v51

    add-int/lit8 v51, v46, 0x4

    aget-wide v52, v1, v51

    sub-long v14, v15, v52

    add-int/lit8 v16, v46, 0x5

    aget-wide v52, v1, v16

    move-wide/from16 v54, v9

    sub-long v8, v17, v52

    add-int/lit8 v10, v46, 0x6

    aget-wide v17, v1, v10

    sub-long v4, v19, v17

    add-int/lit8 v17, v46, 0x7

    aget-wide v18, v1, v17

    move-object/from16 v53, v2

    move-object/from16 v56, v3

    sub-long v2, v22, v18

    add-int/lit8 v18, v46, 0x8

    aget-wide v19, v1, v18

    move-wide/from16 v57, v14

    sub-long v14, v25, v19

    add-int/lit8 v19, v46, 0x9

    aget-wide v22, v1, v19

    move-wide/from16 v25, v14

    sub-long v14, v27, v22

    add-int/lit8 v20, v46, 0xa

    aget-wide v22, v1, v20

    move-wide/from16 v59, v4

    sub-long v4, v29, v22

    add-int/lit8 v22, v46, 0xb

    aget-wide v27, v1, v22

    move-wide/from16 v61, v14

    sub-long v14, v31, v27

    add-int/lit8 v23, v46, 0xc

    aget-wide v27, v1, v23

    move-wide/from16 v29, v14

    sub-long v14, v34, v27

    add-int/lit8 v27, v46, 0xd

    aget-wide v31, v1, v27

    move-wide/from16 v63, v4

    sub-long v4, v36, v31

    add-int/lit8 v28, v46, 0xe

    aget-wide v31, v1, v28

    add-int/lit8 v34, v47, 0x1

    aget-wide v36, v0, v34

    add-long v31, v31, v36

    move-wide/from16 v36, v4

    sub-long v4, v38, v31

    add-int/lit8 v31, v46, 0xf

    aget-wide v38, v1, v31

    add-int/lit8 v32, v47, 0x2

    aget-wide v65, v0, v32

    add-long v38, v38, v65

    move-wide/from16 v65, v8

    sub-long v8, v41, v38

    add-int/lit8 v32, v46, 0x10

    aget-wide v38, v1, v32

    move-object/from16 v68, v0

    move-object/from16 v67, v1

    int-to-long v0, v11

    add-long v38, v38, v0

    const-wide/16 v41, 0x1

    add-long v38, v38, v41

    move-wide/from16 v41, v0

    sub-long v0, v44, v38

    move/from16 v69, v11

    const/16 v11, 0x9

    invoke-static {v0, v1, v11, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v6, v0

    const/16 v11, 0x30

    invoke-static {v14, v15, v11, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v14

    sub-long/2addr v12, v14

    const/16 v11, 0x23

    invoke-static {v4, v5, v11, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const/16 v11, 0x34

    move-wide/from16 v44, v4

    move-wide/from16 v38, v14

    move-wide/from16 v4, v63

    move-wide/from16 v14, v65

    invoke-static {v4, v5, v11, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v14, v4

    const/16 v11, 0x17

    move-wide/from16 v63, v4

    move-wide/from16 v4, v54

    invoke-static {v4, v5, v11, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v8, v4

    const/16 v11, 0x1f

    move-wide/from16 v54, v8

    move-wide/from16 v8, v59

    move-wide/from16 v59, v0

    move-wide/from16 v0, v61

    invoke-static {v8, v9, v11, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v0, v8

    const/16 v11, 0x25

    move-wide/from16 v61, v0

    move-wide/from16 v0, v57

    move-wide/from16 v72, v2

    move-wide/from16 v2, v29

    move-wide/from16 v29, v72

    invoke-static {v0, v1, v11, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    const/16 v11, 0x14

    move-wide/from16 v57, v2

    move-wide/from16 v2, v25

    move-wide/from16 v25, v4

    move-wide/from16 v4, v36

    invoke-static {v2, v3, v11, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v4, v2

    const/16 v11, 0x1f

    invoke-static {v2, v3, v11, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v6, v2

    const/16 v11, 0x2c

    invoke-static {v8, v9, v11, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v12, v8

    const/16 v11, 0x2f

    invoke-static {v0, v1, v11, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v14, v0

    const/16 v11, 0x2e

    move-wide/from16 v65, v8

    move-wide/from16 v8, v29

    move-wide/from16 v72, v0

    move-wide/from16 v0, v25

    move-wide/from16 v25, v72

    invoke-static {v0, v1, v11, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v8, v0

    move-wide/from16 v29, v0

    move-wide/from16 v0, v59

    const/16 v11, 0x13

    invoke-static {v0, v1, v11, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v4, v0

    const/16 v11, 0x2a

    move-wide/from16 v59, v4

    move-wide/from16 v4, v44

    move-wide/from16 v44, v2

    move-wide/from16 v2, v54

    invoke-static {v4, v5, v11, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const/16 v11, 0x2c

    move-wide/from16 v54, v2

    move-wide/from16 v2, v38

    move-wide/from16 v38, v0

    move-wide/from16 v0, v61

    invoke-static {v2, v3, v11, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/16 v11, 0x19

    move-wide/from16 v61, v0

    move-wide/from16 v0, v63

    move-wide/from16 v72, v14

    move-wide/from16 v14, v57

    move-wide/from16 v57, v72

    invoke-static {v0, v1, v11, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v14, v0

    const/16 v11, 0x10

    invoke-static {v0, v1, v11, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v6, v0

    const/16 v11, 0x22

    invoke-static {v4, v5, v11, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v12, v4

    const/16 v11, 0x38

    invoke-static {v2, v3, v11, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v8, v2

    const/16 v11, 0x33

    move-wide/from16 v63, v4

    move-wide/from16 v4, v57

    move-wide/from16 v72, v2

    move-wide/from16 v2, v38

    move-wide/from16 v38, v72

    invoke-static {v2, v3, v11, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v4, v2

    const/4 v11, 0x4

    move-wide/from16 v72, v2

    move-wide/from16 v2, v44

    move-wide/from16 v44, v72

    invoke-static {v2, v3, v11, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v14, v2

    const/16 v11, 0x35

    move-wide/from16 v57, v14

    move-wide/from16 v14, v25

    move-wide/from16 v25, v0

    move-wide/from16 v0, v59

    invoke-static {v14, v15, v11, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v14

    sub-long/2addr v0, v14

    const/16 v11, 0x2a

    move-wide/from16 v59, v0

    move-wide/from16 v0, v65

    move-wide/from16 v72, v2

    move-wide/from16 v2, v54

    move-wide/from16 v54, v72

    invoke-static {v0, v1, v11, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    const/16 v11, 0x29

    move-wide/from16 v65, v2

    move-wide/from16 v2, v29

    move-wide/from16 v29, v8

    move-wide/from16 v8, v61

    invoke-static {v2, v3, v11, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v8, v2

    invoke-static {v2, v3, v11, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v6, v2

    const/16 v11, 0x9

    invoke-static {v14, v15, v11, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v14

    sub-long/2addr v12, v14

    const/16 v11, 0x25

    invoke-static {v0, v1, v11, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v4, v0

    const/16 v11, 0x1f

    move-wide/from16 v72, v4

    move-wide/from16 v4, v54

    move-wide/from16 v54, v72

    move-wide/from16 v74, v0

    move-wide/from16 v0, v29

    move-wide/from16 v29, v74

    invoke-static {v4, v5, v11, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v0, v4

    const/16 v11, 0xc

    move-wide/from16 v72, v4

    move-wide/from16 v4, v25

    move-wide/from16 v25, v72

    invoke-static {v4, v5, v11, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v8, v4

    const/16 v11, 0x2f

    move-wide/from16 v72, v8

    move-wide/from16 v8, v57

    move-wide/from16 v57, v72

    move-wide/from16 v74, v4

    move-wide/from16 v4, v38

    move-wide/from16 v38, v74

    invoke-static {v4, v5, v11, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v8, v4

    const/16 v11, 0x2c

    move-wide/from16 v70, v4

    move-wide/from16 v4, v63

    move-wide/from16 v72, v8

    move-wide/from16 v8, v59

    move-wide/from16 v59, v72

    invoke-static {v4, v5, v11, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v8, v4

    const/16 v11, 0x1e

    move-wide/from16 v62, v4

    move-wide/from16 v4, v44

    move-wide/from16 v44, v8

    move-wide/from16 v8, v65

    invoke-static {v4, v5, v11, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v8, v4

    aget-wide v64, v67, v46

    sub-long v6, v6, v64

    aget-wide v64, v67, v48

    sub-long v2, v2, v64

    aget-wide v48, v67, v49

    sub-long v12, v12, v48

    aget-wide v48, v67, v50

    sub-long v14, v14, v48

    aget-wide v48, v67, v51

    move-wide/from16 v50, v14

    sub-long v14, v54, v48

    aget-wide v48, v67, v16

    move-wide/from16 v54, v2

    sub-long v2, v29, v48

    aget-wide v10, v67, v10

    sub-long/2addr v0, v10

    aget-wide v10, v67, v17

    sub-long v10, v25, v10

    aget-wide v16, v67, v18

    move-wide/from16 v25, v10

    sub-long v10, v57, v16

    aget-wide v16, v67, v19

    move-wide/from16 v18, v2

    sub-long v2, v38, v16

    aget-wide v16, v67, v20

    move-wide/from16 v29, v10

    sub-long v10, v59, v16

    aget-wide v16, v67, v22

    move-wide/from16 v38, v10

    sub-long v10, v70, v16

    aget-wide v16, v67, v23

    move-wide/from16 v22, v2

    sub-long v2, v44, v16

    aget-wide v16, v67, v27

    aget-wide v44, v68, v47

    add-long v16, v16, v44

    move-wide/from16 v44, v2

    sub-long v2, v62, v16

    aget-wide v16, v67, v28

    aget-wide v27, v68, v34

    add-long v16, v16, v27

    sub-long v8, v8, v16

    aget-wide v16, v67, v31

    add-long v16, v16, v41

    sub-long v4, v4, v16

    move-wide/from16 v16, v8

    const/4 v8, 0x5

    invoke-static {v4, v5, v8, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v6, v4

    const/16 v8, 0x14

    invoke-static {v10, v11, v8, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v12, v8

    const/16 v10, 0x30

    invoke-static {v2, v3, v10, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/16 v10, 0x29

    move-wide/from16 v72, v8

    move-wide/from16 v8, v22

    move-wide/from16 v22, v72

    invoke-static {v8, v9, v10, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v14, v8

    move-wide/from16 v27, v2

    move-wide/from16 v2, v16

    const/16 v10, 0x2f

    move-wide/from16 v16, v8

    move-wide/from16 v8, v54

    invoke-static {v8, v9, v10, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v2, v8

    const/16 v10, 0x1c

    move-wide/from16 v31, v2

    move-wide/from16 v2, v18

    move-wide/from16 v18, v4

    move-wide/from16 v4, v29

    invoke-static {v2, v3, v10, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long v10, v4, v2

    move-wide/from16 v29, v10

    move-wide/from16 v10, v50

    const/16 v4, 0x10

    move-wide/from16 v72, v0

    move-wide/from16 v0, v38

    move-wide/from16 v38, v72

    invoke-static {v10, v11, v4, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long v10, v0, v4

    const/16 v0, 0x19

    move-wide/from16 v41, v10

    move-wide/from16 v10, v25

    move-wide/from16 v25, v8

    move-wide/from16 v8, v44

    invoke-static {v10, v11, v0, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v8, v0

    const/16 v10, 0x21

    invoke-static {v0, v1, v10, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v6, v0

    const/4 v10, 0x4

    invoke-static {v2, v3, v10, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v12, v2

    const/16 v10, 0x33

    invoke-static {v4, v5, v10, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v14, v4

    const/16 v10, 0xd

    move-wide/from16 v72, v2

    move-wide/from16 v2, v38

    move-wide/from16 v38, v4

    move-wide/from16 v4, v25

    move-wide/from16 v25, v72

    invoke-static {v4, v5, v10, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const/16 v10, 0x22

    move-wide/from16 v44, v4

    move-wide/from16 v4, v18

    invoke-static {v4, v5, v10, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v8, v4

    move-wide/from16 v18, v8

    move-wide/from16 v8, v27

    const/16 v10, 0x29

    move-wide/from16 v27, v0

    move-wide/from16 v0, v31

    invoke-static {v8, v9, v10, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v0, v8

    const/16 v10, 0x3b

    move-wide/from16 v31, v0

    move-wide/from16 v0, v22

    move-wide/from16 v22, v4

    move-wide/from16 v4, v29

    invoke-static {v0, v1, v10, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long v10, v4, v0

    const/16 v4, 0x11

    move-wide/from16 v29, v10

    move-wide/from16 v10, v16

    move-wide/from16 v16, v14

    move-wide/from16 v14, v41

    invoke-static {v10, v11, v4, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long v10, v14, v4

    const/16 v14, 0x26

    invoke-static {v4, v5, v14, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v6, v4

    const/16 v14, 0x13

    invoke-static {v8, v9, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v12, v8

    const/16 v15, 0xa

    invoke-static {v0, v1, v15, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    const/16 v15, 0x37

    move-wide/from16 v41, v8

    move-wide/from16 v8, v16

    move-wide/from16 v16, v0

    move-wide/from16 v0, v22

    invoke-static {v0, v1, v15, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v8, v0

    const/16 v15, 0x31

    move-wide/from16 v22, v0

    move-wide/from16 v0, v27

    invoke-static {v0, v1, v15, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v10, v0

    const/16 v15, 0x12

    move-wide/from16 v27, v10

    move-wide/from16 v10, v38

    move-wide/from16 v72, v4

    move-wide/from16 v4, v18

    move-wide/from16 v18, v72

    invoke-static {v10, v11, v15, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v10

    sub-long/2addr v4, v10

    const/16 v15, 0x17

    move-wide/from16 v38, v4

    move-wide/from16 v4, v25

    move-wide/from16 v25, v0

    move-wide/from16 v0, v31

    invoke-static {v4, v5, v15, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v0, v4

    const/16 v15, 0x34

    move-wide/from16 v31, v0

    move-wide/from16 v0, v44

    move-wide/from16 v72, v2

    move-wide/from16 v2, v29

    move-wide/from16 v29, v72

    invoke-static {v0, v1, v15, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    const/16 v15, 0x18

    invoke-static {v0, v1, v15, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v6, v0

    const/16 v15, 0xd

    invoke-static {v10, v11, v15, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v10

    sub-long/2addr v12, v10

    const/16 v15, 0x8

    invoke-static {v4, v5, v15, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v8, v4

    const/16 v14, 0x2f

    move-wide/from16 v72, v0

    move-wide/from16 v0, v29

    move-wide/from16 v29, v4

    move-wide/from16 v4, v25

    move-wide/from16 v25, v72

    invoke-static {v4, v5, v14, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v0, v4

    move-wide/from16 v36, v0

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v15, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    const/16 v14, 0x11

    move-wide/from16 v18, v0

    move-wide/from16 v0, v16

    move-wide v15, v2

    move-wide/from16 v2, v27

    invoke-static {v0, v1, v14, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    const/16 v14, 0x16

    move-wide/from16 v27, v0

    move-wide/from16 v0, v41

    move-wide/from16 v72, v2

    move-wide/from16 v2, v38

    move-wide/from16 v38, v72

    invoke-static {v0, v1, v14, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    const/16 v14, 0x25

    move-wide/from16 v72, v2

    move-wide/from16 v2, v31

    move-wide/from16 v31, v72

    move-wide/from16 v74, v0

    move-wide/from16 v0, v22

    move-wide/from16 v22, v74

    invoke-static {v0, v1, v14, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v44

    sub-long v41, v2, v44

    add-int/lit8 v0, v69, -0x2

    move-wide/from16 v34, v27

    move-object/from16 v2, v53

    move-object/from16 v3, v56

    move-object/from16 v1, v67

    const/4 v14, 0x4

    move-wide/from16 v27, v15

    move-wide v15, v10

    move v11, v0

    move-object/from16 v0, v68

    move-wide/from16 v72, v4

    const/16 v4, 0x9

    move-wide/from16 v74, v8

    const/4 v8, 0x1

    move-wide/from16 v9, v25

    move-wide/from16 v25, v72

    move-wide/from16 v76, v31

    move-wide/from16 v31, v38

    move-wide/from16 v38, v22

    move-wide/from16 v22, v36

    move-wide/from16 v36, v76

    move-wide/from16 v78, v18

    move-wide/from16 v19, v29

    move-wide/from16 v17, v74

    move-wide/from16 v29, v78

    goto/16 :goto_52

    :cond_47b
    move-object/from16 v68, v0

    move-object/from16 v67, v1

    const/4 v0, 0x0

    aget-wide v1, v67, v0

    sub-long/2addr v6, v1

    const/4 v0, 0x1

    aget-wide v1, v67, v0

    sub-long/2addr v9, v1

    const/4 v0, 0x2

    aget-wide v1, v67, v0

    sub-long/2addr v12, v1

    const/4 v0, 0x3

    aget-wide v1, v67, v0

    sub-long/2addr v15, v1

    const/4 v0, 0x4

    aget-wide v1, v67, v0

    sub-long v17, v17, v1

    const/4 v0, 0x5

    aget-wide v1, v67, v0

    sub-long v19, v19, v1

    aget-wide v0, v67, v21

    sub-long v22, v22, v0

    aget-wide v0, v67, v24

    sub-long v25, v25, v0

    const/16 v0, 0x8

    aget-wide v1, v67, v0

    sub-long v27, v27, v1

    const/16 v0, 0x9

    aget-wide v1, v67, v0

    sub-long v29, v29, v1

    const/16 v0, 0xa

    aget-wide v1, v67, v0

    sub-long v31, v31, v1

    aget-wide v0, v67, v33

    sub-long v34, v34, v0

    const/16 v0, 0xc

    aget-wide v1, v67, v0

    sub-long v36, v36, v1

    const/16 v0, 0xd

    aget-wide v1, v67, v0

    const/4 v0, 0x0

    aget-wide v3, v68, v0

    add-long/2addr v1, v3

    sub-long v38, v38, v1

    aget-wide v1, v67, v40

    const/4 v3, 0x1

    aget-wide v4, v68, v3

    add-long/2addr v1, v4

    sub-long v41, v41, v1

    aget-wide v1, v67, v43

    sub-long v44, v44, v1

    aput-wide v6, p2, v0

    aput-wide v9, p2, v3

    const/4 v0, 0x2

    aput-wide v12, p2, v0

    const/4 v0, 0x3

    aput-wide v15, p2, v0

    const/4 v0, 0x4

    aput-wide v17, p2, v0

    const/4 v0, 0x5

    aput-wide v19, p2, v0

    aput-wide v22, p2, v21

    aput-wide v25, p2, v24

    const/16 v0, 0x8

    aput-wide v27, p2, v0

    const/16 v0, 0x9

    aput-wide v29, p2, v0

    const/16 v0, 0xa

    aput-wide v31, p2, v0

    aput-wide v34, p2, v33

    const/16 v0, 0xc

    aput-wide v36, p2, v0

    const/16 v0, 0xd

    aput-wide v38, p2, v0

    aput-wide v41, p2, v40

    aput-wide v44, p2, v43

    return-void

    :cond_502
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_508
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public encryptBlock([J[J)V
    .registers 86

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->kw:[J

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->t:[J

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$300()[I

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v3

    array-length v4, v1

    const/16 v5, 0x21

    if-ne v4, v5, :cond_4d4

    array-length v4, v0

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4ce

    const/4 v4, 0x0

    aget-wide v6, p1, v4

    const/4 v8, 0x1

    aget-wide v9, p1, v8

    const/4 v11, 0x2

    aget-wide v12, p1, v11

    const/4 v14, 0x3

    aget-wide v15, p1, v14

    const/4 v14, 0x4

    aget-wide v17, p1, v14

    aget-wide v19, p1, v5

    const/16 v21, 0x6

    aget-wide v22, p1, v21

    const/16 v24, 0x7

    aget-wide v25, p1, v24

    const/16 v5, 0x8

    aget-wide v28, p1, v5

    const/16 v5, 0x9

    aget-wide v31, p1, v5

    const/16 v5, 0xa

    aget-wide v34, p1, v5

    const/16 v36, 0xb

    aget-wide v37, p1, v36

    const/16 v5, 0xc

    aget-wide v40, p1, v5

    const/16 v5, 0xd

    aget-wide v43, p1, v5

    const/16 v45, 0xe

    aget-wide v46, p1, v45

    const/16 v48, 0xf

    aget-wide v49, p1, v48

    aget-wide v51, v1, v4

    add-long v6, v6, v51

    aget-wide v51, v1, v8

    add-long v9, v9, v51

    aget-wide v51, v1, v11

    add-long v12, v12, v51

    const/16 v51, 0x3

    aget-wide v52, v1, v51

    add-long v15, v15, v52

    aget-wide v51, v1, v14

    add-long v17, v17, v51

    const/16 v27, 0x5

    aget-wide v51, v1, v27

    add-long v19, v19, v51

    aget-wide v51, v1, v21

    add-long v22, v22, v51

    aget-wide v51, v1, v24

    add-long v25, v25, v51

    const/16 v30, 0x8

    aget-wide v51, v1, v30

    add-long v28, v28, v51

    const/16 v33, 0x9

    aget-wide v51, v1, v33

    add-long v31, v31, v51

    const/16 v39, 0xa

    aget-wide v51, v1, v39

    add-long v34, v34, v51

    aget-wide v51, v1, v36

    add-long v37, v37, v51

    const/16 v42, 0xc

    aget-wide v51, v1, v42

    add-long v40, v40, v51

    aget-wide v51, v1, v5

    aget-wide v53, v0, v4

    add-long v51, v51, v53

    add-long v43, v43, v51

    aget-wide v51, v1, v45

    aget-wide v53, v0, v8

    add-long v51, v51, v53

    add-long v46, v46, v51

    aget-wide v51, v1, v48

    add-long v49, v49, v51

    move-wide v14, v15

    move-wide/from16 v55, v19

    move-wide/from16 v57, v25

    move-wide/from16 v59, v31

    move-wide/from16 v61, v37

    move-wide/from16 v63, v43

    move-wide/from16 v65, v49

    :goto_b1
    const/16 v4, 0x14

    if-ge v8, v4, :cond_48c

    aget v25, v2, v8

    aget v26, v3, v8

    add-long/2addr v6, v9

    const/16 v11, 0x18

    invoke-static {v9, v10, v11, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    add-long/2addr v12, v14

    invoke-static {v14, v15, v5, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v14

    move-wide/from16 v37, v12

    move-wide/from16 v4, v55

    add-long v11, v17, v4

    const/16 v13, 0x8

    invoke-static {v4, v5, v13, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    move-object/from16 v49, v3

    move-wide/from16 v43, v14

    move-wide/from16 v13, v57

    move-object v15, v2

    add-long v2, v22, v13

    move-object/from16 v50, v15

    const/16 v15, 0x2f

    invoke-static {v13, v14, v15, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    move-object/from16 v52, v0

    move-object/from16 v51, v1

    move/from16 v53, v8

    move-wide/from16 v54, v9

    move-wide/from16 v0, v59

    add-long v8, v28, v0

    const/16 v10, 0x8

    invoke-static {v0, v1, v10, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    move-wide/from16 v56, v4

    move-wide/from16 v17, v8

    move-wide/from16 v8, v61

    add-long v4, v34, v8

    const/16 v10, 0x11

    invoke-static {v8, v9, v10, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    move-wide/from16 v22, v4

    move-wide/from16 v58, v13

    move-wide/from16 v4, v63

    add-long v13, v40, v4

    const/16 v10, 0x16

    invoke-static {v4, v5, v10, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    move-wide/from16 v60, v11

    move-wide/from16 v28, v13

    move-wide/from16 v13, v65

    add-long v10, v46, v13

    const/16 v12, 0x25

    invoke-static {v13, v14, v12, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    add-long/2addr v6, v0

    const/16 v12, 0x26

    invoke-static {v0, v1, v12, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    move-wide/from16 v40, v0

    add-long v0, v37, v4

    const/16 v12, 0x13

    invoke-static {v4, v5, v12, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    add-long/2addr v2, v8

    const/16 v12, 0xa

    invoke-static {v8, v9, v12, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    move-wide/from16 v37, v8

    add-long v8, v60, v13

    const/16 v12, 0x37

    invoke-static {v13, v14, v12, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    add-long v14, v22, v58

    move-wide/from16 v22, v4

    const/16 v4, 0x31

    move-wide/from16 v46, v12

    move-wide/from16 v12, v58

    invoke-static {v12, v13, v4, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    add-long v12, v28, v43

    move-wide/from16 v28, v14

    const/16 v14, 0x12

    move-wide/from16 v58, v2

    move-wide/from16 v2, v43

    invoke-static {v2, v3, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    add-long v14, v10, v56

    const/16 v10, 0x17

    move-wide/from16 v43, v12

    move-wide/from16 v11, v56

    invoke-static {v11, v12, v10, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    add-long v12, v17, v54

    move-wide/from16 v17, v14

    const/16 v14, 0x34

    move-wide/from16 v56, v2

    move-wide/from16 v2, v54

    invoke-static {v2, v3, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    add-long/2addr v6, v4

    const/16 v14, 0x21

    invoke-static {v4, v5, v14, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    add-long/2addr v0, v10

    const/4 v14, 0x4

    invoke-static {v10, v11, v14, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    add-long v8, v8, v56

    const/16 v14, 0x33

    move-wide/from16 v54, v10

    move-wide/from16 v10, v56

    invoke-static {v10, v11, v14, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v14

    add-long v10, v58, v2

    move-wide/from16 v56, v4

    const/16 v4, 0xd

    invoke-static {v2, v3, v4, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    move-wide/from16 v58, v12

    move-wide/from16 v4, v54

    move-wide/from16 v54, v10

    add-long v11, v43, v46

    const/16 v10, 0x22

    move-wide/from16 v43, v14

    move-wide/from16 v13, v46

    invoke-static {v13, v14, v10, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    move-wide/from16 v46, v11

    add-long v10, v17, v22

    const/16 v12, 0x29

    move-wide/from16 v17, v4

    move-wide/from16 v4, v22

    invoke-static {v4, v5, v12, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    move-wide/from16 v22, v13

    add-long v12, v58, v37

    const/16 v15, 0x3b

    move-wide/from16 v58, v2

    move-wide/from16 v2, v37

    invoke-static {v2, v3, v15, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    add-long v14, v28, v40

    move-wide/from16 v28, v12

    const/16 v12, 0x11

    move-wide/from16 v37, v10

    move-wide/from16 v10, v40

    invoke-static {v10, v11, v12, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    add-long v6, v6, v22

    const/4 v12, 0x5

    move-wide/from16 v81, v14

    move-wide/from16 v13, v22

    move-wide/from16 v22, v81

    invoke-static {v13, v14, v12, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    add-long/2addr v0, v2

    const/16 v12, 0x14

    invoke-static {v2, v3, v12, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    move-wide/from16 v40, v13

    add-long v12, v54, v4

    const/16 v14, 0x30

    invoke-static {v4, v5, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    add-long/2addr v8, v10

    const/16 v14, 0x29

    invoke-static {v10, v11, v14, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    add-long v14, v37, v58

    move-wide/from16 v54, v2

    move-wide/from16 v37, v4

    move-wide/from16 v2, v58

    const/16 v4, 0x2f

    invoke-static {v2, v3, v4, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    add-long v4, v28, v17

    move-wide/from16 v28, v14

    const/16 v14, 0x1c

    move-wide/from16 v58, v10

    move-wide/from16 v10, v17

    invoke-static {v10, v11, v14, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    add-long v14, v22, v43

    move-wide/from16 v17, v4

    const/16 v4, 0x10

    move-wide/from16 v22, v12

    move-wide/from16 v12, v43

    invoke-static {v12, v13, v4, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    add-long v4, v46, v56

    move-wide/from16 v46, v14

    const/16 v14, 0x19

    move-wide/from16 v61, v10

    move-wide/from16 v10, v56

    invoke-static {v10, v11, v14, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    aget-wide v14, v51, v25

    add-long/2addr v6, v14

    add-int/lit8 v15, v25, 0x1

    aget-wide v56, v51, v15

    add-long v2, v2, v56

    add-int/lit8 v44, v25, 0x2

    aget-wide v56, v51, v44

    add-long v0, v0, v56

    add-int/lit8 v56, v25, 0x3

    aget-wide v63, v51, v56

    add-long v12, v12, v63

    add-int/lit8 v57, v25, 0x4

    aget-wide v63, v51, v57

    add-long v8, v8, v63

    add-int/lit8 v63, v25, 0x5

    aget-wide v64, v51, v63

    move/from16 v66, v15

    add-long v14, v61, v64

    add-int/lit8 v61, v25, 0x6

    aget-wide v64, v51, v61

    add-long v22, v22, v64

    add-int/lit8 v62, v25, 0x7

    aget-wide v64, v51, v62

    add-long v10, v10, v64

    add-int/lit8 v64, v25, 0x8

    aget-wide v67, v51, v64

    add-long v17, v17, v67

    add-int/lit8 v65, v25, 0x9

    aget-wide v67, v51, v65

    move-wide/from16 v69, v10

    add-long v10, v58, v67

    add-int/lit8 v58, v25, 0xa

    aget-wide v67, v51, v58

    add-long v46, v46, v67

    add-int/lit8 v59, v25, 0xb

    aget-wide v67, v51, v59

    move-wide/from16 v71, v10

    add-long v10, v54, v67

    add-int/lit8 v54, v25, 0xc

    aget-wide v67, v51, v54

    add-long v4, v4, v67

    add-int/lit8 v55, v25, 0xd

    aget-wide v67, v51, v55

    aget-wide v73, v52, v26

    add-long v67, v67, v73

    move-wide/from16 v73, v4

    add-long v4, v37, v67

    add-int/lit8 v37, v25, 0xe

    aget-wide v67, v51, v37

    add-int/lit8 v38, v26, 0x1

    aget-wide v75, v52, v38

    add-long v67, v67, v75

    add-long v28, v28, v67

    add-int/lit8 v67, v25, 0xf

    aget-wide v75, v51, v67

    move-wide/from16 v77, v4

    move-wide/from16 v79, v10

    move/from16 v4, v53

    int-to-long v10, v4

    add-long v75, v75, v10

    add-long v4, v40, v75

    add-long/2addr v6, v2

    move-wide/from16 v40, v10

    const/16 v10, 0x29

    invoke-static {v2, v3, v10, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    add-long/2addr v0, v12

    const/16 v11, 0x9

    invoke-static {v12, v13, v11, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    add-long/2addr v8, v14

    const/16 v11, 0x25

    invoke-static {v14, v15, v11, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v14

    add-long v10, v22, v69

    move-wide/from16 v22, v2

    const/16 v2, 0x1f

    move-wide/from16 v75, v14

    move-wide/from16 v14, v69

    invoke-static {v14, v15, v2, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v14

    add-long v2, v17, v71

    move-wide/from16 v17, v12

    move-wide/from16 v69, v14

    move-wide/from16 v13, v71

    const/16 v12, 0xc

    invoke-static {v13, v14, v12, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    move-wide/from16 v71, v2

    add-long v2, v46, v79

    move-wide/from16 v46, v8

    move-wide/from16 v8, v79

    const/16 v12, 0x2f

    invoke-static {v8, v9, v12, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    move-wide/from16 v79, v2

    add-long v2, v73, v77

    const/16 v12, 0x2c

    move-wide/from16 v73, v8

    move-wide/from16 v8, v77

    invoke-static {v8, v9, v12, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    move-wide/from16 v77, v2

    add-long v2, v28, v4

    const/16 v12, 0x1e

    invoke-static {v4, v5, v12, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    add-long/2addr v6, v13

    const/16 v12, 0x10

    invoke-static {v13, v14, v12, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    add-long/2addr v0, v8

    const/16 v12, 0x22

    invoke-static {v8, v9, v12, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    add-long v10, v10, v73

    const/16 v12, 0x38

    move-wide/from16 v28, v13

    move-wide/from16 v13, v73

    invoke-static {v13, v14, v12, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    add-long v14, v46, v4

    move-wide/from16 v46, v12

    const/16 v12, 0x33

    invoke-static {v4, v5, v12, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    add-long v12, v79, v69

    move-wide/from16 v73, v8

    const/4 v8, 0x4

    move-wide/from16 v81, v4

    move-wide/from16 v4, v69

    move-wide/from16 v69, v81

    invoke-static {v4, v5, v8, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    add-long v8, v77, v17

    move-wide/from16 v77, v12

    const/16 v12, 0x35

    move-wide/from16 v79, v10

    move-wide/from16 v10, v17

    invoke-static {v10, v11, v12, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    add-long v2, v2, v75

    const/16 v12, 0x2a

    move-wide/from16 v17, v8

    move-wide/from16 v8, v75

    invoke-static {v8, v9, v12, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    add-long v12, v71, v22

    move-wide/from16 v71, v2

    const/16 v2, 0x29

    move-wide/from16 v81, v10

    move-wide/from16 v10, v22

    move-wide/from16 v22, v81

    invoke-static {v10, v11, v2, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    add-long/2addr v6, v4

    const/16 v10, 0x1f

    invoke-static {v4, v5, v10, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    add-long/2addr v0, v8

    const/16 v10, 0x2c

    invoke-static {v8, v9, v10, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    add-long v14, v14, v22

    const/16 v10, 0x2f

    move-wide/from16 v81, v4

    move-wide/from16 v4, v22

    move-wide/from16 v22, v81

    invoke-static {v4, v5, v10, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    add-long v10, v79, v2

    move-wide/from16 v75, v4

    const/16 v4, 0x2e

    invoke-static {v2, v3, v4, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    add-long v4, v17, v69

    move-wide/from16 v17, v8

    const/16 v8, 0x13

    move-wide/from16 v79, v2

    move-wide/from16 v2, v69

    invoke-static {v2, v3, v8, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    add-long v8, v71, v73

    move-wide/from16 v69, v4

    const/16 v4, 0x2a

    move-wide/from16 v71, v14

    move-wide/from16 v14, v73

    invoke-static {v14, v15, v4, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    add-long v12, v12, v46

    const/16 v14, 0x2c

    move-wide/from16 v73, v8

    move-wide/from16 v8, v46

    invoke-static {v8, v9, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    add-long v14, v77, v28

    move-wide/from16 v46, v12

    const/16 v12, 0x19

    move-wide/from16 v77, v4

    move-wide/from16 v4, v28

    invoke-static {v4, v5, v12, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    add-long/2addr v6, v2

    const/16 v12, 0x9

    invoke-static {v2, v3, v12, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    add-long/2addr v0, v8

    const/16 v12, 0x30

    invoke-static {v8, v9, v12, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    add-long v10, v10, v77

    const/16 v12, 0x23

    move-wide/from16 v28, v2

    move-wide/from16 v2, v77

    invoke-static {v2, v3, v12, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    add-long v12, v71, v4

    move-wide/from16 v71, v2

    const/16 v2, 0x34

    invoke-static {v4, v5, v2, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    add-long v4, v73, v79

    move-wide/from16 v73, v8

    const/16 v8, 0x17

    move-wide/from16 v77, v2

    move-wide/from16 v2, v79

    invoke-static {v2, v3, v8, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    add-long v8, v46, v17

    move-wide/from16 v46, v4

    const/16 v4, 0x1f

    move-wide/from16 v81, v10

    move-wide/from16 v10, v17

    move-wide/from16 v17, v81

    invoke-static {v10, v11, v4, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    add-long v14, v14, v75

    move-wide/from16 v34, v8

    move-wide/from16 v8, v75

    const/16 v10, 0x25

    invoke-static {v8, v9, v10, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    add-long v10, v69, v22

    move-wide/from16 v68, v14

    const/16 v14, 0x14

    move-wide/from16 v81, v4

    move-wide/from16 v4, v22

    move-wide/from16 v22, v81

    invoke-static {v4, v5, v14, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    aget-wide v14, v51, v66

    add-long/2addr v6, v14

    aget-wide v14, v51, v44

    add-long/2addr v2, v14

    aget-wide v14, v51, v56

    add-long/2addr v0, v14

    aget-wide v14, v51, v57

    add-long/2addr v14, v8

    aget-wide v8, v51, v63

    add-long/2addr v8, v12

    aget-wide v12, v51, v61

    add-long v12, v22, v12

    aget-wide v22, v51, v62

    add-long v22, v17, v22

    aget-wide v17, v51, v64

    add-long v4, v4, v17

    aget-wide v17, v51, v65

    add-long v17, v34, v17

    aget-wide v34, v51, v58

    add-long v34, v77, v34

    aget-wide v56, v51, v59

    add-long v56, v68, v56

    aget-wide v58, v51, v54

    add-long v61, v73, v58

    aget-wide v54, v51, v55

    add-long v10, v10, v54

    aget-wide v54, v51, v37

    aget-wide v37, v52, v38

    add-long v54, v54, v37

    add-long v63, v71, v54

    aget-wide v37, v51, v67

    const/16 v31, 0x2

    add-int/lit8 v26, v26, 0x2

    aget-wide v54, v52, v26

    add-long v37, v37, v54

    add-long v46, v46, v37

    const/16 v26, 0x10

    add-int/lit8 v25, v25, 0x10

    aget-wide v25, v51, v25

    add-long v25, v25, v40

    const-wide/16 v37, 0x1

    add-long v25, v25, v37

    add-long v65, v28, v25

    add-int/lit8 v25, v53, 0x2

    move-wide/from16 v40, v10

    move-wide/from16 v28, v17

    move-wide/from16 v59, v34

    move-wide/from16 v34, v56

    const/4 v11, 0x2

    move-wide/from16 v57, v4

    move-wide/from16 v17, v8

    move-wide/from16 v55, v12

    move/from16 v8, v25

    const/16 v5, 0xd

    move-wide v12, v0

    move-wide v9, v2

    move-object/from16 v3, v49

    move-object/from16 v2, v50

    move-object/from16 v1, v51

    move-object/from16 v0, v52

    goto/16 :goto_b1

    :cond_48c
    move-wide v10, v9

    move-wide/from16 v25, v12

    move-wide/from16 v37, v14

    move-wide/from16 v43, v55

    move-wide/from16 v53, v57

    move-wide/from16 v0, v59

    move-wide/from16 v8, v61

    move-wide/from16 v4, v63

    move-wide/from16 v13, v65

    const/4 v2, 0x0

    aput-wide v6, p2, v2

    const/4 v2, 0x1

    aput-wide v10, p2, v2

    const/4 v2, 0x2

    aput-wide v25, p2, v2

    const/4 v2, 0x3

    aput-wide v37, p2, v2

    const/4 v2, 0x4

    aput-wide v17, p2, v2

    const/4 v2, 0x5

    aput-wide v43, p2, v2

    aput-wide v22, p2, v21

    aput-wide v53, p2, v24

    const/16 v2, 0x8

    aput-wide v28, p2, v2

    const/16 v2, 0x9

    aput-wide v0, p2, v2

    const/16 v0, 0xa

    aput-wide v34, p2, v0

    aput-wide v8, p2, v36

    const/16 v0, 0xc

    aput-wide v40, p2, v0

    const/16 v0, 0xd

    aput-wide v4, p2, v0

    aput-wide v46, p2, v45

    aput-wide v13, p2, v48

    return-void

    :cond_4ce
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_4d4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

###### Class org.bouncycastle.crypto.engines.ThreefishEngine.Threefish256Cipher (org.bouncycastle.crypto.engines.ThreefishEngine$Threefish256Cipher)
.class final Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;
.super Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ThreefishEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Threefish256Cipher"
.end annotation


# static fields
.field private static final ROTATION_0_0:I = 0xe

.field private static final ROTATION_0_1:I = 0x10

.field private static final ROTATION_1_0:I = 0x34

.field private static final ROTATION_1_1:I = 0x39

.field private static final ROTATION_2_0:I = 0x17

.field private static final ROTATION_2_1:I = 0x28

.field private static final ROTATION_3_0:I = 0x5

.field private static final ROTATION_3_1:I = 0x25

.field private static final ROTATION_4_0:I = 0x19

.field private static final ROTATION_4_1:I = 0x21

.field private static final ROTATION_5_0:I = 0x2e

.field private static final ROTATION_5_1:I = 0xc

.field private static final ROTATION_6_0:I = 0x3a

.field private static final ROTATION_6_1:I = 0x16

.field private static final ROTATION_7_0:I = 0x20

.field private static final ROTATION_7_1:I = 0x20


# direct methods
.method public constructor <init>([J[J)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;-><init>([J[J)V

    return-void
.end method


# virtual methods
.method public decryptBlock([J[J)V
    .registers 33

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->kw:[J

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->t:[J

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$000()[I

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v3

    array-length v4, v1

    const/16 v5, 0x9

    if-ne v4, v5, :cond_114

    array-length v4, v0

    const/4 v5, 0x5

    if-ne v4, v5, :cond_10e

    const/4 v4, 0x0

    aget-wide v6, p1, v4

    const/4 v8, 0x1

    aget-wide v9, p1, v8

    const/4 v11, 0x2

    aget-wide v12, p1, v11

    const/4 v14, 0x3

    aget-wide v15, p1, v14

    const/16 v17, 0x11

    move/from16 v14, v17

    :goto_27
    if-lt v14, v8, :cond_ee

    aget v17, v2, v14

    aget v18, v3, v14

    add-int/lit8 v19, v17, 0x1

    aget-wide v20, v1, v19

    sub-long v6, v6, v20

    add-int/lit8 v20, v17, 0x2

    aget-wide v21, v1, v20

    add-int/lit8 v23, v18, 0x1

    aget-wide v24, v0, v23

    add-long v21, v21, v24

    sub-long v9, v9, v21

    add-int/lit8 v21, v17, 0x3

    aget-wide v24, v1, v21

    add-int/lit8 v22, v18, 0x2

    aget-wide v26, v0, v22

    add-long v24, v24, v26

    sub-long v12, v12, v24

    add-int/lit8 v22, v17, 0x4

    aget-wide v24, v1, v22

    int-to-long v4, v14

    add-long v24, v24, v4

    const-wide/16 v27, 0x1

    add-long v24, v24, v27

    move-wide/from16 v28, v9

    sub-long v8, v15, v24

    const/16 v10, 0x20

    invoke-static {v8, v9, v10, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v6, v8

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-wide/from16 v2, v28

    invoke-static {v2, v3, v10, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v12, v2

    const/16 v10, 0x3a

    invoke-static {v2, v3, v10, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v6, v2

    const/16 v10, 0x16

    invoke-static {v8, v9, v10, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v12, v8

    const/16 v10, 0x2e

    invoke-static {v8, v9, v10, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const/16 v10, 0xc

    invoke-static {v2, v3, v10, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v12, v2

    const/16 v10, 0x19

    invoke-static {v2, v3, v10, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v6, v2

    const/16 v10, 0x21

    invoke-static {v8, v9, v10, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v12, v8

    aget-wide v15, v1, v17

    sub-long/2addr v6, v15

    aget-wide v15, v1, v19

    aget-wide v17, v0, v18

    add-long v15, v15, v17

    sub-long/2addr v2, v15

    aget-wide v15, v1, v20

    aget-wide v17, v0, v23

    add-long v15, v15, v17

    sub-long/2addr v12, v15

    aget-wide v15, v1, v21

    add-long/2addr v15, v4

    sub-long/2addr v8, v15

    const/4 v4, 0x5

    invoke-static {v8, v9, v4, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const/16 v5, 0x25

    invoke-static {v2, v3, v5, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v12, v2

    const/16 v5, 0x17

    invoke-static {v2, v3, v5, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v6, v2

    const/16 v5, 0x28

    invoke-static {v8, v9, v5, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v12, v8

    const/16 v5, 0x34

    invoke-static {v8, v9, v5, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const/16 v5, 0x39

    invoke-static {v2, v3, v5, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v12, v2

    const/16 v5, 0xe

    invoke-static {v2, v3, v5, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v6, v2

    const/16 v5, 0x10

    invoke-static {v8, v9, v5, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v15

    sub-long/2addr v12, v15

    add-int/lit8 v14, v14, -0x2

    move-wide v9, v2

    move v5, v4

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    const/4 v4, 0x0

    const/4 v8, 0x1

    goto/16 :goto_27

    :cond_ee
    move v2, v4

    aget-wide v3, v1, v2

    sub-long/2addr v6, v3

    const/4 v3, 0x1

    aget-wide v4, v1, v3

    aget-wide v17, v0, v2

    add-long v4, v4, v17

    sub-long/2addr v9, v4

    aget-wide v4, v1, v11

    aget-wide v17, v0, v3

    add-long v4, v4, v17

    sub-long/2addr v12, v4

    const/4 v0, 0x3

    aget-wide v4, v1, v0

    sub-long/2addr v15, v4

    aput-wide v6, p2, v2

    aput-wide v9, p2, v3

    aput-wide v12, p2, v11

    aput-wide v15, p2, v0

    return-void

    :cond_10e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public encryptBlock([J[J)V
    .registers 33

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->kw:[J

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->t:[J

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$000()[I

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v3

    array-length v4, v1

    const/16 v5, 0x9

    if-ne v4, v5, :cond_11b

    array-length v4, v0

    const/4 v5, 0x5

    if-ne v4, v5, :cond_115

    const/4 v4, 0x0

    aget-wide v6, p1, v4

    const/4 v8, 0x1

    aget-wide v9, p1, v8

    const/4 v11, 0x2

    aget-wide v12, p1, v11

    const/4 v14, 0x3

    aget-wide v15, p1, v14

    aget-wide v17, v1, v4

    add-long v6, v6, v17

    aget-wide v17, v1, v8

    aget-wide v19, v0, v4

    add-long v17, v17, v19

    add-long v9, v9, v17

    aget-wide v17, v1, v11

    aget-wide v19, v0, v8

    add-long v17, v17, v19

    add-long v12, v12, v17

    aget-wide v17, v1, v14

    add-long v15, v15, v17

    move-wide v14, v15

    :goto_3c
    const/16 v4, 0x12

    if-ge v8, v4, :cond_108

    aget v4, v2, v8

    aget v18, v3, v8

    add-long/2addr v6, v9

    const/16 v11, 0xe

    invoke-static {v9, v10, v11, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    add-long/2addr v12, v14

    const/16 v11, 0x10

    invoke-static {v14, v15, v11, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v14

    add-long/2addr v6, v14

    const/16 v11, 0x34

    invoke-static {v14, v15, v11, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v14

    add-long/2addr v12, v9

    const/16 v11, 0x39

    invoke-static {v9, v10, v11, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    add-long/2addr v6, v9

    const/16 v11, 0x17

    invoke-static {v9, v10, v11, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    add-long/2addr v12, v14

    const/16 v11, 0x28

    invoke-static {v14, v15, v11, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v14

    add-long/2addr v6, v14

    invoke-static {v14, v15, v5, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v14

    add-long/2addr v12, v9

    const/16 v11, 0x25

    invoke-static {v9, v10, v11, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    aget-wide v20, v1, v4

    add-long v6, v6, v20

    add-int/lit8 v11, v4, 0x1

    aget-wide v20, v1, v11

    aget-wide v22, v0, v18

    add-long v20, v20, v22

    add-long v9, v9, v20

    add-int/lit8 v20, v4, 0x2

    aget-wide v21, v1, v20

    add-int/lit8 v23, v18, 0x1

    aget-wide v24, v0, v23

    add-long v21, v21, v24

    add-long v12, v12, v21

    add-int/lit8 v21, v4, 0x3

    aget-wide v24, v1, v21

    move-wide/from16 v26, v6

    int-to-long v5, v8

    add-long v24, v24, v5

    add-long v14, v14, v24

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    add-long v2, v26, v9

    const/16 v7, 0x19

    invoke-static {v9, v10, v7, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    add-long/2addr v12, v14

    const/16 v7, 0x21

    invoke-static {v14, v15, v7, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v14

    add-long/2addr v2, v14

    const/16 v7, 0x2e

    invoke-static {v14, v15, v7, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v14

    add-long/2addr v12, v9

    const/16 v7, 0xc

    invoke-static {v9, v10, v7, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    add-long/2addr v2, v9

    const/16 v7, 0x3a

    invoke-static {v9, v10, v7, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    add-long/2addr v12, v14

    const/16 v7, 0x16

    invoke-static {v14, v15, v7, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v14

    add-long/2addr v2, v14

    const/16 v7, 0x20

    invoke-static {v14, v15, v7, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v14

    add-long/2addr v12, v9

    invoke-static {v9, v10, v7, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    aget-wide v26, v1, v11

    add-long v2, v2, v26

    aget-wide v26, v1, v20

    aget-wide v28, v0, v23

    add-long v26, v26, v28

    add-long v9, v9, v26

    aget-wide v20, v1, v21

    const/4 v7, 0x2

    add-int/lit8 v18, v18, 0x2

    aget-wide v26, v0, v18

    add-long v20, v20, v26

    add-long v12, v12, v20

    add-int/lit8 v4, v4, 0x4

    aget-wide v20, v1, v4

    add-long v20, v20, v5

    const-wide/16 v4, 0x1

    add-long v20, v20, v4

    add-long v14, v14, v20

    add-int/lit8 v8, v8, 0x2

    move-wide v6, v2

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    const/4 v5, 0x5

    const/4 v11, 0x2

    goto/16 :goto_3c

    :cond_108
    const/4 v2, 0x0

    aput-wide v6, p2, v2

    const/4 v0, 0x1

    aput-wide v9, p2, v0

    const/4 v0, 0x2

    aput-wide v12, p2, v0

    const/4 v0, 0x3

    aput-wide v14, p2, v0

    return-void

    :cond_115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_11b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

###### Class org.bouncycastle.crypto.engines.ThreefishEngine.Threefish512Cipher (org.bouncycastle.crypto.engines.ThreefishEngine$Threefish512Cipher)
.class final Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;
.super Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ThreefishEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Threefish512Cipher"
.end annotation


# static fields
.field private static final ROTATION_0_0:I = 0x2e

.field private static final ROTATION_0_1:I = 0x24

.field private static final ROTATION_0_2:I = 0x13

.field private static final ROTATION_0_3:I = 0x25

.field private static final ROTATION_1_0:I = 0x21

.field private static final ROTATION_1_1:I = 0x1b

.field private static final ROTATION_1_2:I = 0xe

.field private static final ROTATION_1_3:I = 0x2a

.field private static final ROTATION_2_0:I = 0x11

.field private static final ROTATION_2_1:I = 0x31

.field private static final ROTATION_2_2:I = 0x24

.field private static final ROTATION_2_3:I = 0x27

.field private static final ROTATION_3_0:I = 0x2c

.field private static final ROTATION_3_1:I = 0x9

.field private static final ROTATION_3_2:I = 0x36

.field private static final ROTATION_3_3:I = 0x38

.field private static final ROTATION_4_0:I = 0x27

.field private static final ROTATION_4_1:I = 0x1e

.field private static final ROTATION_4_2:I = 0x22

.field private static final ROTATION_4_3:I = 0x18

.field private static final ROTATION_5_0:I = 0xd

.field private static final ROTATION_5_1:I = 0x32

.field private static final ROTATION_5_2:I = 0xa

.field private static final ROTATION_5_3:I = 0x11

.field private static final ROTATION_6_0:I = 0x19

.field private static final ROTATION_6_1:I = 0x1d

.field private static final ROTATION_6_2:I = 0x27

.field private static final ROTATION_6_3:I = 0x2b

.field private static final ROTATION_7_0:I = 0x8

.field private static final ROTATION_7_1:I = 0x23

.field private static final ROTATION_7_2:I = 0x38

.field private static final ROTATION_7_3:I = 0x16


# direct methods
.method public constructor <init>([J[J)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;-><init>([J[J)V

    return-void
.end method


# virtual methods
.method public decryptBlock([J[J)V
    .registers 50

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->kw:[J

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->t:[J

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$200()[I

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v3

    array-length v4, v1

    const/16 v5, 0x11

    if-ne v4, v5, :cond_21b

    array-length v4, v0

    const/4 v6, 0x5

    if-ne v4, v6, :cond_215

    const/4 v4, 0x0

    aget-wide v7, p1, v4

    const/4 v9, 0x1

    aget-wide v10, p1, v9

    const/4 v12, 0x2

    aget-wide v13, p1, v12

    const/4 v15, 0x3

    aget-wide v16, p1, v15

    const/16 v18, 0x4

    aget-wide v19, p1, v18

    aget-wide v21, p1, v6

    const/16 v23, 0x6

    aget-wide v24, p1, v23

    const/16 v26, 0x7

    aget-wide v27, p1, v26

    move v6, v5

    :goto_32
    if-lt v6, v9, :cond_1d4

    aget v29, v2, v6

    aget v30, v3, v6

    add-int/lit8 v31, v29, 0x1

    aget-wide v32, v1, v31

    sub-long v7, v7, v32

    add-int/lit8 v32, v29, 0x2

    aget-wide v33, v1, v32

    sub-long v10, v10, v33

    add-int/lit8 v33, v29, 0x3

    aget-wide v34, v1, v33

    sub-long v13, v13, v34

    add-int/lit8 v34, v29, 0x4

    aget-wide v35, v1, v34

    sub-long v4, v16, v35

    add-int/lit8 v16, v29, 0x5

    aget-wide v35, v1, v16

    move-wide/from16 v37, v13

    sub-long v12, v19, v35

    add-int/lit8 v14, v29, 0x6

    aget-wide v19, v1, v14

    add-int/lit8 v17, v30, 0x1

    aget-wide v35, v0, v17

    add-long v19, v19, v35

    move-wide/from16 v39, v10

    sub-long v9, v21, v19

    add-int/lit8 v11, v29, 0x7

    aget-wide v19, v1, v11

    add-int/lit8 v21, v30, 0x2

    aget-wide v21, v0, v21

    add-long v19, v19, v21

    move-object/from16 v36, v2

    move-object/from16 v41, v3

    sub-long v2, v24, v19

    add-int/lit8 v19, v29, 0x8

    aget-wide v19, v1, v19

    move/from16 p1, v14

    int-to-long v14, v6

    add-long v19, v19, v14

    const-wide/16 v21, 0x1

    add-long v19, v19, v21

    move-wide/from16 v21, v14

    sub-long v14, v27, v19

    move/from16 v42, v6

    const/16 v6, 0x8

    move-object/from16 v44, v0

    move-object/from16 v43, v1

    move-wide/from16 v0, v39

    invoke-static {v0, v1, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    const/16 v6, 0x23

    invoke-static {v14, v15, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v14

    sub-long/2addr v7, v14

    const/16 v6, 0x38

    move-wide/from16 v19, v14

    move-wide/from16 v14, v37

    invoke-static {v9, v10, v6, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v14, v9

    const/16 v6, 0x16

    invoke-static {v4, v5, v6, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v12, v4

    const/16 v6, 0x19

    invoke-static {v0, v1, v6, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v12, v0

    const/16 v6, 0x1d

    invoke-static {v4, v5, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const/16 v6, 0x27

    invoke-static {v9, v10, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v7, v9

    const/16 v6, 0x2b

    move-wide/from16 v27, v4

    move-wide/from16 v4, v19

    invoke-static {v4, v5, v6, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v14, v4

    const/16 v6, 0xd

    invoke-static {v0, v1, v6, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v14, v0

    const/16 v6, 0x32

    invoke-static {v4, v5, v6, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v12, v4

    const/16 v6, 0xa

    invoke-static {v9, v10, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v2, v9

    move-wide/from16 v19, v2

    move-wide/from16 v2, v27

    const/16 v6, 0x11

    invoke-static {v2, v3, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v7, v2

    const/16 v6, 0x27

    invoke-static {v0, v1, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v7, v0

    const/16 v6, 0x1e

    invoke-static {v2, v3, v6, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v14, v2

    const/16 v6, 0x22

    invoke-static {v9, v10, v6, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v12, v9

    const/16 v6, 0x18

    move-wide/from16 v27, v9

    move-wide/from16 v9, v19

    invoke-static {v4, v5, v6, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v9, v4

    aget-wide v19, v43, v29

    sub-long v7, v7, v19

    aget-wide v19, v43, v31

    sub-long v0, v0, v19

    aget-wide v19, v43, v32

    sub-long v14, v14, v19

    aget-wide v19, v43, v33

    sub-long v2, v2, v19

    aget-wide v19, v43, v34

    sub-long v12, v12, v19

    aget-wide v19, v43, v16

    aget-wide v29, v44, v30

    add-long v19, v19, v29

    move-wide/from16 v29, v2

    sub-long v2, v27, v19

    aget-wide v19, v43, p1

    aget-wide v16, v44, v17

    add-long v19, v19, v16

    sub-long v9, v9, v19

    aget-wide v16, v43, v11

    add-long v16, v16, v21

    sub-long v4, v4, v16

    const/16 v6, 0x2c

    invoke-static {v0, v1, v6, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v9, v0

    const/16 v6, 0x9

    invoke-static {v4, v5, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v7, v4

    const/16 v6, 0x36

    invoke-static {v2, v3, v6, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v14, v2

    move-wide/from16 v16, v4

    move-wide/from16 v4, v29

    const/16 v6, 0x38

    invoke-static {v4, v5, v6, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v12, v4

    const/16 v6, 0x11

    invoke-static {v0, v1, v6, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v12, v0

    const/16 v11, 0x31

    invoke-static {v4, v5, v11, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v9, v4

    const/16 v11, 0x24

    invoke-static {v2, v3, v11, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v7, v2

    const/16 v6, 0x27

    move-wide/from16 v45, v12

    move-wide/from16 v11, v16

    move-wide/from16 v16, v45

    invoke-static {v11, v12, v6, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long/2addr v14, v11

    const/16 v6, 0x21

    invoke-static {v0, v1, v6, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v14, v0

    const/16 v6, 0x1b

    move-wide/from16 v19, v14

    move-wide/from16 v13, v16

    invoke-static {v11, v12, v6, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long/2addr v13, v11

    const/16 v6, 0xe

    invoke-static {v2, v3, v6, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v9, v2

    const/16 v6, 0x2a

    invoke-static {v4, v5, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v7, v4

    const/16 v6, 0x2e

    invoke-static {v0, v1, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v7, v0

    move-wide v15, v0

    move-wide/from16 v0, v19

    const/16 v6, 0x24

    invoke-static {v4, v5, v6, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v0, v4

    const/16 v6, 0x13

    invoke-static {v2, v3, v6, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v21

    sub-long v19, v13, v21

    const/16 v2, 0x25

    invoke-static {v11, v12, v2, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v27

    sub-long v24, v9, v27

    add-int/lit8 v6, v42, -0x2

    move-wide v13, v0

    move-wide v10, v15

    move-object/from16 v2, v36

    move-object/from16 v3, v41

    move-object/from16 v1, v43

    move-object/from16 v0, v44

    const/4 v9, 0x1

    const/4 v12, 0x2

    const/4 v15, 0x3

    move-wide/from16 v16, v4

    const/4 v4, 0x0

    const/16 v5, 0x11

    goto/16 :goto_32

    :cond_1d4
    move-object/from16 v44, v0

    move-object/from16 v43, v1

    move v0, v4

    aget-wide v1, v43, v0

    sub-long/2addr v7, v1

    const/4 v1, 0x1

    aget-wide v2, v43, v1

    sub-long/2addr v10, v2

    const/4 v1, 0x2

    aget-wide v2, v43, v1

    sub-long/2addr v13, v2

    const/4 v1, 0x3

    aget-wide v2, v43, v1

    sub-long v16, v16, v2

    aget-wide v1, v43, v18

    sub-long v19, v19, v1

    const/4 v1, 0x5

    aget-wide v2, v43, v1

    aget-wide v4, v44, v0

    add-long/2addr v2, v4

    sub-long v21, v21, v2

    aget-wide v1, v43, v23

    const/4 v3, 0x1

    aget-wide v4, v44, v3

    add-long/2addr v1, v4

    sub-long v24, v24, v1

    aget-wide v1, v43, v26

    sub-long v27, v27, v1

    aput-wide v7, p2, v0

    aput-wide v10, p2, v3

    const/4 v0, 0x2

    aput-wide v13, p2, v0

    const/4 v0, 0x3

    aput-wide v16, p2, v0

    aput-wide v19, p2, v18

    const/4 v0, 0x5

    aput-wide v21, p2, v0

    aput-wide v24, p2, v23

    aput-wide v27, p2, v26

    return-void

    :cond_215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_21b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public encryptBlock([J[J)V
    .registers 52

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->kw:[J

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->t:[J

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$200()[I

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v3

    array-length v4, v1

    const/16 v5, 0x11

    if-ne v4, v5, :cond_226

    array-length v4, v0

    const/4 v6, 0x5

    if-ne v4, v6, :cond_220

    const/4 v4, 0x0

    aget-wide v7, p1, v4

    const/4 v9, 0x1

    aget-wide v10, p1, v9

    const/4 v12, 0x2

    aget-wide v13, p1, v12

    const/4 v15, 0x3

    aget-wide v16, p1, v15

    const/16 v18, 0x4

    aget-wide v19, p1, v18

    aget-wide v21, p1, v6

    const/16 v23, 0x6

    aget-wide v24, p1, v23

    const/16 v26, 0x7

    aget-wide v27, p1, v26

    aget-wide v29, v1, v4

    add-long v7, v7, v29

    aget-wide v29, v1, v9

    add-long v10, v10, v29

    aget-wide v29, v1, v12

    add-long v13, v13, v29

    aget-wide v29, v1, v15

    add-long v16, v16, v29

    aget-wide v29, v1, v18

    add-long v19, v19, v29

    aget-wide v29, v1, v6

    aget-wide v31, v0, v4

    add-long v29, v29, v31

    add-long v21, v21, v29

    aget-wide v29, v1, v23

    aget-wide v31, v0, v9

    add-long v29, v29, v31

    add-long v24, v24, v29

    aget-wide v29, v1, v26

    add-long v27, v27, v29

    move v6, v9

    move-wide/from16 v4, v16

    move-wide/from16 v33, v21

    move-wide/from16 v35, v27

    :goto_60
    const/16 v15, 0x12

    if-ge v6, v15, :cond_205

    aget v15, v2, v6

    aget v22, v3, v6

    add-long/2addr v7, v10

    const/16 v9, 0x2e

    invoke-static {v10, v11, v9, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    add-long/2addr v13, v4

    const/16 v11, 0x24

    invoke-static {v4, v5, v11, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    move-wide/from16 v11, v33

    add-long v2, v19, v11

    move/from16 v31, v6

    const/16 v6, 0x13

    invoke-static {v11, v12, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    move-object/from16 v32, v0

    move-object v6, v1

    move-wide/from16 v33, v4

    move-wide/from16 v0, v35

    add-long v4, v24, v0

    move-object/from16 v35, v6

    const/16 v6, 0x25

    invoke-static {v0, v1, v6, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    add-long/2addr v13, v9

    const/16 v6, 0x21

    invoke-static {v9, v10, v6, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    add-long/2addr v2, v0

    const/16 v6, 0x1b

    invoke-static {v0, v1, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    add-long/2addr v4, v11

    const/16 v6, 0xe

    invoke-static {v11, v12, v6, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    add-long v7, v7, v33

    const/16 v6, 0x2a

    move-wide/from16 v19, v0

    move-wide/from16 v0, v33

    invoke-static {v0, v1, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    add-long/2addr v2, v9

    const/16 v6, 0x11

    invoke-static {v9, v10, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    add-long/2addr v4, v0

    const/16 v6, 0x31

    invoke-static {v0, v1, v6, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    add-long/2addr v7, v11

    const/16 v6, 0x24

    invoke-static {v11, v12, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    add-long v13, v13, v19

    const/16 v6, 0x27

    move-wide/from16 v24, v0

    move-wide/from16 v0, v19

    invoke-static {v0, v1, v6, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    add-long/2addr v4, v9

    const/16 v6, 0x2c

    invoke-static {v9, v10, v6, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    add-long/2addr v7, v0

    const/16 v6, 0x9

    invoke-static {v0, v1, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    add-long/2addr v13, v11

    const/16 v6, 0x36

    invoke-static {v11, v12, v6, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    add-long v2, v2, v24

    const/16 v6, 0x38

    move-wide/from16 v19, v0

    move-wide/from16 v0, v24

    invoke-static {v0, v1, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    aget-wide v24, v35, v15

    add-long v7, v7, v24

    add-int/lit8 v24, v15, 0x1

    aget-wide v33, v35, v24

    add-long v9, v9, v33

    add-int/lit8 v25, v15, 0x2

    aget-wide v33, v35, v25

    add-long v13, v13, v33

    add-int/lit8 v33, v15, 0x3

    aget-wide v36, v35, v33

    add-long v0, v0, v36

    add-int/lit8 v34, v15, 0x4

    aget-wide v36, v35, v34

    add-long v2, v2, v36

    add-int/lit8 v36, v15, 0x5

    aget-wide v37, v35, v36

    aget-wide v39, v32, v22

    add-long v37, v37, v39

    add-long v11, v11, v37

    add-int/lit8 v37, v15, 0x6

    aget-wide v38, v35, v37

    add-int/lit8 v40, v22, 0x1

    aget-wide v41, v32, v40

    add-long v38, v38, v41

    add-long v4, v4, v38

    add-int/lit8 v38, v15, 0x7

    aget-wide v41, v35, v38

    move-wide/from16 v43, v4

    move/from16 v6, v31

    int-to-long v4, v6

    add-long v41, v41, v4

    move-wide/from16 v45, v4

    add-long v4, v19, v41

    add-long/2addr v7, v9

    const/16 v6, 0x27

    invoke-static {v9, v10, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    add-long/2addr v13, v0

    const/16 v6, 0x1e

    invoke-static {v0, v1, v6, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    add-long/2addr v2, v11

    const/16 v6, 0x22

    invoke-static {v11, v12, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    move-wide/from16 v19, v0

    add-long v0, v43, v4

    const/16 v6, 0x18

    invoke-static {v4, v5, v6, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    add-long/2addr v13, v9

    const/16 v6, 0xd

    invoke-static {v9, v10, v6, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    add-long/2addr v2, v4

    const/16 v6, 0x32

    invoke-static {v4, v5, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    add-long/2addr v0, v11

    const/16 v6, 0xa

    invoke-static {v11, v12, v6, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    add-long v7, v7, v19

    const/16 v6, 0x11

    move-wide/from16 v47, v4

    move-wide/from16 v4, v19

    move-wide/from16 v19, v47

    invoke-static {v4, v5, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    add-long/2addr v2, v9

    const/16 v6, 0x19

    invoke-static {v9, v10, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    add-long/2addr v0, v4

    const/16 v6, 0x1d

    invoke-static {v4, v5, v6, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    add-long/2addr v7, v11

    const/16 v6, 0x27

    invoke-static {v11, v12, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    add-long v13, v13, v19

    const/16 v6, 0x2b

    move-wide/from16 v41, v2

    move-wide/from16 v2, v19

    invoke-static {v2, v3, v6, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    add-long/2addr v0, v9

    const/16 v6, 0x8

    invoke-static {v9, v10, v6, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    add-long/2addr v7, v2

    const/16 v6, 0x23

    invoke-static {v2, v3, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    add-long/2addr v13, v11

    const/16 v6, 0x38

    invoke-static {v11, v12, v6, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    move-wide/from16 v19, v2

    add-long v2, v41, v4

    const/16 v6, 0x16

    invoke-static {v4, v5, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    aget-wide v41, v35, v24

    add-long v7, v7, v41

    aget-wide v24, v35, v25

    add-long v9, v9, v24

    aget-wide v24, v35, v33

    add-long v13, v13, v24

    aget-wide v24, v35, v34

    add-long v4, v4, v24

    aget-wide v24, v35, v36

    add-long v2, v2, v24

    aget-wide v24, v35, v37

    aget-wide v33, v32, v40

    add-long v24, v24, v33

    add-long v33, v11, v24

    aget-wide v11, v35, v38

    const/4 v6, 0x2

    add-int/lit8 v22, v22, 0x2

    aget-wide v24, v32, v22

    add-long v11, v11, v24

    add-long v24, v0, v11

    const/16 v0, 0x8

    add-int/2addr v15, v0

    aget-wide v0, v35, v15

    add-long v0, v0, v45

    const-wide/16 v11, 0x1

    add-long/2addr v0, v11

    add-long v0, v19, v0

    add-int/lit8 v6, v31, 0x2

    move-wide/from16 v19, v2

    move-wide v10, v9

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    const/4 v9, 0x1

    const/4 v12, 0x2

    move-wide/from16 v47, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    move-wide/from16 v35, v47

    goto/16 :goto_60

    :cond_205
    move-wide v9, v10

    move-wide/from16 v11, v33

    move-wide/from16 v0, v35

    const/4 v2, 0x0

    aput-wide v7, p2, v2

    const/4 v2, 0x1

    aput-wide v9, p2, v2

    const/4 v2, 0x2

    aput-wide v13, p2, v2

    const/4 v2, 0x3

    aput-wide v4, p2, v2

    aput-wide v19, p2, v18

    const/4 v2, 0x5

    aput-wide v11, p2, v2

    aput-wide v24, p2, v23

    aput-wide v0, p2, v26

    return-void

    :cond_220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

###### Class org.bouncycastle.crypto.engines.ThreefishEngine.ThreefishCipher (org.bouncycastle.crypto.engines.ThreefishEngine$ThreefishCipher)
.class abstract Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ThreefishEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ThreefishCipher"
.end annotation


# instance fields
.field protected final kw:[J

.field protected final t:[J


# direct methods
.method public constructor <init>([J[J)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->kw:[J

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->t:[J

    return-void
.end method


# virtual methods
.method public abstract decryptBlock([J[J)V
.end method

.method public abstract encryptBlock([J[J)V
.end method
