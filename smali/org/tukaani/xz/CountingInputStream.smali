###### Class org.tukaani.xz.CountingInputStream (org.tukaani.xz.CountingInputStream)
.class Lorg/tukaani/xz/CountingInputStream;
.super Lorg/tukaani/xz/CloseIgnoringInputStream;
.source "CountingInputStream.java"


# instance fields
.field private size:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    .line 19
    invoke-direct {p0, p1}, Lorg/tukaani/xz/CloseIgnoringInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lorg/tukaani/xz/CountingInputStream;->size:J

    return-void
.end method


# virtual methods
.method public getSize()J
    .registers 3

    .line 41
    iget-wide v0, p0, Lorg/tukaani/xz/CountingInputStream;->size:J

    return-wide v0
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    .line 25
    iget-wide v1, p0, Lorg/tukaani/xz/CountingInputStream;->size:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_16

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 26
    iput-wide v1, p0, Lorg/tukaani/xz/CountingInputStream;->size:J

    :cond_16
    return v0
.end method

.method public read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_14

    .line 34
    iget-wide p2, p0, Lorg/tukaani/xz/CountingInputStream;->size:J

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_14

    int-to-long v0, p1

    add-long/2addr p2, v0

    .line 35
    iput-wide p2, p0, Lorg/tukaani/xz/CountingInputStream;->size:J

    :cond_14
    return p1
.end method
