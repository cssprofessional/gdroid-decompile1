###### Class io.ktor.client.engine.cio.Endpoint$timeout$1 (io.ktor.client.engine.cio.Endpoint$timeout$1)
.class public final Lio/ktor/client/engine/cio/Endpoint$timeout$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Endpoint.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/cio/Endpoint;-><init>(Ljava/lang/String;ILjava/net/Proxy;ZLio/ktor/client/engine/cio/CIOEngineConfig;Lio/ktor/client/engine/cio/ConnectionFactory;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lio/ktor/client/request/UnixSocketSettings;)V
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
    c = "io.ktor.client.engine.cio.Endpoint$timeout$1"
    f = "Endpoint.kt"
    l = {
        0x33
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public J$0:J

.field public label:I

.field public final synthetic this$0:Lio/ktor/client/engine/cio/Endpoint;


# direct methods
.method public constructor <init>(Lio/ktor/client/engine/cio/Endpoint;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/engine/cio/Endpoint;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/engine/cio/Endpoint$timeout$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/cio/Endpoint$timeout$1;->this$0:Lio/ktor/client/engine/cio/Endpoint;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 3
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
    new-instance p1, Lio/ktor/client/engine/cio/Endpoint$timeout$1;

    iget-object p0, p0, Lio/ktor/client/engine/cio/Endpoint$timeout$1;->this$0:Lio/ktor/client/engine/cio/Endpoint;

    invoke-direct {p1, p0, p2}, Lio/ktor/client/engine/cio/Endpoint$timeout$1;-><init>(Lio/ktor/client/engine/cio/Endpoint;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/cio/Endpoint$timeout$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/cio/Endpoint$timeout$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/ktor/client/engine/cio/Endpoint$timeout$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/ktor/client/engine/cio/Endpoint$timeout$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 43
    iget v1, p0, Lio/ktor/client/engine/cio/Endpoint$timeout$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_18

    if-ne v1, v3, :cond_10

    :try_start_c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_31

    goto :goto_1b

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    :cond_1b
    :goto_1b
    :try_start_1b
    iget-object p1, p0, Lio/ktor/client/engine/cio/Endpoint$timeout$1;->this$0:Lio/ktor/client/engine/cio/Endpoint;

    iget-wide v4, p1, Lio/ktor/client/engine/cio/Endpoint;->lastActivity:J

    iget-object p1, p0, Lio/ktor/client/engine/cio/Endpoint$timeout$1;->this$0:Lio/ktor/client/engine/cio/Endpoint;

    invoke-static {p1}, Lio/ktor/client/engine/cio/Endpoint;->access$getMaxEndpointIdleTime$p(Lio/ktor/client/engine/cio/Endpoint;)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {}, Lio/ktor/util/date/DateJvmKt;->getTimeMillis()J

    move-result-wide v6
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_31

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-gtz p1, :cond_44

    .line 55
    :catchall_31
    iget-object p1, p0, Lio/ktor/client/engine/cio/Endpoint$timeout$1;->this$0:Lio/ktor/client/engine/cio/Endpoint;

    invoke-static {p1}, Lio/ktor/client/engine/cio/Endpoint;->access$getDeliveryPoint$p(Lio/ktor/client/engine/cio/Endpoint;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    invoke-static {p1, v2, v3, v2}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 56
    iget-object p0, p0, Lio/ktor/client/engine/cio/Endpoint$timeout$1;->this$0:Lio/ktor/client/engine/cio/Endpoint;

    invoke-static {p0}, Lio/ktor/client/engine/cio/Endpoint;->access$getOnDone$p(Lio/ktor/client/engine/cio/Endpoint;)Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_4f

    .line 51
    :cond_44
    :try_start_44
    iput-wide v4, p0, Lio/ktor/client/engine/cio/Endpoint$timeout$1;->J$0:J

    iput v3, p0, Lio/ktor/client/engine/cio/Endpoint$timeout$1;->label:I

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_31

    if-ne p1, v0, :cond_1b

    return-object v0

    .line 58
    :goto_4f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
