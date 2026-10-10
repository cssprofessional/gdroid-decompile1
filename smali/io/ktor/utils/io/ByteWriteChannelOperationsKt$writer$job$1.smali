###### Class io.ktor.utils.io.ByteWriteChannelOperationsKt$writer$job$1 (io.ktor.utils.io.ByteWriteChannelOperationsKt$writer$job$1)
.class public final Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ByteWriteChannelOperations.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->writer(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/ByteChannel;Lkotlin/jvm/functions/Function2;)Lio/ktor/utils/io/WriterJob;
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
    value = "SMAP\nByteWriteChannelOperations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteWriteChannelOperations.kt\nio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,248:1\n1#2:249\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.utils.io.ByteWriteChannelOperationsKt$writer$job$1"
    f = "ByteWriteChannelOperations.kt"
    l = {
        0xb9,
        0xc3,
        0xc4,
        0xc3,
        0xc4,
        0xc3,
        0xc4
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public final synthetic $block:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lio/ktor/utils/io/WriterScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $channel:Lio/ktor/utils/io/ByteChannel;

.field public I$0:I

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lio/ktor/utils/io/ByteChannel;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/utils/io/WriterScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lio/ktor/utils/io/ByteChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->$block:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->$channel:Lio/ktor/utils/io/ByteChannel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
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
    new-instance v0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;

    iget-object v1, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->$block:Lkotlin/jvm/functions/Function2;

    iget-object p0, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->$channel:Lio/ktor/utils/io/ByteChannel;

    invoke-direct {v0, v1, p0, p2}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;-><init>(Lkotlin/jvm/functions/Function2;Lio/ktor/utils/io/ByteChannel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    iget-object v0, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 182
    iget v2, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_19e

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_16
    iget-object v0, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->L$3:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    iget-object p0, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/CompletableJob;

    :try_start_22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_27

    goto/16 :goto_18b

    :catchall_27
    move-exception p0

    goto/16 :goto_193

    :pswitch_2a
    iget-object v2, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/CompletableJob;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v2

    goto/16 :goto_166

    :pswitch_38
    iget-object v0, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    iget-object p0, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/CompletableJob;

    :try_start_40
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_5b

    goto/16 :goto_149

    :pswitch_45
    iget-object v2, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CompletableJob;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_127

    :pswitch_4e
    iget-object v0, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    iget-object p0, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/CompletableJob;

    :try_start_56
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5b

    goto/16 :goto_f7

    :catchall_5b
    move-exception p0

    goto/16 :goto_fd

    :pswitch_5e
    iget-object v2, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CompletableJob;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_d5

    :pswitch_66
    iget-object v2, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CompletableJob;

    :try_start_6a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6e

    goto :goto_a1

    :catchall_6e
    move-exception p1

    move-object v4, v2

    goto/16 :goto_10a

    :pswitch_72
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 183
    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->Job(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    .line 185
    :try_start_81
    iget-object v2, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->$block:Lkotlin/jvm/functions/Function2;

    new-instance v4, Lio/ktor/utils/io/WriterScope;

    iget-object v5, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->$channel:Lio/ktor/utils/io/ByteChannel;

    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v6

    invoke-interface {v6, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lio/ktor/utils/io/WriterScope;-><init>(Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;)V

    iput-object v0, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->label:I

    invoke-interface {v2, v4, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_9d
    .catchall {:try_start_81 .. :try_end_9d} :catchall_107

    if-ne v2, v1, :cond_a0

    return-object v1

    :cond_a0
    move-object v2, p1

    .line 186
    :goto_a1
    :try_start_a1
    invoke-interface {v2}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 188
    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/Job;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_c3

    .line 189
    iget-object p1, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->$channel:Lio/ktor/utils/io/ByteChannel;

    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-static {v4}, Lkotlinx/coroutines/JobKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object v4

    invoke-virtual {p1, v4}, Lio/ktor/utils/io/ByteChannel;->cancel(Ljava/lang/Throwable;)V
    :try_end_c3
    .catchall {:try_start_a1 .. :try_end_c3} :catchall_6e

    .line 195
    :cond_c3
    iput-object v0, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->L$1:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->label:I

    invoke-interface {v2, p0}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_d5

    return-object v1

    .line 196
    :cond_d5
    :goto_d5
    iget-object p1, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->$channel:Lio/ktor/utils/io/ByteChannel;

    :try_start_d7
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->L$1:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->L$2:Ljava/lang/Object;

    iput v3, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->I$0:I

    const/4 v0, 0x3

    iput v0, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->label:I

    invoke-virtual {p1, p0}, Lio/ktor/utils/io/ByteChannel;->flushAndClose(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_f7

    return-object v1

    :cond_f7
    :goto_f7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_fc
    .catchall {:try_start_d7 .. :try_end_fc} :catchall_5b

    goto :goto_14e

    :goto_fd
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14e

    :catchall_107
    move-exception v2

    move-object v4, p1

    move-object p1, v2

    .line 192
    :goto_10a
    :try_start_10a
    const-string v2, "Exception thrown while writing to channel"

    invoke-static {v4, v2, p1}, Lkotlinx/coroutines/JobKt;->cancel(Lkotlinx/coroutines/Job;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    iget-object v2, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->$channel:Lio/ktor/utils/io/ByteChannel;

    invoke-virtual {v2, p1}, Lio/ktor/utils/io/ByteChannel;->cancel(Ljava/lang/Throwable;)V
    :try_end_114
    .catchall {:try_start_10a .. :try_end_114} :catchall_151

    .line 195
    iput-object v0, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->L$0:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->L$1:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->label:I

    invoke-interface {v4, p0}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_126

    return-object v1

    :cond_126
    move-object v2, v4

    .line 196
    :goto_127
    iget-object p1, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->$channel:Lio/ktor/utils/io/ByteChannel;

    :try_start_129
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->L$1:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->L$2:Ljava/lang/Object;

    iput v3, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->I$0:I

    const/4 v0, 0x5

    iput v0, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->label:I

    invoke-virtual {p1, p0}, Lio/ktor/utils/io/ByteChannel;->flushAndClose(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_149

    return-object v1

    :cond_149
    :goto_149
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14e
    .catchall {:try_start_129 .. :try_end_14e} :catchall_5b

    .line 198
    :goto_14e
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_151
    move-exception p1

    .line 195
    iput-object v0, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->L$0:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->L$1:Ljava/lang/Object;

    iput-object p1, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->L$2:Ljava/lang/Object;

    const/4 v2, 0x6

    iput v2, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->label:I

    invoke-interface {v4, p0}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_166

    return-object v1

    .line 196
    :cond_166
    :goto_166
    iget-object v2, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->$channel:Lio/ktor/utils/io/ByteChannel;

    :try_start_168
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->L$0:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->L$1:Ljava/lang/Object;

    iput-object p1, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->L$2:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->L$3:Ljava/lang/Object;

    iput v3, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->I$0:I

    const/4 v0, 0x7

    iput v0, p0, Lio/ktor/utils/io/ByteWriteChannelOperationsKt$writer$job$1;->label:I

    invoke-virtual {v2, p0}, Lio/ktor/utils/io/ByteChannel;->flushAndClose(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_187
    .catchall {:try_start_168 .. :try_end_187} :catchall_191

    if-ne p0, v1, :cond_18a

    return-object v1

    :cond_18a
    move-object v0, p1

    :goto_18b
    :try_start_18b
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_190
    .catchall {:try_start_18b .. :try_end_190} :catchall_27

    goto :goto_19c

    :catchall_191
    move-exception p0

    move-object v0, p1

    :goto_193
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_19c
    throw v0

    nop

    :pswitch_data_19e
    .packed-switch 0x0
        :pswitch_72
        :pswitch_66
        :pswitch_5e
        :pswitch_4e
        :pswitch_45
        :pswitch_38
        :pswitch_2a
        :pswitch_16
    .end packed-switch
.end method
