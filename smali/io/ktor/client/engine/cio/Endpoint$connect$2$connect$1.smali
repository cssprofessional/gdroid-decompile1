###### Class io.ktor.client.engine.cio.Endpoint$connect$2$connect$1 (io.ktor.client.engine.cio.Endpoint$connect$2$connect$1)
.class public final Lio/ktor/client/engine/cio/Endpoint$connect$2$connect$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Endpoint.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/cio/Endpoint;->connect(Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lio/ktor/network/sockets/Socket;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.client.engine.cio.Endpoint$connect$2$connect$1"
    f = "Endpoint.kt"
    l = {
        0xd7
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public final synthetic $address:Lio/ktor/network/sockets/SocketAddress;

.field public final synthetic $socketTimeout:J

.field public label:I

.field public final synthetic this$0:Lio/ktor/client/engine/cio/Endpoint;


# direct methods
.method public static synthetic $r8$lambda$PNDtzW54g1KC_kLaC4PZXiVY7rI(JLio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;)Lkotlin/Unit;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lio/ktor/client/engine/cio/Endpoint$connect$2$connect$1;->invokeSuspend$lambda$0(JLio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lio/ktor/client/engine/cio/Endpoint;Lio/ktor/network/sockets/SocketAddress;JLkotlin/coroutines/Continuation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/engine/cio/Endpoint;",
            "Lio/ktor/network/sockets/SocketAddress;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/engine/cio/Endpoint$connect$2$connect$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/cio/Endpoint$connect$2$connect$1;->this$0:Lio/ktor/client/engine/cio/Endpoint;

    iput-object p2, p0, Lio/ktor/client/engine/cio/Endpoint$connect$2$connect$1;->$address:Lio/ktor/network/sockets/SocketAddress;

    iput-wide p3, p0, Lio/ktor/client/engine/cio/Endpoint$connect$2$connect$1;->$socketTimeout:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static final invokeSuspend$lambda$0(JLio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;)Lkotlin/Unit;
    .registers 3

    .line 216
    invoke-virtual {p2, p0, p1}, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->setSocketTimeout(J)V

    .line 217
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 9
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
    new-instance p1, Lio/ktor/client/engine/cio/Endpoint$connect$2$connect$1;

    iget-object v1, p0, Lio/ktor/client/engine/cio/Endpoint$connect$2$connect$1;->this$0:Lio/ktor/client/engine/cio/Endpoint;

    iget-object v2, p0, Lio/ktor/client/engine/cio/Endpoint$connect$2$connect$1;->$address:Lio/ktor/network/sockets/SocketAddress;

    iget-wide v3, p0, Lio/ktor/client/engine/cio/Endpoint$connect$2$connect$1;->$socketTimeout:J

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/ktor/client/engine/cio/Endpoint$connect$2$connect$1;-><init>(Lio/ktor/client/engine/cio/Endpoint;Lio/ktor/network/sockets/SocketAddress;JLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/cio/Endpoint$connect$2$connect$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lio/ktor/network/sockets/Socket;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/cio/Endpoint$connect$2$connect$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/ktor/client/engine/cio/Endpoint$connect$2$connect$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/ktor/client/engine/cio/Endpoint$connect$2$connect$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 214
    iget v1, p0, Lio/ktor/client/engine/cio/Endpoint$connect$2$connect$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_32

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 215
    iget-object p1, p0, Lio/ktor/client/engine/cio/Endpoint$connect$2$connect$1;->this$0:Lio/ktor/client/engine/cio/Endpoint;

    invoke-static {p1}, Lio/ktor/client/engine/cio/Endpoint;->access$getConnectionFactory$p(Lio/ktor/client/engine/cio/Endpoint;)Lio/ktor/client/engine/cio/ConnectionFactory;

    move-result-object p1

    iget-object v1, p0, Lio/ktor/client/engine/cio/Endpoint$connect$2$connect$1;->$address:Lio/ktor/network/sockets/SocketAddress;

    iget-wide v3, p0, Lio/ktor/client/engine/cio/Endpoint$connect$2$connect$1;->$socketTimeout:J

    new-instance v5, Lio/ktor/client/engine/cio/Endpoint$connect$2$connect$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, v4}, Lio/ktor/client/engine/cio/Endpoint$connect$2$connect$1$$ExternalSyntheticLambda0;-><init>(J)V

    iput v2, p0, Lio/ktor/client/engine/cio/Endpoint$connect$2$connect$1;->label:I

    invoke-virtual {p1, v1, v5, p0}, Lio/ktor/client/engine/cio/ConnectionFactory;->connect(Lio/ktor/network/sockets/SocketAddress;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_32

    return-object v0

    :cond_32
    :goto_32
    return-object p1
.end method

###### Class io.ktor.client.engine.cio.Endpoint$connect$2$connect$1$$ExternalSyntheticLambda0 (io.ktor.client.engine.cio.Endpoint$connect$2$connect$1$$ExternalSyntheticLambda0)
.class public final synthetic Lio/ktor/client/engine/cio/Endpoint$connect$2$connect$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/ktor/client/engine/cio/Endpoint$connect$2$connect$1$$ExternalSyntheticLambda0;->f$0:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-wide v0, p0, Lio/ktor/client/engine/cio/Endpoint$connect$2$connect$1$$ExternalSyntheticLambda0;->f$0:J

    check-cast p1, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    invoke-static {v0, v1, p1}, Lio/ktor/client/engine/cio/Endpoint$connect$2$connect$1;->$r8$lambda$PNDtzW54g1KC_kLaC4PZXiVY7rI(JLio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
