###### Class org.bouncycastle.pqc.crypto.lms.SeedDerive (org.bouncycastle.pqc.crypto.lms.SeedDerive)
.class Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;
.super Ljava/lang/Object;


# instance fields
.field private final I:[B

.field private final digest:Lorg/bouncycastle/crypto/Digest;

.field private j:I

.field private final masterSeed:[B

.field private q:I


# direct methods
.method public constructor <init>([B[BLorg/bouncycastle/crypto/Digest;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->I:[B

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->masterSeed:[B

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->digest:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method public deriveSeed([BZ)V
    .registers 4

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->deriveSeed([BZI)V

    return-void
.end method

.method public deriveSeed([BZI)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->deriveSeed([BI)[B

    if-eqz p2, :cond_b

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->j:I

    :cond_b
    return-void
.end method

.method public deriveSeed([BI)[B
    .registers 7

    .line 0
    array-length v0, p1

    sub-int/2addr v0, p2

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    if-lt v0, v1, :cond_5f

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->I:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->digest:Lorg/bouncycastle/crypto/Digest;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->q:I

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->digest:Lorg/bouncycastle/crypto/Digest;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->q:I

    ushr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->digest:Lorg/bouncycastle/crypto/Digest;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->q:I

    ushr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->digest:Lorg/bouncycastle/crypto/Digest;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->q:I

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->digest:Lorg/bouncycastle/crypto/Digest;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->j:I

    ushr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->digest:Lorg/bouncycastle/crypto/Digest;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->j:I

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->masterSeed:[B

    array-length v2, v1

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p0, p1, p2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object p1

    :cond_5f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "target length is less than digest size."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getI()[B
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->I:[B

    return-object p0
.end method

.method public getJ()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->j:I

    return p0
.end method

.method public getMasterSeed()[B
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->masterSeed:[B

    return-object p0
.end method

.method public getQ()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->q:I

    return p0
.end method

.method public setJ(I)V
    .registers 2

    .line 0
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->j:I

    return-void
.end method

.method public setQ(I)V
    .registers 2

    .line 0
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->q:I

    return-void
.end method
