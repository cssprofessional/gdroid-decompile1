###### Class in.dragonbra.javasteam.types.AsyncJobSingle (in.dragonbra.javasteam.types.AsyncJobSingle)
.class public final Lin/dragonbra/javasteam/types/AsyncJobSingle;
.super Lin/dragonbra/javasteam/types/AsyncJob;
.source "AsyncJobSingle.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;",
        ">",
        "Lin/dragonbra/javasteam/types/AsyncJob;"
    }
.end annotation


# instance fields
.field private final future:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lin/dragonbra/javasteam/types/JobID;)V
    .registers 4

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jobId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2}, Lin/dragonbra/javasteam/types/AsyncJob;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lin/dragonbra/javasteam/types/JobID;)V

    .line 16
    new-instance p2, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object p2, p0, Lin/dragonbra/javasteam/types/AsyncJobSingle;->future:Ljava/util/concurrent/CompletableFuture;

    .line 19
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/types/AsyncJob;->registerJob(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;)V

    return-void
.end method


# virtual methods
.method public addResult(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)Z
    .registers 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object p0, p0, Lin/dragonbra/javasteam/types/AsyncJobSingle;->future:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lin/dragonbra/javasteam/types/AsyncJobSingle$await$1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lin/dragonbra/javasteam/types/AsyncJobSingle$await$1;

    iget v1, v0, Lin/dragonbra/javasteam/types/AsyncJobSingle$await$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lin/dragonbra/javasteam/types/AsyncJobSingle$await$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lin/dragonbra/javasteam/types/AsyncJobSingle$await$1;

    invoke-direct {v0, p0, p1}, Lin/dragonbra/javasteam/types/AsyncJobSingle$await$1;-><init>(Lin/dragonbra/javasteam/types/AsyncJobSingle;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lin/dragonbra/javasteam/types/AsyncJobSingle$await$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 27
    iget v2, v0, Lin/dragonbra/javasteam/types/AsyncJobSingle$await$1;->label:I

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

    iget-object p0, p0, Lin/dragonbra/javasteam/types/AsyncJobSingle;->future:Ljava/util/concurrent/CompletableFuture;

    iput v3, v0, Lin/dragonbra/javasteam/types/AsyncJobSingle$await$1;->label:I

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

.method public final runBlock()Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->toFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "get(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;

    return-object p0
.end method

.method public setFailed(Z)V
    .registers 2

    if-eqz p1, :cond_d

    .line 46
    iget-object p0, p0, Lin/dragonbra/javasteam/types/AsyncJobSingle;->future:Ljava/util/concurrent/CompletableFuture;

    new-instance p1, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobFailedException;

    invoke-direct {p1}, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobFailedException;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_13

    .line 49
    :cond_d
    iget-object p0, p0, Lin/dragonbra/javasteam/types/AsyncJobSingle;->future:Ljava/util/concurrent/CompletableFuture;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    :goto_13
    return-void
.end method

.method public final toDeferred()Ljava/util/concurrent/CompletableFuture;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->toFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final toFuture()Ljava/util/concurrent/CompletableFuture;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 25
    iget-object p0, p0, Lin/dragonbra/javasteam/types/AsyncJobSingle;->future:Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

###### Class in.dragonbra.javasteam.types.AsyncJobSingle.AnonymousClass1 (in.dragonbra.javasteam.types.AsyncJobSingle$await$1)
.class final Lin/dragonbra/javasteam/types/AsyncJobSingle$await$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "AsyncJobSingle.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/types/AsyncJobSingle;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.types.AsyncJobSingle"
    f = "AsyncJobSingle.kt"
    l = {
        0x1b
    }
    m = "await"
    v = 0x1
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/types/AsyncJobSingle;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle$await$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/types/AsyncJobSingle$await$1;->this$0:Lin/dragonbra/javasteam/types/AsyncJobSingle;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/types/AsyncJobSingle$await$1;->result:Ljava/lang/Object;

    iget p1, p0, Lin/dragonbra/javasteam/types/AsyncJobSingle$await$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lin/dragonbra/javasteam/types/AsyncJobSingle$await$1;->label:I

    iget-object p1, p0, Lin/dragonbra/javasteam/types/AsyncJobSingle$await$1;->this$0:Lin/dragonbra/javasteam/types/AsyncJobSingle;

    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
