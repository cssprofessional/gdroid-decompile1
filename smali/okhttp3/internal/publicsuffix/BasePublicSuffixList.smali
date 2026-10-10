###### Class okhttp3.internal.publicsuffix.BasePublicSuffixList (okhttp3.internal.publicsuffix.BasePublicSuffixList)
.class public abstract Lokhttp3/internal/publicsuffix/BasePublicSuffixList;
.super Ljava/lang/Object;
.source "BasePublicSuffixList.kt"

# interfaces
.implements Lokhttp3/internal/publicsuffix/PublicSuffixList;


# instance fields
.field public bytes:Lokio/ByteString;

.field public exceptionBytes:Lokio/ByteString;

.field public final listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

.field public readFailure:Ljava/io/IOException;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public ensureLoaded()V
    .registers 4

    .line 68
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 69
    invoke-virtual {p0}, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->readTheListUninterruptibly()V

    goto :goto_23

    .line 72
    :cond_16
    :try_start_16
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1b} :catch_1c

    goto :goto_23

    .line 74
    :catch_1c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 78
    :goto_23
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->bytes:Lokio/ByteString;

    if-eqz v0, :cond_28

    return-void

    .line 80
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->getPath()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " resource."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 81
    iget-object p0, p0, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->readFailure:Ljava/io/IOException;

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 80
    throw v0
.end method

.method public getBytes()Lokio/ByteString;
    .registers 1

    .line 37
    iget-object p0, p0, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->bytes:Lokio/ByteString;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "bytes"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getExceptionBytes()Lokio/ByteString;
    .registers 1

    .line 38
    iget-object p0, p0, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->exceptionBytes:Lokio/ByteString;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "exceptionBytes"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getPath()Ljava/lang/Object;
.end method

.method public abstract listSource()Lokio/Source;
.end method

.method public final readTheList()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->listSource()Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_34

    .line 49
    :try_start_8
    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v1

    int-to-long v1, v1

    .line 50
    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v1

    .line 52
    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v2

    int-to-long v2, v2

    .line 53
    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v2

    .line 54
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_39

    const/4 v3, 0x0

    .line 48
    :try_start_1d
    invoke-static {v0, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 56
    monitor-enter p0
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_34

    .line 57
    :try_start_21
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->setBytes(Lokio/ByteString;)V

    .line 58
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->setExceptionBytes(Lokio/ByteString;)V
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_36

    .line 56
    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_34

    .line 61
    iget-object p0, p0, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_34
    move-exception v0

    goto :goto_40

    :catchall_36
    move-exception v0

    .line 56
    :try_start_37
    monitor-exit p0

    throw v0
    :try_end_39
    .catchall {:try_start_37 .. :try_end_39} :catchall_34

    :catchall_39
    move-exception v1

    .line 48
    :try_start_3a
    throw v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception v2

    :try_start_3c
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_34

    .line 61
    :goto_40
    iget-object p0, p0, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public final readTheListUninterruptibly()V
    .registers 3

    const/4 v0, 0x0

    .line 98
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->readTheList()V
    :try_end_4
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_4} :catch_1d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_10
    .catchall {:try_start_1 .. :try_end_4} :catchall_e

    if-eqz v0, :cond_d

    .line 110
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_d
    return-void

    :catchall_e
    move-exception p0

    goto :goto_22

    :catch_10
    move-exception v1

    .line 104
    :try_start_11
    iput-object v1, p0, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->readFailure:Ljava/io/IOException;
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_e

    if-eqz v0, :cond_1c

    .line 110
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_1c
    return-void

    .line 101
    :catch_1d
    :try_start_1d
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_e

    const/4 v0, 0x1

    goto :goto_1

    :goto_22
    if-eqz v0, :cond_2b

    .line 110
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2b
    throw p0
.end method

.method public setBytes(Lokio/ByteString;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->bytes:Lokio/ByteString;

    return-void
.end method

.method public setExceptionBytes(Lokio/ByteString;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->exceptionBytes:Lokio/ByteString;

    return-void
.end method
