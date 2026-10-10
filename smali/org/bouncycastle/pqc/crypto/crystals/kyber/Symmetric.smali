###### Class org.bouncycastle.pqc.crypto.crystals.kyber.Symmetric (org.bouncycastle.pqc.crypto.crystals.kyber.Symmetric)
.class abstract Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;,
        Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;
    }
.end annotation


# instance fields
.field final xofBlockBytes:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->xofBlockBytes:I

    return-void
.end method


# virtual methods
.method public abstract hash_g([B[B)V
.end method

.method public abstract hash_h([B[BI)V
.end method

.method public abstract kdf([B[B)V
.end method

.method public abstract prf([B[BB)V
.end method

.method public abstract xofAbsorb([BBB)V
.end method

.method public abstract xofSqueezeBlocks([BII)V
.end method

###### Class org.bouncycastle.pqc.crypto.crystals.kyber.Symmetric.AesSymmetric (org.bouncycastle.pqc.crypto.crystals.kyber.Symmetric$AesSymmetric)
.class Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;
.super Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AesSymmetric"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final cipher:Lorg/bouncycastle/crypto/StreamCipher;

.field private final sha256Digest:Lorg/bouncycastle/crypto/digests/SHA256Digest;

.field private final sha512Digest:Lorg/bouncycastle/crypto/digests/SHA512Digest;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 0
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;-><init>(I)V

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->sha256Digest:Lorg/bouncycastle/crypto/digests/SHA256Digest;

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->sha512Digest:Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-static {}, Lorg/bouncycastle/crypto/engines/AESEngine;->newInstance()Lorg/bouncycastle/crypto/MultiBlockCipher;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->newInstance(Lorg/bouncycastle/crypto/BlockCipher;)Lorg/bouncycastle/crypto/modes/CTRModeCipher;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->cipher:Lorg/bouncycastle/crypto/StreamCipher;

    return-void
.end method

.method private aes128([BII)V
    .registers 10

    .line 0
    new-array v1, p3, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->cipher:Lorg/bouncycastle/crypto/StreamCipher;

    const/4 v2, 0x0

    move v3, p3

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    return-void
.end method

.method private doDigest(Lorg/bouncycastle/crypto/ExtendedDigest;[B[BI)V
    .registers 6

    .line 0
    array-length p0, p3

    const/4 v0, 0x0

    invoke-interface {p1, p3, v0, p0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p1, p2, p4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-void
.end method


# virtual methods
.method public hash_g([B[B)V
    .registers 5

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->sha512Digest:Lorg/bouncycastle/crypto/digests/SHA512Digest;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->doDigest(Lorg/bouncycastle/crypto/ExtendedDigest;[B[BI)V

    return-void
.end method

.method public hash_h([B[BI)V
    .registers 5

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->sha256Digest:Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->doDigest(Lorg/bouncycastle/crypto/ExtendedDigest;[B[BI)V

    return-void
.end method

.method public kdf([B[B)V
    .registers 6

    .line 0
    const/16 v0, 0x20

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->sha256Digest:Lorg/bouncycastle/crypto/digests/SHA256Digest;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, p2, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->doDigest(Lorg/bouncycastle/crypto/ExtendedDigest;[B[BI)V

    array-length p0, p1

    invoke-static {v0, v2, p1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public prf([B[BB)V
    .registers 8

    .line 0
    const/16 v0, 0xc

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p3, v0, v1

    new-instance p3, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/16 v3, 0x20

    invoke-direct {v2, p2, v1, v3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {p3, v2, v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->cipher:Lorg/bouncycastle/crypto/StreamCipher;

    const/4 v0, 0x1

    invoke-interface {p2, v0, p3}, Lorg/bouncycastle/crypto/StreamCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    array-length p2, p1

    invoke-direct {p0, p1, v1, p2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->aes128([BII)V

    return-void
.end method

.method public xofAbsorb([BBB)V
    .registers 8

    .line 0
    const/16 v0, 0xc

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    const/4 p2, 0x1

    aput-byte p3, v0, p2

    new-instance p3, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/16 v3, 0x20

    invoke-direct {v2, p1, v1, v3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {p3, v2, v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->cipher:Lorg/bouncycastle/crypto/StreamCipher;

    invoke-interface {p0, p2, p3}, Lorg/bouncycastle/crypto/StreamCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public xofSqueezeBlocks([BII)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->aes128([BII)V

    return-void
.end method

###### Class org.bouncycastle.pqc.crypto.crystals.kyber.Symmetric.ShakeSymmetric (org.bouncycastle.pqc.crypto.crystals.kyber.Symmetric$ShakeSymmetric)
.class Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;
.super Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShakeSymmetric"
.end annotation


# instance fields
.field private final sha3Digest256:Lorg/bouncycastle/crypto/digests/SHA3Digest;

.field private final sha3Digest512:Lorg/bouncycastle/crypto/digests/SHA3Digest;

.field private final shakeDigest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

.field private final xof:Lorg/bouncycastle/crypto/digests/SHAKEDigest;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 0
    const/16 v0, 0xa8

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;-><init>(I)V

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;->xof:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;->shakeDigest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;->sha3Digest256:Lorg/bouncycastle/crypto/digests/SHA3Digest;

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;->sha3Digest512:Lorg/bouncycastle/crypto/digests/SHA3Digest;

    return-void
.end method


# virtual methods
.method public hash_g([B[B)V
    .registers 6

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;->sha3Digest512:Lorg/bouncycastle/crypto/digests/SHA3Digest;

    array-length v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;->sha3Digest512:Lorg/bouncycastle/crypto/digests/SHA3Digest;

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    return-void
.end method

.method public hash_h([B[BI)V
    .registers 7

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;->sha3Digest256:Lorg/bouncycastle/crypto/digests/SHA3Digest;

    array-length v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;->sha3Digest256:Lorg/bouncycastle/crypto/digests/SHA3Digest;

    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    return-void
.end method

.method public kdf([B[B)V
    .registers 6

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;->shakeDigest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;->shakeDigest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length p2, p1

    invoke-virtual {p0, p1, v2, p2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    return-void
.end method

.method public prf([B[BB)V
    .registers 8

    .line 0
    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [B

    array-length v2, p2

    const/4 v3, 0x0

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p2, p2

    aput-byte p3, v1, p2

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;->shakeDigest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {p2, v1, v3, v0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;->shakeDigest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length p2, p1

    invoke-virtual {p0, p1, v3, p2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    return-void
.end method

.method public xofAbsorb([BBB)V
    .registers 7

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;->xof:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->reset()V

    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    aput-byte p2, v0, v1

    array-length p2, p1

    add-int/lit8 p2, p2, 0x1

    aput-byte p3, v0, p2

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;->xof:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length p1, p1

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, v0, v2, p1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    return-void
.end method

.method public xofSqueezeBlocks([BII)V
    .registers 4

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;->xof:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doOutput([BII)I

    return-void
.end method
