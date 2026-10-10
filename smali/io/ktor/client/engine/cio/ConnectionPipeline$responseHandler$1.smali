###### Class io.ktor.client.engine.cio.ConnectionPipeline$responseHandler$1 (io.ktor.client.engine.cio.ConnectionPipeline$responseHandler$1)
.class public final Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ConnectionPipeline.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/cio/ConnectionPipeline;-><init>(JILio/ktor/network/sockets/Connection;ZLkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/CoroutineContext;)V
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
    value = "SMAP\nConnectionPipeline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionPipeline.kt\nio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1\n+ 2 Readers.kt\nio/ktor/util/cio/ReadersKt\n*L\n1#1,184:1\n33#2,10:185\n*S KotlinDebug\n*F\n+ 1 ConnectionPipeline.kt\nio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1\n*L\n124#1:185,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.client.engine.cio.ConnectionPipeline$responseHandler$1"
    f = "ConnectionPipeline.kt"
    l = {
        0x48,
        0x4b,
        0x7d,
        0x87,
        0x8c,
        0x91,
        0x91
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public final synthetic $connection:Lio/ktor/network/sockets/Connection;

.field public I$0:I

.field public I$1:I

.field public I$2:I

.field public I$3:I

.field public J$0:J

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$10:Ljava/lang/Object;

.field public L$11:Ljava/lang/Object;

.field public L$12:Ljava/lang/Object;

.field public L$13:Ljava/lang/Object;

.field public L$14:Ljava/lang/Object;

.field public L$15:Ljava/lang/Object;

.field public L$16:Ljava/lang/Object;

.field public L$17:Ljava/lang/Object;

.field public L$18:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public L$5:Ljava/lang/Object;

.field public L$6:Ljava/lang/Object;

.field public L$7:Ljava/lang/Object;

.field public L$8:Ljava/lang/Object;

.field public L$9:Ljava/lang/Object;

.field public Z$0:Z

.field public label:I

.field public final synthetic this$0:Lio/ktor/client/engine/cio/ConnectionPipeline;


# direct methods
.method public static synthetic $r8$lambda$3st5s6JK9zZ-OX8g-DMntig2i4Y(Lio/ktor/utils/io/ByteReadChannel;Ljava/lang/Throwable;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->invokeSuspend$lambda$1(Lio/ktor/utils/io/ByteReadChannel;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xj7hWEGfG93EGabyMvjTEEHA7bI(Lio/ktor/http/cio/Response;Lio/ktor/http/HeadersBuilder;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->invokeSuspend$lambda$0(Lio/ktor/http/cio/Response;Lio/ktor/http/HeadersBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lio/ktor/client/engine/cio/ConnectionPipeline;Lio/ktor/network/sockets/Connection;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/engine/cio/ConnectionPipeline;",
            "Lio/ktor/network/sockets/Connection;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->this$0:Lio/ktor/client/engine/cio/ConnectionPipeline;

    iput-object p2, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->$connection:Lio/ktor/network/sockets/Connection;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static final invokeSuspend$lambda$0(Lio/ktor/http/cio/Response;Lio/ktor/http/HeadersBuilder;)Lkotlin/Unit;
    .registers 4

    .line 92
    new-instance v0, Lio/ktor/http/cio/CIOHeaders;

    invoke-virtual {p0}, Lio/ktor/http/cio/HttpMessage;->getHeaders()Lio/ktor/http/cio/HttpHeadersMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/ktor/http/cio/CIOHeaders;-><init>(Lio/ktor/http/cio/HttpHeadersMap;)V

    invoke-virtual {p1, v0}, Lio/ktor/util/StringValuesBuilderImpl;->appendAll(Lio/ktor/util/StringValues;)V

    .line 93
    invoke-virtual {p0}, Lio/ktor/http/cio/HttpMessage;->getHeaders()Lio/ktor/http/cio/HttpHeadersMap;

    move-result-object p0

    invoke-virtual {p0}, Lio/ktor/http/cio/HttpHeadersMap;->release()V

    .line 94
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final invokeSuspend$lambda$1(Lio/ktor/utils/io/ByteReadChannel;Ljava/lang/Throwable;)Lkotlin/Unit;
    .registers 2

    .line 118
    invoke-static {p0}, Lio/ktor/utils/io/ByteReadChannelKt;->cancel(Lio/ktor/utils/io/ByteReadChannel;)V

    .line 119
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
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
    new-instance v0, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;

    iget-object v1, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->this$0:Lio/ktor/client/engine/cio/ConnectionPipeline;

    iget-object p0, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->$connection:Lio/ktor/network/sockets/Connection;

    invoke-direct {v0, v1, p0, p2}, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;-><init>(Lio/ktor/client/engine/cio/ConnectionPipeline;Lio/ktor/network/sockets/Connection;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 37

    move-object/from16 v9, p0

    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$0:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v11

    .line 69
    iget v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->label:I

    packed-switch v0, :pswitch_data_654

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_18
    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_64a

    :pswitch_21
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_603

    :pswitch_26
    iget v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->I$0:I

    iget-object v1, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lio/ktor/client/engine/cio/RequestTask;

    iget-object v1, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lio/ktor/util/date/GMTDate;

    iget-object v1, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    :try_start_34
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3a

    move-object v5, v11

    goto/16 :goto_5b7

    :catchall_3a
    move-exception v0

    move-object v5, v11

    goto/16 :goto_60f

    :pswitch_3e
    iget v1, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->I$0:I

    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$16:Ljava/lang/Object;

    check-cast v0, Lio/ktor/client/request/HttpResponseData;

    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$15:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/ByteReadChannel;

    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$14:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/Job;

    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$13:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/ByteChannel;

    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$12:Ljava/lang/Object;

    check-cast v0, Lio/ktor/http/HttpProtocolVersion;

    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$11:Ljava/lang/Object;

    check-cast v0, Lio/ktor/http/Headers;

    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$10:Ljava/lang/Object;

    check-cast v0, Lio/ktor/http/cio/ConnectionOptions;

    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$9:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$8:Ljava/lang/Object;

    check-cast v0, Lio/ktor/http/HttpMethod;

    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$7:Ljava/lang/Object;

    check-cast v0, Lio/ktor/http/HttpStatusCode;

    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$6:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/Job;

    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$5:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$4:Ljava/lang/Object;

    check-cast v0, Lio/ktor/http/cio/Response;

    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$3:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lio/ktor/client/engine/cio/RequestTask;

    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$2:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lio/ktor/util/date/GMTDate;

    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$1:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/channels/ChannelIterator;

    :try_start_83
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_89

    move-object v5, v11

    goto/16 :goto_508

    :catchall_89
    move-exception v0

    move-object v5, v11

    goto/16 :goto_564

    :pswitch_8d
    iget v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->I$1:I

    iget-boolean v1, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->Z$0:Z

    iget-wide v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->J$0:J

    iget v4, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->I$0:I

    iget-object v5, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$18:Ljava/lang/Object;

    check-cast v5, Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v5, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$17:Ljava/lang/Object;

    check-cast v5, Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v6, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$16:Ljava/lang/Object;

    check-cast v6, Lio/ktor/client/request/HttpResponseData;

    iget-object v7, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$15:Ljava/lang/Object;

    check-cast v7, Lio/ktor/utils/io/ByteReadChannel;

    iget-object v8, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$14:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/Job;

    iget-object v15, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$13:Ljava/lang/Object;

    check-cast v15, Lio/ktor/utils/io/ByteChannel;

    iget-object v13, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$12:Ljava/lang/Object;

    check-cast v13, Lio/ktor/http/HttpProtocolVersion;

    iget-object v12, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$11:Ljava/lang/Object;

    check-cast v12, Lio/ktor/http/Headers;

    iget-object v14, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$10:Ljava/lang/Object;

    check-cast v14, Lio/ktor/http/cio/ConnectionOptions;

    move/from16 v16, v0

    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$9:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$8:Ljava/lang/Object;

    check-cast v0, Lio/ktor/http/HttpMethod;

    move-object/from16 v18, v0

    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$7:Ljava/lang/Object;

    check-cast v0, Lio/ktor/http/HttpStatusCode;

    move-object/from16 v19, v0

    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$6:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/Job;

    move-object/from16 v20, v0

    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$5:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    move-object/from16 v21, v0

    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$4:Ljava/lang/Object;

    check-cast v0, Lio/ktor/http/cio/Response;

    move-object/from16 v22, v0

    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$3:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lio/ktor/client/engine/cio/RequestTask;

    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$2:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lio/ktor/util/date/GMTDate;

    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$1:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lkotlinx/coroutines/channels/ChannelIterator;

    :try_start_f1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_f4
    .catchall {:try_start_f1 .. :try_end_f4} :catchall_112

    move-object/from16 v29, v19

    move-object/from16 v30, v20

    move-object/from16 v0, v22

    move/from16 v20, v1

    move v1, v4

    move-object/from16 v19, v15

    move-object/from16 v15, v21

    move-object/from16 v4, v25

    move-object/from16 v32, v11

    move-object v11, v5

    move-object/from16 v5, v32

    move-wide/from16 v33, v2

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-wide/from16 v23, v33

    goto/16 :goto_3f9

    :catchall_112
    move-exception v0

    move v1, v4

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    move-object/from16 v32, v11

    move-object v11, v5

    move-object/from16 v5, v32

    goto/16 :goto_43b

    :pswitch_121
    iget v1, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->I$0:I

    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$3:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lio/ktor/client/engine/cio/RequestTask;

    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$2:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lio/ktor/util/date/GMTDate;

    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$1:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/channels/ChannelIterator;

    :try_start_132
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_135
    .catchall {:try_start_132 .. :try_end_135} :catchall_89

    move-object/from16 v0, p1

    :cond_137
    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    goto/16 :goto_1c5

    :pswitch_13c
    iget v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->I$0:I

    iget-object v1, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    :try_start_142
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_145
    .catchall {:try_start_142 .. :try_end_145} :catchall_3a

    move-object/from16 v2, p1

    move-object v4, v1

    move v1, v0

    goto :goto_18c

    :pswitch_14a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 72
    :try_start_14d
    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->this$0:Lio/ktor/client/engine/cio/ConnectionPipeline;

    invoke-static {v0}, Lio/ktor/client/engine/cio/ConnectionPipeline;->access$getResponseChannel$p(Lio/ktor/client/engine/cio/ConnectionPipeline;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_158
    iput-object v10, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$0:Ljava/lang/Object;

    iput-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$1:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$2:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$3:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$4:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$5:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$6:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$7:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$8:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$9:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$10:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$11:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$12:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$13:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$14:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$15:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$16:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$17:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$18:Ljava/lang/Object;

    iput v1, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->I$0:I

    const/4 v2, 0x1

    iput v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->label:I

    invoke-interface {v0, v9}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v11, :cond_18b

    return-object v11

    :cond_18b
    move-object v4, v0

    :goto_18c
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5c7

    invoke-interface {v4}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/client/engine/cio/ConnectionResponseTask;

    invoke-virtual {v0}, Lio/ktor/client/engine/cio/ConnectionResponseTask;->component1()Lio/ktor/util/date/GMTDate;

    move-result-object v3

    invoke-virtual {v0}, Lio/ktor/client/engine/cio/ConnectionResponseTask;->component2()Lio/ktor/client/engine/cio/RequestTask;

    move-result-object v2

    .line 73
    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->this$0:Lio/ktor/client/engine/cio/ConnectionPipeline;

    invoke-static {v0}, Lio/ktor/client/engine/cio/ConnectionPipeline;->access$getRequestLimit$p(Lio/ktor/client/engine/cio/ConnectionPipeline;)Lkotlinx/coroutines/sync/Semaphore;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/sync/Semaphore;->release()V
    :try_end_1ab
    .catchall {:try_start_14d .. :try_end_1ab} :catchall_3a

    .line 75
    :try_start_1ab
    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->this$0:Lio/ktor/client/engine/cio/ConnectionPipeline;

    invoke-static {v0}, Lio/ktor/client/engine/cio/ConnectionPipeline;->access$getNetworkInput$p(Lio/ktor/client/engine/cio/ConnectionPipeline;)Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v0

    iput-object v10, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$0:Ljava/lang/Object;

    iput-object v4, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$1:Ljava/lang/Object;

    iput-object v3, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$2:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$3:Ljava/lang/Object;

    iput v1, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->I$0:I

    const/4 v5, 0x2

    iput v5, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->label:I

    invoke-static {v0, v9}, Lio/ktor/http/cio/HttpParserKt;->parseResponse(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1c2
    .catchall {:try_start_1ab .. :try_end_1c2} :catchall_89

    if-ne v0, v11, :cond_137

    return-object v11

    :goto_1c5
    :try_start_1c5
    check-cast v0, Lio/ktor/http/cio/Response;

    if-eqz v0, :cond_54e

    .line 80
    invoke-virtual {v12}, Lio/ktor/client/engine/cio/RequestTask;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v15

    .line 81
    sget-object v2, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v15, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v8, v2

    check-cast v8, Lkotlinx/coroutines/Job;

    .line 83
    new-instance v7, Lio/ktor/http/HttpStatusCode;

    invoke-virtual {v0}, Lio/ktor/http/cio/Response;->getStatus()I

    move-result v2

    invoke-virtual {v0}, Lio/ktor/http/cio/Response;->getStatusText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v2, v3}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    .line 84
    invoke-virtual {v12}, Lio/ktor/client/engine/cio/RequestTask;->getRequest()Lio/ktor/client/request/HttpRequestData;

    move-result-object v2

    invoke-virtual {v2}, Lio/ktor/client/request/HttpRequestData;->getMethod()Lio/ktor/http/HttpMethod;

    move-result-object v6

    .line 86
    invoke-virtual {v0}, Lio/ktor/http/cio/HttpMessage;->getHeaders()Lio/ktor/http/cio/HttpHeadersMap;

    move-result-object v2

    sget-object v3, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v3}, Lio/ktor/http/HttpHeaders;->getContentLength()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/ktor/http/cio/HttpHeadersMap;->get(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2
    :try_end_200
    .catchall {:try_start_1c5 .. :try_end_200} :catchall_545

    if-eqz v2, :cond_21a

    :try_start_202
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_21a

    invoke-static {v2}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_21a

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_212
    .catchall {:try_start_202 .. :try_end_212} :catchall_213

    goto :goto_21c

    :catchall_213
    move-exception v0

    move-object v5, v11

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    goto/16 :goto_564

    :cond_21a
    const-wide/16 v4, -0x1

    .line 87
    :goto_21c
    :try_start_21c
    invoke-virtual {v0}, Lio/ktor/http/cio/HttpMessage;->getHeaders()Lio/ktor/http/cio/HttpHeadersMap;

    move-result-object v2
    :try_end_220
    .catchall {:try_start_21c .. :try_end_220} :catchall_545

    move/from16 p1, v1

    :try_start_222
    invoke-virtual {v3}, Lio/ktor/http/HttpHeaders;->getTransferEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lio/ktor/http/cio/HttpHeadersMap;->get(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 88
    const-string v2, "chunked"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_230
    .catchall {:try_start_222 .. :try_end_230} :catchall_53e

    move-object/from16 v16, v11

    .line 89
    :try_start_232
    sget-object v11, Lio/ktor/http/cio/ConnectionOptions;->Companion:Lio/ktor/http/cio/ConnectionOptions$Companion;

    move-object/from16 v17, v1

    invoke-virtual {v0}, Lio/ktor/http/cio/HttpMessage;->getHeaders()Lio/ktor/http/cio/HttpHeadersMap;

    move-result-object v1

    invoke-virtual {v3}, Lio/ktor/http/HttpHeaders;->getConnection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/ktor/http/cio/HttpHeadersMap;->get(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v11, v1}, Lio/ktor/http/cio/ConnectionOptions$Companion;->parse(Ljava/lang/CharSequence;)Lio/ktor/http/cio/ConnectionOptions;

    move-result-object v1

    .line 91
    new-instance v3, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1$$ExternalSyntheticLambda0;-><init>(Lio/ktor/http/cio/Response;)V

    invoke-static {v3}, Lio/ktor/client/utils/HeadersKt;->buildHeaders(Lkotlin/jvm/functions/Function1;)Lio/ktor/http/Headers;

    move-result-object v18

    .line 96
    sget-object v3, Lio/ktor/http/HttpProtocolVersion;->Companion:Lio/ktor/http/HttpProtocolVersion$Companion;
    :try_end_251
    .catchall {:try_start_232 .. :try_end_251} :catchall_536

    move-object/from16 v19, v14

    :try_start_253
    invoke-virtual {v0}, Lio/ktor/http/cio/Response;->getVersion()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v3, v14}, Lio/ktor/http/HttpProtocolVersion$Companion;->parse(Ljava/lang/CharSequence;)Lio/ktor/http/HttpProtocolVersion;

    move-result-object v14
    :try_end_25b
    .catchall {:try_start_253 .. :try_end_25b} :catchall_528

    if-nez v1, :cond_273

    .line 98
    :try_start_25d
    invoke-virtual {v3}, Lio/ktor/http/HttpProtocolVersion$Companion;->getHTTP_1_0()Lio/ktor/http/HttpProtocolVersion;

    move-result-object v3

    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_265
    .catchall {:try_start_25d .. :try_end_265} :catchall_268

    if-nez v3, :cond_27d

    goto :goto_273

    :catchall_268
    move-exception v0

    move/from16 v1, p1

    :goto_26b
    move-object v2, v12

    move-object v3, v13

    move-object/from16 v5, v16

    move-object/from16 v4, v19

    goto/16 :goto_564

    .line 99
    :cond_273
    :goto_273
    :try_start_273
    invoke-virtual {v11}, Lio/ktor/http/cio/ConnectionOptions$Companion;->getClose()Lio/ktor/http/cio/ConnectionOptions;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_27b
    .catchall {:try_start_273 .. :try_end_27b} :catchall_528

    if-eqz v3, :cond_27f

    :cond_27d
    const/4 v11, 0x1

    goto :goto_280

    :cond_27f
    const/4 v11, 0x0

    :goto_280
    const-wide/16 v20, 0x0

    cmp-long v3, v4, v20

    if-gtz v3, :cond_28c

    if-eqz v2, :cond_289

    goto :goto_28c

    :cond_289
    move/from16 v20, v2

    goto :goto_2bd

    .line 102
    :cond_28c
    :goto_28c
    :try_start_28c
    sget-object v3, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    invoke-virtual {v3}, Lio/ktor/http/HttpMethod$Companion;->getHead()Lio/ktor/http/HttpMethod;

    move-result-object v3

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_296
    .catchall {:try_start_28c .. :try_end_296} :catchall_51d

    if-nez v3, :cond_289

    .line 103
    :try_start_298
    sget-object v3, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    move/from16 v20, v2

    invoke-virtual {v3}, Lio/ktor/http/HttpStatusCode$Companion;->getNotModified()Lio/ktor/http/HttpStatusCode;

    move-result-object v2

    invoke-virtual {v3}, Lio/ktor/http/HttpStatusCode$Companion;->getNoContent()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    filled-new-array {v2, v3}, [Lio/ktor/http/HttpStatusCode;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2bd

    .line 104
    invoke-static {v7}, Lio/ktor/client/engine/cio/UtilsKt;->isInformational(Lio/ktor/http/HttpStatusCode;)Z

    move-result v2
    :try_end_2b6
    .catchall {:try_start_298 .. :try_end_2b6} :catchall_2ba

    if-nez v2, :cond_2bd

    const/4 v3, 0x1

    goto :goto_2be

    :catchall_2ba
    move-exception v0

    move v1, v11

    goto :goto_26b

    :cond_2bd
    :goto_2bd
    const/4 v3, 0x0

    :goto_2be
    if-eqz v3, :cond_2e2

    .line 106
    :try_start_2c0
    new-instance v2, Lio/ktor/utils/io/ByteChannel;
    :try_end_2c2
    .catchall {:try_start_2c0 .. :try_end_2c2} :catchall_2db

    move/from16 p1, v3

    move-wide/from16 v22, v4

    move/from16 v21, v11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x1

    :try_start_2cb
    invoke-direct {v2, v3, v11, v4}, Lio/ktor/utils/io/ByteChannel;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v5, v2

    goto :goto_2ec

    :catchall_2d0
    move-exception v0

    :goto_2d1
    move-object v2, v12

    move-object v3, v13

    move-object/from16 v5, v16

    move-object/from16 v4, v19

    move/from16 v1, v21

    goto/16 :goto_564

    :catchall_2db
    move-exception v0

    move/from16 v21, v11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x1

    goto :goto_2d1

    :cond_2e2
    move/from16 p1, v3

    move-wide/from16 v22, v4

    move/from16 v21, v11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x1

    move-object v5, v4

    :goto_2ec
    if-eqz v5, :cond_2f9

    .line 110
    new-instance v2, Lio/ktor/utils/io/ByteChannel;

    invoke-direct {v2, v3, v11, v4}, Lio/ktor/utils/io/ByteChannel;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 111
    invoke-static {v10, v5, v2}, Lio/ktor/client/engine/cio/ConnectionPipelineKt;->access$skipCancels(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;)Lkotlinx/coroutines/Job;

    move-result-object v3
    :try_end_2f7
    .catchall {:try_start_2cb .. :try_end_2f7} :catchall_2d0

    move-object v4, v2

    goto :goto_301

    .line 114
    :cond_2f9
    :try_start_2f9
    sget-object v2, Lio/ktor/utils/io/ByteReadChannel;->Companion:Lio/ktor/utils/io/ByteReadChannel$Companion;

    invoke-virtual {v2}, Lio/ktor/utils/io/ByteReadChannel$Companion;->getEmpty()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v2

    move-object v4, v2

    const/4 v3, 0x0

    .line 117
    :goto_301
    new-instance v2, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v4}, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1$$ExternalSyntheticLambda1;-><init>(Lio/ktor/utils/io/ByteReadChannel;)V

    invoke-interface {v8, v2}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 121
    new-instance v2, Lio/ktor/client/request/HttpResponseData;

    move/from16 v11, v20

    move-object/from16 v20, v2

    move-object/from16 v2, v20

    move/from16 v26, p1

    move/from16 v24, v11

    move-object v11, v3

    move-object v3, v7

    move-wide/from16 v27, v22

    move-object/from16 v22, v4

    move-object v4, v13

    move-object/from16 v23, v11

    move-object v11, v5

    move-object/from16 v5, v18

    move-object/from16 v25, v6

    move-object v6, v14

    move-object/from16 v29, v7

    move-object/from16 v7, v22

    move-object/from16 v30, v8

    move-object v8, v15

    invoke-direct/range {v2 .. v8}, Lio/ktor/client/request/HttpResponseData;-><init>(Lio/ktor/http/HttpStatusCode;Lio/ktor/util/date/GMTDate;Lio/ktor/http/Headers;Lio/ktor/http/HttpProtocolVersion;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    .line 122
    invoke-virtual {v12}, Lio/ktor/client/engine/cio/RequestTask;->getResponse()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v2

    move-object/from16 v8, v20

    invoke-interface {v2, v8}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    if-eqz v11, :cond_456

    .line 124
    iget-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->this$0:Lio/ktor/client/engine/cio/ConnectionPipeline;
    :try_end_33b
    .catchall {:try_start_2f9 .. :try_end_33b} :catchall_444

    .line 130
    :try_start_33b
    invoke-static {v2}, Lio/ktor/client/engine/cio/ConnectionPipeline;->access$getNetworkInput$p(Lio/ktor/client/engine/cio/ConnectionPipeline;)Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v6

    .line 125
    iput-object v10, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$0:Ljava/lang/Object;
    :try_end_341
    .catchall {:try_start_33b .. :try_end_341} :catchall_435

    move-object/from16 v7, v19

    :try_start_343
    iput-object v7, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$1:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$2:Ljava/lang/Object;

    iput-object v12, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$3:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$4:Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$5:Ljava/lang/Object;

    invoke-static/range {v30 .. v30}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$6:Ljava/lang/Object;

    invoke-static/range {v29 .. v29}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$7:Ljava/lang/Object;

    invoke-static/range {v25 .. v25}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$8:Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$9:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$10:Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$11:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$12:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$13:Ljava/lang/Object;

    move-object/from16 v5, v23

    iput-object v5, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$14:Ljava/lang/Object;

    invoke-static/range {v22 .. v22}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$15:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$16:Ljava/lang/Object;

    iput-object v11, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$17:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$18:Ljava/lang/Object;
    :try_end_3a1
    .catchall {:try_start_343 .. :try_end_3a1} :catchall_42b

    move/from16 v4, v21

    :try_start_3a3
    iput v4, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->I$0:I

    move-wide/from16 v2, v27

    iput-wide v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->J$0:J

    move-object/from16 v19, v0

    move/from16 v0, v24

    iput-boolean v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->Z$0:Z

    move/from16 v20, v0

    move/from16 v0, v26

    iput v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->I$1:I
    :try_end_3b5
    .catchall {:try_start_3a3 .. :try_end_3b5} :catchall_423

    move-object/from16 v21, v12

    const/4 v12, 0x0

    :try_start_3b8
    iput v12, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->I$2:I

    iput v12, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->I$3:I

    const/4 v12, 0x3

    iput v12, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->label:I
    :try_end_3bf
    .catchall {:try_start_3b8 .. :try_end_3bf} :catchall_41d

    move-object/from16 v12, v17

    move-object/from16 v17, v1

    move-object v1, v14

    move-wide/from16 v23, v2

    move/from16 v26, v4

    move-object v4, v12

    move-object/from16 v27, v5

    move-object/from16 v5, v17

    move-object/from16 v28, v7

    move-object v7, v11

    move-object/from16 v31, v8

    move-object/from16 v8, p0

    :try_start_3d4
    invoke-static/range {v1 .. v8}, Lio/ktor/http/cio/HttpBodyKt;->parseHttpBody(Lio/ktor/http/HttpProtocolVersion;JLjava/lang/CharSequence;Lio/ktor/http/cio/ConnectionOptions;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3d8
    .catchall {:try_start_3d4 .. :try_end_3d8} :catchall_412

    move-object/from16 v5, v16

    if-ne v1, v5, :cond_3dd

    return-object v5

    :cond_3dd
    move/from16 v16, v0

    move-object v3, v13

    move-object v13, v14

    move-object/from16 v14, v17

    move-object/from16 v0, v19

    move-object/from16 v2, v21

    move-object/from16 v7, v22

    move/from16 v1, v26

    move-object/from16 v8, v27

    move-object/from16 v4, v28

    move-object/from16 v6, v31

    move-object/from16 v19, v11

    move-object/from16 v17, v12

    move-object/from16 v12, v18

    move-object/from16 v18, v25

    .line 40
    :goto_3f9
    :try_start_3f9
    invoke-static {v11}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)V

    .line 42
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3fe
    .catchall {:try_start_3f9 .. :try_end_3fe} :catchall_40f

    move-object/from16 v31, v6

    move-object v6, v4

    move/from16 v4, v16

    move-object/from16 v16, v15

    move-object v15, v13

    move-object v13, v3

    move/from16 v3, v20

    move-object/from16 v20, v12

    :goto_40b
    move-wide/from16 v11, v23

    goto/16 :goto_490

    :catchall_40f
    move-exception v0

    goto/16 :goto_564

    :catchall_412
    move-exception v0

    :goto_413
    move-object/from16 v5, v16

    :goto_415
    move-object v3, v13

    move-object/from16 v2, v21

    move/from16 v1, v26

    move-object/from16 v4, v28

    goto :goto_43b

    :catchall_41d
    move-exception v0

    move/from16 v26, v4

    move-object/from16 v28, v7

    goto :goto_413

    :catchall_423
    move-exception v0

    move/from16 v26, v4

    move-object/from16 v28, v7

    move-object/from16 v21, v12

    goto :goto_413

    :catchall_42b
    move-exception v0

    move-object/from16 v28, v7

    move-object/from16 v5, v16

    :goto_430
    move/from16 v26, v21

    move-object/from16 v21, v12

    goto :goto_415

    :catchall_435
    move-exception v0

    move-object/from16 v5, v16

    move-object/from16 v28, v19

    goto :goto_430

    .line 36
    :goto_43b
    :try_start_43b
    invoke-static {v11, v0}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->close(Lio/ktor/utils/io/ByteWriteChannel;Ljava/lang/Throwable;)V

    .line 37
    throw v0
    :try_end_43f
    .catchall {:try_start_43b .. :try_end_43f} :catchall_43f

    :catchall_43f
    move-exception v0

    .line 40
    :try_start_440
    invoke-static {v11}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)V

    throw v0
    :try_end_444
    .catchall {:try_start_440 .. :try_end_444} :catchall_40f

    :catchall_444
    move-exception v0

    move-object/from16 v5, v16

    move-object/from16 v28, v19

    move/from16 v26, v21

    move-object/from16 v21, v12

    :goto_44d
    move-object v3, v13

    move-object/from16 v2, v21

    move/from16 v1, v26

    :goto_452
    move-object/from16 v4, v28

    goto/16 :goto_564

    :cond_456
    move-object/from16 v31, v8

    move-object/from16 v5, v16

    move/from16 v20, v24

    move-object/from16 v32, v19

    move-object/from16 v19, v0

    move/from16 v0, v26

    move/from16 v26, v21

    move-object/from16 v21, v12

    move-object/from16 v12, v17

    move-object/from16 v17, v1

    move-wide/from16 v33, v27

    move-object/from16 v28, v32

    move-object/from16 v27, v23

    move-wide/from16 v23, v33

    move v4, v0

    move-object/from16 v16, v15

    move-object/from16 v0, v19

    move/from16 v3, v20

    move-object/from16 v2, v21

    move-object/from16 v7, v22

    move/from16 v1, v26

    move-object/from16 v8, v27

    move-object/from16 v6, v28

    move-object/from16 v19, v11

    move-object v15, v14

    move-object/from16 v14, v17

    move-object/from16 v20, v18

    move-object/from16 v18, v25

    move-object/from16 v17, v12

    goto/16 :goto_40b

    :goto_490
    if-eqz v8, :cond_517

    .line 135
    :try_start_492
    iput-object v10, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$0:Ljava/lang/Object;

    iput-object v6, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$1:Ljava/lang/Object;
    :try_end_496
    .catchall {:try_start_492 .. :try_end_496} :catchall_513

    move-object/from16 v21, v6

    :try_start_498
    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$2:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$3:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$4:Ljava/lang/Object;

    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$5:Ljava/lang/Object;

    invoke-static/range {v30 .. v30}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$6:Ljava/lang/Object;

    invoke-static/range {v29 .. v29}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$7:Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$8:Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$9:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$10:Ljava/lang/Object;

    invoke-static/range {v20 .. v20}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$11:Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$12:Ljava/lang/Object;

    invoke-static/range {v19 .. v19}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$13:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$14:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$15:Ljava/lang/Object;

    invoke-static/range {v31 .. v31}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$16:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$17:Ljava/lang/Object;

    iput-object v6, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$18:Ljava/lang/Object;

    iput v1, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->I$0:I

    iput-wide v11, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->J$0:J

    iput-boolean v3, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->Z$0:Z

    iput v4, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->I$1:I

    const/4 v0, 0x4

    iput v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->label:I

    invoke-interface {v8, v9}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_502
    .catchall {:try_start_498 .. :try_end_502} :catchall_50d

    if-ne v0, v5, :cond_505

    return-object v5

    :cond_505
    move-object v3, v13

    move-object/from16 v4, v21

    :goto_508
    :try_start_508
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_50a
    .catchall {:try_start_508 .. :try_end_50a} :catchall_40f

    move-object v13, v3

    move-object v6, v4

    goto :goto_519

    :catchall_50d
    move-exception v0

    :goto_50e
    move-object v3, v13

    move-object/from16 v4, v21

    goto/16 :goto_564

    :catchall_513
    move-exception v0

    move-object/from16 v21, v6

    goto :goto_50e

    :cond_517
    move-object/from16 v21, v6

    :goto_519
    move v0, v1

    move-object v1, v6

    goto/16 :goto_56e

    :catchall_51d
    move-exception v0

    move/from16 v26, v11

    move-object/from16 v21, v12

    move-object/from16 v5, v16

    move-object/from16 v28, v19

    goto/16 :goto_44d

    :catchall_528
    move-exception v0

    move-object/from16 v21, v12

    move-object/from16 v5, v16

    move-object/from16 v28, v19

    :goto_52f
    move/from16 v1, p1

    :goto_531
    move-object v3, v13

    move-object/from16 v2, v21

    goto/16 :goto_452

    :catchall_536
    move-exception v0

    move-object/from16 v21, v12

    move-object/from16 v28, v14

    move-object/from16 v5, v16

    goto :goto_52f

    :catchall_53e
    move-exception v0

    move-object v5, v11

    move-object/from16 v21, v12

    move-object/from16 v28, v14

    goto :goto_52f

    :catchall_545
    move-exception v0

    move/from16 p1, v1

    move-object v5, v11

    move-object/from16 v21, v12

    move-object/from16 v28, v14

    goto :goto_531

    :cond_54e
    move/from16 p1, v1

    move-object v5, v11

    move-object/from16 v21, v12

    move-object/from16 v28, v14

    .line 76
    :try_start_555
    new-instance v0, Lio/ktor/utils/io/ClosedReadChannelException;

    .line 77
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "Failed to parse HTTP response: unexpected EOF"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-direct {v0, v1}, Lio/ktor/utils/io/ClosedReadChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_562
    .catchall {:try_start_555 .. :try_end_562} :catchall_562

    :catchall_562
    move-exception v0

    goto :goto_52f

    .line 137
    :goto_564
    :try_start_564
    invoke-virtual {v2}, Lio/ktor/client/engine/cio/RequestTask;->getResponse()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v6

    invoke-interface {v6, v0}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    move v0, v1

    move-object v13, v3

    move-object v1, v4

    .line 140
    :goto_56e
    invoke-virtual {v2}, Lio/ktor/client/engine/cio/RequestTask;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    sget-object v4, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/Job;

    if-eqz v3, :cond_5b9

    iput-object v10, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$0:Ljava/lang/Object;

    iput-object v1, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$1:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$2:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$3:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$4:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$5:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$6:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$7:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$8:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$9:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$10:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$11:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$12:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$13:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$14:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$15:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$16:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$17:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$18:Ljava/lang/Object;

    iput v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->I$0:I

    const/4 v2, 0x5

    iput v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->label:I

    invoke-interface {v3, v9}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_5b7

    return-object v5

    :cond_5b7
    :goto_5b7
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5b9
    .catchall {:try_start_564 .. :try_end_5b9} :catchall_5bf

    :cond_5b9
    move-object/from16 v32, v1

    move v1, v0

    move-object/from16 v0, v32

    goto :goto_5c1

    :catchall_5bf
    move-exception v0

    goto :goto_60f

    :goto_5c1
    if-eqz v1, :cond_5c4

    goto :goto_5c8

    :cond_5c4
    move-object v11, v5

    goto/16 :goto_158

    :cond_5c7
    move-object v5, v11

    .line 145
    :goto_5c8
    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->this$0:Lio/ktor/client/engine/cio/ConnectionPipeline;

    invoke-static {v0}, Lio/ktor/client/engine/cio/ConnectionPipeline;->access$getNetworkOutput$p(Lio/ktor/client/engine/cio/ConnectionPipeline;)Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v0

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$0:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$1:Ljava/lang/Object;

    iput-object v1, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$2:Ljava/lang/Object;

    iput-object v1, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$3:Ljava/lang/Object;

    iput-object v1, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$4:Ljava/lang/Object;

    iput-object v1, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$5:Ljava/lang/Object;

    iput-object v1, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$6:Ljava/lang/Object;

    iput-object v1, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$7:Ljava/lang/Object;

    iput-object v1, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$8:Ljava/lang/Object;

    iput-object v1, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$9:Ljava/lang/Object;

    iput-object v1, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$10:Ljava/lang/Object;

    iput-object v1, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$11:Ljava/lang/Object;

    iput-object v1, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$12:Ljava/lang/Object;

    iput-object v1, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$13:Ljava/lang/Object;

    iput-object v1, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$14:Ljava/lang/Object;

    iput-object v1, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$15:Ljava/lang/Object;

    iput-object v1, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$16:Ljava/lang/Object;

    iput-object v1, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$17:Ljava/lang/Object;

    iput-object v1, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$18:Ljava/lang/Object;

    const/4 v1, 0x6

    iput v1, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->label:I

    invoke-interface {v0, v9}, Lio/ktor/utils/io/ByteWriteChannel;->flushAndClose(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_603

    return-object v5

    .line 146
    :cond_603
    :goto_603
    iget-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->$connection:Lio/ktor/network/sockets/Connection;

    invoke-virtual {v0}, Lio/ktor/network/sockets/Connection;->getSocket()Lio/ktor/network/sockets/Socket;

    move-result-object v0

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 148
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 145
    :goto_60f
    iget-object v1, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->this$0:Lio/ktor/client/engine/cio/ConnectionPipeline;

    invoke-static {v1}, Lio/ktor/client/engine/cio/ConnectionPipeline;->access$getNetworkOutput$p(Lio/ktor/client/engine/cio/ConnectionPipeline;)Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v1

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$0:Ljava/lang/Object;

    iput-object v0, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$1:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$2:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$3:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$4:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$5:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$6:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$7:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$8:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$9:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$10:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$11:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$12:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$13:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$14:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$15:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$16:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$17:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->L$18:Ljava/lang/Object;

    const/4 v2, 0x7

    iput v2, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->label:I

    invoke-interface {v1, v9}, Lio/ktor/utils/io/ByteWriteChannel;->flushAndClose(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_64a

    return-object v5

    .line 146
    :cond_64a
    :goto_64a
    iget-object v1, v9, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->$connection:Lio/ktor/network/sockets/Connection;

    invoke-virtual {v1}, Lio/ktor/network/sockets/Connection;->getSocket()Lio/ktor/network/sockets/Socket;

    move-result-object v1

    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    throw v0

    :pswitch_data_654
    .packed-switch 0x0
        :pswitch_14a
        :pswitch_13c
        :pswitch_121
        :pswitch_8d
        :pswitch_3e
        :pswitch_26
        :pswitch_21
        :pswitch_18
    .end packed-switch
.end method

###### Class io.ktor.client.engine.cio.ConnectionPipeline$responseHandler$1$$ExternalSyntheticLambda0 (io.ktor.client.engine.cio.ConnectionPipeline$responseHandler$1$$ExternalSyntheticLambda0)
.class public final synthetic Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lio/ktor/http/cio/Response;


# direct methods
.method public synthetic constructor <init>(Lio/ktor/http/cio/Response;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1$$ExternalSyntheticLambda0;->f$0:Lio/ktor/http/cio/Response;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1$$ExternalSyntheticLambda0;->f$0:Lio/ktor/http/cio/Response;

    check-cast p1, Lio/ktor/http/HeadersBuilder;

    invoke-static {p0, p1}, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->$r8$lambda$xj7hWEGfG93EGabyMvjTEEHA7bI(Lio/ktor/http/cio/Response;Lio/ktor/http/HeadersBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.client.engine.cio.ConnectionPipeline$responseHandler$1$$ExternalSyntheticLambda1 (io.ktor.client.engine.cio.ConnectionPipeline$responseHandler$1$$ExternalSyntheticLambda1)
.class public final synthetic Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lio/ktor/utils/io/ByteReadChannel;


# direct methods
.method public synthetic constructor <init>(Lio/ktor/utils/io/ByteReadChannel;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1$$ExternalSyntheticLambda1;->f$0:Lio/ktor/utils/io/ByteReadChannel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1$$ExternalSyntheticLambda1;->f$0:Lio/ktor/utils/io/ByteReadChannel;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p0, p1}, Lio/ktor/client/engine/cio/ConnectionPipeline$responseHandler$1;->$r8$lambda$3st5s6JK9zZ-OX8g-DMntig2i4Y(Lio/ktor/utils/io/ByteReadChannel;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
