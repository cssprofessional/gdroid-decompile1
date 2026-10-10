###### Class io.ktor.network.tls.TLSClientHandshake$output$1 (io.ktor.network.tls.TLSClientHandshake$output$1)
.class public final Lio/ktor/network/tls/TLSClientHandshake$output$1;
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
        "Lkotlinx/coroutines/channels/ActorScope<",
        "Lio/ktor/network/tls/TLSRecord;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.network.tls.TLSClientHandshake$output$1"
    f = "TLSClientHandshake.kt"
    l = {
        0x6d,
        0x72
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public final synthetic $rawOutput:Lio/ktor/utils/io/ByteWriteChannel;

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

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
            "Lio/ktor/network/tls/TLSClientHandshake$output$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$output$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    iput-object p2, p0, Lio/ktor/network/tls/TLSClientHandshake$output$1;->$rawOutput:Lio/ktor/utils/io/ByteWriteChannel;

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
    new-instance v0, Lio/ktor/network/tls/TLSClientHandshake$output$1;

    iget-object v1, p0, Lio/ktor/network/tls/TLSClientHandshake$output$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    iget-object p0, p0, Lio/ktor/network/tls/TLSClientHandshake$output$1;->$rawOutput:Lio/ktor/utils/io/ByteWriteChannel;

    invoke-direct {v0, v1, p0, p2}, Lio/ktor/network/tls/TLSClientHandshake$output$1;-><init>(Lio/ktor/network/tls/TLSClientHandshake;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/network/tls/TLSClientHandshake$output$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/channels/ActorScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/network/tls/TLSClientHandshake$output$1;->invoke(Lkotlinx/coroutines/channels/ActorScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ActorScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ActorScope<",
            "Lio/ktor/network/tls/TLSRecord;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/ktor/network/tls/TLSClientHandshake$output$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/ktor/network/tls/TLSClientHandshake$output$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/ktor/network/tls/TLSClientHandshake$output$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    iget-object v0, p0, Lio/ktor/network/tls/TLSClientHandshake$output$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/ActorScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 108
    iget v2, p0, Lio/ktor/network/tls/TLSClientHandshake$output$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_36

    if-eq v2, v4, :cond_2e

    if-ne v2, v3, :cond_26

    iget-object v2, p0, Lio/ktor/network/tls/TLSClientHandshake$output$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lio/ktor/network/tls/TLSRecord;

    iget-object v2, p0, Lio/ktor/network/tls/TLSClientHandshake$output$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lio/ktor/network/tls/TLSRecord;

    iget-object v2, p0, Lio/ktor/network/tls/TLSClientHandshake$output$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    :try_start_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_23

    :cond_21
    move-object p1, v2

    goto :goto_41

    :catchall_23
    move-exception p0

    goto/16 :goto_a0

    :cond_26
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2e
    iget-object v2, p0, Lio/ktor/network/tls/TLSClientHandshake$output$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_56

    :cond_36
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 109
    invoke-interface {v0}, Lkotlinx/coroutines/channels/ActorScope;->getChannel()Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object p1

    :goto_41
    iput-object v0, p0, Lio/ktor/network/tls/TLSClientHandshake$output$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$output$1;->L$1:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, Lio/ktor/network/tls/TLSClientHandshake$output$1;->L$2:Ljava/lang/Object;

    iput-object v2, p0, Lio/ktor/network/tls/TLSClientHandshake$output$1;->L$3:Ljava/lang/Object;

    iput v4, p0, Lio/ktor/network/tls/TLSClientHandshake$output$1;->label:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_53

    return-object v1

    :cond_53
    move-object v8, v2

    move-object v2, p1

    move-object p1, v8

    :goto_56
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a7

    invoke-interface {v2}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/ktor/network/tls/TLSRecord;

    .line 111
    :try_start_64
    iget-object v5, p0, Lio/ktor/network/tls/TLSClientHandshake$output$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-virtual {v5}, Lio/ktor/network/tls/TLSClientHandshake;->getUseCipher()Z

    move-result v5

    if-eqz v5, :cond_77

    iget-object v5, p0, Lio/ktor/network/tls/TLSClientHandshake$output$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-static {v5}, Lio/ktor/network/tls/TLSClientHandshake;->access$getCipher(Lio/ktor/network/tls/TLSClientHandshake;)Lio/ktor/network/tls/cipher/TLSCipher;

    move-result-object v5

    invoke-interface {v5, p1}, Lio/ktor/network/tls/cipher/TLSCipher;->encrypt(Lio/ktor/network/tls/TLSRecord;)Lio/ktor/network/tls/TLSRecord;

    move-result-object v5

    goto :goto_78

    :cond_77
    move-object v5, p1

    .line 112
    :goto_78
    invoke-virtual {p1}, Lio/ktor/network/tls/TLSRecord;->getType()Lio/ktor/network/tls/TLSRecordType;

    move-result-object v6

    sget-object v7, Lio/ktor/network/tls/TLSRecordType;->ChangeCipherSpec:Lio/ktor/network/tls/TLSRecordType;

    if-ne v6, v7, :cond_85

    iget-object v6, p0, Lio/ktor/network/tls/TLSClientHandshake$output$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-virtual {v6, v4}, Lio/ktor/network/tls/TLSClientHandshake;->setUseCipher(Z)V

    .line 114
    :cond_85
    iget-object v6, p0, Lio/ktor/network/tls/TLSClientHandshake$output$1;->$rawOutput:Lio/ktor/utils/io/ByteWriteChannel;

    iput-object v0, p0, Lio/ktor/network/tls/TLSClientHandshake$output$1;->L$0:Ljava/lang/Object;

    iput-object v2, p0, Lio/ktor/network/tls/TLSClientHandshake$output$1;->L$1:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$output$1;->L$2:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$output$1;->L$3:Ljava/lang/Object;

    iput v3, p0, Lio/ktor/network/tls/TLSClientHandshake$output$1;->label:I

    invoke-static {v6, v5, p0}, Lio/ktor/network/tls/RenderKt;->writeRecord(Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/network/tls/TLSRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_9d
    .catchall {:try_start_64 .. :try_end_9d} :catchall_23

    if-ne p1, v1, :cond_21

    return-object v1

    .line 116
    :goto_a0
    invoke-interface {v0}, Lkotlinx/coroutines/channels/ActorScope;->getChannel()Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    invoke-interface {p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->close(Ljava/lang/Throwable;)Z

    .line 120
    :cond_a7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
