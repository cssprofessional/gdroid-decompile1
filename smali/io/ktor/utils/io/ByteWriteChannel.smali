###### Class io.ktor.utils.io.ByteWriteChannel (io.ktor.utils.io.ByteWriteChannel)
.class public interface abstract Lio/ktor/utils/io/ByteWriteChannel;
.super Ljava/lang/Object;
.source "ByteWriteChannel.kt"


# virtual methods
.method public abstract cancel(Ljava/lang/Throwable;)V
.end method

.method public abstract flush(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract flushAndClose(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public getAutoFlush()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract getClosedCause()Ljava/lang/Throwable;
.end method

.method public abstract getWriteBuffer()Lkotlinx/io/Sink;
.end method
