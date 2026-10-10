###### Class org.tukaani.xz.CountingOutputStream (org.tukaani.xz.CountingOutputStream)
.class Lorg/tukaani/xz/CountingOutputStream;
.super Lorg/tukaani/xz/FinishableOutputStream;
.source "CountingOutputStream.java"


# instance fields
.field private final out:Ljava/io/OutputStream;

.field private size:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 4

    .line 22
    invoke-direct {p0}, Lorg/tukaani/xz/FinishableOutputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lorg/tukaani/xz/CountingOutputStream;->size:J

    .line 23
    iput-object p1, p0, Lorg/tukaani/xz/CountingOutputStream;->out:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object p0, p0, Lorg/tukaani/xz/CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget-object p0, p0, Lorg/tukaani/xz/CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public getSize()J
    .registers 3

    .line 51
    iget-wide v0, p0, Lorg/tukaani/xz/CountingOutputStream;->size:J

    return-wide v0
.end method

.method public write(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lorg/tukaani/xz/CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 29
    iget-wide v0, p0, Lorg/tukaani/xz/CountingOutputStream;->size:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_12

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 30
    iput-wide v0, p0, Lorg/tukaani/xz/CountingOutputStream;->size:J

    :cond_12
    return-void
.end method

.method public write([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lorg/tukaani/xz/CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 36
    iget-wide p1, p0, Lorg/tukaani/xz/CountingOutputStream;->size:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_11

    int-to-long v0, p3

    add-long/2addr p1, v0

    .line 37
    iput-wide p1, p0, Lorg/tukaani/xz/CountingOutputStream;->size:J

    :cond_11
    return-void
.end method
