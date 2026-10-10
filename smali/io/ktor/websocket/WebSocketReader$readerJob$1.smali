###### Class io.ktor.websocket.WebSocketReader$readerJob$1 (io.ktor.websocket.WebSocketReader$readerJob$1)
.class public final Lio/ktor/websocket/WebSocketReader$readerJob$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WebSocketReader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/websocket/WebSocketReader;-><init>(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/CoroutineContext;JLio/ktor/utils/io/pool/ObjectPool;)V
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
    c = "io.ktor.websocket.WebSocketReader$readerJob$1"
    f = "WebSocketReader.kt"
    l = {
        0x2b
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public final synthetic $pool:Lio/ktor/utils/io/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lio/ktor/websocket/WebSocketReader;


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/pool/ObjectPool;Lio/ktor/websocket/WebSocketReader;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Lio/ktor/websocket/WebSocketReader;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/websocket/WebSocketReader$readerJob$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/websocket/WebSocketReader$readerJob$1;->$pool:Lio/ktor/utils/io/pool/ObjectPool;

    iput-object p2, p0, Lio/ktor/websocket/WebSocketReader$readerJob$1;->this$0:Lio/ktor/websocket/WebSocketReader;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4
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
    new-instance p1, Lio/ktor/websocket/WebSocketReader$readerJob$1;

    iget-object v0, p0, Lio/ktor/websocket/WebSocketReader$readerJob$1;->$pool:Lio/ktor/utils/io/pool/ObjectPool;

    iget-object p0, p0, Lio/ktor/websocket/WebSocketReader$readerJob$1;->this$0:Lio/ktor/websocket/WebSocketReader;

    invoke-direct {p1, v0, p0, p2}, Lio/ktor/websocket/WebSocketReader$readerJob$1;-><init>(Lio/ktor/utils/io/pool/ObjectPool;Lio/ktor/websocket/WebSocketReader;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/websocket/WebSocketReader$readerJob$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lio/ktor/websocket/WebSocketReader$readerJob$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/ktor/websocket/WebSocketReader$readerJob$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/ktor/websocket/WebSocketReader$readerJob$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 40
    iget v1, p0, Lio/ktor/websocket/WebSocketReader$readerJob$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_22

    if-ne v1, v2, :cond_1a

    iget-object v0, p0, Lio/ktor/websocket/WebSocketReader$readerJob$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    :try_start_10
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_10 .. :try_end_13} :catch_3b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_10 .. :try_end_13} :catch_3b
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_72
    .catch Lio/ktor/websocket/FrameTooBigException; {:try_start_10 .. :try_end_13} :catch_18
    .catch Lio/ktor/websocket/ProtocolViolationException; {:try_start_10 .. :try_end_13} :catch_16
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    goto :goto_3b

    :catchall_14
    move-exception p1

    goto :goto_5b

    :catch_16
    move-exception p1

    goto :goto_5e

    :catch_18
    move-exception p1

    goto :goto_68

    :cond_1a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    iget-object p1, p0, Lio/ktor/websocket/WebSocketReader$readerJob$1;->$pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-interface {p1}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 43
    :try_start_2d
    iget-object v1, p0, Lio/ktor/websocket/WebSocketReader$readerJob$1;->this$0:Lio/ktor/websocket/WebSocketReader;

    iput-object p1, p0, Lio/ktor/websocket/WebSocketReader$readerJob$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lio/ktor/websocket/WebSocketReader$readerJob$1;->label:I

    invoke-static {v1, p1, p0}, Lio/ktor/websocket/WebSocketReader;->access$readLoop(Lio/ktor/websocket/WebSocketReader;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_37
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_2d .. :try_end_37} :catch_3a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2d .. :try_end_37} :catch_3a
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_37} :catch_59
    .catch Lio/ktor/websocket/FrameTooBigException; {:try_start_2d .. :try_end_37} :catch_54
    .catch Lio/ktor/websocket/ProtocolViolationException; {:try_start_2d .. :try_end_37} :catch_4f
    .catchall {:try_start_2d .. :try_end_37} :catchall_4a

    if-ne v1, v0, :cond_3a

    return-object v0

    :catch_3a
    :cond_3a
    move-object v0, p1

    .line 57
    :catch_3b
    :goto_3b
    iget-object p1, p0, Lio/ktor/websocket/WebSocketReader$readerJob$1;->$pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-interface {p1, v0}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 58
    iget-object p0, p0, Lio/ktor/websocket/WebSocketReader$readerJob$1;->this$0:Lio/ktor/websocket/WebSocketReader;

    invoke-static {p0}, Lio/ktor/websocket/WebSocketReader;->access$getQueue$p(Lio/ktor/websocket/WebSocketReader;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p0

    invoke-static {p0, v3, v2, v3}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    goto :goto_8b

    :catchall_4a
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_5b

    :catch_4f
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_5e

    :catch_54
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_68

    :catch_59
    move-object v0, p1

    goto :goto_72

    .line 55
    :goto_5b
    :try_start_5b
    throw p1

    :catchall_5c
    move-exception p1

    goto :goto_7c

    .line 53
    :goto_5e
    iget-object v1, p0, Lio/ktor/websocket/WebSocketReader$readerJob$1;->this$0:Lio/ktor/websocket/WebSocketReader;

    invoke-static {v1}, Lio/ktor/websocket/WebSocketReader;->access$getQueue$p(Lio/ktor/websocket/WebSocketReader;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v1

    invoke-interface {v1, p1}, Lkotlinx/coroutines/channels/SendChannel;->close(Ljava/lang/Throwable;)Z

    goto :goto_3b

    .line 50
    :goto_68
    iget-object v1, p0, Lio/ktor/websocket/WebSocketReader$readerJob$1;->this$0:Lio/ktor/websocket/WebSocketReader;

    invoke-static {v1}, Lio/ktor/websocket/WebSocketReader;->access$getQueue$p(Lio/ktor/websocket/WebSocketReader;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v1

    invoke-interface {v1, p1}, Lkotlinx/coroutines/channels/SendChannel;->close(Ljava/lang/Throwable;)Z

    goto :goto_3b

    .line 47
    :catch_72
    :goto_72
    iget-object p1, p0, Lio/ktor/websocket/WebSocketReader$readerJob$1;->this$0:Lio/ktor/websocket/WebSocketReader;

    invoke-static {p1}, Lio/ktor/websocket/WebSocketReader;->access$getQueue$p(Lio/ktor/websocket/WebSocketReader;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    invoke-static {p1, v3, v2, v3}, Lkotlinx/coroutines/channels/ReceiveChannel$DefaultImpls;->cancel$default(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    :try_end_7b
    .catchall {:try_start_5b .. :try_end_7b} :catchall_5c

    goto :goto_3b

    .line 57
    :goto_7c
    iget-object v1, p0, Lio/ktor/websocket/WebSocketReader$readerJob$1;->$pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-interface {v1, v0}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 58
    iget-object p0, p0, Lio/ktor/websocket/WebSocketReader$readerJob$1;->this$0:Lio/ktor/websocket/WebSocketReader;

    invoke-static {p0}, Lio/ktor/websocket/WebSocketReader;->access$getQueue$p(Lio/ktor/websocket/WebSocketReader;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p0

    invoke-static {p0, v3, v2, v3}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    throw p1

    .line 60
    :goto_8b
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
