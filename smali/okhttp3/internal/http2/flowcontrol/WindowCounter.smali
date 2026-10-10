###### Class okhttp3.internal.http2.flowcontrol.WindowCounter (okhttp3.internal.http2.flowcontrol.WindowCounter)
.class public final Lokhttp3/internal/http2/flowcontrol/WindowCounter;
.super Ljava/lang/Object;
.source "WindowCounter.kt"


# instance fields
.field public acknowledged:J

.field public final streamId:I

.field public total:J


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->streamId:I

    return-void
.end method

.method public static synthetic update$default(Lokhttp3/internal/http2/flowcontrol/WindowCounter;JJILjava/lang/Object;)V
    .registers 9

    and-int/lit8 p6, p5, 0x1

    const-wide/16 v0, 0x0

    if-eqz p6, :cond_7

    move-wide p1, v0

    :cond_7
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_c

    move-wide p3, v0

    .line 33
    :cond_c
    invoke-virtual {p0, p1, p2, p3, p4}, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->update(JJ)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized getUnacknowledged()J
    .registers 5

    monitor-enter p0

    .line 30
    :try_start_1
    iget-wide v0, p0, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->total:J

    iget-wide v2, p0, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->acknowledged:J
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8

    sub-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowCounter(streamId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->streamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->total:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", acknowledged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->acknowledged:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", unacknowledged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->getUnacknowledged()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized update(JJ)V
    .registers 8

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2d

    cmp-long v0, p3, v0

    if-ltz v0, :cond_25

    .line 40
    :try_start_b
    iget-wide v0, p0, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->total:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->total:J

    .line 41
    iget-wide p1, p0, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->acknowledged:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->acknowledged:J
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_23

    cmp-long p1, p1, v0

    if-gtz p1, :cond_1b

    .line 44
    monitor-exit p0

    return-void

    .line 43
    :cond_1b
    :try_start_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_23
    move-exception p1

    goto :goto_35

    .line 38
    :cond_25
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :goto_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_1b .. :try_end_36} :catchall_23

    throw p1
.end method
