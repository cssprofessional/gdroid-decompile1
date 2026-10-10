###### Class io.ktor.client.engine.cio.ConnectionPipeline (io.ktor.client.engine.cio.ConnectionPipeline)
.class public final Lio/ktor/client/engine/cio/ConnectionPipeline;
.super Ljava/lang/Object;
.source "ConnectionPipeline.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# instance fields
.field public final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public final networkInput:Lio/ktor/utils/io/ByteReadChannel;

.field public final networkOutput:Lio/ktor/utils/io/ByteWriteChannel;

.field public final pipelineContext:Lkotlinx/coroutines/Job;

.field public final requestLimit:Lkotlinx/coroutines/sync/Semaphore;

.field public final responseChannel:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Lio/ktor/client/engine/cio/ConnectionResponseTask;",
            ">;"
        }
    .end annotation
.end field

.field public final responseHandler:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(JILio/ktor/network/sockets/Connection;ZLkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/CoroutineContext;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lio/ktor/network/sockets/Connection;",
            "Z",
            "Lkotlinx/coroutines/channels/Channel<",
            "Lio/ktor/client/engine/cio/RequestTask;",
            ">;",
            "Lkotlin/coroutines/CoroutineContext;",
            ")V"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p4

    move-object/from16 v0, p7

    const-string v1, "connection"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tasks"

    move-object/from16 v5, p6

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "parentContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 34
    invoke-static {v9, v1, v9}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    iput-object v0, v7, Lio/ktor/client/engine/cio/ConnectionPipeline;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 36
    invoke-virtual/range {p4 .. p4}, Lio/ktor/network/sockets/Connection;->getInput()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v0

    iput-object v0, v7, Lio/ktor/client/engine/cio/ConnectionPipeline;->networkInput:Lio/ktor/utils/io/ByteReadChannel;

    .line 37
    invoke-virtual/range {p4 .. p4}, Lio/ktor/network/sockets/Connection;->getOutput()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v0

    iput-object v0, v7, Lio/ktor/client/engine/cio/ConnectionPipeline;->networkOutput:Lio/ktor/utils/io/ByteWriteChannel;

    const/4 v0, 0x0

    const/4 v1, 0x2

    move v2, p3

    .line 38
    invoke-static {p3, v0, v1, v9}, Lkotlinx/coroutines/sync/SemaphoreKt;->Semaphore$default(IIILjava/lang/Object;)Lkotlinx/coroutines/sync/Semaphore;

    move-result-object v0

    iput-object v0, v7, Lio/ktor/client/engine/cio/ConnectionPipeline;->requestLimit:Lkotlinx/coroutines/sync/Semaphore;

    const v0, 0x7fffffff

    const/4 v1, 0x6

    .line 39
    invoke-static {v0, v9, v9, v1, v9}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v0

    iput-object v0, v7, Lio/ktor/client/engine/cio/ConnectionPipeline;->responseChannel:Lkotlinx/coroutines/channels/Channel;

    .line 41
    sget-object v10, Lkotlinx/coroutines/CoroutineStart;->LAZY:Lkotlinx/coroutines/CoroutineStart;

    new-instance v11, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;

    const/4 v6, 0x0

    move-object v0, v11

    move-wide v1, p1

    move-object v3, p0

    move/from16 v4, p5

    invoke-direct/range {v0 .. v6}, Lio/ktor/client/engine/cio/ConnectionPipeline$pipelineContext$1;-><init>(JLio/ktor/client/engine/cio/ConnectionPipeline;ZLkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, v10

    move-object v3, v11

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, v7, Lio/ktor/client/engine/cio/ConnectionPipeline;->pipelineContext:Lkotlinx/coroutines/Job;

    .line 69
    new-instance v1, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;

    invoke-direct {v1, p0, v8, v9}, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;-><init>(Lio/ktor/client/engine/cio/ConnectionPipeline;Lio/ktor/network/sockets/Connection;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object p1, p0

    move-object p2, v4

    move-object p3, v10

    move-object/from16 p4, v1

    move/from16 p5, v2

    move-object/from16 p6, v3

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v1

    iput-object v1, v7, Lio/ktor/client/engine/cio/ConnectionPipeline;->responseHandler:Lkotlinx/coroutines/Job;

    .line 151
    invoke-interface {v0}, Lkotlinx/coroutines/Job;->start()Z

    .line 152
    invoke-interface {v1}, Lkotlinx/coroutines/Job;->start()Z

    return-void
.end method

.method public static final synthetic access$getNetworkInput$p(Lio/ktor/client/engine/cio/ConnectionPipeline;)Lio/ktor/utils/io/ByteReadChannel;
    .registers 1

    .line 26
    iget-object p0, p0, Lio/ktor/client/engine/cio/ConnectionPipeline;->networkInput:Lio/ktor/utils/io/ByteReadChannel;

    return-object p0
.end method

.method public static final synthetic access$getNetworkOutput$p(Lio/ktor/client/engine/cio/ConnectionPipeline;)Lio/ktor/utils/io/ByteWriteChannel;
    .registers 1

    .line 26
    iget-object p0, p0, Lio/ktor/client/engine/cio/ConnectionPipeline;->networkOutput:Lio/ktor/utils/io/ByteWriteChannel;

    return-object p0
.end method

.method public static final synthetic access$getRequestLimit$p(Lio/ktor/client/engine/cio/ConnectionPipeline;)Lkotlinx/coroutines/sync/Semaphore;
    .registers 1

    .line 26
    iget-object p0, p0, Lio/ktor/client/engine/cio/ConnectionPipeline;->requestLimit:Lkotlinx/coroutines/sync/Semaphore;

    return-object p0
.end method

.method public static final synthetic access$getResponseChannel$p(Lio/ktor/client/engine/cio/ConnectionPipeline;)Lkotlinx/coroutines/channels/Channel;
    .registers 1

    .line 26
    iget-object p0, p0, Lio/ktor/client/engine/cio/ConnectionPipeline;->responseChannel:Lkotlinx/coroutines/channels/Channel;

    return-object p0
.end method


# virtual methods
.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .registers 1

    .line 34
    iget-object p0, p0, Lio/ktor/client/engine/cio/ConnectionPipeline;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method public final getPipelineContext()Lkotlinx/coroutines/Job;
    .registers 1

    .line 41
    iget-object p0, p0, Lio/ktor/client/engine/cio/ConnectionPipeline;->pipelineContext:Lkotlinx/coroutines/Job;

    return-object p0
.end method
