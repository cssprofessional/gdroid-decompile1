###### Class io.ktor.network.selector.ActorSelectorManager (io.ktor.network.selector.ActorSelectorManager)
.class public final Lio/ktor/network/selector/ActorSelectorManager;
.super Lio/ktor/network/selector/SelectorManagerSupport;
.source "ActorSelectorManager.kt"

# interfaces
.implements Ljava/io/Closeable;
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActorSelectorManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActorSelectorManager.kt\nio/ktor/network/selector/ActorSelectorManager\n+ 2 ActorSelectorManager.kt\nio/ktor/network/selector/ActorSelectorManager$ContinuationHolder\n*L\n1#1,209:1\n110#1,4:210\n200#2,6:214\n*S KotlinDebug\n*F\n+ 1 ActorSelectorManager.kt\nio/ktor/network/selector/ActorSelectorManager\n*L\n97#1:210,4\n169#1:214,6\n*E\n"
.end annotation


# instance fields
.field private volatile closed:Z

.field public final continuation:Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder<",
            "Lkotlin/Unit;",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field public final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private volatile inSelect:Z

.field public final selectionQueue:Lio/ktor/network/selector/LockFreeMPSCQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/network/selector/LockFreeMPSCQueue<",
            "Lio/ktor/network/selector/Selectable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile selectorRef:Ljava/nio/channels/Selector;

