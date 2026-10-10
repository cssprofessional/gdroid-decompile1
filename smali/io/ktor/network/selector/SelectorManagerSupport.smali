###### Class io.ktor.network.selector.SelectorManagerSupport (io.ktor.network.selector.SelectorManagerSupport)
.class public abstract Lio/ktor/network/selector/SelectorManagerSupport;
.super Ljava/lang/Object;
.source "SelectorManagerSupport.kt"

# interfaces
.implements Lio/ktor/network/selector/SelectorManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/network/selector/SelectorManagerSupport$ClosedSelectorCancellationException;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectorManagerSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectorManagerSupport.kt\nio/ktor/network/selector/SelectorManagerSupport\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 InterestSuspensionsMap.kt\nio/ktor/network/selector/InterestSuspensionsMap\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,187:1\n426#2,11:188\n32#3,8:199\n42#3,2:207\n45#3:210\n1#4:209\n1#4:212\n1869#5:211\n1870#5:213\n*S KotlinDebug\n*F\n+ 1 SelectorManagerSupport.kt\nio/ktor/network/selector/SelectorManagerSupport\n*L\n44#1:188,11\n86#1:199,8\n150#1:207,2\n150#1:210\n150#1:209\n161#1:211\n161#1:213\n*E\n"
.end annotation


# instance fields
.field public cancelled:I

.field public pending:I

.field public final provider:Ljava/nio/channels/spi/SelectorProvider;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    const-string v1, "provider(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/ktor/network/selector/SelectorManagerSupport;->provider:Ljava/nio/channels/spi/SelectorProvider;

    return-void
.end method


