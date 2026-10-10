###### Class io.ktor.network.selector.SelectorManager (io.ktor.network.selector.SelectorManager)
.class public interface abstract Lio/ktor/network/selector/SelectorManager;
.super Ljava/lang/Object;
.source "SelectorManager.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract getProvider()Ljava/nio/channels/spi/SelectorProvider;
.end method

.method public abstract notifyClosed(Lio/ktor/network/selector/Selectable;)V
.end method

.method public abstract select(Lio/ktor/network/selector/Selectable;Lio/ktor/network/selector/SelectInterest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/selector/Selectable;",
            "Lio/ktor/network/selector/SelectInterest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
