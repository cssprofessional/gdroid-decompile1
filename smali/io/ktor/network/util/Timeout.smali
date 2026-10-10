###### Class io.ktor.network.util.Timeout (io.ktor.network.util.Timeout)
.class public final Lio/ktor/network/util/Timeout;
.super Ljava/lang/Object;
.source "Utils.kt"


# instance fields
.field public final clock:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field volatile synthetic isStarted:I

.field volatile synthetic lastActivityTime:J

.field public final name:Ljava/lang/String;

.field public final onTimeout:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final timeoutMs:J

.field public workerJob:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onTimeout"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lio/ktor/network/util/Timeout;->name:Ljava/lang/String;

    .line 18
    iput-wide p2, p0, Lio/ktor/network/util/Timeout;->timeoutMs:J

    .line 19
    iput-object p4, p0, Lio/ktor/network/util/Timeout;->clock:Lkotlin/jvm/functions/Function0;

    .line 20
    iput-object p5, p0, Lio/ktor/network/util/Timeout;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 21
    iput-object p6, p0, Lio/ktor/network/util/Timeout;->onTimeout:Lkotlin/jvm/functions/Function1;

    const-wide/16 p1, 0x0

    .line 24
    iput-wide p1, p0, Lio/ktor/network/util/Timeout;->lastActivityTime:J

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lio/ktor/network/util/Timeout;->isStarted:I

    .line 27
    invoke-virtual {p0}, Lio/ktor/network/util/Timeout;->initTimeoutJob()Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/network/util/Timeout;->workerJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$getClock$p(Lio/ktor/network/util/Timeout;)Lkotlin/jvm/functions/Function0;
    .registers 1

    .line 16
    iget-object p0, p0, Lio/ktor/network/util/Timeout;->clock:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getOnTimeout$p(Lio/ktor/network/util/Timeout;)Lkotlin/jvm/functions/Function1;
    .registers 1

    .line 16
    iget-object p0, p0, Lio/ktor/network/util/Timeout;->onTimeout:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getTimeoutMs$p(Lio/ktor/network/util/Timeout;)J
    .registers 3

    .line 16
    iget-wide v0, p0, Lio/ktor/network/util/Timeout;->timeoutMs:J

    return-wide v0
.end method


