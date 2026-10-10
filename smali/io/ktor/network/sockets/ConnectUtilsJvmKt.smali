###### Class io.ktor.network.sockets.ConnectUtilsJvmKt (io.ktor.network.sockets.ConnectUtilsJvmKt)
.class public final Lio/ktor/network/sockets/ConnectUtilsJvmKt;
.super Ljava/lang/Object;
.source "ConnectUtilsJvm.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConnectUtilsJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectUtilsJvm.kt\nio/ktor/network/sockets/ConnectUtilsJvmKt\n+ 2 SelectorManager.kt\nio/ktor/network/selector/SelectorManagerKt\n*L\n1#1,64:1\n61#2,8:65\n61#2,8:73\n*S KotlinDebug\n*F\n+ 1 ConnectUtilsJvm.kt\nio/ktor/network/sockets/ConnectUtilsJvmKt\n*L\n16#1:65,8\n29#1:73,8\n*E\n"
.end annotation


# direct methods
.method public static final openSocketChannelFor(Ljava/nio/channels/spi/SelectorProvider;Lio/ktor/network/sockets/SocketAddress;)Ljava/nio/channels/SocketChannel;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    instance-of v0, p1, Lio/ktor/network/sockets/InetSocketAddress;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Ljava/nio/channels/spi/SelectorProvider;->openSocketChannel()Ljava/nio/channels/SocketChannel;

    move-result-object p0

    goto :goto_3a

    .line 44
    :cond_13
    instance-of p1, p1, Lio/ktor/network/sockets/UnixSocketAddress;

    if-eqz p1, :cond_3b

    .line 47
    const-string p1, "UNIX"

    invoke-static {p1}, Ljava/net/StandardProtocolFamily;->valueOf(Ljava/lang/String;)Ljava/net/StandardProtocolFamily;

    move-result-object p1

    .line 48
    const-string v0, "openSocketChannel"

    const-class v1, Ljava/net/ProtocolFamily;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/nio/channels/spi/SelectorProvider;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 49
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type java.nio.channels.SocketChannel"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/nio/channels/SocketChannel;

    :goto_3a
    return-object p0

    .line 42
    :cond_3b
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final tcpConnect(Lio/ktor/network/selector/SelectorManager;Lio/ktor/network/sockets/SocketAddress;Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/selector/SelectorManager;",
            "Lio/ktor/network/sockets/SocketAddress;",
            "Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/sockets/Socket;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/network/sockets/ConnectUtilsJvmKt$tcpConnect$1;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$tcpConnect$1;

    iget v1, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$tcpConnect$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$tcpConnect$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$tcpConnect$1;

    invoke-direct {v0, p3}, Lio/ktor/network/sockets/ConnectUtilsJvmKt$tcpConnect$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$tcpConnect$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 12
    iget v2, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$tcpConnect$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_53

    if-ne v2, v3, :cond_4b

    iget-object p0, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$tcpConnect$1;->L$7:Ljava/lang/Object;

    check-cast p0, Lio/ktor/network/sockets/SocketImpl;

    iget-object p0, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$tcpConnect$1;->L$6:Ljava/lang/Object;

    check-cast p0, Lio/ktor/network/sockets/SocketImpl;

    iget-object p1, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$tcpConnect$1;->L$5:Ljava/lang/Object;

    check-cast p1, Ljava/io/Closeable;

    iget-object p2, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$tcpConnect$1;->L$4:Ljava/lang/Object;

    check-cast p2, Ljava/nio/channels/SocketChannel;

    iget-object p2, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$tcpConnect$1;->L$3:Ljava/lang/Object;

    check-cast p2, Lio/ktor/network/selector/SelectorManager;

    iget-object p2, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$tcpConnect$1;->L$2:Ljava/lang/Object;

    check-cast p2, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    iget-object p2, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$tcpConnect$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lio/ktor/network/sockets/SocketAddress;

    iget-object p2, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$tcpConnect$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lio/ktor/network/selector/SelectorManager;

    :try_start_45
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_b4

    :catchall_49
    move-exception p0

    goto :goto_b5

    :cond_4b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_53
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    invoke-interface {p0}, Lio/ktor/network/selector/SelectorManager;->getProvider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object p3

    .line 16
    invoke-static {p3, p1}, Lio/ktor/network/sockets/ConnectUtilsJvmKt;->openSocketChannelFor(Ljava/nio/channels/spi/SelectorProvider;Lio/ktor/network/sockets/SocketAddress;)Ljava/nio/channels/SocketChannel;

    move-result-object p3

    .line 17
    :try_start_5e
    instance-of v2, p1, Lio/ktor/network/sockets/InetSocketAddress;

    if-eqz v2, :cond_6c

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p3, p2}, Lio/ktor/network/sockets/JavaSocketOptionsKt;->assignOptions(Ljava/nio/channels/SelectableChannel;Lio/ktor/network/sockets/SocketOptions;)V

    goto :goto_6c

    :catchall_69
    move-exception p0

    move-object p1, p3

    goto :goto_b5

    .line 18
    :cond_6c
    :goto_6c
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p3}, Lio/ktor/network/sockets/JavaSocketOptionsKt;->nonBlocking(Ljava/nio/channels/SelectableChannel;)V

    .line 20
    new-instance v2, Lio/ktor/network/sockets/SocketImpl;

    invoke-direct {v2, p3, p0, p2}, Lio/ktor/network/sockets/SocketImpl;-><init>(Ljava/nio/channels/SocketChannel;Lio/ktor/network/selector/SelectorManager;Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;)V

    .line 21
    invoke-static {p1}, Lio/ktor/network/sockets/JavaSocketAddressUtilsKt;->toJavaAddress(Lio/ktor/network/sockets/SocketAddress;)Ljava/net/SocketAddress;

    move-result-object v4

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$tcpConnect$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$tcpConnect$1;->L$1:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$tcpConnect$1;->L$2:Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$tcpConnect$1;->L$3:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$tcpConnect$1;->L$4:Ljava/lang/Object;

    iput-object p3, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$tcpConnect$1;->L$5:Ljava/lang/Object;

    iput-object v2, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$tcpConnect$1;->L$6:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$tcpConnect$1;->L$7:Ljava/lang/Object;

    const/4 p0, 0x0

    iput p0, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$tcpConnect$1;->I$0:I

    iput p0, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$tcpConnect$1;->I$1:I

    iput p0, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$tcpConnect$1;->I$2:I

    iput v3, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$tcpConnect$1;->label:I

    invoke-virtual {v2, v4, v0}, Lio/ktor/network/sockets/SocketImpl;->connect$ktor_network(Ljava/net/SocketAddress;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_b0
    .catchall {:try_start_5e .. :try_end_b0} :catchall_69

    if-ne p0, v1, :cond_b3

    return-object v1

    :cond_b3
    move-object p0, v2

    :goto_b4
    return-object p0

    .line 67
    :goto_b5
    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    .line 68
    throw p0
.end method

###### Class io.ktor.network.sockets.ConnectUtilsJvmKt.AnonymousClass1 (io.ktor.network.sockets.ConnectUtilsJvmKt$tcpConnect$1)
.class public final Lio/ktor/network/sockets/ConnectUtilsJvmKt$tcpConnect$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ConnectUtilsJvm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/sockets/ConnectUtilsJvmKt;->tcpConnect(Lio/ktor/network/selector/SelectorManager;Lio/ktor/network/sockets/SocketAddress;Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.network.sockets.ConnectUtilsJvmKt"
    f = "ConnectUtilsJvm.kt"
    l = {
        0x15
    }
    m = "tcpConnect"
    v = 0x1
.end annotation


# instance fields
.field public I$0:I

.field public I$1:I

.field public I$2:I

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public L$5:Ljava/lang/Object;

.field public L$6:Ljava/lang/Object;

.field public L$7:Ljava/lang/Object;

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
            "Lio/ktor/network/sockets/ConnectUtilsJvmKt$tcpConnect$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$tcpConnect$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$tcpConnect$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$tcpConnect$1;->label:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p0}, Lio/ktor/network/sockets/ConnectUtilsJvmKt;->tcpConnect(Lio/ktor/network/selector/SelectorManager;Lio/ktor/network/sockets/SocketAddress;Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
