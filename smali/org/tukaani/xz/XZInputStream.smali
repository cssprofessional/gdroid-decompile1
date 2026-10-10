###### Class org.tukaani.xz.XZInputStream (org.tukaani.xz.XZInputStream)
.class public Lorg/tukaani/xz/XZInputStream;
.super Ljava/io/InputStream;
.source "XZInputStream.java"


# instance fields
.field private final arrayCache:Lorg/tukaani/xz/ArrayCache;

.field private endReached:Z

.field private exception:Ljava/io/IOException;

.field private in:Ljava/io/InputStream;

.field private final memoryLimit:I

.field private final tempBuf:[B

.field private final verifyCheck:Z

.field private xzIn:Lorg/tukaani/xz/SingleXZInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 95
    invoke-direct {p0, p1, v0}, Lorg/tukaani/xz/XZInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 162
    invoke-direct {p0, p1, p2, v0}, Lorg/tukaani/xz/XZInputStream;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILorg/tukaani/xz/ArrayCache;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 201
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/tukaani/xz/XZInputStream;-><init>(Ljava/io/InputStream;IZLorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDefaultCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/tukaani/xz/XZInputStream;-><init>(Ljava/io/InputStream;IZLorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZLorg/tukaani/xz/ArrayCache;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lorg/tukaani/xz/XZInputStream;->endReached:Z

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lorg/tukaani/xz/XZInputStream;->exception:Ljava/io/IOException;

    const/4 v0, 0x1

    .line 66
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/XZInputStream;->tempBuf:[B

    .line 299
    iput-object p4, p0, Lorg/tukaani/xz/XZInputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    .line 300
    iput-object p1, p0, Lorg/tukaani/xz/XZInputStream;->in:Ljava/io/InputStream;

    .line 301
    iput p2, p0, Lorg/tukaani/xz/XZInputStream;->memoryLimit:I

    .line 302
    iput-boolean p3, p0, Lorg/tukaani/xz/XZInputStream;->verifyCheck:Z

    .line 303
    new-instance v0, Lorg/tukaani/xz/SingleXZInputStream;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/tukaani/xz/SingleXZInputStream;-><init>(Ljava/io/InputStream;IZLorg/tukaani/xz/ArrayCache;)V

    iput-object v0, p0, Lorg/tukaani/xz/XZInputStream;->xzIn:Lorg/tukaani/xz/SingleXZInputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/tukaani/xz/ArrayCache;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 129
    invoke-direct {p0, p1, v0, p2}, Lorg/tukaani/xz/XZInputStream;-><init>(Ljava/io/InputStream;ILorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method private prepareNextStream()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lorg/tukaani/xz/XZInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0xc

    .line 415
    new-array v6, v1, [B

    :cond_b
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 422
    invoke-virtual {v0, v6, v1, v2}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_17

    .line 424
    iput-boolean v2, p0, Lorg/tukaani/xz/XZInputStream;->endReached:Z

    return-void

    :cond_17
    const/4 v3, 0x3

    .line 430
    invoke-virtual {v0, v6, v2, v3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 432
    aget-byte v1, v6, v1

    if-nez v1, :cond_2c

    aget-byte v1, v6, v2

    if-nez v1, :cond_2c

    const/4 v1, 0x2

    aget-byte v1, v6, v1

    if-nez v1, :cond_2c

    aget-byte v1, v6, v3

    if-eqz v1, :cond_b

    :cond_2c
    const/4 v1, 0x4

    const/16 v2, 0x8

    .line 437
    invoke-virtual {v0, v6, v1, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 440
    :try_start_32
    new-instance v0, Lorg/tukaani/xz/SingleXZInputStream;

    iget-object v3, p0, Lorg/tukaani/xz/XZInputStream;->in:Ljava/io/InputStream;

    iget v4, p0, Lorg/tukaani/xz/XZInputStream;->memoryLimit:I

    iget-boolean v5, p0, Lorg/tukaani/xz/XZInputStream;->verifyCheck:Z

    iget-object v7, p0, Lorg/tukaani/xz/XZInputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/tukaani/xz/SingleXZInputStream;-><init>(Ljava/io/InputStream;IZ[BLorg/tukaani/xz/ArrayCache;)V

    iput-object v0, p0, Lorg/tukaani/xz/XZInputStream;->xzIn:Lorg/tukaani/xz/SingleXZInputStream;
    :try_end_42
    .catch Lorg/tukaani/xz/XZFormatException; {:try_start_32 .. :try_end_42} :catch_43

    return-void

    .line 445
    :catch_43
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    const-string v0, "Garbage after a valid XZ Stream"

    invoke-direct {p0, v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lorg/tukaani/xz/XZInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_14

    .line 466
    iget-object v0, p0, Lorg/tukaani/xz/XZInputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_13

    .line 469
    iget-object p0, p0, Lorg/tukaani/xz/XZInputStream;->xzIn:Lorg/tukaani/xz/SingleXZInputStream;

    if-nez p0, :cond_e

    const/4 p0, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {p0}, Lorg/tukaani/xz/SingleXZInputStream;->available()I

    move-result p0

    :goto_12
    return p0

    .line 467
    :cond_13
    throw v0

    .line 464
    :cond_14
    new-instance p0, Lorg/tukaani/xz/XZIOException;

    const-string v0, "Stream closed"

    invoke-direct {p0, v0}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 482
    invoke-virtual {p0, v0}, Lorg/tukaani/xz/XZInputStream;->close(Z)V

    return-void
.end method

.method public close(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 508
    iget-object v0, p0, Lorg/tukaani/xz/XZInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1d

    .line 509
    iget-object v0, p0, Lorg/tukaani/xz/XZInputStream;->xzIn:Lorg/tukaani/xz/SingleXZInputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const/4 v2, 0x0

    .line 510
    invoke-virtual {v0, v2}, Lorg/tukaani/xz/SingleXZInputStream;->close(Z)V

    .line 511
    iput-object v1, p0, Lorg/tukaani/xz/XZInputStream;->xzIn:Lorg/tukaani/xz/SingleXZInputStream;

    :cond_f
    if-eqz p1, :cond_1b

    .line 516
    :try_start_11
    iget-object p1, p0, Lorg/tukaani/xz/XZInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception p1

    .line 518
    iput-object v1, p0, Lorg/tukaani/xz/XZInputStream;->in:Ljava/io/InputStream;

    .line 519
    throw p1

    .line 518
    :cond_1b
    :goto_1b
    iput-object v1, p0, Lorg/tukaani/xz/XZInputStream;->in:Ljava/io/InputStream;

    :cond_1d
    return-void
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lorg/tukaani/xz/XZInputStream;->tempBuf:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/tukaani/xz/XZInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    goto :goto_12

    :cond_c
    iget-object p0, p0, Lorg/tukaani/xz/XZInputStream;->tempBuf:[B

    aget-byte p0, p0, v2

    and-int/lit16 v1, p0, 0xff

    :goto_12
    return v1
.end method

.method public read([BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_53

    if-ltz p3, :cond_53

    add-int v0, p2, p3

    if-ltz v0, :cond_53

    .line 369
    array-length v1, p1

    if-gt v0, v1, :cond_53

    const/4 v0, 0x0

    if-nez p3, :cond_f

    return v0

    .line 375
    :cond_f
    iget-object v1, p0, Lorg/tukaani/xz/XZInputStream;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_4b

    .line 378
    iget-object v1, p0, Lorg/tukaani/xz/XZInputStream;->exception:Ljava/io/IOException;

    if-nez v1, :cond_4a

    .line 381
    iget-boolean v1, p0, Lorg/tukaani/xz/XZInputStream;->endReached:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_1d

    return v2

    :cond_1d
    :goto_1d
    if-lez p3, :cond_49

    .line 388
    :try_start_1f
    iget-object v1, p0, Lorg/tukaani/xz/XZInputStream;->xzIn:Lorg/tukaani/xz/SingleXZInputStream;

    if-nez v1, :cond_31

    .line 389
    invoke-direct {p0}, Lorg/tukaani/xz/XZInputStream;->prepareNextStream()V

    .line 390
    iget-boolean v1, p0, Lorg/tukaani/xz/XZInputStream;->endReached:Z

    if-eqz v1, :cond_31

    if-nez v0, :cond_2d

    goto :goto_2e

    :cond_2d
    move v2, v0

    :goto_2e
    return v2

    :catch_2f
    move-exception p1

    goto :goto_43

    .line 394
    :cond_31
    iget-object v1, p0, Lorg/tukaani/xz/XZInputStream;->xzIn:Lorg/tukaani/xz/SingleXZInputStream;

    invoke-virtual {v1, p1, p2, p3}, Lorg/tukaani/xz/SingleXZInputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_3d

    add-int/2addr v0, v1

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    goto :goto_1d

    :cond_3d
    if-ne v1, v2, :cond_1d

    const/4 v1, 0x0

    .line 401
    iput-object v1, p0, Lorg/tukaani/xz/XZInputStream;->xzIn:Lorg/tukaani/xz/SingleXZInputStream;
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_42} :catch_2f

    goto :goto_1d

    .line 405
    :goto_43
    iput-object p1, p0, Lorg/tukaani/xz/XZInputStream;->exception:Ljava/io/IOException;

    if-eqz v0, :cond_48

    goto :goto_49

    .line 407
    :cond_48
    throw p1

    :cond_49
    :goto_49
    return v0

    .line 379
    :cond_4a
    throw v1

    .line 376
    :cond_4b
    new-instance p0, Lorg/tukaani/xz/XZIOException;

    const-string p1, "Stream closed"

    invoke-direct {p0, p1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 370
    :cond_53
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