# virtual methods
.method public final applyInterest(Ljava/nio/channels/Selector;Lio/ktor/network/selector/Selectable;)V
    .registers 6

    const-string v0, "selector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    :try_start_a
    invoke-interface {p2}, Lio/ktor/network/selector/Selectable;->getChannel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    .line 114
    invoke-virtual {v0, p1}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    .line 115
    invoke-interface {p2}, Lio/ktor/network/selector/Selectable;->getInterestedOps()I

    move-result v2

    if-nez v1, :cond_20

    if-eqz v2, :cond_29

    .line 119
    invoke-virtual {v0, p1, v2, p2}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    goto :goto_29

    :catchall_1e
    move-exception v0

    goto :goto_32

    .line 122
    :cond_20
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    if-eq v0, v2, :cond_29

    .line 123
    invoke-virtual {v1, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_29
    :goto_29
    if-eqz v2, :cond_42

    .line 128
    iget v0, p0, Lio/ktor/network/selector/SelectorManagerSupport;->pending:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/ktor/network/selector/SelectorManagerSupport;->pending:I
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_1e

    goto :goto_42

    .line 131
    :goto_32
    invoke-interface {p2}, Lio/ktor/network/selector/Selectable;->getChannel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object p1

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 132
    :cond_3f
    invoke-virtual {p0, p2, v0}, Lio/ktor/network/selector/SelectorManagerSupport;->cancelAllSuspensions(Lio/ktor/network/selector/Selectable;Ljava/lang/Throwable;)V

    :cond_42
    :goto_42
    return-void
.end method

.method public final cancelAllSuspensions(Lio/ktor/network/selector/Selectable;Ljava/lang/Throwable;)V
    .registers 7

    const-string p0, "attachment"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "cause"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-interface {p1}, Lio/ktor/network/selector/Selectable;->getSuspensions()Lio/ktor/network/selector/InterestSuspensionsMap;

    move-result-object p0

    .line 42
    sget-object p1, Lio/ktor/network/selector/SelectInterest;->Companion:Lio/ktor/network/selector/SelectInterest$Companion;

    invoke-virtual {p1}, Lio/ktor/network/selector/SelectInterest$Companion;->getAllInterests()[Lio/ktor/network/selector/SelectInterest;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_30

    aget-object v2, p1, v1

    .line 43
    invoke-virtual {p0, v2}, Lio/ktor/network/selector/InterestSuspensionsMap;->removeSuspension(Lio/ktor/network/selector/SelectInterest;)Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 151
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_30
    return-void
.end method

.method public final cancelAllSuspensions(Ljava/nio/channels/Selector;Ljava/lang/Throwable;)V
    .registers 6

    const-string v0, "selector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_c

    .line 159
    new-instance p2, Lio/ktor/network/selector/SelectorManagerSupport$ClosedSelectorCancellationException;

    invoke-direct {p2}, Lio/ktor/network/selector/SelectorManagerSupport$ClosedSelectorCancellationException;-><init>()V

    .line 161
    :cond_c
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object p1

    const-string v0, "keys(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1869
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    .line 163
    :try_start_25
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2f

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_2f
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_25 .. :try_end_2f} :catch_2f

    .line 166
    :catch_2f
    :cond_2f
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lio/ktor/network/selector/Selectable;

    if-eqz v2, :cond_3a

    check-cast v1, Lio/ktor/network/selector/Selectable;

    goto :goto_3b

    :cond_3a
    const/4 v1, 0x0

    :goto_3b
    if-eqz v1, :cond_40

    invoke-virtual {p0, v1, p2}, Lio/ktor/network/selector/SelectorManagerSupport;->cancelAllSuspensions(Lio/ktor/network/selector/Selectable;Ljava/lang/Throwable;)V

    .line 167
    :cond_40
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    goto :goto_19

    :cond_44
    return-void
.end method

.method public final getCancelled()I
    .registers 1

    .line 30
    iget p0, p0, Lio/ktor/network/selector/SelectorManagerSupport;->cancelled:I

    return p0
.end method

.method public final getPending()I
    .registers 1

    .line 25
    iget p0, p0, Lio/ktor/network/selector/SelectorManagerSupport;->pending:I

    return p0
.end method

.method public final getProvider()Ljava/nio/channels/spi/SelectorProvider;
    .registers 1

    .line 20
    iget-object p0, p0, Lio/ktor/network/selector/SelectorManagerSupport;->provider:Ljava/nio/channels/spi/SelectorProvider;

    return-object p0
.end method

.method public final getSubject(Ljava/nio/channels/SelectionKey;)Lio/ktor/network/selector/Selectable;
    .registers 2

    .line 172
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lio/ktor/network/selector/Selectable;

    if-eqz p1, :cond_b

    check-cast p0, Lio/ktor/network/selector/Selectable;

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public final handleSelectedKey(Ljava/nio/channels/SelectionKey;)V
    .registers 10

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    :try_start_5
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v0

    .line 79
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    .line 81
    invoke-virtual {p0, p1}, Lio/ktor/network/selector/SelectorManagerSupport;->getSubject(Ljava/nio/channels/SelectionKey;)Lio/ktor/network/selector/Selectable;

    move-result-object v2

    if-nez v2, :cond_1f

    .line 83
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 84
    iget v0, p0, Lio/ktor/network/selector/SelectorManagerSupport;->cancelled:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/ktor/network/selector/SelectorManagerSupport;->cancelled:I

    goto :goto_6c

    :catchall_1d
    move-exception v0

    goto :goto_56

    .line 86
    :cond_1f
    invoke-interface {v2}, Lio/ktor/network/selector/Selectable;->getSuspensions()Lio/ktor/network/selector/InterestSuspensionsMap;

    move-result-object v2

    .line 32
    sget-object v3, Lio/ktor/network/selector/SelectInterest;->Companion:Lio/ktor/network/selector/SelectInterest$Companion;

    invoke-virtual {v3}, Lio/ktor/network/selector/SelectInterest$Companion;->getFlags()[I

    move-result-object v3

    .line 34
    array-length v4, v3

    const/4 v5, 0x0

    :goto_2b
    if-ge v5, v4, :cond_46

    .line 35
    aget v6, v3, v5

    and-int/2addr v6, v0

    if-eqz v6, :cond_43

    .line 36
    invoke-virtual {v2, v5}, Lio/ktor/network/selector/InterestSuspensionsMap;->removeSuspension(I)Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v6

    if-eqz v6, :cond_43

    .line 86
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v7}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_46
    not-int v0, v0

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_4d

    .line 90
    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_4d
    if-eqz v0, :cond_6c

    .line 94
    iget v0, p0, Lio/ktor/network/selector/SelectorManagerSupport;->pending:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/ktor/network/selector/SelectorManagerSupport;->pending:I
    :try_end_55
    .catchall {:try_start_5 .. :try_end_55} :catchall_1d

    goto :goto_6c

    .line 99
    :goto_56
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 100
    iget v1, p0, Lio/ktor/network/selector/SelectorManagerSupport;->cancelled:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/ktor/network/selector/SelectorManagerSupport;->cancelled:I

    .line 101
    invoke-virtual {p0, p1}, Lio/ktor/network/selector/SelectorManagerSupport;->getSubject(Ljava/nio/channels/SelectionKey;)Lio/ktor/network/selector/Selectable;

    move-result-object v1

    if-eqz v1, :cond_6c

    .line 102
    invoke-virtual {p0, v1, v0}, Lio/ktor/network/selector/SelectorManagerSupport;->cancelAllSuspensions(Lio/ktor/network/selector/Selectable;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, p1, v0}, Lio/ktor/network/selector/SelectorManagerSupport;->setSubject(Ljava/nio/channels/SelectionKey;Lio/ktor/network/selector/Selectable;)V

    :cond_6c
    :goto_6c
    return-void
.end method

.method public final handleSelectedKeys(Ljava/util/Set;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;",
            "Ljava/util/Set<",
            "+",
            "Ljava/nio/channels/SelectionKey;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selectedKeys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keys"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    .line 61
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    sub-int/2addr p2, v0

    iput p2, p0, Lio/ktor/network/selector/SelectorManagerSupport;->pending:I

    const/4 p2, 0x0

    .line 62
    iput p2, p0, Lio/ktor/network/selector/SelectorManagerSupport;->cancelled:I

    if-gtz v0, :cond_1b

    return-void

    .line 65
    :cond_1b
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 66
    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_32

    .line 67
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/nio/channels/SelectionKey;

    .line 68
    invoke-virtual {p0, p2}, Lio/ktor/network/selector/SelectorManagerSupport;->handleSelectedKey(Ljava/nio/channels/SelectionKey;)V

    .line 69
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1f

    :cond_32
    return-void
.end method

.method public abstract publishInterest(Lio/ktor/network/selector/Selectable;)V
.end method

.method public final select(Lio/ktor/network/selector/Selectable;Lio/ktor/network/selector/SelectInterest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/selector/Selectable;",
            "Lio/ktor/network/selector/SelectInterest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 38
    invoke-interface {p1}, Lio/ktor/network/selector/Selectable;->getInterestedOps()I

    move-result v0

    .line 39
    invoke-virtual {p2}, Lio/ktor/network/selector/SelectInterest;->getFlag()I

    move-result v1

    .line 41
    invoke-interface {p1}, Lio/ktor/network/selector/Selectable;->isClosed()Z

    move-result v2

    if-nez v2, :cond_54

    and-int v2, v0, v1

    if-eqz v2, :cond_4b

    .line 427
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 433
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 45
    sget-object v1, Lio/ktor/network/selector/SelectorManagerSupport$select$2$1;->INSTANCE:Lio/ktor/network/selector/SelectorManagerSupport$select$2$1;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 48
    invoke-interface {p1}, Lio/ktor/network/selector/Selectable;->getSuspensions()Lio/ktor/network/selector/InterestSuspensionsMap;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lio/ktor/network/selector/InterestSuspensionsMap;->addSuspension(Lio/ktor/network/selector/SelectInterest;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 50
    invoke-interface {v0}, Lkotlinx/coroutines/CancellableContinuation;->isCancelled()Z

    move-result p2

    if-nez p2, :cond_34

    .line 51
    invoke-virtual {p0, p1}, Lio/ktor/network/selector/SelectorManagerSupport;->publishInterest(Lio/ktor/network/selector/Selectable;)V

    .line 435
    :cond_34
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 426
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_41

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_41
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_48

    return-object p0

    .line 436
    :cond_48
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 42
    :cond_4b
    invoke-static {v0, v1}, Lio/ktor/network/selector/SelectorManagerSupportKt;->access$selectableIsInvalid(II)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    .line 41
    :cond_54
    invoke-static {}, Lio/ktor/network/selector/SelectorManagerSupportKt;->access$selectableIsClosed()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public final setCancelled(I)V
    .registers 2

    .line 30
    iput p1, p0, Lio/ktor/network/selector/SelectorManagerSupport;->cancelled:I

    return-void
.end method

.method public final setSubject(Ljava/nio/channels/SelectionKey;Lio/ktor/network/selector/Selectable;)V
    .registers 3

    .line 174
    invoke-virtual {p1, p2}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class io.ktor.network.selector.SelectorManagerSupport.ClosedSelectorCancellationException (io.ktor.network.selector.SelectorManagerSupport$ClosedSelectorCancellationException)
.class public final Lio/ktor/network/selector/SelectorManagerSupport$ClosedSelectorCancellationException;
.super Ljava/util/concurrent/CancellationException;
.source "SelectorManagerSupport.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/selector/SelectorManagerSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClosedSelectorCancellationException"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 177
    const-string v0, "Closed selector"

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    return-void
.end method

###### Class io.ktor.network.selector.SelectorManagerSupport$select$2$1 (io.ktor.network.selector.SelectorManagerSupport$select$2$1)
.class public final Lio/ktor/network/selector/SelectorManagerSupport$select$2$1;
.super Ljava/lang/Object;
.source "SelectorManagerSupport.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/selector/SelectorManagerSupport;->select(Lio/ktor/network/selector/Selectable;Lio/ktor/network/selector/SelectInterest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/network/selector/SelectorManagerSupport$select$2$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/ktor/network/selector/SelectorManagerSupport$select$2$1;

    invoke-direct {v0}, Lio/ktor/network/selector/SelectorManagerSupport$select$2$1;-><init>()V

    sput-object v0, Lio/ktor/network/selector/SelectorManagerSupport$select$2$1;->INSTANCE:Lio/ktor/network/selector/SelectorManagerSupport$select$2$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 45
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lio/ktor/network/selector/SelectorManagerSupport$select$2$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .registers 2

    .line 0
    return-void
.end method