.field public final wakeup:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;)V
    .registers 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lio/ktor/network/selector/SelectorManagerSupport;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/ktor/network/selector/ActorSelectorManager;->wakeup:Ljava/util/concurrent/atomic/AtomicLong;

    .line 29
    new-instance v0, Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;

    invoke-direct {v0}, Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;-><init>()V

    iput-object v0, p0, Lio/ktor/network/selector/ActorSelectorManager;->continuation:Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;

    .line 34
    new-instance v0, Lio/ktor/network/selector/LockFreeMPSCQueue;

    invoke-direct {v0}, Lio/ktor/network/selector/LockFreeMPSCQueue;-><init>()V

    iput-object v0, p0, Lio/ktor/network/selector/ActorSelectorManager;->selectionQueue:Lio/ktor/network/selector/LockFreeMPSCQueue;

    .line 36
    new-instance v0, Lkotlinx/coroutines/CoroutineName;

    const-string v1, "selector"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/network/selector/ActorSelectorManager;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 39
    new-instance v3, Lio/ktor/network/selector/ActorSelectorManager$1;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lio/ktor/network/selector/ActorSelectorManager$1;-><init>(Lio/ktor/network/selector/ActorSelectorManager;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$getSelectionQueue$p(Lio/ktor/network/selector/ActorSelectorManager;)Lio/ktor/network/selector/LockFreeMPSCQueue;
    .registers 1

    .line 20
    iget-object p0, p0, Lio/ktor/network/selector/ActorSelectorManager;->selectionQueue:Lio/ktor/network/selector/LockFreeMPSCQueue;

    return-object p0
.end method

.method public static final synthetic access$process(Lio/ktor/network/selector/ActorSelectorManager;Lio/ktor/network/selector/LockFreeMPSCQueue;Ljava/nio/channels/Selector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/network/selector/ActorSelectorManager;->process(Lio/ktor/network/selector/LockFreeMPSCQueue;Ljava/nio/channels/Selector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$receiveOrNullSuspend(Lio/ktor/network/selector/ActorSelectorManager;Lio/ktor/network/selector/LockFreeMPSCQueue;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 20
    invoke-virtual {p0, p1, p2}, Lio/ktor/network/selector/ActorSelectorManager;->receiveOrNullSuspend(Lio/ktor/network/selector/LockFreeMPSCQueue;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$select(Lio/ktor/network/selector/ActorSelectorManager;Ljava/nio/channels/Selector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 20
    invoke-virtual {p0, p1, p2}, Lio/ktor/network/selector/ActorSelectorManager;->select(Ljava/nio/channels/Selector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setClosed$p(Lio/ktor/network/selector/ActorSelectorManager;Z)V
    .registers 2

    .line 20
    iput-boolean p1, p0, Lio/ktor/network/selector/ActorSelectorManager;->closed:Z

    return-void
.end method

.method public static final synthetic access$setSelectorRef$p(Lio/ktor/network/selector/ActorSelectorManager;Ljava/nio/channels/Selector;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lio/ktor/network/selector/ActorSelectorManager;->selectorRef:Ljava/nio/channels/Selector;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lio/ktor/network/selector/ActorSelectorManager;->closed:Z

    .line 181
    iget-object v0, p0, Lio/ktor/network/selector/ActorSelectorManager;->selectionQueue:Lio/ktor/network/selector/LockFreeMPSCQueue;

    invoke-virtual {v0}, Lio/ktor/network/selector/LockFreeMPSCQueue;->close()V

    .line 182
    iget-object v0, p0, Lio/ktor/network/selector/ActorSelectorManager;->continuation:Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;->resume(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 183
    invoke-virtual {p0}, Lio/ktor/network/selector/ActorSelectorManager;->selectWakeup()V

    :cond_15
    return-void
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .registers 1

    .line 36
    iget-object p0, p0, Lio/ktor/network/selector/ActorSelectorManager;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method public notifyClosed(Lio/ktor/network/selector/Selectable;)V
    .registers 3

    const-string v0, "selectable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-virtual {p0, p1, v0}, Lio/ktor/network/selector/SelectorManagerSupport;->cancelAllSuspensions(Lio/ktor/network/selector/Selectable;Ljava/lang/Throwable;)V

    .line 130
    iget-object v0, p0, Lio/ktor/network/selector/ActorSelectorManager;->selectorRef:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_21

    .line 131
    invoke-interface {p1}, Lio/ktor/network/selector/Selectable;->getChannel()Ljava/nio/channels/SelectableChannel;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 132
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 133
    invoke-virtual {p0}, Lio/ktor/network/selector/ActorSelectorManager;->selectWakeup()V

    :cond_21
    return-void
.end method

.method public final process(Lio/ktor/network/selector/LockFreeMPSCQueue;Ljava/nio/channels/Selector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/selector/LockFreeMPSCQueue<",
            "Lio/ktor/network/selector/Selectable;",
            ">;",
            "Ljava/nio/channels/Selector;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/network/selector/ActorSelectorManager$process$1;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lio/ktor/network/selector/ActorSelectorManager$process$1;

    iget v1, v0, Lio/ktor/network/selector/ActorSelectorManager$process$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/network/selector/ActorSelectorManager$process$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/ktor/network/selector/ActorSelectorManager$process$1;

    invoke-direct {v0, p0, p3}, Lio/ktor/network/selector/ActorSelectorManager$process$1;-><init>(Lio/ktor/network/selector/ActorSelectorManager;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lio/ktor/network/selector/ActorSelectorManager$process$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 65
    iget v2, v0, Lio/ktor/network/selector/ActorSelectorManager$process$1;->label:I

    const-string v3, "keys(...)"

    const-string v4, "selectedKeys(...)"

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_69

    if-eq v2, v7, :cond_5a

    if-eq v2, v6, :cond_47

    if-ne v2, v5, :cond_3f

    iget-object p1, v0, Lio/ktor/network/selector/ActorSelectorManager$process$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/nio/channels/Selector;

    iget-object p2, v0, Lio/ktor/network/selector/ActorSelectorManager$process$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lio/ktor/network/selector/LockFreeMPSCQueue;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    goto/16 :goto_f7

    :cond_3f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_47
    iget-object p1, v0, Lio/ktor/network/selector/ActorSelectorManager$process$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lio/ktor/network/selector/Selectable;

    iget-object p1, v0, Lio/ktor/network/selector/ActorSelectorManager$process$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/nio/channels/Selector;

    iget-object p2, v0, Lio/ktor/network/selector/ActorSelectorManager$process$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lio/ktor/network/selector/LockFreeMPSCQueue;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    goto :goto_6c

    :cond_5a
    iget-object p1, v0, Lio/ktor/network/selector/ActorSelectorManager$process$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/nio/channels/Selector;

    iget-object p2, v0, Lio/ktor/network/selector/ActorSelectorManager$process$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lio/ktor/network/selector/LockFreeMPSCQueue;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    goto :goto_89

    :cond_69
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    :cond_6c
    :goto_6c
    iget-boolean p3, p0, Lio/ktor/network/selector/ActorSelectorManager;->closed:Z

    if-nez p3, :cond_101

    .line 67
    invoke-virtual {p0, p1, p2}, Lio/ktor/network/selector/ActorSelectorManager;->processInterests(Lio/ktor/network/selector/LockFreeMPSCQueue;Ljava/nio/channels/Selector;)V

    .line 69
    invoke-virtual {p0}, Lio/ktor/network/selector/SelectorManagerSupport;->getPending()I

    move-result p3

    const/4 v2, 0x0

    if-lez p3, :cond_c2

    .line 70
    iput-object p1, v0, Lio/ktor/network/selector/ActorSelectorManager$process$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/network/selector/ActorSelectorManager$process$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lio/ktor/network/selector/ActorSelectorManager$process$1;->L$2:Ljava/lang/Object;

    iput v7, v0, Lio/ktor/network/selector/ActorSelectorManager$process$1;->label:I

    invoke-virtual {p0, p2, v0}, Lio/ktor/network/selector/ActorSelectorManager;->select(Ljava/nio/channels/Selector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_89

    return-object v1

    :cond_89
    :goto_89
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    if-lez p3, :cond_a3

    .line 71
    invoke-virtual {p2}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object p3

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3, v2}, Lio/ktor/network/selector/SelectorManagerSupport;->handleSelectedKeys(Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_6c

    .line 73
    :cond_a3
    invoke-virtual {p1}, Lio/ktor/network/selector/LockFreeMPSCQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/ktor/network/selector/Selectable;

    if-eqz p3, :cond_af

    .line 74
    invoke-virtual {p0, p2, p3}, Lio/ktor/network/selector/SelectorManagerSupport;->applyInterest(Ljava/nio/channels/Selector;Lio/ktor/network/selector/Selectable;)V

    goto :goto_6c

    :cond_af
    iput-object p1, v0, Lio/ktor/network/selector/ActorSelectorManager$process$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/network/selector/ActorSelectorManager$process$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v0, Lio/ktor/network/selector/ActorSelectorManager$process$1;->L$2:Ljava/lang/Object;

    iput v6, v0, Lio/ktor/network/selector/ActorSelectorManager$process$1;->label:I

    invoke-static {v0}, Lkotlinx/coroutines/YieldKt;->yield(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6c

    return-object v1

    .line 80
    :cond_c2
    invoke-virtual {p0}, Lio/ktor/network/selector/SelectorManagerSupport;->getCancelled()I

    move-result p3

    if-lez p3, :cond_e8

    .line 81
    invoke-virtual {p2}, Ljava/nio/channels/Selector;->selectNow()I

    .line 82
    invoke-virtual {p0}, Lio/ktor/network/selector/SelectorManagerSupport;->getPending()I

    move-result p3

    if-lez p3, :cond_e3

    .line 83
    invoke-virtual {p2}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object p3

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3, v2}, Lio/ktor/network/selector/SelectorManagerSupport;->handleSelectedKeys(Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_6c

    :cond_e3
    const/4 p3, 0x0

    .line 85
    invoke-virtual {p0, p3}, Lio/ktor/network/selector/SelectorManagerSupport;->setCancelled(I)V

    goto :goto_6c

    .line 90
    :cond_e8
    iput-object p1, v0, Lio/ktor/network/selector/ActorSelectorManager$process$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/network/selector/ActorSelectorManager$process$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lio/ktor/network/selector/ActorSelectorManager$process$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Lio/ktor/network/selector/ActorSelectorManager$process$1;->label:I

    invoke-virtual {p0, p1, v0}, Lio/ktor/network/selector/ActorSelectorManager;->receiveOrNull(Lio/ktor/network/selector/LockFreeMPSCQueue;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_f7

    return-object v1

    :cond_f7
    :goto_f7
    check-cast p3, Lio/ktor/network/selector/Selectable;

    if-nez p3, :cond_fc

    goto :goto_101

    .line 91
    :cond_fc
    invoke-virtual {p0, p2, p3}, Lio/ktor/network/selector/SelectorManagerSupport;->applyInterest(Ljava/nio/channels/Selector;Lio/ktor/network/selector/Selectable;)V

    goto/16 :goto_6c

    .line 93
    :cond_101
    :goto_101
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final processInterests(Lio/ktor/network/selector/LockFreeMPSCQueue;Ljava/nio/channels/Selector;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/selector/LockFreeMPSCQueue<",
            "Lio/ktor/network/selector/Selectable;",
            ">;",
            "Ljava/nio/channels/Selector;",
            ")V"
        }
    .end annotation

    .line 123
    :goto_0
    invoke-virtual {p1}, Lio/ktor/network/selector/LockFreeMPSCQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/network/selector/Selectable;

    if-nez v0, :cond_9

    return-void

    .line 124
    :cond_9
    invoke-virtual {p0, p2, v0}, Lio/ktor/network/selector/SelectorManagerSupport;->applyInterest(Ljava/nio/channels/Selector;Lio/ktor/network/selector/Selectable;)V

    goto :goto_0
.end method

.method public publishInterest(Lio/ktor/network/selector/Selectable;)V
    .registers 4

    const-string v0, "selectable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    :try_start_5
    iget-object v0, p0, Lio/ktor/network/selector/ActorSelectorManager;->selectionQueue:Lio/ktor/network/selector/LockFreeMPSCQueue;

    invoke-virtual {v0, p1}, Lio/ktor/network/selector/LockFreeMPSCQueue;->addLast(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 146
    iget-object v0, p0, Lio/ktor/network/selector/ActorSelectorManager;->continuation:Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;->resume(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {p0}, Lio/ktor/network/selector/ActorSelectorManager;->selectWakeup()V

    goto :goto_33

    :catchall_18
    move-exception v0

    goto :goto_30

    .line 148
    :cond_1a
    invoke-interface {p1}, Lio/ktor/network/selector/Selectable;->getChannel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 149
    new-instance v0, Ljava/nio/channels/ClosedSelectorException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    throw v0

    .line 151
    :cond_2a
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_18

    .line 154
    :goto_30
    invoke-virtual {p0, p1, v0}, Lio/ktor/network/selector/SelectorManagerSupport;->cancelAllSuspensions(Lio/ktor/network/selector/Selectable;Ljava/lang/Throwable;)V

    :goto_33
    return-void
.end method

.method public final receiveOrNull(Lio/ktor/network/selector/LockFreeMPSCQueue;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/selector/LockFreeMPSCQueue<",
            "Lio/ktor/network/selector/Selectable;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/selector/Selectable;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 159
    invoke-virtual {p1}, Lio/ktor/network/selector/LockFreeMPSCQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/network/selector/Selectable;

    if-nez v0, :cond_d

    invoke-virtual {p0, p1, p2}, Lio/ktor/network/selector/ActorSelectorManager;->receiveOrNullSuspend(Lio/ktor/network/selector/LockFreeMPSCQueue;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_d
    return-object v0
.end method

.method public final receiveOrNullSuspend(Lio/ktor/network/selector/LockFreeMPSCQueue;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/selector/LockFreeMPSCQueue<",
            "Lio/ktor/network/selector/Selectable;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/selector/Selectable;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/network/selector/ActorSelectorManager$receiveOrNullSuspend$1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lio/ktor/network/selector/ActorSelectorManager$receiveOrNullSuspend$1;

    iget v1, v0, Lio/ktor/network/selector/ActorSelectorManager$receiveOrNullSuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/network/selector/ActorSelectorManager$receiveOrNullSuspend$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/ktor/network/selector/ActorSelectorManager$receiveOrNullSuspend$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/network/selector/ActorSelectorManager$receiveOrNullSuspend$1;-><init>(Lio/ktor/network/selector/ActorSelectorManager;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lio/ktor/network/selector/ActorSelectorManager$receiveOrNullSuspend$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 161
    iget v2, v0, Lio/ktor/network/selector/ActorSelectorManager$receiveOrNullSuspend$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_36

    if-ne v2, v3, :cond_2e

    iget-object p1, v0, Lio/ktor/network/selector/ActorSelectorManager$receiveOrNullSuspend$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/ktor/network/selector/Selectable;

    iget-object p1, v0, Lio/ktor/network/selector/ActorSelectorManager$receiveOrNullSuspend$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/network/selector/LockFreeMPSCQueue;

    goto :goto_36

    :cond_2e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_36
    :goto_36
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 163
    :cond_39
    invoke-virtual {p1}, Lio/ktor/network/selector/LockFreeMPSCQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/ktor/network/selector/Selectable;

    if-eqz p2, :cond_42

    return-object p2

    .line 166
    :cond_42
    iget-boolean v2, p0, Lio/ktor/network/selector/ActorSelectorManager;->closed:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_48

    return-object v4

    .line 168
    :cond_48
    iput-object p1, v0, Lio/ktor/network/selector/ActorSelectorManager$receiveOrNullSuspend$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lio/ktor/network/selector/ActorSelectorManager$receiveOrNullSuspend$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/network/selector/ActorSelectorManager$receiveOrNullSuspend$1;->label:I

    .line 169
    iget-object p2, p0, Lio/ktor/network/selector/ActorSelectorManager;->continuation:Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;

    invoke-virtual {p1}, Lio/ktor/network/selector/LockFreeMPSCQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8b

    iget-boolean v2, p0, Lio/ktor/network/selector/ActorSelectorManager;->closed:Z

    if-nez v2, :cond_8b

    .line 201
    invoke-static {p2}, Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;->access$getRef$p(Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-static {v2, v4, v0}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 169
    invoke-virtual {p1}, Lio/ktor/network/selector/LockFreeMPSCQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_73

    iget-boolean v2, p0, Lio/ktor/network/selector/ActorSelectorManager;->closed:Z

    if-nez v2, :cond_73

    goto :goto_7e

    .line 204
    :cond_73
    invoke-static {p2}, Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;->access$getRef$p(Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p2

    invoke-static {p2, v0, v4}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7e

    goto :goto_8b

    .line 205
    :cond_7e
    :goto_7e
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    goto :goto_8b

    .line 202
    :cond_83
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Continuation is already set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8b
    :goto_8b
    if-nez v4, :cond_8f

    .line 169
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 168
    :cond_8f
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne v4, p2, :cond_98

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_98
    if-ne v4, v1, :cond_39

    return-object v1
.end method

.method public final select(Ljava/nio/channels/Selector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/Selector;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/network/selector/ActorSelectorManager$select$1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lio/ktor/network/selector/ActorSelectorManager$select$1;

    iget v1, v0, Lio/ktor/network/selector/ActorSelectorManager$select$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/network/selector/ActorSelectorManager$select$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/ktor/network/selector/ActorSelectorManager$select$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/network/selector/ActorSelectorManager$select$1;-><init>(Lio/ktor/network/selector/ActorSelectorManager;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lio/ktor/network/selector/ActorSelectorManager$select$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 95
    iget v2, v0, Lio/ktor/network/selector/ActorSelectorManager$select$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3a

    if-ne v2, v4, :cond_32

    iget-object p1, v0, Lio/ktor/network/selector/ActorSelectorManager$select$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/ktor/network/selector/ActorSelectorManager;

    iget-object p1, v0, Lio/ktor/network/selector/ActorSelectorManager$select$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/nio/channels/Selector;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_52

    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3a
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 96
    iput-boolean v4, p0, Lio/ktor/network/selector/ActorSelectorManager;->inSelect:Z

    .line 110
    iput-object p1, v0, Lio/ktor/network/selector/ActorSelectorManager$select$1;->L$0:Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lio/ktor/network/selector/ActorSelectorManager$select$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/network/selector/ActorSelectorManager$select$1;->I$0:I

    iput v4, v0, Lio/ktor/network/selector/ActorSelectorManager$select$1;->label:I

    invoke-static {v0}, Lkotlinx/coroutines/YieldKt;->yield(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_52

    return-object v1

    .line 98
    :cond_52
    :goto_52
    iget-object p2, p0, Lio/ktor/network/selector/ActorSelectorManager;->wakeup:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long p2, v0, v4

    if-nez p2, :cond_67

    const-wide/16 v0, 0x1f4

    .line 99
    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/Selector;->select(J)I

    move-result p1

    .line 100
    iput-boolean v3, p0, Lio/ktor/network/selector/ActorSelectorManager;->inSelect:Z

    goto :goto_72

    .line 103
    :cond_67
    iput-boolean v3, p0, Lio/ktor/network/selector/ActorSelectorManager;->inSelect:Z

    .line 104
    iget-object p0, p0, Lio/ktor/network/selector/ActorSelectorManager;->wakeup:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 105
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->selectNow()I

    move-result p1

    :goto_72
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final selectWakeup()V
    .registers 5

    .line 116
    iget-object v0, p0, Lio/ktor/network/selector/ActorSelectorManager;->wakeup:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lio/ktor/network/selector/ActorSelectorManager;->inSelect:Z

    if-eqz v0, :cond_17

    .line 117
    iget-object p0, p0, Lio/ktor/network/selector/ActorSelectorManager;->selectorRef:Ljava/nio/channels/Selector;

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    :cond_17
    return-void
.end method

###### Class io.ktor.network.selector.ActorSelectorManager.AnonymousClass1 (io.ktor.network.selector.ActorSelectorManager$1)
.class public final Lio/ktor/network/selector/ActorSelectorManager$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ActorSelectorManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/selector/ActorSelectorManager;-><init>(Lkotlin/coroutines/CoroutineContext;)V
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
    c = "io.ktor.network.selector.ActorSelectorManager$1"
    f = "ActorSelectorManager.kt"
    l = {
        0x2c
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public I$0:I

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lio/ktor/network/selector/ActorSelectorManager;


# direct methods
.method public constructor <init>(Lio/ktor/network/selector/ActorSelectorManager;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/selector/ActorSelectorManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/selector/ActorSelectorManager$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/network/selector/ActorSelectorManager$1;->this$0:Lio/ktor/network/selector/ActorSelectorManager;

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
    new-instance p1, Lio/ktor/network/selector/ActorSelectorManager$1;

    iget-object p0, p0, Lio/ktor/network/selector/ActorSelectorManager$1;->this$0:Lio/ktor/network/selector/ActorSelectorManager;

    invoke-direct {p1, p0, p2}, Lio/ktor/network/selector/ActorSelectorManager$1;-><init>(Lio/ktor/network/selector/ActorSelectorManager;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/network/selector/ActorSelectorManager$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lio/ktor/network/selector/ActorSelectorManager$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/ktor/network/selector/ActorSelectorManager$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/ktor/network/selector/ActorSelectorManager$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 39
    iget v1, p0, Lio/ktor/network/selector/ActorSelectorManager$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2a

    if-ne v1, v2, :cond_22

    iget-object v0, p0, Lio/ktor/network/selector/ActorSelectorManager$1;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/nio/channels/spi/AbstractSelector;

    iget-object v1, p0, Lio/ktor/network/selector/ActorSelectorManager$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lio/ktor/network/selector/ActorSelectorManager;

    iget-object v4, p0, Lio/ktor/network/selector/ActorSelectorManager$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/io/Closeable;

    iget-object p0, p0, Lio/ktor/network/selector/ActorSelectorManager$1;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/nio/channels/spi/AbstractSelector;

    :try_start_1c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_5e

    :catchall_20
    move-exception p0

    goto :goto_74

    :cond_22
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    iget-object p1, p0, Lio/ktor/network/selector/ActorSelectorManager$1;->this$0:Lio/ktor/network/selector/ActorSelectorManager;

    invoke-virtual {p1}, Lio/ktor/network/selector/SelectorManagerSupport;->getProvider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object p1

    if-eqz p1, :cond_c6

    .line 41
    iget-object v1, p0, Lio/ktor/network/selector/ActorSelectorManager$1;->this$0:Lio/ktor/network/selector/ActorSelectorManager;

    invoke-static {v1, p1}, Lio/ktor/network/selector/ActorSelectorManager;->access$setSelectorRef$p(Lio/ktor/network/selector/ActorSelectorManager;Ljava/nio/channels/Selector;)V

    .line 42
    iget-object v1, p0, Lio/ktor/network/selector/ActorSelectorManager$1;->this$0:Lio/ktor/network/selector/ActorSelectorManager;

    .line 44
    :try_start_40
    invoke-static {v1}, Lio/ktor/network/selector/ActorSelectorManager;->access$getSelectionQueue$p(Lio/ktor/network/selector/ActorSelectorManager;)Lio/ktor/network/selector/LockFreeMPSCQueue;

    move-result-object v4

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lio/ktor/network/selector/ActorSelectorManager$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lio/ktor/network/selector/ActorSelectorManager$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lio/ktor/network/selector/ActorSelectorManager$1;->L$2:Ljava/lang/Object;

    iput-object p1, p0, Lio/ktor/network/selector/ActorSelectorManager$1;->L$3:Ljava/lang/Object;

    const/4 v5, 0x0

    iput v5, p0, Lio/ktor/network/selector/ActorSelectorManager$1;->I$0:I

    iput v2, p0, Lio/ktor/network/selector/ActorSelectorManager$1;->label:I

    invoke-static {v1, v4, p1, p0}, Lio/ktor/network/selector/ActorSelectorManager;->access$process(Lio/ktor/network/selector/ActorSelectorManager;Lio/ktor/network/selector/LockFreeMPSCQueue;Ljava/nio/channels/Selector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_59
    .catchall {:try_start_40 .. :try_end_59} :catchall_71

    if-ne p0, v0, :cond_5c

    return-object v0

    :cond_5c
    move-object v0, p1

    move-object v4, v0

    .line 50
    :goto_5e
    :try_start_5e
    invoke-static {v1, v2}, Lio/ktor/network/selector/ActorSelectorManager;->access$setClosed$p(Lio/ktor/network/selector/ActorSelectorManager;Z)V

    .line 51
    invoke-static {v1}, Lio/ktor/network/selector/ActorSelectorManager;->access$getSelectionQueue$p(Lio/ktor/network/selector/ActorSelectorManager;)Lio/ktor/network/selector/LockFreeMPSCQueue;

    move-result-object p0

    invoke-virtual {p0}, Lio/ktor/network/selector/LockFreeMPSCQueue;->close()V

    .line 52
    invoke-static {v1, v3}, Lio/ktor/network/selector/ActorSelectorManager;->access$setSelectorRef$p(Lio/ktor/network/selector/ActorSelectorManager;Ljava/nio/channels/Selector;)V

    .line 53
    :goto_6b
    invoke-virtual {v1, v0, v3}, Lio/ktor/network/selector/SelectorManagerSupport;->cancelAllSuspensions(Ljava/nio/channels/Selector;Ljava/lang/Throwable;)V
    :try_end_6e
    .catchall {:try_start_5e .. :try_end_6e} :catchall_6f

    goto :goto_8f

    :catchall_6f
    move-exception p0

    goto :goto_c0

    :catchall_71
    move-exception p0

    move-object v0, p1

    move-object v4, v0

    .line 46
    :goto_74
    :try_start_74
    invoke-static {v1, v2}, Lio/ktor/network/selector/ActorSelectorManager;->access$setClosed$p(Lio/ktor/network/selector/ActorSelectorManager;Z)V

    .line 47
    invoke-static {v1}, Lio/ktor/network/selector/ActorSelectorManager;->access$getSelectionQueue$p(Lio/ktor/network/selector/ActorSelectorManager;)Lio/ktor/network/selector/LockFreeMPSCQueue;

    move-result-object p1

    invoke-virtual {p1}, Lio/ktor/network/selector/LockFreeMPSCQueue;->close()V

    .line 48
    invoke-virtual {v1, v0, p0}, Lio/ktor/network/selector/SelectorManagerSupport;->cancelAllSuspensions(Ljava/nio/channels/Selector;Ljava/lang/Throwable;)V
    :try_end_81
    .catchall {:try_start_74 .. :try_end_81} :catchall_ae

    .line 50
    :try_start_81
    invoke-static {v1, v2}, Lio/ktor/network/selector/ActorSelectorManager;->access$setClosed$p(Lio/ktor/network/selector/ActorSelectorManager;Z)V

    .line 51
    invoke-static {v1}, Lio/ktor/network/selector/ActorSelectorManager;->access$getSelectionQueue$p(Lio/ktor/network/selector/ActorSelectorManager;)Lio/ktor/network/selector/LockFreeMPSCQueue;

    move-result-object p0

    invoke-virtual {p0}, Lio/ktor/network/selector/LockFreeMPSCQueue;->close()V

    .line 52
    invoke-static {v1, v3}, Lio/ktor/network/selector/ActorSelectorManager;->access$setSelectorRef$p(Lio/ktor/network/selector/ActorSelectorManager;Ljava/nio/channels/Selector;)V

    goto :goto_6b

    .line 57
    :goto_8f
    invoke-static {v1}, Lio/ktor/network/selector/ActorSelectorManager;->access$getSelectionQueue$p(Lio/ktor/network/selector/ActorSelectorManager;)Lio/ktor/network/selector/LockFreeMPSCQueue;

    move-result-object p0

    invoke-virtual {p0}, Lio/ktor/network/selector/LockFreeMPSCQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/ktor/network/selector/Selectable;

    if-nez p0, :cond_a3

    .line 61
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9d
    .catchall {:try_start_81 .. :try_end_9d} :catchall_6f

    .line 42
    invoke-static {v4, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 62
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 58
    :cond_a3
    :try_start_a3
    new-instance p1, Lkotlinx/coroutines/channels/ClosedSendChannelException;

    const-string v0, "Failed to apply interest: selector closed"

    invoke-direct {p1, v0}, Lkotlinx/coroutines/channels/ClosedSendChannelException;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1, p0, p1}, Lio/ktor/network/selector/SelectorManagerSupport;->cancelAllSuspensions(Lio/ktor/network/selector/Selectable;Ljava/lang/Throwable;)V

    goto :goto_8f

    :catchall_ae
    move-exception p0

    .line 50
    invoke-static {v1, v2}, Lio/ktor/network/selector/ActorSelectorManager;->access$setClosed$p(Lio/ktor/network/selector/ActorSelectorManager;Z)V

    .line 51
    invoke-static {v1}, Lio/ktor/network/selector/ActorSelectorManager;->access$getSelectionQueue$p(Lio/ktor/network/selector/ActorSelectorManager;)Lio/ktor/network/selector/LockFreeMPSCQueue;

    move-result-object p1

    invoke-virtual {p1}, Lio/ktor/network/selector/LockFreeMPSCQueue;->close()V

    .line 52
    invoke-static {v1, v3}, Lio/ktor/network/selector/ActorSelectorManager;->access$setSelectorRef$p(Lio/ktor/network/selector/ActorSelectorManager;Ljava/nio/channels/Selector;)V

    .line 53
    invoke-virtual {v1, v0, v3}, Lio/ktor/network/selector/SelectorManagerSupport;->cancelAllSuspensions(Ljava/nio/channels/Selector;Ljava/lang/Throwable;)V

    throw p0
    :try_end_c0
    .catchall {:try_start_a3 .. :try_end_c0} :catchall_6f

    .line 42
    :goto_c0
    :try_start_c0
    throw p0
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_c1

    :catchall_c1
    move-exception p1

    invoke-static {v4, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    .line 40
    :cond_c6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "openSelector() = null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class io.ktor.network.selector.ActorSelectorManager.ContinuationHolder (io.ktor.network.selector.ActorSelectorManager$ContinuationHolder)
.class public final Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;
.super Ljava/lang/Object;
.source "ActorSelectorManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/selector/ActorSelectorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContinuationHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C::",
        "Lkotlin/coroutines/Continuation<",
        "-TR;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final ref:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;->ref:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static final synthetic access$getRef$p(Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    .line 187
    iget-object p0, p0, Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;->ref:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method


# virtual methods
.method public final resume(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)Z"
        }
    .end annotation

    .line 191
    iget-object p0, p0, Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;->ref:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/coroutines/Continuation;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return p0

    .line 192
    :cond_d
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

###### Class io.ktor.network.selector.ActorSelectorManager.C00491 (io.ktor.network.selector.ActorSelectorManager$process$1)
.class public final Lio/ktor/network/selector/ActorSelectorManager$process$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ActorSelectorManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/selector/ActorSelectorManager;->process(Lio/ktor/network/selector/LockFreeMPSCQueue;Ljava/nio/channels/Selector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.network.selector.ActorSelectorManager"
    f = "ActorSelectorManager.kt"
    l = {
        0x46,
        0x4a,
        0x5a
    }
    m = "process"
    v = 0x1
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lio/ktor/network/selector/ActorSelectorManager;


# direct methods
.method public constructor <init>(Lio/ktor/network/selector/ActorSelectorManager;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/selector/ActorSelectorManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/selector/ActorSelectorManager$process$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/network/selector/ActorSelectorManager$process$1;->this$0:Lio/ktor/network/selector/ActorSelectorManager;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/ktor/network/selector/ActorSelectorManager$process$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/network/selector/ActorSelectorManager$process$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/network/selector/ActorSelectorManager$process$1;->label:I

    iget-object p1, p0, Lio/ktor/network/selector/ActorSelectorManager$process$1;->this$0:Lio/ktor/network/selector/ActorSelectorManager;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Lio/ktor/network/selector/ActorSelectorManager;->access$process(Lio/ktor/network/selector/ActorSelectorManager;Lio/ktor/network/selector/LockFreeMPSCQueue;Ljava/nio/channels/Selector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.network.selector.ActorSelectorManager.C00501 (io.ktor.network.selector.ActorSelectorManager$receiveOrNullSuspend$1)
.class public final Lio/ktor/network/selector/ActorSelectorManager$receiveOrNullSuspend$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ActorSelectorManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/selector/ActorSelectorManager;->receiveOrNullSuspend(Lio/ktor/network/selector/LockFreeMPSCQueue;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.network.selector.ActorSelectorManager"
    f = "ActorSelectorManager.kt"
    l = {
        0xa8
    }
    m = "receiveOrNullSuspend"
    v = 0x1
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lio/ktor/network/selector/ActorSelectorManager;


# direct methods
.method public constructor <init>(Lio/ktor/network/selector/ActorSelectorManager;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/selector/ActorSelectorManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/selector/ActorSelectorManager$receiveOrNullSuspend$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/network/selector/ActorSelectorManager$receiveOrNullSuspend$1;->this$0:Lio/ktor/network/selector/ActorSelectorManager;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/ktor/network/selector/ActorSelectorManager$receiveOrNullSuspend$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/network/selector/ActorSelectorManager$receiveOrNullSuspend$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/network/selector/ActorSelectorManager$receiveOrNullSuspend$1;->label:I

    iget-object p1, p0, Lio/ktor/network/selector/ActorSelectorManager$receiveOrNullSuspend$1;->this$0:Lio/ktor/network/selector/ActorSelectorManager;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lio/ktor/network/selector/ActorSelectorManager;->access$receiveOrNullSuspend(Lio/ktor/network/selector/ActorSelectorManager;Lio/ktor/network/selector/LockFreeMPSCQueue;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.network.selector.ActorSelectorManager.C00511 (io.ktor.network.selector.ActorSelectorManager$select$1)
.class public final Lio/ktor/network/selector/ActorSelectorManager$select$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ActorSelectorManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/selector/ActorSelectorManager;->select(Ljava/nio/channels/Selector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.network.selector.ActorSelectorManager"
    f = "ActorSelectorManager.kt"
    l = {
        0xd2
    }
    m = "select"
    v = 0x1
.end annotation


# instance fields
.field public I$0:I

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lio/ktor/network/selector/ActorSelectorManager;


# direct methods
.method public constructor <init>(Lio/ktor/network/selector/ActorSelectorManager;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/selector/ActorSelectorManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/selector/ActorSelectorManager$select$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/network/selector/ActorSelectorManager$select$1;->this$0:Lio/ktor/network/selector/ActorSelectorManager;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/ktor/network/selector/ActorSelectorManager$select$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/network/selector/ActorSelectorManager$select$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/network/selector/ActorSelectorManager$select$1;->label:I

    iget-object p1, p0, Lio/ktor/network/selector/ActorSelectorManager$select$1;->this$0:Lio/ktor/network/selector/ActorSelectorManager;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lio/ktor/network/selector/ActorSelectorManager;->access$select(Lio/ktor/network/selector/ActorSelectorManager;Ljava/nio/channels/Selector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