# virtual methods
.method public final finish()V
    .registers 3

    .line 39
    iget-object p0, p0, Lio/ktor/network/util/Timeout;->workerJob:Lkotlinx/coroutines/Job;

    if-eqz p0, :cond_9

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public final initTimeoutJob()Lkotlinx/coroutines/Job;
    .registers 9

    .line 43
    iget-wide v0, p0, Lio/ktor/network/util/Timeout;->timeoutMs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return-object v1

    .line 44
    :cond_d
    iget-object v2, p0, Lio/ktor/network/util/Timeout;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v2}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v3, Lkotlinx/coroutines/CoroutineName;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lio/ktor/network/util/Timeout;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    new-instance v5, Lio/ktor/network/util/Timeout$initTimeoutJob$1;

    invoke-direct {v5, p0, v1}, Lio/ktor/network/util/Timeout$initTimeoutJob$1;-><init>(Lio/ktor/network/util/Timeout;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public final start()V
    .registers 3

    .line 30
    iget-object v0, p0, Lio/ktor/network/util/Timeout;->clock:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lio/ktor/network/util/Timeout;->lastActivityTime:J

    const/4 v0, 0x1

    .line 31
    iput v0, p0, Lio/ktor/network/util/Timeout;->isStarted:I

    return-void
.end method

.method public final stop()V
    .registers 2

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lio/ktor/network/util/Timeout;->isStarted:I

    return-void
.end method

###### Class io.ktor.network.util.Timeout.AnonymousClass1 (io.ktor.network.util.Timeout$initTimeoutJob$1)
.class public final Lio/ktor/network/util/Timeout$initTimeoutJob$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/util/Timeout;->initTimeoutJob()Lkotlinx/coroutines/Job;
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
    c = "io.ktor.network.util.Timeout$initTimeoutJob$1"
    f = "Utils.kt"
    l = {
        0x37,
        0x39,
        0x3a
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public J$0:J

.field public label:I

.field public final synthetic this$0:Lio/ktor/network/util/Timeout;


# direct methods
.method public constructor <init>(Lio/ktor/network/util/Timeout;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/util/Timeout;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/util/Timeout$initTimeoutJob$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/network/util/Timeout$initTimeoutJob$1;->this$0:Lio/ktor/network/util/Timeout;

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
    new-instance p1, Lio/ktor/network/util/Timeout$initTimeoutJob$1;

    iget-object p0, p0, Lio/ktor/network/util/Timeout$initTimeoutJob$1;->this$0:Lio/ktor/network/util/Timeout;

    invoke-direct {p1, p0, p2}, Lio/ktor/network/util/Timeout$initTimeoutJob$1;-><init>(Lio/ktor/network/util/Timeout;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/network/util/Timeout$initTimeoutJob$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lio/ktor/network/util/Timeout$initTimeoutJob$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/ktor/network/util/Timeout$initTimeoutJob$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/ktor/network/util/Timeout$initTimeoutJob$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 44
    iget v1, p0, Lio/ktor/network/util/Timeout$initTimeoutJob$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_26

    if-eq v1, v4, :cond_22

    if-eq v1, v3, :cond_1e

    if-ne v1, v2, :cond_16

    :try_start_11
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_8c

    goto/16 :goto_8c

    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    :try_start_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_72

    :cond_22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_8c

    goto :goto_29

    :cond_26
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    :cond_29
    :goto_29
    :try_start_29
    iget-object p1, p0, Lio/ktor/network/util/Timeout$initTimeoutJob$1;->this$0:Lio/ktor/network/util/Timeout;

    iget p1, p1, Lio/ktor/network/util/Timeout;->isStarted:I

    if-nez p1, :cond_41

    .line 48
    iget-object p1, p0, Lio/ktor/network/util/Timeout$initTimeoutJob$1;->this$0:Lio/ktor/network/util/Timeout;

    invoke-static {p1}, Lio/ktor/network/util/Timeout;->access$getClock$p(Lio/ktor/network/util/Timeout;)Lkotlin/jvm/functions/Function0;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    iput-wide v5, p1, Lio/ktor/network/util/Timeout;->lastActivityTime:J

    .line 50
    :cond_41
    iget-object p1, p0, Lio/ktor/network/util/Timeout$initTimeoutJob$1;->this$0:Lio/ktor/network/util/Timeout;

    iget-wide v5, p1, Lio/ktor/network/util/Timeout;->lastActivityTime:J

    iget-object p1, p0, Lio/ktor/network/util/Timeout$initTimeoutJob$1;->this$0:Lio/ktor/network/util/Timeout;

    invoke-static {p1}, Lio/ktor/network/util/Timeout;->access$getTimeoutMs$p(Lio/ktor/network/util/Timeout;)J

    move-result-wide v7

    add-long/2addr v5, v7

    iget-object p1, p0, Lio/ktor/network/util/Timeout$initTimeoutJob$1;->this$0:Lio/ktor/network/util/Timeout;

    invoke-static {p1}, Lio/ktor/network/util/Timeout;->access$getClock$p(Lio/ktor/network/util/Timeout;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-gtz p1, :cond_81

    .line 51
    iget-object p1, p0, Lio/ktor/network/util/Timeout$initTimeoutJob$1;->this$0:Lio/ktor/network/util/Timeout;

    iget p1, p1, Lio/ktor/network/util/Timeout;->isStarted:I

    if-eqz p1, :cond_81

    .line 57
    iput v3, p0, Lio/ktor/network/util/Timeout$initTimeoutJob$1;->label:I

    invoke-static {p0}, Lkotlinx/coroutines/YieldKt;->yield(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_72

    return-object v0

    .line 58
    :cond_72
    :goto_72
    iget-object p1, p0, Lio/ktor/network/util/Timeout$initTimeoutJob$1;->this$0:Lio/ktor/network/util/Timeout;

    invoke-static {p1}, Lio/ktor/network/util/Timeout;->access$getOnTimeout$p(Lio/ktor/network/util/Timeout;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    iput v2, p0, Lio/ktor/network/util/Timeout$initTimeoutJob$1;->label:I

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_8c

    return-object v0

    .line 55
    :cond_81
    iput-wide v5, p0, Lio/ktor/network/util/Timeout$initTimeoutJob$1;->J$0:J

    iput v4, p0, Lio/ktor/network/util/Timeout$initTimeoutJob$1;->label:I

    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_89
    .catchall {:try_start_29 .. :try_end_89} :catchall_8c

    if-ne p1, v0, :cond_29

    return-object v0

    .line 62
    :catchall_8c
    :cond_8c
    :goto_8c
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
