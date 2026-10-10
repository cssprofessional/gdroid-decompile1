###### Class io.ktor.websocket.PingPongKt (io.ktor.websocket.PingPongKt)
.class public final Lio/ktor/websocket/PingPongKt;
.super Ljava/lang/Object;
.source "PingPong.kt"


# static fields
.field public static final PingerCoroutineName:Lkotlinx/coroutines/CoroutineName;

.field public static final PongerCoroutineName:Lkotlinx/coroutines/CoroutineName;


# direct methods
.method public static synthetic $r8$lambda$RcaiQEDnerQAfI2SQHQBVSfKtNo(Lkotlinx/coroutines/CompletableJob;Ljava/lang/Throwable;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/ktor/websocket/PingPongKt;->pinger$lambda$0(Lkotlinx/coroutines/CompletableJob;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Lkotlinx/coroutines/CoroutineName;

    const-string v1, "ws-ponger"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/websocket/PingPongKt;->PongerCoroutineName:Lkotlinx/coroutines/CoroutineName;

    .line 18
    new-instance v0, Lkotlinx/coroutines/CoroutineName;

    const-string v1, "ws-pinger"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/websocket/PingPongKt;->PingerCoroutineName:Lkotlinx/coroutines/CoroutineName;

    return-void
.end method

.method public static final pinger(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/channels/SendChannel;JJLkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/SendChannel;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-",
            "Lio/ktor/websocket/Frame;",
            ">;JJ",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/websocket/CloseReason;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "Lio/ktor/websocket/Frame$Pong;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    move-object v1, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outgoing"

    move-object v9, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onTimeout"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-static {v2, v0, v2}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    const v3, 0x7fffffff

    const/4 v4, 0x6

    .line 55
    invoke-static {v3, v2, v2, v4, v2}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v11

    .line 57
    sget-object v2, Lio/ktor/websocket/PingPongKt;->PingerCoroutineName:Lkotlinx/coroutines/CoroutineName;

    invoke-interface {v0, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v12

    new-instance v13, Lio/ktor/websocket/PingPongKt$pinger$1;

    const/4 v10, 0x0

    move-object v2, v13

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-object v8, v11

    invoke-direct/range {v2 .. v10}, Lio/ktor/websocket/PingPongKt$pinger$1;-><init>(JJLkotlin/jvm/functions/Function2;Lkotlinx/coroutines/channels/Channel;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object p1, p0

    move-object/from16 p2, v12

    move-object/from16 p3, v4

    move-object/from16 p4, v13

    move/from16 p5, v2

    move-object/from16 p6, v3

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 108
    invoke-interface {p0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lkotlinx/coroutines/Job;

    new-instance v2, Lio/ktor/websocket/PingPongKt$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lio/ktor/websocket/PingPongKt$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/CompletableJob;)V

    invoke-interface {v1, v2}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    return-object v11
.end method

.method public static final pinger$lambda$0(Lkotlinx/coroutines/CompletableJob;Ljava/lang/Throwable;)Lkotlin/Unit;
    .registers 3

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 109
    invoke-static {p0, p1, v0, p1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 110
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final ponger(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/channels/SendChannel;)Lkotlinx/coroutines/channels/SendChannel;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-",
            "Lio/ktor/websocket/Frame$Pong;",
            ">;)",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "Lio/ktor/websocket/Frame$Ping;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outgoing"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x6

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 27
    invoke-static {v1, v2, v2, v0, v2}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v0

    .line 29
    sget-object v4, Lio/ktor/websocket/PingPongKt;->PongerCoroutineName:Lkotlinx/coroutines/CoroutineName;

    new-instance v6, Lio/ktor/websocket/PingPongKt$ponger$1;

    invoke-direct {v6, v0, p1, v2}, Lio/ktor/websocket/PingPongKt$ponger$1;-><init>(Lkotlinx/coroutines/channels/Channel;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-object v0
.end method

###### Class io.ktor.websocket.PingPongKt.AnonymousClass1 (io.ktor.websocket.PingPongKt$pinger$1)
.class public final Lio/ktor/websocket/PingPongKt$pinger$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PingPong.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/websocket/PingPongKt;->pinger(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/channels/SendChannel;JJLkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/SendChannel;
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
    c = "io.ktor.websocket.PingPongKt$pinger$1"
    f = "PingPong.kt"
    l = {
        0x42,
        0x4b,
        0x61
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public final synthetic $channel:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Lio/ktor/websocket/Frame$Pong;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $onTimeout:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lio/ktor/websocket/CloseReason;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $outgoing:Lkotlinx/coroutines/channels/SendChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/SendChannel<",
            "Lio/ktor/websocket/Frame;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $periodMillis:J

.field public final synthetic $timeoutMillis:J

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(JJLkotlin/jvm/functions/Function2;Lkotlinx/coroutines/channels/Channel;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/websocket/CloseReason;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlinx/coroutines/channels/Channel<",
            "Lio/ktor/websocket/Frame$Pong;",
            ">;",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-",
            "Lio/ktor/websocket/Frame;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/websocket/PingPongKt$pinger$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-wide p1, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->$periodMillis:J

    iput-wide p3, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->$timeoutMillis:J

    iput-object p5, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->$onTimeout:Lkotlin/jvm/functions/Function2;

    iput-object p6, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->$channel:Lkotlinx/coroutines/channels/Channel;

    iput-object p7, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->$outgoing:Lkotlinx/coroutines/channels/SendChannel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 12
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
    new-instance p1, Lio/ktor/websocket/PingPongKt$pinger$1;

    iget-wide v1, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->$periodMillis:J

    iget-wide v3, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->$timeoutMillis:J

    iget-object v5, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->$onTimeout:Lkotlin/jvm/functions/Function2;

    iget-object v6, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->$channel:Lkotlinx/coroutines/channels/Channel;

    iget-object v7, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->$outgoing:Lkotlinx/coroutines/channels/SendChannel;

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lio/ktor/websocket/PingPongKt$pinger$1;-><init>(JJLkotlin/jvm/functions/Function2;Lkotlinx/coroutines/channels/Channel;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/websocket/PingPongKt$pinger$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lio/ktor/websocket/PingPongKt$pinger$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/ktor/websocket/PingPongKt$pinger$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/ktor/websocket/PingPongKt$pinger$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 57
    iget v1, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_51

    if-eq v1, v4, :cond_43

    if-eq v1, v3, :cond_2f

    if-ne v1, v2, :cond_27

    iget-object v0, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->L$3:Ljava/lang/Object;

    check-cast v0, Lkotlin/Unit;

    iget-object v0, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->L$1:Ljava/lang/Object;

    check-cast v0, [B

    iget-object p0, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/random/Random;

    :try_start_22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_25
    .catch Ljava/util/concurrent/CancellationException; {:try_start_22 .. :try_end_25} :catch_11a
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_22 .. :try_end_25} :catch_11a
    .catch Lkotlinx/coroutines/channels/ClosedSendChannelException; {:try_start_22 .. :try_end_25} :catch_11a
    .catch Lio/ktor/utils/io/ClosedByteChannelException; {:try_start_22 .. :try_end_25} :catch_11a

    goto/16 :goto_11a

    :cond_27
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2f
    iget-object v1, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v6, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->L$1:Ljava/lang/Object;

    check-cast v6, [B

    iget-object v7, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlin/random/Random;

    :try_start_3b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3b .. :try_end_3e} :catch_11a
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_3b .. :try_end_3e} :catch_11a
    .catch Lkotlinx/coroutines/channels/ClosedSendChannelException; {:try_start_3b .. :try_end_3e} :catch_11a
    .catch Lio/ktor/utils/io/ClosedByteChannelException; {:try_start_3b .. :try_end_3e} :catch_11a

    :cond_3e
    move-object v12, v6

    move-object v6, v1

    move-object v1, v12

    goto/16 :goto_de

    :cond_43
    iget-object v1, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->L$1:Ljava/lang/Object;

    check-cast v1, [B

    iget-object v6, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlin/random/Random;

    :try_start_4b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4b .. :try_end_4e} :catch_11a
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_4b .. :try_end_4e} :catch_11a
    .catch Lkotlinx/coroutines/channels/ClosedSendChannelException; {:try_start_4b .. :try_end_4e} :catch_11a
    .catch Lio/ktor/utils/io/ClosedByteChannelException; {:try_start_4b .. :try_end_4e} :catch_11a

    move-object v7, v6

    :goto_4f
    move-object v6, v1

    goto :goto_a3

    :cond_51
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 58
    invoke-static {}, Lio/ktor/websocket/DefaultWebSocketSessionKt;->getLOGGER()Lorg/slf4j/Logger;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting WebSocket pinger coroutine with period "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->$periodMillis:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms and timeout "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->$timeoutMillis:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lio/ktor/util/date/DateJvmKt;->getTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lkotlin/random/RandomKt;->Random(J)Lkotlin/random/Random;

    move-result-object p1

    const/16 v1, 0x20

    .line 60
    new-array v1, v1, [B

    .line 66
    :goto_89
    :try_start_89
    iget-wide v6, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->$periodMillis:J

    new-instance v8, Lio/ktor/websocket/PingPongKt$pinger$1$1;

    iget-object v9, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->$channel:Lkotlinx/coroutines/channels/Channel;

    invoke-direct {v8, v9, v5}, Lio/ktor/websocket/PingPongKt$pinger$1$1;-><init>(Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->L$1:Ljava/lang/Object;

    iput-object v5, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->L$2:Ljava/lang/Object;

    iput v4, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->label:I

    invoke-static {v6, v7, v8, p0}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_a1

    return-object v0

    :cond_a1
    move-object v7, p1

    goto :goto_4f

    .line 72
    :goto_a3
    invoke-virtual {v7, v6}, Lkotlin/random/Random;->nextBytes([B)[B

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ping "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lio/ktor/util/CryptoKt;->hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ping]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    iget-wide v8, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->$timeoutMillis:J

    new-instance p1, Lio/ktor/websocket/PingPongKt$pinger$1$rc$1;

    iget-object v10, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->$outgoing:Lkotlinx/coroutines/channels/SendChannel;

    iget-object v11, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->$channel:Lkotlinx/coroutines/channels/Channel;

    invoke-direct {p1, v10, v1, v11, v5}, Lio/ktor/websocket/PingPongKt$pinger$1$rc$1;-><init>(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/String;Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)V

    iput-object v7, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->L$0:Ljava/lang/Object;

    iput-object v6, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->L$1:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->L$2:Ljava/lang/Object;

    iput v3, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->label:I

    invoke-static {v8, v9, p1, p0}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3e

    return-object v0

    .line 57
    :goto_de
    check-cast p1, Lkotlin/Unit;

    if-nez p1, :cond_117

    .line 96
    invoke-static {}, Lio/ktor/websocket/DefaultWebSocketSessionKt;->getLOGGER()Lorg/slf4j/Logger;

    move-result-object v3

    const-string v4, "WebSocket pinger has timed out"

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 97
    iget-object v3, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->$onTimeout:Lkotlin/jvm/functions/Function2;

    new-instance v4, Lio/ktor/websocket/CloseReason;

    sget-object v5, Lio/ktor/websocket/CloseReason$Codes;->INTERNAL_ERROR:Lio/ktor/websocket/CloseReason$Codes;

    const-string v8, "Ping timeout"

    invoke-direct {v4, v5, v8}, Lio/ktor/websocket/CloseReason;-><init>(Lio/ktor/websocket/CloseReason$Codes;Ljava/lang/String;)V

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->L$0:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->L$1:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->L$2:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->L$3:Ljava/lang/Object;

    iput v2, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->label:I

    invoke-interface {v3, v4, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_114
    .catch Ljava/util/concurrent/CancellationException; {:try_start_89 .. :try_end_114} :catch_11a
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_89 .. :try_end_114} :catch_11a
    .catch Lkotlinx/coroutines/channels/ClosedSendChannelException; {:try_start_89 .. :try_end_114} :catch_11a
    .catch Lio/ktor/utils/io/ClosedByteChannelException; {:try_start_89 .. :try_end_114} :catch_11a

    if-ne p0, v0, :cond_11a

    return-object v0

    :cond_117
    move-object p1, v7

    goto/16 :goto_89

    .line 106
    :catch_11a
    :cond_11a
    :goto_11a
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

###### Class io.ktor.websocket.PingPongKt.AnonymousClass1.C00021 (io.ktor.websocket.PingPongKt$pinger$1$1)
.class public final Lio/ktor/websocket/PingPongKt$pinger$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PingPong.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/websocket/PingPongKt$pinger$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "io.ktor.websocket.PingPongKt$pinger$1$1"
    f = "PingPong.kt"
    l = {
        0x44
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public final synthetic $channel:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Lio/ktor/websocket/Frame$Pong;",
            ">;"
        }
    .end annotation
.end field

.field public label:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/Channel<",
            "Lio/ktor/websocket/Frame$Pong;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/websocket/PingPongKt$pinger$1$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/websocket/PingPongKt$pinger$1$1;->$channel:Lkotlinx/coroutines/channels/Channel;

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
    new-instance p1, Lio/ktor/websocket/PingPongKt$pinger$1$1;

    iget-object p0, p0, Lio/ktor/websocket/PingPongKt$pinger$1$1;->$channel:Lkotlinx/coroutines/channels/Channel;

    invoke-direct {p1, p0, p2}, Lio/ktor/websocket/PingPongKt$pinger$1$1;-><init>(Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/websocket/PingPongKt$pinger$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lio/ktor/websocket/PingPongKt$pinger$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/ktor/websocket/PingPongKt$pinger$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/ktor/websocket/PingPongKt$pinger$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 66
    iget v1, p0, Lio/ktor/websocket/PingPongKt$pinger$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    if-ne v1, v2, :cond_c

    goto :goto_14

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    :goto_14
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    :cond_17
    iget-object p1, p0, Lio/ktor/websocket/PingPongKt$pinger$1$1;->$channel:Lkotlinx/coroutines/channels/Channel;

    iput v2, p0, Lio/ktor/websocket/PingPongKt$pinger$1$1;->label:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_17

    return-object v0
.end method

###### Class io.ktor.websocket.PingPongKt.C00831 (io.ktor.websocket.PingPongKt$ponger$1)
.class public final Lio/ktor/websocket/PingPongKt$ponger$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PingPong.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/websocket/PingPongKt;->ponger(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/channels/SendChannel;)Lkotlinx/coroutines/channels/SendChannel;
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
    value = "SMAP\nPingPong.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PingPong.kt\nio/ktor/websocket/PingPongKt$ponger$1\n+ 2 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n1#1,114:1\n160#2:115\n94#2,3:116\n161#2,2:119\n101#2:121\n97#2,3:122\n*S KotlinDebug\n*F\n+ 1 PingPong.kt\nio/ktor/websocket/PingPongKt$ponger$1\n*L\n31#1:115\n31#1:116,3\n31#1:119,2\n31#1:121\n31#1:122,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.websocket.PingPongKt$ponger$1"
    f = "PingPong.kt"
    l = {
        0x77,
        0x21
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public final synthetic $channel:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Lio/ktor/websocket/Frame$Ping;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $outgoing:Lkotlinx/coroutines/channels/SendChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/SendChannel<",
            "Lio/ktor/websocket/Frame$Pong;",
            ">;"
        }
    .end annotation
.end field

.field public I$0:I

.field public I$1:I

.field public I$2:I

.field public I$3:I

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public L$5:Ljava/lang/Object;

.field public L$6:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/Channel;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/Channel<",
            "Lio/ktor/websocket/Frame$Ping;",
            ">;",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-",
            "Lio/ktor/websocket/Frame$Pong;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/websocket/PingPongKt$ponger$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/websocket/PingPongKt$ponger$1;->$channel:Lkotlinx/coroutines/channels/Channel;

    iput-object p2, p0, Lio/ktor/websocket/PingPongKt$ponger$1;->$outgoing:Lkotlinx/coroutines/channels/SendChannel;

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
    new-instance p1, Lio/ktor/websocket/PingPongKt$ponger$1;

    iget-object v0, p0, Lio/ktor/websocket/PingPongKt$ponger$1;->$channel:Lkotlinx/coroutines/channels/Channel;

    iget-object p0, p0, Lio/ktor/websocket/PingPongKt$ponger$1;->$outgoing:Lkotlinx/coroutines/channels/SendChannel;

    invoke-direct {p1, v0, p0, p2}, Lio/ktor/websocket/PingPongKt$ponger$1;-><init>(Lkotlinx/coroutines/channels/Channel;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/websocket/PingPongKt$ponger$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lio/ktor/websocket/PingPongKt$ponger$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/ktor/websocket/PingPongKt$ponger$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/ktor/websocket/PingPongKt$ponger$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 19

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 29
    iget v2, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v6, 0x0

    if-eqz v2, :cond_6c

    if-eq v2, v3, :cond_4c

    if-ne v2, v4, :cond_44

    iget v2, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->I$2:I

    iget v7, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->I$1:I

    iget v8, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->I$0:I

    iget-object v9, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->L$6:Ljava/lang/Object;

    check-cast v9, Lio/ktor/websocket/Frame$Ping;

    iget-object v9, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v10, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v11, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v12, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v13, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_2f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_40

    const/4 v5, 0x0

    :cond_33
    move-object/from16 v16, v13

    move v13, v2

    move-object v2, v12

    move v12, v7

    move-object v7, v9

    move-object v9, v10

    move v10, v8

    move-object v8, v11

    move-object/from16 v11, v16

    goto/16 :goto_fd

    :catchall_40
    move-exception v0

    move-object v1, v0

    goto/16 :goto_109

    :cond_44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    iget v2, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->I$2:I

    iget v7, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->I$1:I

    iget v8, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->I$0:I

    iget-object v9, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v10, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v11, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v12, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v13, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_66
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_40

    move-object/from16 v14, p1

    goto :goto_ac

    :cond_6c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    :try_start_6f
    iget-object v11, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->$channel:Lkotlinx/coroutines/channels/Channel;

    iget-object v2, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->$outgoing:Lkotlinx/coroutines/channels/SendChannel;
    :try_end_73
    .catch Lkotlinx/coroutines/channels/ClosedSendChannelException; {:try_start_6f .. :try_end_73} :catch_110

    .line 161
    :try_start_73
    invoke-interface {v11}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v7
    :try_end_77
    .catchall {:try_start_73 .. :try_end_77} :catchall_40

    move-object v8, v11

    move-object v9, v8

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_7c
    :try_start_7c
    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    iput-object v14, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->L$1:Ljava/lang/Object;

    iput-object v8, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->L$2:Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    iput-object v14, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->L$3:Ljava/lang/Object;

    iput-object v7, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->L$4:Ljava/lang/Object;

    iput-object v6, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->L$5:Ljava/lang/Object;

    iput-object v6, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->L$6:Ljava/lang/Object;

    iput v10, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->I$0:I

    iput v12, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->I$1:I

    iput v13, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->I$2:I

    iput v3, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->label:I

    invoke-interface {v7, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14
    :try_end_9e
    .catchall {:try_start_7c .. :try_end_9e} :catchall_106

    if-ne v14, v1, :cond_a1

    return-object v1

    :cond_a1
    move/from16 v16, v12

    move-object v12, v2

    move v2, v13

    move-object v13, v11

    move-object v11, v8

    move v8, v10

    move-object v10, v9

    move-object v9, v7

    move/from16 v7, v16

    :goto_ac
    :try_start_ac
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_100

    invoke-interface {v9}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Lio/ktor/websocket/Frame$Ping;

    .line 32
    invoke-static {}, Lio/ktor/websocket/DefaultWebSocketSessionKt;->getLOGGER()Lorg/slf4j/Logger;

    move-result-object v3

    const-string v5, "Received ping message, sending pong message"

    invoke-interface {v3, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 33
    new-instance v3, Lio/ktor/websocket/Frame$Pong;

    invoke-virtual {v15}, Lio/ktor/websocket/Frame;->getData()[B

    move-result-object v5

    invoke-direct {v3, v5, v6, v4, v6}, Lio/ktor/websocket/Frame$Pong;-><init>([BLkotlinx/coroutines/DisposableHandle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->L$0:Ljava/lang/Object;

    iput-object v12, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->L$1:Ljava/lang/Object;

    iput-object v11, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->L$2:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->L$3:Ljava/lang/Object;

    iput-object v9, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->L$4:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->L$5:Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->L$6:Ljava/lang/Object;

    iput v8, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->I$0:I

    iput v7, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->I$1:I

    iput v2, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->I$2:I

    const/4 v5, 0x0

    iput v5, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->I$3:I

    iput v4, v0, Lio/ktor/websocket/PingPongKt$ponger$1;->label:I

    invoke-interface {v12, v3, v0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_33

    return-object v1

    :goto_fd
    const/4 v3, 0x1

    goto/16 :goto_7c

    .line 162
    :cond_100
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_102
    .catchall {:try_start_ac .. :try_end_102} :catchall_40

    .line 101
    :try_start_102
    invoke-static {v11, v6}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V
    :try_end_105
    .catch Lkotlinx/coroutines/channels/ClosedSendChannelException; {:try_start_102 .. :try_end_105} :catch_110

    goto :goto_110

    :catchall_106
    move-exception v0

    move-object v1, v0

    move-object v11, v8

    .line 99
    :goto_109
    :try_start_109
    throw v1
    :try_end_10a
    .catchall {:try_start_109 .. :try_end_10a} :catchall_10a

    :catchall_10a
    move-exception v0

    move-object v2, v0

    .line 101
    :try_start_10c
    invoke-static {v11, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw v2
    :try_end_110
    .catch Lkotlinx/coroutines/channels/ClosedSendChannelException; {:try_start_10c .. :try_end_110} :catch_110

    .line 37
    :catch_110
    :goto_110
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.ktor.websocket.PingPongKt$$ExternalSyntheticLambda0 (io.ktor.websocket.PingPongKt$$ExternalSyntheticLambda0)
.class public final synthetic Lio/ktor/websocket/PingPongKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/CompletableJob;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/CompletableJob;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/websocket/PingPongKt$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/CompletableJob;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lio/ktor/websocket/PingPongKt$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/CompletableJob;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p0, p1}, Lio/ktor/websocket/PingPongKt;->$r8$lambda$RcaiQEDnerQAfI2SQHQBVSfKtNo(Lkotlinx/coroutines/CompletableJob;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
