###### Class org.bouncycastle.pqc.crypto.ntru.NTRUKEMExtractor (org.bouncycastle.pqc.crypto.ntru.NTRUKEMExtractor)
.class public Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# instance fields
.field private final ntruPrivateKey:Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;

.field private final params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->ntruPrivateKey:Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;

    return-void
.end method

.method private cmov([B[BB)V
    .registers 6

    .line 0
    not-int p0, p3

    add-int/lit8 p0, p0, 0x1

    int-to-byte p0, p0

    const/4 p3, 0x0

    :goto_5
    array-length v0, p1

    if-ge p3, v0, :cond_15

    aget-byte v0, p1, p3

    aget-byte v1, p2, p3

    xor-int/2addr v1, v0

    and-int/2addr v1, p0

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    :cond_15
    return-void
.end method


# virtual methods
.method public extractSecret([B)[B
    .registers 13

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;->parameterSet:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->ntruPrivateKey:Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;->privateKey:[B

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->prfKeyBytes()I

    move-result v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->ntruCiphertextBytes()I

    move-result v3

    add-int/2addr v2, v3

    new-array v3, v2, [B

    new-instance v4, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;

    invoke-direct {v4, v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;)V

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->ntruPrivateKey:Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;->privateKey:[B

    invoke-virtual {v4, p1, v5}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->decrypt([B[B)Lorg/bouncycastle/pqc/crypto/ntru/OWCPADecryptResult;

    move-result-object v4

    iget-object v5, v4, Lorg/bouncycastle/pqc/crypto/ntru/OWCPADecryptResult;->rm:[B

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/ntru/OWCPADecryptResult;->fail:I

    new-instance v6, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v7, 0x100

    invoke-direct {v6, v7}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->getDigestSize()I

    move-result v7

    new-array v7, v7, [B

    array-length v8, v5

    const/4 v9, 0x0

    invoke-virtual {v6, v5, v9, v8}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    invoke-virtual {v6, v7, v9}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    move v8, v9

    :goto_3a
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->prfKeyBytes()I

    move-result v10

    if-ge v8, v10, :cond_4c

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->owcpaSecretKeyBytes()I

    move-result v10

    add-int/2addr v10, v8

    aget-byte v10, v1, v10

    aput-byte v10, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3a

    :cond_4c
    move v1, v9

    :goto_4d
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->ntruCiphertextBytes()I

    move-result v8

    if-ge v1, v8, :cond_5f

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->prfKeyBytes()I

    move-result v8

    add-int/2addr v8, v1

    aget-byte v10, p1, v1

    aput-byte v10, v3, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    :cond_5f
    invoke-virtual {v6}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->reset()V

    invoke-virtual {v6, v3, v9, v2}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    invoke-virtual {v6, v5, v9}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    int-to-byte p1, v4

    invoke-direct {p0, v7, v5, p1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->cmov([B[BB)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sharedKeyBytes()I

    move-result p0

    invoke-static {v7, v9, p0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-static {v7}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    return-object p0
.end method

.method public getEncapsulationLength()I
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;->parameterSet:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->ntruCiphertextBytes()I

    move-result p0

    return p0
.end method
