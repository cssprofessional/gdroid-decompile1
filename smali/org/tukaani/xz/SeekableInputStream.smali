###### Class org.tukaani.xz.SeekableInputStream (org.tukaani.xz.SeekableInputStream)
.class public abstract Lorg/tukaani/xz/SeekableInputStream;
.super Ljava/io/InputStream;
.source "SeekableInputStream.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract length()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract position()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract seek(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public skip(J)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    return-wide v0

    .line 40
    :cond_7
    invoke-virtual {p0}, Lorg/tukaani/xz/SeekableInputStream;->length()J

    move-result-wide v2

    .line 41
    invoke-virtual {p0}, Lorg/tukaani/xz/SeekableInputStream;->position()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-ltz v6, :cond_14

    return-wide v0

    :cond_14
    sub-long/2addr v2, v4

    cmp-long v0, v2, p1

    if-gez v0, :cond_1a

    move-wide p1, v2

    :cond_1a
    add-long/2addr v4, p1

    .line 48
    invoke-virtual {p0, v4, v5}, Lorg/tukaani/xz/SeekableInputStream;->seek(J)V

    return-wide p1
.end method
