###### Class in.dragonbra.javasteam.types.AsyncJobMultiple (in.dragonbra.javasteam.types.AsyncJobMultiple)
.class public final Lin/dragonbra/javasteam/types/AsyncJobMultiple;
.super Lin/dragonbra/javasteam/types/AsyncJob;
.source "AsyncJobMultiple.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/types/AsyncJobMultiple$ResultSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;",
        ">",
        "Lin/dragonbra/javasteam/types/AsyncJob;"
    }
.end annotation


# instance fields
.field private final finishCondition:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final future:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/types/AsyncJobMultiple$ResultSet<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lin/dragonbra/javasteam/types/JobID;Lkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/steamclient/SteamClient;",
            "Lin/dragonbra/javasteam/types/JobID;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jobId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finishCondition"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2}, Lin/dragonbra/javasteam/types/AsyncJob;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lin/dragonbra/javasteam/types/JobID;)V

    .line 18
    iput-object p3, p0, Lin/dragonbra/javasteam/types/AsyncJobMultiple;->finishCondition:Lkotlin/jvm/functions/Function1;

    .line 27
    new-instance p2, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object p2, p0, Lin/dragonbra/javasteam/types/AsyncJobMultiple;->future:Ljava/util/concurrent/CompletableFuture;

    .line 29
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lin/dragonbra/javasteam/types/AsyncJobMultiple;->results:Ljava/util/List;

    .line 32
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/types/AsyncJob;->registerJob(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;)V

    return-void
.end method


# virtual methods
.method public addResult(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)Z
    .registers 5

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lin/dragonbra/javasteam/types/AsyncJobMultiple;->results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lin/dragonbra/javasteam/types/AsyncJobMultiple;->finishCondition:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_31

    .line 54
    iget-object p1, p0, Lin/dragonbra/javasteam/types/AsyncJobMultiple;->future:Ljava/util/concurrent/CompletableFuture;

    new-instance v1, Lin/dragonbra/javasteam/types/AsyncJobMultiple$ResultSet;

    iget-object p0, p0, Lin/dragonbra/javasteam/types/AsyncJobMultiple;->results:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const-string v2, "unmodifiableList(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0, p0}, Lin/dragonbra/javasteam/types/AsyncJobMultiple$ResultSet;-><init>(ZZLjava/util/List;)V

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_34

    .line 57
    :cond_31
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/AsyncJob;->heartbeat()V

    :goto_34
    return v0
.end method

