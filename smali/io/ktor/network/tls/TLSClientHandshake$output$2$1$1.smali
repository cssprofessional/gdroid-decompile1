###### Class io.ktor.network.tls.TLSClientHandshake$output$2$1$1 (io.ktor.network.tls.TLSClientHandshake$output$2$1$1)
.class public final Lio/ktor/network/tls/TLSClientHandshake$output$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TLSClientHandshake.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/tls/TLSClientHandshake;-><init>(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/network/tls/TLSConfig;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CompletableJob;)V
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
    value = "SMAP\nTLSClientHandshake.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TLSClientHandshake.kt\nio/ktor/network/tls/TLSClientHandshake$output$2$1$1\n+ 2 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n*L\n1#1,567:1\n21#2,3:568\n*S KotlinDebug\n*F\n+ 1 TLSClientHandshake.kt\nio/ktor/network/tls/TLSClientHandshake$output$2$1$1\n*L\n126#1:568,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.network.tls.TLSClientHandshake$output$2$1$1"
    f = "TLSClientHandshake.kt"
    l = {
        0x84,
        0x85
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public final synthetic $rawOutput:Lio/ktor/utils/io/ByteWriteChannel;

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lio/ktor/network/tls/TLSClientHandshake;


# direct methods
.method public constructor <init>(Lio/ktor/network/tls/TLSClientHandshake;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/tls/TLSClientHandshake;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/tls/TLSClientHandshake$output$2$1$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$output$2$1$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    iput-object p2, p0, Lio/ktor/network/tls/TLSClientHandshake$output$2$1$1;->$rawOutput:Lio/ktor/utils/io/ByteWriteChannel;

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
    new-instance p1, Lio/ktor/network/tls/TLSClientHandshake$output$2$1$1;

    iget-object v0, p0, Lio/ktor/network/tls/TLSClientHandshake$output$2$1$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    iget-object p0, p0, Lio/ktor/network/tls/TLSClientHandshake$output$2$1$1;->$rawOutput:Lio/ktor/utils/io/ByteWriteChannel;

    invoke-direct {p1, v0, p0, p2}, Lio/ktor/network/tls/TLSClientHandshake$output$2$1$1;-><init>(Lio/ktor/network/tls/TLSClientHandshake;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/network/tls/TLSClientHandshake$output$2$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lio/ktor/network/tls/TLSClientHandshake$output$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/ktor/network/tls/TLSClientHandshake$output$2$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/ktor/network/tls/TLSClientHandshake$output$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 122
    iget v1, p0, Lio/ktor/network/tls/TLSClientHandshake$output$2$1$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_32

    if-eq v1, v3, :cond_26

    if-ne v1, v2, :cond_1e

    iget-object v0, p0, Lio/ktor/network/tls/TLSClientHandshake$output$2$1$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lio/ktor/network/tls/TLSRecord;

    iget-object v0, p0, Lio/ktor/network/tls/TLSClientHandshake$output$2$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lio/ktor/network/tls/TLSRecord;

    :try_start_16
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1b

    goto/16 :goto_9e

    :catchall_1b
    move-exception p1

    goto/16 :goto_aa

    :cond_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    iget-object v1, p0, Lio/ktor/network/tls/TLSClientHandshake$output$2$1$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lio/ktor/network/tls/TLSRecord;

    iget-object v3, p0, Lio/ktor/network/tls/TLSClientHandshake$output$2$1$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ktor/network/tls/TLSRecord;

    :try_start_2e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_1b

    goto :goto_87

    :cond_32
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 125
    :try_start_35
    sget-object v5, Lio/ktor/network/tls/TLSRecordType;->Alert:Lio/ktor/network/tls/TLSRecordType;

    .line 21
    new-instance v7, Lkotlinx/io/Buffer;

    invoke-direct {v7}, Lkotlinx/io/Buffer;-><init>()V

    .line 127
    sget-object p1, Lio/ktor/network/tls/TLSAlertLevel;->WARNING:Lio/ktor/network/tls/TLSAlertLevel;

    invoke-virtual {p1}, Lio/ktor/network/tls/TLSAlertLevel;->getCode()I

    move-result p1

    int-to-byte p1, p1

    invoke-interface {v7, p1}, Lkotlinx/io/Sink;->writeByte(B)V

    .line 128
    sget-object p1, Lio/ktor/network/tls/TLSAlertType;->CloseNotify:Lio/ktor/network/tls/TLSAlertType;

    invoke-virtual {p1}, Lio/ktor/network/tls/TLSAlertType;->getCode()I

    move-result p1

    int-to-byte p1, p1

    invoke-interface {v7, p1}, Lkotlinx/io/Sink;->writeByte(B)V

    .line 129
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 124
    new-instance p1, Lio/ktor/network/tls/TLSRecord;

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lio/ktor/network/tls/TLSRecord;-><init>(Lio/ktor/network/tls/TLSRecordType;Lio/ktor/network/tls/TLSVersion;Lkotlinx/io/Source;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 131
    iget-object v1, p0, Lio/ktor/network/tls/TLSClientHandshake$output$2$1$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-virtual {v1}, Lio/ktor/network/tls/TLSClientHandshake;->getUseCipher()Z

    move-result v1

    if-eqz v1, :cond_6e

    iget-object v1, p0, Lio/ktor/network/tls/TLSClientHandshake$output$2$1$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-static {v1}, Lio/ktor/network/tls/TLSClientHandshake;->access$getCipher(Lio/ktor/network/tls/TLSClientHandshake;)Lio/ktor/network/tls/cipher/TLSCipher;

    move-result-object v1

    invoke-interface {v1, p1}, Lio/ktor/network/tls/cipher/TLSCipher;->encrypt(Lio/ktor/network/tls/TLSRecord;)Lio/ktor/network/tls/TLSRecord;

    move-result-object v1

    goto :goto_6f

    :cond_6e
    move-object v1, p1

    .line 132
    :goto_6f
    iget-object v4, p0, Lio/ktor/network/tls/TLSClientHandshake$output$2$1$1;->$rawOutput:Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lio/ktor/network/tls/TLSClientHandshake$output$2$1$1;->L$0:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lio/ktor/network/tls/TLSClientHandshake$output$2$1$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lio/ktor/network/tls/TLSClientHandshake$output$2$1$1;->label:I

    invoke-static {v4, v1, p0}, Lio/ktor/network/tls/RenderKt;->writeRecord(Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/network/tls/TLSRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_86

    return-object v0

    :cond_86
    move-object v3, p1

    .line 133
    :goto_87
    iget-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$output$2$1$1;->$rawOutput:Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lio/ktor/network/tls/TLSClientHandshake$output$2$1$1;->L$0:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lio/ktor/network/tls/TLSClientHandshake$output$2$1$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lio/ktor/network/tls/TLSClientHandshake$output$2$1$1;->label:I

    invoke-interface {p1, p0}, Lio/ktor/utils/io/ByteWriteChannel;->flushAndClose(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_9b
    .catchall {:try_start_35 .. :try_end_9b} :catchall_1b

    if-ne p1, v0, :cond_9e

    return-object v0

    .line 135
    :cond_9e
    :goto_9e
    iget-object p0, p0, Lio/ktor/network/tls/TLSClientHandshake$output$2$1$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-static {p0}, Lio/ktor/network/tls/TLSClientHandshake;->access$getCloseTask$p(Lio/ktor/network/tls/TLSClientHandshake;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 137
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 135
    :goto_aa
    iget-object p0, p0, Lio/ktor/network/tls/TLSClientHandshake$output$2$1$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-static {p0}, Lio/ktor/network/tls/TLSClientHandshake;->access$getCloseTask$p(Lio/ktor/network/tls/TLSClientHandshake;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    throw p1
.end method
