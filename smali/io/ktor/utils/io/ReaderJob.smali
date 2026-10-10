###### Class io.ktor.utils.io.ReaderJob (io.ktor.utils.io.ReaderJob)
.class public final Lio/ktor/utils/io/ReaderJob;
.super Ljava/lang/Object;
.source "ByteReadChannelOperations.kt"

# interfaces
.implements Lio/ktor/utils/io/ChannelJob;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteReadChannelOperations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteReadChannelOperations.kt\nio/ktor/utils/io/ReaderJob\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,621:1\n1321#2,2:622\n*S KotlinDebug\n*F\n+ 1 ByteReadChannelOperations.kt\nio/ktor/utils/io/ReaderJob\n*L\n309#1:622,2\n*E\n"
.end annotation


# instance fields
.field public final channel:Lio/ktor/utils/io/ByteWriteChannel;

.field public final job:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/ByteWriteChannel;Lkotlinx/coroutines/Job;)V
    .registers 4

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "job"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput-object p1, p0, Lio/ktor/utils/io/ReaderJob;->channel:Lio/ktor/utils/io/ByteWriteChannel;

    .line 298
    iput-object p2, p0, Lio/ktor/utils/io/ReaderJob;->job:Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final flushAndClose(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/utils/io/ReaderJob$flushAndClose$1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/ReaderJob$flushAndClose$1;

    iget v1, v0, Lio/ktor/utils/io/ReaderJob$flushAndClose$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/utils/io/ReaderJob$flushAndClose$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/ktor/utils/io/ReaderJob$flushAndClose$1;

    invoke-direct {v0, p0, p1}, Lio/ktor/utils/io/ReaderJob$flushAndClose$1;-><init>(Lio/ktor/utils/io/ReaderJob;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lio/ktor/utils/io/ReaderJob$flushAndClose$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 307
    iget v2, v0, Lio/ktor/utils/io/ReaderJob$flushAndClose$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_49

    if-eq v2, v5, :cond_37

    if-ne v2, v4, :cond_2f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a6

    :cond_2f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    iget v2, v0, Lio/ktor/utils/io/ReaderJob$flushAndClose$1;->I$0:I

    iget-object v7, v0, Lio/ktor/utils/io/ReaderJob$flushAndClose$1;->L$3:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/Job;

    iget-object v7, v0, Lio/ktor/utils/io/ReaderJob$flushAndClose$1;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/util/Iterator;

    iget-object v8, v0, Lio/ktor/utils/io/ReaderJob$flushAndClose$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlin/sequences/Sequence;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_62

    :cond_49
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 308
    invoke-virtual {p0}, Lio/ktor/utils/io/ReaderJob;->getJob()Lkotlinx/coroutines/Job;

    move-result-object p1

    invoke-static {p1, v6, v5, v6}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 309
    invoke-virtual {p0}, Lio/ktor/utils/io/ReaderJob;->getJob()Lkotlinx/coroutines/Job;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/Job;->getChildren()Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 1321
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v8, p1

    move-object v7, v2

    move v2, v3

    :cond_62
    :goto_62
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_93

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Lkotlinx/coroutines/Job;

    .line 310
    invoke-static {v9, v6, v5, v6}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 311
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v0, Lio/ktor/utils/io/ReaderJob$flushAndClose$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lio/ktor/utils/io/ReaderJob$flushAndClose$1;->L$1:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lio/ktor/utils/io/ReaderJob$flushAndClose$1;->L$2:Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lio/ktor/utils/io/ReaderJob$flushAndClose$1;->L$3:Ljava/lang/Object;

    iput v2, v0, Lio/ktor/utils/io/ReaderJob$flushAndClose$1;->I$0:I

    iput v3, v0, Lio/ktor/utils/io/ReaderJob$flushAndClose$1;->I$1:I

    iput v5, v0, Lio/ktor/utils/io/ReaderJob$flushAndClose$1;->label:I

    invoke-interface {v9, v0}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_62

    return-object v1

    .line 313
    :cond_93
    iget-object p0, p0, Lio/ktor/utils/io/ReaderJob;->channel:Lio/ktor/utils/io/ByteWriteChannel;

    iput-object v6, v0, Lio/ktor/utils/io/ReaderJob$flushAndClose$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lio/ktor/utils/io/ReaderJob$flushAndClose$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lio/ktor/utils/io/ReaderJob$flushAndClose$1;->L$2:Ljava/lang/Object;

    iput-object v6, v0, Lio/ktor/utils/io/ReaderJob$flushAndClose$1;->L$3:Ljava/lang/Object;

    iput v4, v0, Lio/ktor/utils/io/ReaderJob$flushAndClose$1;->label:I

    invoke-interface {p0, v0}, Lio/ktor/utils/io/ByteWriteChannel;->flushAndClose(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_a6

    return-object v1

    .line 314
    :cond_a6
    :goto_a6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final getChannel()Lio/ktor/utils/io/ByteWriteChannel;
    .registers 1

    .line 297
    iget-object p0, p0, Lio/ktor/utils/io/ReaderJob;->channel:Lio/ktor/utils/io/ByteWriteChannel;

    return-object p0
.end method

.method public getJob()Lkotlinx/coroutines/Job;
    .registers 1

    .line 298
    iget-object p0, p0, Lio/ktor/utils/io/ReaderJob;->job:Lkotlinx/coroutines/Job;

    return-object p0
.end method

###### Class io.ktor.utils.io.ReaderJob.AnonymousClass1 (io.ktor.utils.io.ReaderJob$flushAndClose$1)
.class public final Lio/ktor/utils/io/ReaderJob$flushAndClose$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ByteReadChannelOperations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/ReaderJob;->flushAndClose(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.utils.io.ReaderJob"
    f = "ByteReadChannelOperations.kt"
    l = {
        0x137,
        0x139
    }
    m = "flushAndClose"
    v = 0x1
.end annotation


# instance fields
.field public I$0:I

.field public I$1:I

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lio/ktor/utils/io/ReaderJob;


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/ReaderJob;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ReaderJob;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/ReaderJob$flushAndClose$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/utils/io/ReaderJob$flushAndClose$1;->this$0:Lio/ktor/utils/io/ReaderJob;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/ktor/utils/io/ReaderJob$flushAndClose$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/utils/io/ReaderJob$flushAndClose$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/utils/io/ReaderJob$flushAndClose$1;->label:I

    iget-object p1, p0, Lio/ktor/utils/io/ReaderJob$flushAndClose$1;->this$0:Lio/ktor/utils/io/ReaderJob;

    invoke-virtual {p1, p0}, Lio/ktor/utils/io/ReaderJob;->flushAndClose(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
