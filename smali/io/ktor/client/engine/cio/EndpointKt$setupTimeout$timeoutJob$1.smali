###### Class io.ktor.client.engine.cio.EndpointKt$setupTimeout$timeoutJob$1 (io.ktor.client.engine.cio.EndpointKt$setupTimeout$timeoutJob$1)
.class public final Lio/ktor/client/engine/cio/EndpointKt$setupTimeout$timeoutJob$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Endpoint.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/cio/EndpointKt;->setupTimeout(Lkotlin/coroutines/CoroutineContext;Lio/ktor/client/request/HttpRequestData;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.client.engine.cio.EndpointKt$setupTimeout$timeoutJob$1"
    f = "Endpoint.kt"
    l = {
        0x141
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public final synthetic $callContext:Lkotlin/coroutines/CoroutineContext;

.field public final synthetic $request:Lio/ktor/client/request/HttpRequestData;

.field public final synthetic $timeout:J

.field public label:I


# direct methods
.method public constructor <init>(JLkotlin/coroutines/CoroutineContext;Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/Continuation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lio/ktor/client/request/HttpRequestData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/engine/cio/EndpointKt$setupTimeout$timeoutJob$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-wide p1, p0, Lio/ktor/client/engine/cio/EndpointKt$setupTimeout$timeoutJob$1;->$timeout:J

    iput-object p3, p0, Lio/ktor/client/engine/cio/EndpointKt$setupTimeout$timeoutJob$1;->$callContext:Lkotlin/coroutines/CoroutineContext;

    iput-object p4, p0, Lio/ktor/client/engine/cio/EndpointKt$setupTimeout$timeoutJob$1;->$request:Lio/ktor/client/request/HttpRequestData;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance p1, Lio/ktor/client/engine/cio/EndpointKt$setupTimeout$timeoutJob$1;

    iget-wide v1, p0, Lio/ktor/client/engine/cio/EndpointKt$setupTimeout$timeoutJob$1;->$timeout:J

    iget-object v3, p0, Lio/ktor/client/engine/cio/EndpointKt$setupTimeout$timeoutJob$1;->$callContext:Lkotlin/coroutines/CoroutineContext;

    iget-object v4, p0, Lio/ktor/client/engine/cio/EndpointKt$setupTimeout$timeoutJob$1;->$request:Lio/ktor/client/request/HttpRequestData;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/ktor/client/engine/cio/EndpointKt$setupTimeout$timeoutJob$1;-><init>(JLkotlin/coroutines/CoroutineContext;Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/cio/EndpointKt$setupTimeout$timeoutJob$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/cio/EndpointKt$setupTimeout$timeoutJob$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/ktor/client/engine/cio/EndpointKt$setupTimeout$timeoutJob$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/ktor/client/engine/cio/EndpointKt$setupTimeout$timeoutJob$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 320
    iget v1, p0, Lio/ktor/client/engine/cio/EndpointKt$setupTimeout$timeoutJob$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_25

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 321
    iget-wide v3, p0, Lio/ktor/client/engine/cio/EndpointKt$setupTimeout$timeoutJob$1;->$timeout:J

    iput v2, p0, Lio/ktor/client/engine/cio/EndpointKt$setupTimeout$timeoutJob$1;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_25

    return-object v0

    .line 322
    :cond_25
    :goto_25
    iget-object p1, p0, Lio/ktor/client/engine/cio/EndpointKt$setupTimeout$timeoutJob$1;->$callContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    move-result-object p1

    new-instance v0, Lio/ktor/client/plugins/HttpRequestTimeoutException;

    iget-object p0, p0, Lio/ktor/client/engine/cio/EndpointKt$setupTimeout$timeoutJob$1;->$request:Lio/ktor/client/request/HttpRequestData;

    invoke-direct {v0, p0}, Lio/ktor/client/plugins/HttpRequestTimeoutException;-><init>(Lio/ktor/client/request/HttpRequestData;)V

    const-string p0, "Request is timed out"

    invoke-static {p1, p0, v0}, Lkotlinx/coroutines/JobKt;->cancel(Lkotlinx/coroutines/Job;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 323
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
