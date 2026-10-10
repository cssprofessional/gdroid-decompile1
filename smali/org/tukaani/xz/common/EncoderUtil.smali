###### Class org.tukaani.xz.common.EncoderUtil (org.tukaani.xz.common.EncoderUtil)
.class public Lorg/tukaani/xz/common/EncoderUtil;
.super Lorg/tukaani/xz/common/Util;
.source "EncoderUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lorg/tukaani/xz/common/Util;-><init>()V

    return-void
.end method

.method public static encodeVLI(Ljava/io/OutputStream;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x80

    cmp-long v2, p1, v0

    if-ltz v2, :cond_f

    or-long/2addr v0, p1

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 25
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    :cond_f
    long-to-int p1, p1

    int-to-byte p1, p1

    .line 29
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeCRC32(Ljava/io/OutputStream;[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update([B)V

    .line 16
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    const/4 p1, 0x0

    :goto_d
    const/4 v2, 0x4

    if-ge p1, v2, :cond_1c

    mul-int/lit8 v2, p1, 0x8

    ushr-long v2, v0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 19
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    :cond_1c
    return-void
.end method
