###### Class io.ktor.client.engine.cio.ConnectionPipeline$pipelineContext$1 (io.ktor.client.engine.cio.ConnectionPipeline$pipelineContext$1)
.class public final Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ConnectionPipeline.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/cio/ConnectionPipeline;-><init>(JILio/ktor/network/sockets/Connection;ZLkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/CoroutineContext;)V
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
    c = "io.ktor.client.engine.cio.ConnectionPipeline$pipelineContext$1"
    f = "ConnectionPipeline.kt"
    l = {
        0x2c,
        0x31,
        0x32,
        0x38,
        0x39
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public final synthetic $keepAliveTime:J

.field public final synthetic $overProxy:Z

.field public final synthetic $tasks:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Lio/ktor/client/engine/cio/RequestTask;",
            ">;"
        }
    .end annotation
.end field

.field public L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lio/ktor/client/engine/cio/ConnectionPipeline;


# direct methods
.method public constructor <init>(JLio/ktor/client/engine/cio/ConnectionPipeline;ZLkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/ktor/client/engine/cio/ConnectionPipeline;",
            "Z",
            "Lkotlinx/coroutines/channels/Channel<",
            "Lio/ktor/client/engine/cio/RequestTask;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-wide p1, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->$keepAliveTime:J

    iput-object p3, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->this$0:Lio/ktor/client/engine/cio/ConnectionPipeline;

    iput-boolean p4, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->$overProxy:Z

    iput-object p5, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->$tasks:Lkotlinx/coroutines/channels/Channel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 10
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
    new-instance p1, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;

    iget-wide v1, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->$keepAliveTime:J

    iget-object v3, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->this$0:Lio/ktor/client/engine/cio/ConnectionPipeline;

    iget-boolean v4, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->$overProxy:Z

    iget-object v5, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->$tasks:Lkotlinx/coroutines/channels/Channel;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;-><init>(JLio/ktor/client/engine/cio/ConnectionPipeline;ZLkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 41
    iget v1, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->label:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_4b

    if-eq v1, v6, :cond_47

    if-eq v1, v5, :cond_3f

    if-eq v1, v4, :cond_34

    if-eq v1, v3, :cond_2b

    if-ne v1, v2, :cond_23

    iget-object v1, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/ktor/client/engine/cio/RequestTask;

    :try_start_1c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1f
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_1c .. :try_end_1f} :catch_67
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_1c .. :try_end_1f} :catch_67
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1c .. :try_end_1f} :catch_67
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_4e

    :catchall_20
    move-exception p1

    goto/16 :goto_da

    :cond_23
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
    iget-object v1, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/ktor/client/engine/cio/RequestTask;

    :try_start_2f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_32
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_2f .. :try_end_32} :catch_67
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_2f .. :try_end_32} :catch_67
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2f .. :try_end_32} :catch_67
    .catchall {:try_start_2f .. :try_end_32} :catchall_20

    goto/16 :goto_bd

    :cond_34
    iget-object v1, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/ktor/client/engine/cio/RequestTask;

    :try_start_38
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_9c

    :catchall_3c
    move-exception p1

    goto/16 :goto_d2

    :cond_3f
    iget-object v1, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/ktor/client/engine/cio/RequestTask;

    :try_start_43
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_3c

    goto :goto_82

    :cond_47
    :try_start_47
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4a
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_47 .. :try_end_4a} :catch_67
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_47 .. :try_end_4a} :catch_67
    .catch Ljava/util/concurrent/CancellationException; {:try_start_47 .. :try_end_4a} :catch_67
    .catchall {:try_start_47 .. :try_end_4a} :catchall_20

    goto :goto_62

    :cond_4b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    :cond_4e
    :goto_4e
    :try_start_4e
    iget-wide v8, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->$keepAliveTime:J

    new-instance p1, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1$task$1;

    iget-object v1, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->$tasks:Lkotlinx/coroutines/channels/Channel;

    invoke-direct {p1, v1, v7}, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1$task$1;-><init>(Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)V

    iput-object v7, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->L$0:Ljava/lang/Object;

    iput v6, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->label:I

    invoke-static {v8, v9, p1, p0}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_62

    return-object v0

    :cond_62
    :goto_62
    move-object v1, p1

    check-cast v1, Lio/ktor/client/engine/cio/RequestTask;
    :try_end_65
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_4e .. :try_end_65} :catch_67
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_4e .. :try_end_65} :catch_67
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4e .. :try_end_65} :catch_67
    .catchall {:try_start_4e .. :try_end_65} :catchall_20

    if-nez v1, :cond_71

    .line 63
    :catch_67
    iget-object p0, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->this$0:Lio/ktor/client/engine/cio/ConnectionPipeline;

    invoke-static {p0}, Lio/ktor/client/engine/cio/ConnectionPipeline;->access$getResponseChannel$p(Lio/ktor/client/engine/cio/ConnectionPipeline;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p0

    invoke-static {p0, v7, v6, v7}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    goto :goto_e4

    .line 49
    :cond_71
    :try_start_71
    iget-object p1, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->this$0:Lio/ktor/client/engine/cio/ConnectionPipeline;

    invoke-static {p1}, Lio/ktor/client/engine/cio/ConnectionPipeline;->access$getRequestLimit$p(Lio/ktor/client/engine/cio/ConnectionPipeline;)Lkotlinx/coroutines/sync/Semaphore;

    move-result-object p1

    iput-object v1, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->L$0:Ljava/lang/Object;

    iput v5, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->label:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/sync/Semaphore;->acquire(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_82

    return-object v0

    .line 50
    :cond_82
    :goto_82
    iget-object p1, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->this$0:Lio/ktor/client/engine/cio/ConnectionPipeline;

    invoke-static {p1}, Lio/ktor/client/engine/cio/ConnectionPipeline;->access$getResponseChannel$p(Lio/ktor/client/engine/cio/ConnectionPipeline;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    new-instance v8, Lio/ktor/client/engine/cio/ConnectionResponseTask;

    invoke-static {v7, v6, v7}, Lio/ktor/util/date/DateJvmKt;->GMTDate$default(Ljava/lang/Long;ILjava/lang/Object;)Lio/ktor/util/date/GMTDate;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Lio/ktor/client/engine/cio/ConnectionResponseTask;-><init>(Lio/ktor/util/date/GMTDate;Lio/ktor/client/engine/cio/RequestTask;)V

    iput-object v1, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->label:I

    invoke-interface {p1, v8, p0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_99
    .catchall {:try_start_71 .. :try_end_99} :catchall_3c

    if-ne p1, v0, :cond_9c

    return-object v0

    .line 56
    :cond_9c
    :goto_9c
    :try_start_9c
    invoke-virtual {v1}, Lio/ktor/client/engine/cio/RequestTask;->getRequest()Lio/ktor/client/request/HttpRequestData;

    move-result-object v8

    iget-object p1, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->this$0:Lio/ktor/client/engine/cio/ConnectionPipeline;

    invoke-static {p1}, Lio/ktor/client/engine/cio/ConnectionPipeline;->access$getNetworkOutput$p(Lio/ktor/client/engine/cio/ConnectionPipeline;)Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v9

    invoke-virtual {v1}, Lio/ktor/client/engine/cio/RequestTask;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v10

    iget-boolean v11, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->$overProxy:Z

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->label:I

    const/4 v12, 0x0

    move-object v13, p0

    invoke-static/range {v8 .. v13}, Lio/ktor/client/engine/cio/UtilsKt;->writeRequest(Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_bd

    return-object v0

    .line 57
    :cond_bd
    :goto_bd
    iget-object p1, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->this$0:Lio/ktor/client/engine/cio/ConnectionPipeline;

    invoke-static {p1}, Lio/ktor/client/engine/cio/ConnectionPipeline;->access$getNetworkOutput$p(Lio/ktor/client/engine/cio/ConnectionPipeline;)Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object p1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->label:I

    invoke-interface {p1, p0}, Lio/ktor/utils/io/ByteWriteChannel;->flush(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4e

    return-object v0

    .line 52
    :goto_d2
    invoke-virtual {v1}, Lio/ktor/client/engine/cio/RequestTask;->getResponse()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 53
    throw p1
    :try_end_da
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_9c .. :try_end_da} :catch_67
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_9c .. :try_end_da} :catch_67
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9c .. :try_end_da} :catch_67
    .catchall {:try_start_9c .. :try_end_da} :catchall_20

    .line 63
    :goto_da
    iget-object p0, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;->this$0:Lio/ktor/client/engine/cio/ConnectionPipeline;

    invoke-static {p0}, Lio/ktor/client/engine/cio/ConnectionPipeline;->access$getResponseChannel$p(Lio/ktor/client/engine/cio/ConnectionPipeline;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p0

    invoke-static {p0, v7, v6, v7}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    throw p1

    .line 67
    :goto_e4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
