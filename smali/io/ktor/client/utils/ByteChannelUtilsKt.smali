###### Class io.ktor.client.utils.ByteChannelUtilsKt (io.ktor.client.utils.ByteChannelUtilsKt)
.class public final Lio/ktor/client/utils/ByteChannelUtilsKt;
.super Ljava/lang/Object;
.source "ByteChannelUtils.kt"


# direct methods
.method public static final observable(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Long;Lio/ktor/client/content/ProgressListener;)Lio/ktor/utils/io/ByteReadChannel;
    .registers 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    new-instance v1, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p3, p2, v2}, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;-><init>(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/client/content/ProgressListener;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x1

    invoke-static {v0, p1, p0, v1}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->writer(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ZLkotlin/jvm/functions/Function2;)Lio/ktor/utils/io/WriterJob;

    move-result-object p0

    .line 34
    invoke-virtual {p0}, Lio/ktor/utils/io/WriterJob;->getChannel()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.client.utils.ByteChannelUtilsKt.AnonymousClass1 (io.ktor.client.utils.ByteChannelUtilsKt$observable$1)
.class public final Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ByteChannelUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/utils/ByteChannelUtilsKt;->observable(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Long;Lio/ktor/client/content/ProgressListener;)Lio/ktor/utils/io/ByteReadChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteChannelUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteChannelUtils.kt\nio/ktor/client/utils/ByteChannelUtilsKt$observable$1\n+ 2 Pool.kt\nio/ktor/utils/io/pool/PoolKt\n*L\n1#1,35:1\n182#2,5:36\n*S KotlinDebug\n*F\n+ 1 ByteChannelUtils.kt\nio/ktor/client/utils/ByteChannelUtilsKt$observable$1\n*L\n19#1:36,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.client.utils.ByteChannelUtilsKt$observable$1"
    f = "ByteChannelUtils.kt"
    l = {
        0x16,
        0x18,
        0x1a,
        0x1f
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public final synthetic $contentLength:Ljava/lang/Long;

.field public final synthetic $listener:Lio/ktor/client/content/ProgressListener;

.field public final synthetic $this_observable:Lio/ktor/utils/io/ByteReadChannel;

.field public I$0:I

.field public I$1:I

.field public I$2:I

.field public J$0:J

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public L$5:Ljava/lang/Object;

.field public L$6:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/client/content/ProgressListener;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/client/content/ProgressListener;",
            "Ljava/lang/Long;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->$this_observable:Lio/ktor/utils/io/ByteReadChannel;

    iput-object p2, p0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->$listener:Lio/ktor/client/content/ProgressListener;

    iput-object p3, p0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->$contentLength:Ljava/lang/Long;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
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
    new-instance v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;

    iget-object v1, p0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->$this_observable:Lio/ktor/utils/io/ByteReadChannel;

    iget-object v2, p0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->$listener:Lio/ktor/client/content/ProgressListener;

    iget-object p0, p0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->$contentLength:Ljava/lang/Long;

    invoke-direct {v0, v1, v2, p0, p2}, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;-><init>(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/client/content/ProgressListener;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Lio/ktor/utils/io/WriterScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/WriterScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lio/ktor/utils/io/WriterScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->invoke(Lio/ktor/utils/io/WriterScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/ktor/utils/io/WriterScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v8

    .line 18
    iget v2, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->label:I

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eqz v2, :cond_c8

    if-eq v2, v14, :cond_99

    if-eq v2, v13, :cond_6c

    if-eq v2, v12, :cond_39

    if-ne v2, v11, :cond_31

    iget-object v1, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$4:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    iget-object v1, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$3:Ljava/lang/Object;

    check-cast v1, [B

    iget-object v1, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$2:Ljava/lang/Object;

    iget-object v0, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lio/ktor/utils/io/pool/ObjectPool;

    :try_start_29
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2e

    goto/16 :goto_1f6

    :catchall_2e
    move-exception v0

    goto/16 :goto_200

    :cond_31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    iget-wide v2, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->J$0:J

    iget v4, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->I$1:I

    iget v5, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->I$0:I

    iget-object v6, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$6:Ljava/lang/Object;

    check-cast v6, [B

    iget-object v7, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$5:Ljava/lang/Object;

    iget-object v11, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$4:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    iget-object v9, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lio/ktor/client/content/ProgressListener;

    iget-object v10, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lio/ktor/utils/io/ByteReadChannel;

    iget-object v12, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lio/ktor/utils/io/pool/ObjectPool;

    :try_start_55
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_67

    move v15, v5

    move-object v5, v9

    const/4 v13, 0x3

    move-object v9, v1

    move-object/from16 v22, v12

    move v12, v4

    move-object v4, v10

    move-object v10, v7

    move-object v7, v6

    move-object v6, v11

    move-object/from16 v11, v22

    goto/16 :goto_19d

    :catchall_67
    move-exception v0

    move-object v1, v7

    move-object v2, v12

    goto/16 :goto_200

    :cond_6c
    iget v2, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->I$2:I

    iget-wide v3, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->J$0:J

    iget v5, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->I$1:I

    iget v6, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->I$0:I

    iget-object v7, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$6:Ljava/lang/Object;

    check-cast v7, [B

    iget-object v9, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$5:Ljava/lang/Object;

    iget-object v10, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$4:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    iget-object v11, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$3:Ljava/lang/Object;

    check-cast v11, Lio/ktor/client/content/ProgressListener;

    iget-object v12, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$2:Ljava/lang/Object;

    check-cast v12, Lio/ktor/utils/io/ByteReadChannel;

    iget-object v15, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$1:Ljava/lang/Object;

    check-cast v15, Lio/ktor/utils/io/pool/ObjectPool;

    :try_start_8a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_94

    move-object/from16 v22, v12

    move-object v12, v10

    move-object/from16 v10, v22

    goto/16 :goto_16f

    :catchall_94
    move-exception v0

    move-object v1, v9

    move-object v2, v15

    goto/16 :goto_200

    :cond_99
    iget-wide v2, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->J$0:J

    iget v4, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->I$1:I

    iget v5, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->I$0:I

    iget-object v6, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$6:Ljava/lang/Object;

    check-cast v6, [B

    iget-object v7, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$5:Ljava/lang/Object;

    iget-object v9, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$4:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    iget-object v10, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$3:Ljava/lang/Object;

    check-cast v10, Lio/ktor/client/content/ProgressListener;

    iget-object v11, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lio/ktor/utils/io/ByteReadChannel;

    iget-object v12, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lio/ktor/utils/io/pool/ObjectPool;

    :try_start_b5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_b8
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_67

    move v15, v5

    move-object v5, v10

    move-object v10, v7

    move-object v7, v6

    move-object v6, v9

    move-object v9, v1

    move-object/from16 v1, p1

    move-object/from16 v22, v12

    move v12, v4

    move-object v4, v11

    move-object/from16 v11, v22

    goto/16 :goto_133

    :cond_c8
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 19
    invoke-static {}, Lio/ktor/utils/io/pool/ByteArrayPoolKt;->getByteArrayPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v2

    iget-object v3, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->$this_observable:Lio/ktor/utils/io/ByteReadChannel;

    iget-object v4, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->$listener:Lio/ktor/client/content/ProgressListener;

    iget-object v5, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->$contentLength:Ljava/lang/Long;

    .line 182
    invoke-interface {v2}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v6

    .line 184
    :try_start_d9
    move-object v7, v6

    check-cast v7, [B
    :try_end_dc
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_1fe

    move-object v9, v1

    move-object v11, v2

    move-object v10, v6

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    const-wide/16 v2, 0x0

    .line 21
    :goto_e6
    :try_start_e6
    invoke-interface {v4}, Lio/ktor/utils/io/ByteReadChannel;->isClosedForRead()Z

    move-result v1

    if-nez v1, :cond_1a5

    .line 22
    iput-object v9, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$0:Ljava/lang/Object;

    iput-object v11, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$3:Ljava/lang/Object;

    iput-object v6, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$4:Ljava/lang/Object;

    iput-object v10, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$5:Ljava/lang/Object;

    iput-object v7, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$6:Ljava/lang/Object;

    iput v15, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->I$0:I

    iput v12, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->I$1:I

    iput-wide v2, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->J$0:J

    iput v14, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->label:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x6

    const/16 v19, 0x0

    move-object v1, v4

    move/from16 p1, v15

    move-wide v14, v2

    move-object v2, v7

    move/from16 v3, v16

    move-object/from16 v16, v4

    move/from16 v4, v17

    move-object/from16 v20, v5

    move-object/from16 v5, p0

    move-object/from16 v21, v6

    move/from16 v6, v18

    move-object/from16 v17, v7

    move-object/from16 v7, v19

    invoke-static/range {v1 .. v7}, Lio/ktor/utils/io/ByteReadChannelOperationsKt;->readAvailable$default(Lio/ktor/utils/io/ByteReadChannel;[BIILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_128

    return-object v8

    :cond_128
    move-wide v2, v14

    move-object/from16 v4, v16

    move-object/from16 v7, v17

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move/from16 v15, p1

    :goto_133
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-lez v1, :cond_19e

    .line 24
    invoke-virtual {v9}, Lio/ktor/utils/io/WriterScope;->getChannel()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v14

    iput-object v9, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$0:Ljava/lang/Object;

    iput-object v11, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$3:Ljava/lang/Object;

    iput-object v6, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$4:Ljava/lang/Object;

    iput-object v10, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$5:Ljava/lang/Object;

    iput-object v7, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$6:Ljava/lang/Object;

    iput v15, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->I$0:I

    iput v12, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->I$1:I

    iput-wide v2, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->J$0:J

    iput v1, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->I$2:I

    iput v13, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->label:I

    const/4 v13, 0x0

    invoke-static {v14, v7, v13, v1, v0}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->writeFully(Lio/ktor/utils/io/ByteWriteChannel;[BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14
    :try_end_15c
    .catchall {:try_start_e6 .. :try_end_15c} :catchall_1a1

    if-ne v14, v8, :cond_15f

    return-object v8

    :cond_15f
    move-wide/from16 v22, v2

    move v2, v1

    move-object v1, v9

    move-object v9, v10

    move-object v10, v4

    move-wide/from16 v3, v22

    move-object/from16 v24, v11

    move-object v11, v5

    move v5, v12

    move-object v12, v6

    move v6, v15

    move-object/from16 v15, v24

    :goto_16f
    int-to-long v13, v2

    add-long/2addr v3, v13

    .line 26
    :try_start_171
    iput-object v1, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$0:Ljava/lang/Object;

    iput-object v15, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$1:Ljava/lang/Object;

    iput-object v10, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$2:Ljava/lang/Object;

    iput-object v11, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$3:Ljava/lang/Object;

    iput-object v12, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$4:Ljava/lang/Object;

    iput-object v9, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$5:Ljava/lang/Object;

    iput-object v7, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$6:Ljava/lang/Object;

    iput v6, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->I$0:I

    iput v5, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->I$1:I

    iput-wide v3, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->J$0:J

    iput v2, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->I$2:I

    const/4 v13, 0x3

    iput v13, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->label:I

    invoke-interface {v11, v3, v4, v12, v0}, Lio/ktor/client/content/ProgressListener;->onProgress(JLjava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_18e
    .catchall {:try_start_171 .. :try_end_18e} :catchall_94

    if-ne v2, v8, :cond_191

    return-object v8

    :cond_191
    move-wide v2, v3

    move-object v4, v10

    move-object v10, v9

    move-object v9, v1

    move-object/from16 v22, v12

    move v12, v5

    move-object v5, v11

    move-object v11, v15

    move v15, v6

    move-object/from16 v6, v22

    :goto_19d
    const/4 v13, 0x2

    :cond_19e
    const/4 v14, 0x1

    goto/16 :goto_e6

    :catchall_1a1
    move-exception v0

    move-object v1, v10

    move-object v2, v11

    goto :goto_200

    :cond_1a5
    move-object/from16 v16, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v17, v7

    move/from16 p1, v15

    move-wide v14, v2

    .line 28
    :try_start_1b0
    invoke-interface/range {v16 .. v16}, Lio/ktor/utils/io/ByteReadChannel;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 29
    invoke-virtual {v9}, Lio/ktor/utils/io/WriterScope;->getChannel()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v2

    invoke-static {v2, v1}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->close(Lio/ktor/utils/io/ByteWriteChannel;Ljava/lang/Throwable;)V

    if-nez v1, :cond_1f4

    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-nez v2, :cond_1f4

    .line 31
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$0:Ljava/lang/Object;

    iput-object v11, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$1:Ljava/lang/Object;

    iput-object v10, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$2:Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$3:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$4:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$5:Ljava/lang/Object;

    iput-object v1, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->L$6:Ljava/lang/Object;

    move/from16 v1, p1

    iput v1, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->I$0:I

    iput v12, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->I$1:I

    iput-wide v14, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->J$0:J

    const/4 v1, 0x4

    iput v1, v0, Lio/ktor/client/utils/ByteChannelUtilsKt$observable$1;->label:I

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    invoke-interface {v5, v14, v15, v6, v0}, Lio/ktor/client/content/ProgressListener;->onProgress(JLjava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1f1
    .catchall {:try_start_1b0 .. :try_end_1f1} :catchall_1a1

    if-ne v0, v8, :cond_1f4

    return-object v8

    :cond_1f4
    move-object v1, v10

    move-object v2, v11

    .line 33
    :goto_1f6
    :try_start_1f6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1f8
    .catchall {:try_start_1f6 .. :try_end_1f8} :catchall_2e

    .line 186
    invoke-interface {v2, v1}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 34
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_1fe
    move-exception v0

    move-object v1, v6

    .line 186
    :goto_200
    invoke-interface {v2, v1}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    throw v0
.end method
