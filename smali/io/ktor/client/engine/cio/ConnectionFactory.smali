###### Class io.ktor.client.engine.cio.ConnectionFactory (io.ktor.client.engine.cio.ConnectionFactory)
.class public final Lio/ktor/client/engine/cio/ConnectionFactory;
.super Ljava/lang/Object;
.source "ConnectionFactory.kt"


# instance fields
.field public final addressConnectionsLimit:I

.field public final addressLimit:Lio/ktor/util/collections/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/collections/ConcurrentMap<",
            "Lio/ktor/network/sockets/SocketAddress;",
            "Lkotlinx/coroutines/sync/Semaphore;",
            ">;"
        }
    .end annotation
.end field

.field public final limit:Lkotlinx/coroutines/sync/Semaphore;

.field public final selector:Lio/ktor/network/selector/SelectorManager;


# direct methods
.method public static synthetic $r8$lambda$XxtVfMhNVElEtzD8Lk7dtWbrUw8(Lio/ktor/client/engine/cio/ConnectionFactory;)Lkotlinx/coroutines/sync/Semaphore;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/ktor/client/engine/cio/ConnectionFactory;->connect$lambda$1(Lio/ktor/client/engine/cio/ConnectionFactory;)Lkotlinx/coroutines/sync/Semaphore;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lio/ktor/network/selector/SelectorManager;II)V
    .registers 5

    const-string v0, "selector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lio/ktor/client/engine/cio/ConnectionFactory;->selector:Lio/ktor/network/selector/SelectorManager;

    .line 15
    iput p3, p0, Lio/ktor/client/engine/cio/ConnectionFactory;->addressConnectionsLimit:I

    const/4 p1, 0x0

    const/4 p3, 0x2

    const/4 v0, 0x0

    .line 17
    invoke-static {p2, p1, p3, v0}, Lkotlinx/coroutines/sync/SemaphoreKt;->Semaphore$default(IIILjava/lang/Object;)Lkotlinx/coroutines/sync/Semaphore;

    move-result-object p2

    iput-object p2, p0, Lio/ktor/client/engine/cio/ConnectionFactory;->limit:Lkotlinx/coroutines/sync/Semaphore;

    .line 18
    new-instance p2, Lio/ktor/util/collections/ConcurrentMap;

    const/4 p3, 0x1

    invoke-direct {p2, p1, p3, v0}, Lio/ktor/util/collections/ConcurrentMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lio/ktor/client/engine/cio/ConnectionFactory;->addressLimit:Lio/ktor/util/collections/ConcurrentMap;

    return-void
.end method

