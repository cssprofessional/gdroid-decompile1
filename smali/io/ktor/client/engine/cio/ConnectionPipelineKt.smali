###### Class io.ktor.client.engine.cio.ConnectionPipelineKt (io.ktor.client.engine.cio.ConnectionPipelineKt)
.class public final Lio/ktor/client/engine/cio/ConnectionPipelineKt;
.super Ljava/lang/Object;
.source "ConnectionPipeline.kt"


# direct methods
.method public static final synthetic access$skipCancels(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;)Lkotlinx/coroutines/Job;
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lio/ktor/client/engine/cio/ConnectionPipelineKt;->skipCancels(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public static final skipCancels(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;)Lkotlinx/coroutines/Job;
    .registers 9

    .line 159
    new-instance v3, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;

    const/4 v0, 0x0

    invoke-direct {v3, p2, p1, v0}, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;-><init>(Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.client.engine.cio.ConnectionPipelineKt.AnonymousClass1 (io.ktor.client.engine.cio.ConnectionPipelineKt$skipCancels$1)
.class public final Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ConnectionPipeline.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/cio/ConnectionPipelineKt;->skipCancels(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;)Lkotlinx/coroutines/Job;
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
    value = "SMAP\nConnectionPipeline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionPipeline.kt\nio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1\n+ 2 Pool.kt\nio/ktor/utils/io/pool/PoolKt\n*L\n1#1,184:1\n182#2,5:185\n*S KotlinDebug\n*F\n+ 1 ConnectionPipeline.kt\nio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1\n*L\n161#1:185,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.client.engine.cio.ConnectionPipelineKt$skipCancels$1"
    f = "ConnectionPipeline.kt"
    l = {
        0xa5,
        0xaa,
        0xad,
        0xb5,
        0xb5
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public final synthetic $input:Lio/ktor/utils/io/ByteReadChannel;

.field public final synthetic $output:Lio/ktor/utils/io/ByteWriteChannel;

.field public I$0:I

.field public I$1:I

.field public I$2:I

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public L$5:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    iput-object p2, p0, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->$input:Lio/ktor/utils/io/ByteReadChannel;

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
    new-instance p1, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;

    iget-object v0, p0, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    iget-object p0, p0, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->$input:Lio/ktor/utils/io/ByteReadChannel;

    invoke-direct {p1, v0, p0, p2}, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;-><init>(Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 26

    move-object/from16 v7, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v8

    .line 159
    iget v0, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->label:I

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v0, :cond_bb

    if-eq v0, v13, :cond_9b

    if-eq v0, v12, :cond_5c

    if-eq v0, v11, :cond_30

    if-eq v0, v10, :cond_2b

    if-eq v0, v9, :cond_22

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    iget-object v0, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1bf

    :cond_2b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_198

    :cond_30
    iget v0, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->I$1:I

    iget v1, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->I$0:I

    iget-object v2, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v2, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    iget-object v3, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$3:Ljava/lang/Object;

    iget-object v4, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v5, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lio/ktor/utils/io/ByteReadChannel;

    iget-object v6, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lio/ktor/utils/io/pool/ObjectPool;

    :try_start_4a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_59

    move-object/from16 v22, v5

    move v5, v0

    move-object/from16 v0, v22

    move-object/from16 v23, v4

    move v4, v1

    move-object/from16 v1, v23

    goto/16 :goto_11f

    :catchall_59
    move-exception v0

    goto/16 :goto_19d

    :cond_5c
    iget v1, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->I$2:I

    iget v2, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->I$1:I

    iget v3, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->I$0:I

    iget-object v0, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$4:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/nio/ByteBuffer;

    iget-object v5, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$3:Ljava/lang/Object;

    iget-object v0, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$2:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v0, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$1:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Lio/ktor/utils/io/ByteReadChannel;

    iget-object v0, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$0:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lio/ktor/utils/io/pool/ObjectPool;

    :try_start_79
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_89

    move-object v1, v6

    move-object v0, v15

    move-object/from16 v6, v16

    move-object/from16 v22, v5

    move v5, v2

    move-object v2, v4

    move v4, v3

    move-object/from16 v3, v22

    goto/16 :goto_11f

    :catchall_89
    move-exception v0

    move v13, v3

    move-object v3, v0

    move v0, v2

    move-object/from16 v2, v16

    move-object/from16 v22, v15

    move-object v15, v4

    move-object/from16 v4, v22

    move-object/from16 v23, v6

    move-object v6, v5

    move-object/from16 v5, v23

    goto/16 :goto_130

    :cond_9b
    iget v0, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->I$1:I

    iget v1, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->I$0:I

    iget-object v2, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    iget-object v3, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$3:Ljava/lang/Object;

    iget-object v4, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v5, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lio/ktor/utils/io/ByteReadChannel;

    iget-object v6, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lio/ktor/utils/io/pool/ObjectPool;

    :try_start_b1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_59

    move-object/from16 v15, p1

    move-object v13, v5

    move-object v5, v4

    move-object v4, v2

    move v2, v0

    goto :goto_f3

    :cond_bb
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 161
    :try_start_be
    invoke-static {}, Lio/ktor/client/utils/CIOJvmKt;->getHttpClientDefaultPool()Lio/ktor/utils/io/pool/ByteBufferPool;

    move-result-object v6

    iget-object v0, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->$input:Lio/ktor/utils/io/ByteReadChannel;

    iget-object v1, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    .line 182
    invoke-interface {v6}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v3
    :try_end_ca
    .catchall {:try_start_be .. :try_end_ca} :catchall_19b

    .line 184
    :try_start_ca
    move-object v2, v3

    check-cast v2, Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    move v5, v4

    .line 163
    :goto_cf
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 165
    iput-object v6, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$0:Ljava/lang/Object;

    iput-object v0, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$1:Ljava/lang/Object;

    iput-object v1, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$2:Ljava/lang/Object;

    iput-object v3, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$3:Ljava/lang/Object;

    iput-object v2, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$4:Ljava/lang/Object;

    iput-object v14, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$5:Ljava/lang/Object;

    iput v4, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->I$0:I

    iput v5, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->I$1:I

    iput v13, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->label:I

    invoke-static {v0, v2, v7}, Lio/ktor/utils/io/ByteReadChannelOperations_jvmKt;->readAvailable(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v8, :cond_eb

    return-object v8

    :cond_eb
    move-object v13, v0

    move/from16 v22, v5

    move-object v5, v1

    move v1, v4

    move-object v4, v2

    move/from16 v2, v22

    :goto_f3
    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    if-ltz v15, :cond_17e

    .line 168
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_fe
    .catchall {:try_start_ca .. :try_end_fe} :catchall_59

    .line 170
    :try_start_fe
    iput-object v6, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$0:Ljava/lang/Object;

    iput-object v13, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$1:Ljava/lang/Object;

    iput-object v5, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$2:Ljava/lang/Object;

    iput-object v3, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$3:Ljava/lang/Object;

    iput-object v4, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$4:Ljava/lang/Object;

    iput v1, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->I$0:I

    iput v2, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->I$1:I

    iput v15, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->I$2:I

    iput v12, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->label:I

    invoke-static {v5, v4, v7}, Lio/ktor/utils/io/ByteWriteChannelOperations_jvmKt;->writeFully(Lio/ktor/utils/io/ByteWriteChannel;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_114
    .catchall {:try_start_fe .. :try_end_114} :catchall_121

    if-ne v0, v8, :cond_117

    return-object v8

    :cond_117
    move-object v0, v13

    move-object/from16 v22, v4

    move v4, v1

    move-object v1, v5

    move v5, v2

    move-object/from16 v2, v22

    :goto_11f
    const/4 v13, 0x1

    goto :goto_cf

    :catchall_121
    move-exception v0

    move-object/from16 v22, v3

    move-object v3, v0

    move v0, v2

    move-object v2, v6

    move-object/from16 v6, v22

    move-object/from16 v23, v13

    move v13, v1

    move v1, v15

    move-object v15, v4

    move-object/from16 v4, v23

    .line 173
    :goto_130
    :try_start_130
    iput-object v2, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$0:Ljava/lang/Object;

    iput-object v4, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$1:Ljava/lang/Object;

    iput-object v5, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$2:Ljava/lang/Object;

    iput-object v6, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$3:Ljava/lang/Object;

    iput-object v15, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$4:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$5:Ljava/lang/Object;

    iput v13, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->I$0:I

    iput v0, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->I$1:I

    iput v1, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->I$2:I

    iput v11, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->label:I
    :try_end_148
    .catchall {:try_start_130 .. :try_end_148} :catchall_178

    const-wide/16 v17, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object v1, v4

    move-object/from16 v21, v2

    move-wide/from16 v2, v17

    move-object/from16 v17, v4

    move-object/from16 v4, p0

    move-object/from16 v18, v5

    move/from16 v5, v19

    move-object/from16 v19, v6

    move-object/from16 v6, v20

    :try_start_15f
    invoke-static/range {v1 .. v6}, Lio/ktor/utils/io/ByteReadChannelOperationsKt;->discard$default(Lio/ktor/utils/io/ByteReadChannel;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_163
    .catchall {:try_start_15f .. :try_end_163} :catchall_172

    if-ne v1, v8, :cond_166

    return-object v8

    :cond_166
    move v5, v0

    move v4, v13

    move-object v2, v15

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v3, v19

    move-object/from16 v6, v21

    goto :goto_11f

    :catchall_172
    move-exception v0

    :goto_173
    move-object/from16 v3, v19

    move-object/from16 v6, v21

    goto :goto_19d

    :catchall_178
    move-exception v0

    move-object/from16 v21, v2

    move-object/from16 v19, v6

    goto :goto_173

    .line 176
    :cond_17e
    :try_start_17e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_180
    .catchall {:try_start_17e .. :try_end_180} :catchall_59

    .line 186
    :try_start_180
    invoke-interface {v6, v3}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V
    :try_end_183
    .catchall {:try_start_180 .. :try_end_183} :catchall_19b

    .line 181
    iget-object v0, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    iput-object v14, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$0:Ljava/lang/Object;

    iput-object v14, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$1:Ljava/lang/Object;

    iput-object v14, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$2:Ljava/lang/Object;

    iput-object v14, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$3:Ljava/lang/Object;

    iput-object v14, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$4:Ljava/lang/Object;

    iput v10, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->label:I

    invoke-interface {v0, v7}, Lio/ktor/utils/io/ByteWriteChannel;->flushAndClose(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_198

    return-object v8

    .line 183
    :cond_198
    :goto_198
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_19b
    move-exception v0

    goto :goto_1a1

    .line 186
    :goto_19d
    :try_start_19d
    invoke-interface {v6, v3}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    throw v0
    :try_end_1a1
    .catchall {:try_start_19d .. :try_end_1a1} :catchall_19b

    .line 178
    :goto_1a1
    :try_start_1a1
    iget-object v1, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {v1, v0}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->close(Lio/ktor/utils/io/ByteWriteChannel;Ljava/lang/Throwable;)V

    .line 179
    throw v0
    :try_end_1a7
    .catchall {:try_start_1a1 .. :try_end_1a7} :catchall_1a7

    :catchall_1a7
    move-exception v0

    .line 181
    iget-object v1, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    iput-object v0, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$0:Ljava/lang/Object;

    iput-object v14, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$1:Ljava/lang/Object;

    iput-object v14, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$2:Ljava/lang/Object;

    iput-object v14, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$3:Ljava/lang/Object;

    iput-object v14, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$4:Ljava/lang/Object;

    iput-object v14, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->L$5:Ljava/lang/Object;

    iput v9, v7, Lio/ktor/client/engine/cio/ConnectionPipelineKt$skipCancels$1;->label:I

    invoke-interface {v1, v7}, Lio/ktor/utils/io/ByteWriteChannel;->flushAndClose(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_1bf

    return-object v8

    .line 183
    :cond_1bf
    :goto_1bf
    throw v0
.end method
