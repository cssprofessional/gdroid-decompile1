###### Class org.bouncycastle.jcajce.io.CipherInputStream (org.bouncycastle.jcajce.io.CipherInputStream)
.class public Lorg/bouncycastle/jcajce/io/CipherInputStream;
.super Ljava/io/FilterInputStream;


# instance fields
.field private buf:[B

.field private bufOff:I

.field private final cipher:Ljavax/crypto/Cipher;

.field private finalized:Z

.field private final inputBuffer:[B

.field private maxBuf:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x200

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->inputBuffer:[B

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->finalized:Z

    iput-object p2, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    return-void
.end method

.method private finaliseCipher()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/io/InvalidCipherTextIOException;
        }
    .end annotation

    .line 0
    :try_start_0
    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->finalized:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->finalized:Z

    iget-object p0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object p0
    :try_end_d
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    goto :goto_12

    :cond_10
    const/4 p0, 0x0

    return-object p0

    :goto_12
    new-instance v0, Lorg/bouncycastle/crypto/io/InvalidCipherTextIOException;

    const-string v1, "Error finalising cipher"

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/crypto/io/InvalidCipherTextIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private nextChunk()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->finalized:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->bufOff:I

    iput v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->maxBuf:I

    :cond_b
    :goto_b
    iget v2, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->maxBuf:I

    if-nez v2, :cond_3a

    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->inputBuffer:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ne v2, v1, :cond_2a

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/io/CipherInputStream;->finaliseCipher()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->buf:[B

    if-eqz v0, :cond_29

    array-length v2, v0

    if-nez v2, :cond_25

    goto :goto_29

    :cond_25
    array-length v0, v0

    iput v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->maxBuf:I

    return v0

    :cond_29
    :goto_29
    return v1

    :cond_2a
    iget-object v3, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->inputBuffer:[B

    invoke-virtual {v3, v4, v0, v2}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->buf:[B

    if-eqz v2, :cond_b

    array-length v2, v2

    iput v2, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->maxBuf:I

    goto :goto_b

    :cond_3a
    return v2
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->maxBuf:I

    iget p0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->bufOff:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_12

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->finalized:Z

    if-nez v0, :cond_c

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/io/CipherInputStream;->finaliseCipher()[B

    :cond_c
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->bufOff:I

    iput v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->maxBuf:I

    return-void

    :catchall_12
    move-exception v0

    iget-boolean v1, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->finalized:Z

    if-nez v1, :cond_1a

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/io/CipherInputStream;->finaliseCipher()[B

    :cond_1a
    throw v0
.end method

.method public mark(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public markSupported()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->bufOff:I

    iget v1, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->maxBuf:I

    if-lt v0, v1, :cond_e

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/io/CipherInputStream;->nextChunk()I

    move-result v0

    if-gez v0, :cond_e

    const/4 p0, -0x1

    return p0

    :cond_e
    iget-object v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->buf:[B

    iget v1, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->bufOff:I

    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->bufOff:I

    iget v1, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->maxBuf:I

    if-lt v0, v1, :cond_e

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/io/CipherInputStream;->nextChunk()I

    move-result v0

    if-gez v0, :cond_e

    const/4 p0, -0x1

    return p0

    :cond_e
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/io/CipherInputStream;->available()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->buf:[B

    iget v1, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->bufOff:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->bufOff:I

    return p3
.end method

.method public reset()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public skip(J)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    return-wide v0

    :cond_7
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/io/CipherInputStream;->available()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    iget p2, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->bufOff:I

    add-int/2addr p2, p1

    iput p2, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->bufOff:I

    int-to-long p0, p1

    return-wide p0
.end method
