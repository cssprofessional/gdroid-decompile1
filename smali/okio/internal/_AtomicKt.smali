###### Class okio.internal._AtomicKt (okio.internal._AtomicKt)
.class public final Lokio/internal/_AtomicKt;
.super Ljava/lang/Object;
.source "-Atomic.kt"


# direct methods
.method public static final setBitsOrZero(Ljava/util/concurrent/atomic/AtomicInteger;I)I
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    :cond_5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    and-int v1, v0, p1

    if-eqz v1, :cond_f

    const/4 p0, 0x0

    return p0

    :cond_f
    or-int v1, v0, p1

    .line 29
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1
.end method
