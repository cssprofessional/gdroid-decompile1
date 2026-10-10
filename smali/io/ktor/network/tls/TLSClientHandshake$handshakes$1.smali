###### Class io.ktor.network.tls.TLSClientHandshake$handshakes$1 (io.ktor.network.tls.TLSClientHandshake$handshakes$1)
.class public final Lio/ktor/network/tls/TLSClientHandshake$handshakes$1;
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
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-",
        "Lio/ktor/network/tls/TLSHandshake;",
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
    c = "io.ktor.network.tls.TLSClientHandshake$handshakes$1"
    f = "TLSClientHandshake.kt"
    l = {
        0x96,
        0xa5
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lio/ktor/network/tls/TLSClientHandshake;


# direct methods
.method public constructor <init>(Lio/ktor/network/tls/TLSClientHandshake;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/tls/TLSClientHandshake;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/tls/TLSClientHandshake$handshakes$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$handshakes$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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
    new-instance v0, Lio/ktor/network/tls/TLSClientHandshake$handshakes$1;

    iget-object p0, p0, Lio/ktor/network/tls/TLSClientHandshake$handshakes$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-direct {v0, p0, p2}, Lio/ktor/network/tls/TLSClientHandshake$handshakes$1;-><init>(Lio/ktor/network/tls/TLSClientHandshake;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/network/tls/TLSClientHandshake$handshakes$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/network/tls/TLSClientHandshake$handshakes$1;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-",
            "Lio/ktor/network/tls/TLSHandshake;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/ktor/network/tls/TLSClientHandshake$handshakes$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/ktor/network/tls/TLSClientHandshake$handshakes$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/ktor/network/tls/TLSClientHandshake$handshakes$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    iget-object v0, p0, Lio/ktor/network/tls/TLSClientHandshake$handshakes$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 148
    iget v2, p0, Lio/ktor/network/tls/TLSClientHandshake$handshakes$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2f

    if-eq v2, v4, :cond_2b

    if-ne v2, v3, :cond_23

    iget-object v2, p0, Lio/ktor/network/tls/TLSClientHandshake$handshakes$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lio/ktor/network/tls/TLSHandshake;

    iget-object v5, p0, Lio/ktor/network/tls/TLSClientHandshake$handshakes$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/io/Source;

    iget-object v6, p0, Lio/ktor/network/tls/TLSClientHandshake$handshakes$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lio/ktor/network/tls/TLSRecord;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_96

    :cond_23
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4a

    :cond_2f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 150
    :cond_32
    iget-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$handshakes$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-virtual {p1}, Lio/ktor/network/tls/TLSClientHandshake;->getInput()Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p1

    iput-object v0, p0, Lio/ktor/network/tls/TLSClientHandshake$handshakes$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, Lio/ktor/network/tls/TLSClientHandshake$handshakes$1;->L$1:Ljava/lang/Object;

    iput-object v2, p0, Lio/ktor/network/tls/TLSClientHandshake$handshakes$1;->L$2:Ljava/lang/Object;

    iput-object v2, p0, Lio/ktor/network/tls/TLSClientHandshake$handshakes$1;->L$3:Ljava/lang/Object;

    iput v4, p0, Lio/ktor/network/tls/TLSClientHandshake$handshakes$1;->label:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4a

    return-object v1

    .line 148
    :cond_4a
    :goto_4a
    check-cast p1, Lio/ktor/network/tls/TLSRecord;

    .line 151
    invoke-virtual {p1}, Lio/ktor/network/tls/TLSRecord;->getType()Lio/ktor/network/tls/TLSRecordType;

    move-result-object v2

    sget-object v5, Lio/ktor/network/tls/TLSRecordType;->Handshake:Lio/ktor/network/tls/TLSRecordType;

    if-ne v2, v5, :cond_a4

    .line 156
    invoke-virtual {p1}, Lio/ktor/network/tls/TLSRecord;->getPacket()Lkotlinx/io/Source;

    move-result-object v2

    move-object v6, p1

    move-object v5, v2

    .line 158
    :cond_5a
    invoke-interface {v5}, Lkotlinx/io/Source;->exhausted()Z

    move-result p1

    if-nez p1, :cond_32

    .line 159
    invoke-static {v5}, Lio/ktor/network/tls/ParserKt;->readTLSHandshake(Lkotlinx/io/Source;)Lio/ktor/network/tls/TLSHandshake;

    move-result-object v2

    .line 160
    invoke-virtual {v2}, Lio/ktor/network/tls/TLSHandshake;->getType()Lio/ktor/network/tls/TLSHandshakeType;

    move-result-object p1

    sget-object v7, Lio/ktor/network/tls/TLSHandshakeType;->HelloRequest:Lio/ktor/network/tls/TLSHandshakeType;

    if-eq p1, v7, :cond_5a

    .line 161
    invoke-virtual {v2}, Lio/ktor/network/tls/TLSHandshake;->getType()Lio/ktor/network/tls/TLSHandshakeType;

    move-result-object p1

    sget-object v7, Lio/ktor/network/tls/TLSHandshakeType;->Finished:Lio/ktor/network/tls/TLSHandshakeType;

    if-eq p1, v7, :cond_7d

    .line 162
    iget-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$handshakes$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-static {p1}, Lio/ktor/network/tls/TLSClientHandshake;->access$getDigest$p(Lio/ktor/network/tls/TLSClientHandshake;)Lkotlinx/io/Sink;

    move-result-object p1

    invoke-static {p1, v2}, Lio/ktor/network/tls/UtilsKt;->plusAssign-Hh8V18w(Lkotlinx/io/Sink;Lio/ktor/network/tls/TLSHandshake;)V

    .line 165
    :cond_7d
    invoke-interface {v0}, Lkotlinx/coroutines/channels/ProducerScope;->getChannel()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object p1

    iput-object v0, p0, Lio/ktor/network/tls/TLSClientHandshake$handshakes$1;->L$0:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lio/ktor/network/tls/TLSClientHandshake$handshakes$1;->L$1:Ljava/lang/Object;

    iput-object v5, p0, Lio/ktor/network/tls/TLSClientHandshake$handshakes$1;->L$2:Ljava/lang/Object;

    iput-object v2, p0, Lio/ktor/network/tls/TLSClientHandshake$handshakes$1;->L$3:Ljava/lang/Object;

    iput v3, p0, Lio/ktor/network/tls/TLSClientHandshake$handshakes$1;->label:I

    invoke-interface {p1, v2, p0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_96

    return-object v1

    .line 167
    :cond_96
    :goto_96
    invoke-virtual {v2}, Lio/ktor/network/tls/TLSHandshake;->getType()Lio/ktor/network/tls/TLSHandshakeType;

    move-result-object p1

    sget-object v2, Lio/ktor/network/tls/TLSHandshakeType;->Finished:Lio/ktor/network/tls/TLSHandshakeType;

    if-ne p1, v2, :cond_5a

    .line 168
    invoke-interface {v5}, Lkotlinx/io/RawSource;->close()V

    .line 169
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 152
    :cond_a4
    invoke-virtual {p1}, Lio/ktor/network/tls/TLSRecord;->getPacket()Lkotlinx/io/Source;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/io/RawSource;->close()V

    new-instance p0, Ljava/lang/IllegalStateException;

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TLS handshake expected, got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/ktor/network/tls/TLSRecord;->getType()Lio/ktor/network/tls/TLSRecordType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
