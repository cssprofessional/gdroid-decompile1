###### Class org.tukaani.xz.rangecoder.RangeEncoderToBuffer (org.tukaani.xz.rangecoder.RangeEncoderToBuffer)
.class public final Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;
.super Lorg/tukaani/xz/rangecoder/RangeEncoder;
.source "RangeEncoderToBuffer.java"


# instance fields
.field private final buf:[B

.field private bufPos:I


# direct methods
.method public constructor <init>(ILorg/tukaani/xz/ArrayCache;)V
    .registers 4

    .line 16
    invoke-direct {p0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;-><init>()V

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p2, p1, v0}, Lorg/tukaani/xz/ArrayCache;->getByteArray(IZ)[B

    move-result-object p1

    iput-object p1, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->buf:[B

    .line 18
    invoke-virtual {p0}, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->reset()V

    return-void
.end method


# virtual methods
.method public finish()I
    .registers 1

    .line 39
    :try_start_0
    invoke-super {p0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->finish()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_6

    .line 44
    iget p0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->bufPos:I

    return p0

    .line 41
    :catch_6
    new-instance p0, Ljava/lang/Error;

    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    throw p0
.end method

.method public getPendingSize()I
    .registers 4

    .line 32
    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->bufPos:I

    iget-wide v1, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->cacheSize:J

    long-to-int p0, v1

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V
    .registers 2

    .line 22
    iget-object p0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->buf:[B

    invoke-virtual {p1, p0}, Lorg/tukaani/xz/ArrayCache;->putArray([B)V

    return-void
.end method

.method public reset()V
    .registers 2

    .line 26
    invoke-super {p0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->reset()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->bufPos:I

    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->buf:[B

    const/4 v1, 0x0

    iget p0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->bufPos:I

    invoke-virtual {p1, v0, v1, p0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public writeByte(I)V
    .registers 5

    .line 53
    iget-object v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->buf:[B

    iget v1, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->bufPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->bufPos:I

    int-to-byte p0, p1

    aput-byte p0, v0, v1

    return-void
.end method
