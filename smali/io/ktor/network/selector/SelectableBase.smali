###### Class io.ktor.network.selector.SelectableBase (io.ktor.network.selector.SelectableBase)
.class public abstract Lio/ktor/network/selector/SelectableBase;
.super Ljava/lang/Object;
.source "SelectableBase.kt"

# interfaces
.implements Lio/ktor/network/selector/Selectable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectableBase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectableBase.kt\nio/ktor/network/selector/SelectableBase\n+ 2 InterestSuspensionsMap.kt\nio/ktor/network/selector/InterestSuspensionsMap\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,43:1\n42#2,2:44\n45#2:47\n1#3:46\n*S KotlinDebug\n*F\n+ 1 SelectableBase.kt\nio/ktor/network/selector/SelectableBase\n*L\n38#1:44,2\n38#1:47\n38#1:46\n*E\n"
.end annotation


# static fields
.field public static final synthetic _interestedOps$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _interestedOps:I

.field public final _isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final suspensions:Lio/ktor/network/selector/InterestSuspensionsMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    const-class v0, Lio/ktor/network/selector/SelectableBase;

    const-string v1, "_interestedOps"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/network/selector/SelectableBase;->_interestedOps$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/ktor/network/selector/SelectableBase;->_isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    new-instance v0, Lio/ktor/network/selector/InterestSuspensionsMap;

    invoke-direct {v0}, Lio/ktor/network/selector/InterestSuspensionsMap;-><init>()V

    iput-object v0, p0, Lio/ktor/network/selector/SelectableBase;->suspensions:Lio/ktor/network/selector/InterestSuspensionsMap;

    .line 20
    iput v1, p0, Lio/ktor/network/selector/SelectableBase;->_interestedOps:I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 7

    .line 35
    iget-object v0, p0, Lio/ktor/network/selector/SelectableBase;->_isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 37
    :cond_b
    iput v2, p0, Lio/ktor/network/selector/SelectableBase;->_interestedOps:I

    .line 38
    invoke-virtual {p0}, Lio/ktor/network/selector/SelectableBase;->getSuspensions()Lio/ktor/network/selector/InterestSuspensionsMap;

    move-result-object p0

    .line 42
    sget-object v0, Lio/ktor/network/selector/SelectInterest;->Companion:Lio/ktor/network/selector/SelectInterest$Companion;

    invoke-virtual {v0}, Lio/ktor/network/selector/SelectInterest$Companion;->getAllInterests()[Lio/ktor/network/selector/SelectInterest;

    move-result-object v0

    array-length v3, v0

    :goto_18
    if-ge v2, v3, :cond_36

    aget-object v4, v0, v2

    .line 43
    invoke-virtual {p0, v4}, Lio/ktor/network/selector/InterestSuspensionsMap;->removeSuspension(Lio/ktor/network/selector/SelectInterest;)Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v4

    if-eqz v4, :cond_34

    .line 39
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v5, Lio/ktor/network/selector/ClosedChannelCancellationException;

    invoke-direct {v5}, Lio/ktor/network/selector/ClosedChannelCancellationException;-><init>()V

    invoke-static {v5}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_34
    add-int/2addr v2, v1

    goto :goto_18

    :cond_36
    return-void
.end method

.method public getInterestedOps()I
    .registers 1

    .line 22
    iget p0, p0, Lio/ktor/network/selector/SelectableBase;->_interestedOps:I

    return p0
.end method

.method public getSuspensions()Lio/ktor/network/selector/InterestSuspensionsMap;
    .registers 1

    .line 15
    iget-object p0, p0, Lio/ktor/network/selector/SelectableBase;->suspensions:Lio/ktor/network/selector/InterestSuspensionsMap;

    return-object p0
.end method

.method public interestOp(Lio/ktor/network/selector/SelectInterest;Z)V
    .registers 6

    const-string v0, "interest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lio/ktor/network/selector/SelectInterest;->getFlag()I

    move-result p1

    .line 28
    :cond_9
    iget v0, p0, Lio/ktor/network/selector/SelectableBase;->_interestedOps:I

    if-eqz p2, :cond_10

    or-int v1, v0, p1

    goto :goto_12

    :cond_10
    not-int v1, p1

    and-int/2addr v1, v0

    .line 30
    :goto_12
    sget-object v2, Lio/ktor/network/selector/SelectableBase;->_interestedOps$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void
.end method

.method public isClosed()Z
    .registers 1

    .line 18
    iget-object p0, p0, Lio/ktor/network/selector/SelectableBase;->_isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method
