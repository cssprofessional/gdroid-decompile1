###### Class io.ktor.network.selector.SelectorManagerKt (io.ktor.network.selector.SelectorManagerKt)
.class public final Lio/ktor/network/selector/SelectorManagerKt;
.super Ljava/lang/Object;
.source "SelectorManager.kt"


# direct methods
.method public static final SelectorManager(Lkotlin/coroutines/CoroutineContext;)Lio/ktor/network/selector/SelectorManager;
    .registers 2

    const-string v0, "dispatcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lio/ktor/network/selector/ActorSelectorManager;

    invoke-direct {v0, p0}, Lio/ktor/network/selector/ActorSelectorManager;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    return-object v0
.end method
