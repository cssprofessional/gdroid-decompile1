###### Class kotlinx.coroutines.internal.ThreadLocalKt (kotlinx.coroutines.internal.ThreadLocalKt)
.class public final Lkotlinx/coroutines/internal/ThreadLocalKt;
.super Ljava/lang/Object;
.source "ThreadLocal.kt"


# direct methods
.method public static final commonThreadLocal(Lkotlinx/coroutines/internal/Symbol;)Ljava/lang/ThreadLocal;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/internal/Symbol;",
            ")",
            "Ljava/lang/ThreadLocal<",
            "TT;>;"
        }
    .end annotation

    .line 7
    new-instance p0, Ljava/lang/ThreadLocal;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-object p0
.end method
