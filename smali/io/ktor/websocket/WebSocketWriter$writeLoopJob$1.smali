###### Class io.ktor.websocket.WebSocketWriter$writeLoopJob$1 (io.ktor.websocket.WebSocketWriter$writeLoopJob$1)
.class public final Lio/ktor/websocket/WebSocketWriter$writeLoopJob$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WebSocketWriter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/websocket/WebSocketWriter;-><init>(Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;ZLio/ktor/utils/io/pool/ObjectPool;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebSocketWriter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebSocketWriter.kt\nio/ktor/websocket/WebSocketWriter$writeLoopJob$1\n+ 2 Pool.kt\nio/ktor/utils/io/pool/PoolKt\n*L\n1#1,179:1\n182#2,5:180\n*S KotlinDebug\n*F\n+ 1 WebSocketWriter.kt\nio/ktor/websocket/WebSocketWriter$writeLoopJob$1\n*L\n44#1:180,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.websocket.WebSocketWriter$writeLoopJob$1"
    f = "WebSocketWriter.kt"
    l = {
        0x2c
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public I$0:I

.field public I$1:I

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lio/ktor/websocket/WebSocketWriter;


# direct methods
.method public constructor <init>(Lio/ktor/websocket/WebSocketWriter;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/websocket/WebSocketWriter;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/websocket/WebSocketWriter$writeLoopJob$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/websocket/WebSocketWriter$writeLoopJob$1;->this$0:Lio/ktor/websocket/WebSocketWriter;

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
    new-instance p1, Lio/ktor/websocket/WebSocketWriter$writeLoopJob$1;

    iget-object p0, p0, Lio/ktor/websocket/WebSocketWriter$writeLoopJob$1;->this$0:Lio/ktor/websocket/WebSocketWriter;

    invoke-direct {p1, p0, p2}, Lio/ktor/websocket/WebSocketWriter$writeLoopJob$1;-><init>(Lio/ktor/websocket/WebSocketWriter;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/websocket/WebSocketWriter$writeLoopJob$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lio/ktor/websocket/WebSocketWriter$writeLoopJob$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/ktor/websocket/WebSocketWriter$writeLoopJob$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/ktor/websocket/WebSocketWriter$writeLoopJob$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 43
    iget v1, p0, Lio/ktor/websocket/WebSocketWriter$writeLoopJob$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_23

    if-ne v1, v2, :cond_1b

    iget-object v0, p0, Lio/ktor/websocket/WebSocketWriter$writeLoopJob$1;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lio/ktor/websocket/WebSocketWriter$writeLoopJob$1;->L$1:Ljava/lang/Object;

    iget-object p0, p0, Lio/ktor/websocket/WebSocketWriter$writeLoopJob$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lio/ktor/utils/io/pool/ObjectPool;

    :try_start_15
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_4f

    :catchall_19
    move-exception p1

    goto :goto_5c

    :cond_1b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    iget-object p1, p0, Lio/ktor/websocket/WebSocketWriter$writeLoopJob$1;->this$0:Lio/ktor/websocket/WebSocketWriter;

    invoke-virtual {p1}, Lio/ktor/websocket/WebSocketWriter;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object p1

    iget-object v1, p0, Lio/ktor/websocket/WebSocketWriter$writeLoopJob$1;->this$0:Lio/ktor/websocket/WebSocketWriter;

    .line 182
    invoke-interface {p1}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v3

    .line 184
    :try_start_32
    move-object v4, v3

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 44
    iput-object p1, p0, Lio/ktor/websocket/WebSocketWriter$writeLoopJob$1;->L$0:Ljava/lang/Object;

    iput-object v3, p0, Lio/ktor/websocket/WebSocketWriter$writeLoopJob$1;->L$1:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lio/ktor/websocket/WebSocketWriter$writeLoopJob$1;->L$2:Ljava/lang/Object;

    const/4 v5, 0x0

    iput v5, p0, Lio/ktor/websocket/WebSocketWriter$writeLoopJob$1;->I$0:I

    iput v5, p0, Lio/ktor/websocket/WebSocketWriter$writeLoopJob$1;->I$1:I

    iput v2, p0, Lio/ktor/websocket/WebSocketWriter$writeLoopJob$1;->label:I

    invoke-static {v1, v4, p0}, Lio/ktor/websocket/WebSocketWriter;->access$writeLoop(Lio/ktor/websocket/WebSocketWriter;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4a
    .catchall {:try_start_32 .. :try_end_4a} :catchall_57

    if-ne p0, v0, :cond_4d

    return-object v0

    :cond_4d
    move-object p0, p1

    move-object v0, v3

    :goto_4f
    :try_start_4f
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_51
    .catchall {:try_start_4f .. :try_end_51} :catchall_19

    .line 186
    invoke-interface {p0, v0}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 45
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_57
    move-exception p0

    move-object v0, v3

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    .line 186
    :goto_5c
    invoke-interface {p0, v0}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    throw p1
.end method