.method public static final connect$lambda$1(Lio/ktor/client/engine/cio/ConnectionFactory;)Lkotlinx/coroutines/sync/Semaphore;
    .registers 4

    .line 26
    iget p0, p0, Lio/ktor/client/engine/cio/ConnectionFactory;->addressConnectionsLimit:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lkotlinx/coroutines/sync/SemaphoreKt;->Semaphore$default(IIILjava/lang/Object;)Lkotlinx/coroutines/sync/Semaphore;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final connect(Lio/ktor/network/sockets/SocketAddress;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/sockets/SocketAddress;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/sockets/Socket;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/client/engine/cio/ConnectionFactory$connect$1;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lio/ktor/client/engine/cio/ConnectionFactory$connect$1;

    iget v1, v0, Lio/ktor/client/engine/cio/ConnectionFactory$connect$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/client/engine/cio/ConnectionFactory$connect$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/ktor/client/engine/cio/ConnectionFactory$connect$1;

    invoke-direct {v0, p0, p3}, Lio/ktor/client/engine/cio/ConnectionFactory$connect$1;-><init>(Lio/ktor/client/engine/cio/ConnectionFactory;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lio/ktor/client/engine/cio/ConnectionFactory$connect$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 20
    iget v2, v0, Lio/ktor/client/engine/cio/ConnectionFactory$connect$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_66

    if-eq v2, v5, :cond_59

    if-eq v2, v4, :cond_47

    if-ne v2, v3, :cond_3f

    iget-object p1, v0, Lio/ktor/client/engine/cio/ConnectionFactory$connect$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Semaphore;

    iget-object p2, v0, Lio/ktor/client/engine/cio/ConnectionFactory$connect$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    iget-object p2, v0, Lio/ktor/client/engine/cio/ConnectionFactory$connect$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lio/ktor/network/sockets/SocketAddress;

    :try_start_37
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3c

    goto/16 :goto_b7

    :catchall_3c
    move-exception p2

    goto/16 :goto_ba

    :cond_3f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_47
    iget-object p1, v0, Lio/ktor/client/engine/cio/ConnectionFactory$connect$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Semaphore;

    iget-object p2, v0, Lio/ktor/client/engine/cio/ConnectionFactory$connect$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    iget-object v2, v0, Lio/ktor/client/engine/cio/ConnectionFactory$connect$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/network/sockets/SocketAddress;

    :try_start_53
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_96

    :catchall_57
    move-exception p1

    goto :goto_be

    :cond_59
    iget-object p1, v0, Lio/ktor/client/engine/cio/ConnectionFactory$connect$1;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lkotlin/jvm/functions/Function1;

    iget-object p1, v0, Lio/ktor/client/engine/cio/ConnectionFactory$connect$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/network/sockets/SocketAddress;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_78

    :cond_66
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 24
    iget-object p3, p0, Lio/ktor/client/engine/cio/ConnectionFactory;->limit:Lkotlinx/coroutines/sync/Semaphore;

    iput-object p1, v0, Lio/ktor/client/engine/cio/ConnectionFactory$connect$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/client/engine/cio/ConnectionFactory$connect$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lio/ktor/client/engine/cio/ConnectionFactory$connect$1;->label:I

    invoke-interface {p3, v0}, Lkotlinx/coroutines/sync/Semaphore;->acquire(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_78

    return-object v1

    .line 26
    :cond_78
    :goto_78
    :try_start_78
    iget-object p3, p0, Lio/ktor/client/engine/cio/ConnectionFactory;->addressLimit:Lio/ktor/util/collections/ConcurrentMap;

    new-instance v2, Lio/ktor/client/engine/cio/ConnectionFactory$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lio/ktor/client/engine/cio/ConnectionFactory$$ExternalSyntheticLambda0;-><init>(Lio/ktor/client/engine/cio/ConnectionFactory;)V

    invoke-virtual {p3, p1, v2}, Lio/ktor/util/collections/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkotlinx/coroutines/sync/Semaphore;

    .line 27
    iput-object p1, v0, Lio/ktor/client/engine/cio/ConnectionFactory$connect$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/client/engine/cio/ConnectionFactory$connect$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lio/ktor/client/engine/cio/ConnectionFactory$connect$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lio/ktor/client/engine/cio/ConnectionFactory$connect$1;->label:I

    invoke-interface {p3, v0}, Lkotlinx/coroutines/sync/Semaphore;->acquire(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_91
    .catchall {:try_start_78 .. :try_end_91} :catchall_57

    if-ne v2, v1, :cond_94

    return-object v1

    :cond_94
    move-object v2, p1

    move-object p1, p3

    .line 30
    :goto_96
    :try_start_96
    iget-object p3, p0, Lio/ktor/client/engine/cio/ConnectionFactory;->selector:Lio/ktor/network/selector/SelectorManager;

    invoke-static {p3}, Lio/ktor/network/sockets/BuildersKt;->aSocket(Lio/ktor/network/selector/SelectorManager;)Lio/ktor/network/sockets/SocketBuilder;

    move-result-object p3

    invoke-virtual {p3}, Lio/ktor/network/sockets/SocketBuilder;->tcp()Lio/ktor/network/sockets/TcpSocketBuilder;

    move-result-object p3

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lio/ktor/client/engine/cio/ConnectionFactory$connect$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lio/ktor/client/engine/cio/ConnectionFactory$connect$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/client/engine/cio/ConnectionFactory$connect$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/client/engine/cio/ConnectionFactory$connect$1;->label:I

    invoke-virtual {p3, v2, p2, v0}, Lio/ktor/network/sockets/TcpSocketBuilder;->connect(Lio/ktor/network/sockets/SocketAddress;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_b7

    return-object v1

    :cond_b7
    :goto_b7
    check-cast p3, Lio/ktor/network/sockets/Socket;
    :try_end_b9
    .catchall {:try_start_96 .. :try_end_b9} :catchall_3c

    return-object p3

    .line 33
    :goto_ba
    :try_start_ba
    invoke-interface {p1}, Lkotlinx/coroutines/sync/Semaphore;->release()V

    .line 34
    throw p2
    :try_end_be
    .catchall {:try_start_ba .. :try_end_be} :catchall_57

    .line 37
    :goto_be
    iget-object p0, p0, Lio/ktor/client/engine/cio/ConnectionFactory;->limit:Lkotlinx/coroutines/sync/Semaphore;

    invoke-interface {p0}, Lkotlinx/coroutines/sync/Semaphore;->release()V

    .line 38
    throw p1
.end method

.method public final release(Lio/ktor/network/sockets/SocketAddress;)V
    .registers 3

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lio/ktor/client/engine/cio/ConnectionFactory;->addressLimit:Lio/ktor/util/collections/ConcurrentMap;

    invoke-virtual {v0, p1}, Lio/ktor/util/collections/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/sync/Semaphore;

    if-eqz p1, :cond_12

    invoke-interface {p1}, Lkotlinx/coroutines/sync/Semaphore;->release()V

    .line 44
    :cond_12
    iget-object p0, p0, Lio/ktor/client/engine/cio/ConnectionFactory;->limit:Lkotlinx/coroutines/sync/Semaphore;

    invoke-interface {p0}, Lkotlinx/coroutines/sync/Semaphore;->release()V

    return-void
.end method

###### Class io.ktor.client.engine.cio.ConnectionFactory.AnonymousClass1 (io.ktor.client.engine.cio.ConnectionFactory$connect$1)
.class public final Lio/ktor/client/engine/cio/ConnectionFactory$connect$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ConnectionFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/cio/ConnectionFactory;->connect(Lio/ktor/network/sockets/SocketAddress;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.client.engine.cio.ConnectionFactory"
    f = "ConnectionFactory.kt"
    l = {
        0x18,
        0x1b,
        0x1e
    }
    m = "connect"
    v = 0x1
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lio/ktor/client/engine/cio/ConnectionFactory;


# direct methods
.method public constructor <init>(Lio/ktor/client/engine/cio/ConnectionFactory;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/engine/cio/ConnectionFactory;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/engine/cio/ConnectionFactory$connect$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/cio/ConnectionFactory$connect$1;->this$0:Lio/ktor/client/engine/cio/ConnectionFactory;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/cio/ConnectionFactory$connect$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/client/engine/cio/ConnectionFactory$connect$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/client/engine/cio/ConnectionFactory$connect$1;->label:I

    iget-object p1, p0, Lio/ktor/client/engine/cio/ConnectionFactory$connect$1;->this$0:Lio/ktor/client/engine/cio/ConnectionFactory;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lio/ktor/client/engine/cio/ConnectionFactory;->connect(Lio/ktor/network/sockets/SocketAddress;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.client.engine.cio.ConnectionFactory$$ExternalSyntheticLambda0 (io.ktor.client.engine.cio.ConnectionFactory$$ExternalSyntheticLambda0)
.class public final synthetic Lio/ktor/client/engine/cio/ConnectionFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lio/ktor/client/engine/cio/ConnectionFactory;


# direct methods
.method public synthetic constructor <init>(Lio/ktor/client/engine/cio/ConnectionFactory;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/client/engine/cio/ConnectionFactory$$ExternalSyntheticLambda0;->f$0:Lio/ktor/client/engine/cio/ConnectionFactory;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lio/ktor/client/engine/cio/ConnectionFactory$$ExternalSyntheticLambda0;->f$0:Lio/ktor/client/engine/cio/ConnectionFactory;

    invoke-static {p0}, Lio/ktor/client/engine/cio/ConnectionFactory;->$r8$lambda$XxtVfMhNVElEtzD8Lk7dtWbrUw8(Lio/ktor/client/engine/cio/ConnectionFactory;)Lkotlinx/coroutines/sync/Semaphore;

    move-result-object p0

    return-object p0
.end method
