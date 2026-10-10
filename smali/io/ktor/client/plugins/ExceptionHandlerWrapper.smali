###### Class io.ktor.client.plugins.ExceptionHandlerWrapper (io.ktor.client.plugins.ExceptionHandlerWrapper)
.class public final Lio/ktor/client/plugins/ExceptionHandlerWrapper;
.super Ljava/lang/Object;
.source "HttpCallValidator.kt"

# interfaces
.implements Lio/ktor/client/plugins/HandlerWrapper;


# instance fields
.field public final handler:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Throwable;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final getHandler()Lkotlin/jvm/functions/Function2;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Throwable;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object p0, p0, Lio/ktor/client/plugins/ExceptionHandlerWrapper;->handler:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method
