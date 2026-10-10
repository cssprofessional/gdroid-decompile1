###### Class io.ktor.utils.io.IODispatcher_jvmKt (io.ktor.utils.io.IODispatcher_jvmKt)
.class public final Lio/ktor/utils/io/IODispatcher_jvmKt;
.super Ljava/lang/Object;
.source "IODispatcher.jvm.kt"


# direct methods
.method public static final ioDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 1

    .line 10
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method