.method public final await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/types/AsyncJobMultiple$ResultSet<",
            "TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lin/dragonbra/javasteam/types/AsyncJobMultiple$await$1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lin/dragonbra/javasteam/types/AsyncJobMultiple$await$1;

    iget v1, v0, Lin/dragonbra/javasteam/types/AsyncJobMultiple$await$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lin/dragonbra/javasteam/types/AsyncJobMultiple$await$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lin/dragonbra/javasteam/types/AsyncJobMultiple$await$1;

    invoke-direct {v0, p0, p1}, Lin/dragonbra/javasteam/types/AsyncJobMultiple$await$1;-><init>(Lin/dragonbra/javasteam/types/AsyncJobMultiple;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lin/dragonbra/javasteam/types/AsyncJobMultiple$await$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 40
    iget v2, v0, Lin/dragonbra/javasteam/types/AsyncJobMultiple$await$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3f

    :cond_29
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p0, p0, Lin/dragonbra/javasteam/types/AsyncJobMultiple;->future:Ljava/util/concurrent/CompletableFuture;

    iput v3, v0, Lin/dragonbra/javasteam/types/AsyncJobMultiple$await$1;->label:I

    invoke-static {p0, v0}, Lkotlinx/coroutines/future/FutureKt;->await(Ljava/util/concurrent/CompletionStage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3f

    return-object v1

    :cond_3f
    :goto_3f
    const-string p0, "await(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final runBlock()Lin/dragonbra/javasteam/types/AsyncJobMultiple$ResultSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lin/dragonbra/javasteam/types/AsyncJobMultiple$ResultSet<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/AsyncJobMultiple;->toFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "get(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lin/dragonbra/javasteam/types/AsyncJobMultiple$ResultSet;

    return-object p0
.end method

.method public setFailed(Z)V
    .registers 5

    .line 63
    iget-object v0, p0, Lin/dragonbra/javasteam/types/AsyncJobMultiple;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_15

    .line 67
    iget-object p0, p0, Lin/dragonbra/javasteam/types/AsyncJobMultiple;->future:Ljava/util/concurrent/CompletableFuture;

    new-instance p1, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobFailedException;

    invoke-direct {p1}, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobFailedException;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_32

    .line 70
    :cond_15
    iget-object p0, p0, Lin/dragonbra/javasteam/types/AsyncJobMultiple;->future:Ljava/util/concurrent/CompletableFuture;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    goto :goto_32

    .line 73
    :cond_1c
    new-instance v0, Lin/dragonbra/javasteam/types/AsyncJobMultiple$ResultSet;

    iget-object v1, p0, Lin/dragonbra/javasteam/types/AsyncJobMultiple;->results:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const-string v2, "unmodifiableList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1}, Lin/dragonbra/javasteam/types/AsyncJobMultiple$ResultSet;-><init>(ZZLjava/util/List;)V

    .line 74
    iget-object p0, p0, Lin/dragonbra/javasteam/types/AsyncJobMultiple;->future:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :goto_32
    return-void
.end method

.method public final toDeferred()Ljava/util/concurrent/CompletableFuture;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/types/AsyncJobMultiple$ResultSet<",
            "TT;>;>;"
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/AsyncJobMultiple;->toFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final toFuture()Ljava/util/concurrent/CompletableFuture;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/types/AsyncJobMultiple$ResultSet<",
            "TT;>;>;"
        }
    .end annotation

    .line 38
    iget-object p0, p0, Lin/dragonbra/javasteam/types/AsyncJobMultiple;->future:Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

###### Class in.dragonbra.javasteam.types.AsyncJobMultiple.ResultSet (in.dragonbra.javasteam.types.AsyncJobMultiple$ResultSet)
.class public final Lin/dragonbra/javasteam/types/AsyncJobMultiple$ResultSet;
.super Ljava/lang/Object;
.source "AsyncJobMultiple.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/types/AsyncJobMultiple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResultSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private complete:Z

.field private failed:Z

.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 0
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lin/dragonbra/javasteam/types/AsyncJobMultiple$ResultSet;-><init>(ZZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "results"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean p1, p0, Lin/dragonbra/javasteam/types/AsyncJobMultiple$ResultSet;->complete:Z

    .line 23
    iput-boolean p2, p0, Lin/dragonbra/javasteam/types/AsyncJobMultiple$ResultSet;->failed:Z

    .line 24
    iput-object p3, p0, Lin/dragonbra/javasteam/types/AsyncJobMultiple$ResultSet;->results:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ZZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move p1, v0

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_b

    move p2, v0

    :cond_b
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_13

    .line 24
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 21
    :cond_13
    invoke-direct {p0, p1, p2, p3}, Lin/dragonbra/javasteam/types/AsyncJobMultiple$ResultSet;-><init>(ZZLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getComplete()Z
    .registers 1

    .line 22
    iget-boolean p0, p0, Lin/dragonbra/javasteam/types/AsyncJobMultiple$ResultSet;->complete:Z

    return p0
.end method

.method public final getFailed()Z
    .registers 1

    .line 23
    iget-boolean p0, p0, Lin/dragonbra/javasteam/types/AsyncJobMultiple$ResultSet;->failed:Z

    return p0
.end method

.method public final getResults()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 24
    iget-object p0, p0, Lin/dragonbra/javasteam/types/AsyncJobMultiple$ResultSet;->results:Ljava/util/List;

    return-object p0
.end method

.method public final setComplete(Z)V
    .registers 2

    .line 22
    iput-boolean p1, p0, Lin/dragonbra/javasteam/types/AsyncJobMultiple$ResultSet;->complete:Z

    return-void
.end method

.method public final setFailed(Z)V
    .registers 2

    .line 23
    iput-boolean p1, p0, Lin/dragonbra/javasteam/types/AsyncJobMultiple$ResultSet;->failed:Z

    return-void
.end method

.method public final setResults(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lin/dragonbra/javasteam/types/AsyncJobMultiple$ResultSet;->results:Ljava/util/List;

    return-void
.end method

###### Class in.dragonbra.javasteam.types.AsyncJobMultiple.AnonymousClass1 (in.dragonbra.javasteam.types.AsyncJobMultiple$await$1)
.class final Lin/dragonbra/javasteam/types/AsyncJobMultiple$await$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "AsyncJobMultiple.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/types/AsyncJobMultiple;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.types.AsyncJobMultiple"
    f = "AsyncJobMultiple.kt"
    l = {
        0x28
    }
    m = "await"
    v = 0x1
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lin/dragonbra/javasteam/types/AsyncJobMultiple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lin/dragonbra/javasteam/types/AsyncJobMultiple<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/types/AsyncJobMultiple;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/types/AsyncJobMultiple<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/types/AsyncJobMultiple$await$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/types/AsyncJobMultiple$await$1;->this$0:Lin/dragonbra/javasteam/types/AsyncJobMultiple;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/types/AsyncJobMultiple$await$1;->result:Ljava/lang/Object;

    iget p1, p0, Lin/dragonbra/javasteam/types/AsyncJobMultiple$await$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lin/dragonbra/javasteam/types/AsyncJobMultiple$await$1;->label:I

    iget-object p1, p0, Lin/dragonbra/javasteam/types/AsyncJobMultiple$await$1;->this$0:Lin/dragonbra/javasteam/types/AsyncJobMultiple;

    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/types/AsyncJobMultiple;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
