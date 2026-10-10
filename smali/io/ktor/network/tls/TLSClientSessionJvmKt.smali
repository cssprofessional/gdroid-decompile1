###### Class io.ktor.network.tls.TLSClientSessionJvmKt (io.ktor.network.tls.TLSClientSessionJvmKt)
.class public final Lio/ktor/network/tls/TLSClientSessionJvmKt;
.super Ljava/lang/Object;
.source "TLSClientSessionJvm.kt"


# direct methods
.method public static final openTLSSession(Lio/ktor/network/sockets/Socket;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/network/tls/TLSConfig;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/sockets/Socket;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lio/ktor/network/tls/TLSConfig;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/sockets/Socket;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p5

    instance-of v1, v0, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;

    if-eqz v1, :cond_15

    move-object v1, v0

    check-cast v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;

    iget v2, v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_15

    sub-int/2addr v2, v3

    iput v2, v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->label:I

    goto :goto_1a

    :cond_15
    new-instance v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;

    invoke-direct {v1, v0}, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_1a
    iget-object v0, v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 19
    iget v3, v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->label:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_7c

    if-eq v3, v5, :cond_56

    if-ne v3, v4, :cond_4e

    iget-object v2, v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->L$6:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v3, v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->L$5:Ljava/lang/Object;

    check-cast v3, Lio/ktor/network/tls/TLSClientHandshake;

    iget-object v3, v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->L$4:Ljava/lang/Object;

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    iget-object v3, v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lio/ktor/network/tls/TLSConfig;

    iget-object v3, v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v3, v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lio/ktor/utils/io/ByteReadChannel;

    iget-object v1, v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/ktor/network/sockets/Socket;

    :try_start_46
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4b

    goto/16 :goto_103

    :catchall_4b
    move-exception v0

    goto/16 :goto_10e

    :cond_4e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_56
    iget-object v3, v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->L$5:Ljava/lang/Object;

    check-cast v3, Lio/ktor/network/tls/TLSClientHandshake;

    iget-object v5, v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->L$4:Ljava/lang/Object;

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    iget-object v6, v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->L$3:Ljava/lang/Object;

    check-cast v6, Lio/ktor/network/tls/TLSConfig;

    iget-object v7, v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v8, v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lio/ktor/utils/io/ByteReadChannel;

    iget-object v9, v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lio/ktor/network/sockets/Socket;

    :try_start_6e
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_73

    move-object v6, v9

    goto :goto_b8

    :catchall_73
    move-exception v0

    move-object/from16 v18, v3

    move-object v3, v0

    move-object v0, v6

    move-object v6, v9

    move-object/from16 v9, v18

    goto :goto_cd

    :cond_7c
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 26
    new-instance v3, Lio/ktor/network/tls/TLSClientHandshake;

    const/16 v16, 0x10

    const/16 v17, 0x0

    const/4 v15, 0x0

    move-object v10, v3

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-direct/range {v10 .. v17}, Lio/ktor/network/tls/TLSClientHandshake;-><init>(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/network/tls/TLSConfig;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CompletableJob;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v6, p0

    .line 28
    :try_start_94
    iput-object v6, v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->L$1:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->L$2:Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->L$3:Ljava/lang/Object;
    :try_end_a8
    .catchall {:try_start_94 .. :try_end_a8} :catchall_c9

    move-object/from16 v7, p4

    :try_start_aa
    iput-object v7, v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->L$4:Ljava/lang/Object;

    iput-object v3, v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->L$5:Ljava/lang/Object;

    iput v5, v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->label:I

    invoke-virtual {v3, v1}, Lio/ktor/network/tls/TLSClientHandshake;->negotiate(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_b4
    .catchall {:try_start_aa .. :try_end_b4} :catchall_be

    if-ne v0, v2, :cond_b7

    return-object v2

    :cond_b7
    move-object v5, v7

    .line 40
    :goto_b8
    new-instance v0, Lio/ktor/network/tls/TLSSocket;

    invoke-direct {v0, v3, v6, v5}, Lio/ktor/network/tls/TLSSocket;-><init>(Lio/ktor/network/tls/TLSClientHandshake;Lio/ktor/network/sockets/Socket;Lkotlin/coroutines/CoroutineContext;)V

    return-object v0

    :catchall_be
    move-exception v0

    :goto_bf
    move-object/from16 v8, p1

    move-object v9, v3

    move-object v5, v7

    move-object/from16 v7, p2

    move-object v3, v0

    move-object/from16 v0, p3

    goto :goto_cd

    :catchall_c9
    move-exception v0

    move-object/from16 v7, p4

    goto :goto_bf

    .line 30
    :goto_cd
    :try_start_cd
    sget-object v10, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 31
    invoke-virtual {v9}, Lio/ktor/network/tls/TLSClientHandshake;->close()Lkotlinx/coroutines/Job;

    move-result-object v10

    iput-object v6, v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->L$0:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->L$1:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->L$2:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->L$3:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->L$4:Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->L$5:Ljava/lang/Object;

    iput-object v3, v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->L$6:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->I$0:I

    iput v4, v1, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->label:I

    invoke-interface {v10, v1}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_fe
    .catchall {:try_start_cd .. :try_end_fe} :catchall_10c

    if-ne v0, v2, :cond_101

    return-object v2

    :cond_101
    move-object v2, v3

    move-object v1, v6

    .line 32
    :goto_103
    :try_start_103
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 33
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 30
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10b
    .catchall {:try_start_103 .. :try_end_10b} :catchall_4b

    goto :goto_117

    :catchall_10c
    move-exception v0

    move-object v2, v3

    :goto_10e
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :goto_117
    instance-of v0, v2, Lkotlinx/coroutines/channels/ClosedSendChannelException;

    if-eqz v0, :cond_123

    .line 35
    new-instance v0, Lio/ktor/network/tls/TLSException;

    const-string v1, "Negotiation failed due to EOS"

    invoke-direct {v0, v1, v2}, Lio/ktor/network/tls/TLSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 37
    :cond_123
    throw v2
.end method

###### Class io.ktor.network.tls.TLSClientSessionJvmKt.AnonymousClass1 (io.ktor.network.tls.TLSClientSessionJvmKt$openTLSSession$1)
.class public final Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "TLSClientSessionJvm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/tls/TLSClientSessionJvmKt;->openTLSSession(Lio/ktor/network/sockets/Socket;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/network/tls/TLSConfig;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.network.tls.TLSClientSessionJvmKt"
    f = "TLSClientSessionJvm.kt"
    l = {
        0x1c,
        0x1f
    }
    m = "openTLSSession"
    v = 0x1
.end annotation


# instance fields
.field public I$0:I

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public L$5:Ljava/lang/Object;

.field public L$6:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 0
    iput-object p1, p0, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/network/tls/TLSClientSessionJvmKt$openTLSSession$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lio/ktor/network/tls/TLSClientSessionJvmKt;->openTLSSession(Lio/ktor/network/sockets/Socket;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/network/tls/TLSConfig;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
