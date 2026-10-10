###### Class io.ktor.client.engine.cio.Endpoint (io.ktor.client.engine.cio.Endpoint)
.class public final Lio/ktor/client/engine/cio/Endpoint;
.super Ljava/lang/Object;
.source "Endpoint.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/engine/cio/Endpoint$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/client/engine/cio/Endpoint$Companion;

.field public static final synthetic connections$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final config:Lio/ktor/client/engine/cio/CIOEngineConfig;

.field public final connectionFactory:Lio/ktor/client/engine/cio/ConnectionFactory;

.field private volatile synthetic connections:I

.field public final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public final deliveryPoint:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Lio/ktor/client/engine/cio/RequestTask;",
            ">;"
        }
    .end annotation
.end field

.field public final host:Ljava/lang/String;

.field volatile synthetic lastActivity:J

.field public final maxEndpointIdleTime:J

.field public final onDone:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final port:I

.field public final proxy:Ljava/net/Proxy;

.field public final secure:Z

.field public final timeout:Lkotlinx/coroutines/Job;

.field public final unixSocket:Lio/ktor/client/request/UnixSocketSettings;


# direct methods
.method public static synthetic $r8$lambda$PbQzK2MQSE6KimdGRGHf_jrSbXo(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/network/sockets/Connection;Lio/ktor/client/engine/cio/Endpoint;Lio/ktor/network/sockets/SocketAddress;Ljava/lang/Throwable;)Lkotlin/Unit;
    .registers 6

    .line 0
    invoke-static/range {p0 .. p5}, Lio/ktor/client/engine/cio/Endpoint;->makeDedicatedRequest$lambda$0(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/network/sockets/Connection;Lio/ktor/client/engine/cio/Endpoint;Lio/ktor/network/sockets/SocketAddress;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QXTo5y6p07_2eFUkD3Bl4XcA38g(Lio/ktor/client/engine/cio/Endpoint;Lio/ktor/network/sockets/InetSocketAddress;Lio/ktor/network/tls/TLSConfigBuilder;)Lkotlin/Unit;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lio/ktor/client/engine/cio/Endpoint;->connect$lambda$0$0(Lio/ktor/client/engine/cio/Endpoint;Lio/ktor/network/sockets/InetSocketAddress;Lio/ktor/network/tls/TLSConfigBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ot0cZqRjk4CJuvYIBry7y5ZDkuo(Lio/ktor/client/engine/cio/Endpoint;Lio/ktor/network/sockets/SocketAddress;Ljava/lang/Throwable;)Lkotlin/Unit;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lio/ktor/client/engine/cio/Endpoint;->createPipeline$lambda$0(Lio/ktor/client/engine/cio/Endpoint;Lio/ktor/network/sockets/SocketAddress;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/ktor/client/engine/cio/Endpoint$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/client/engine/cio/Endpoint$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/client/engine/cio/Endpoint;->Companion:Lio/ktor/client/engine/cio/Endpoint$Companion;

    const-class v0, Lio/ktor/client/engine/cio/Endpoint;

    const-string v1, "connections"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/client/engine/cio/Endpoint;->connections$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/net/Proxy;ZLio/ktor/client/engine/cio/CIOEngineConfig;Lio/ktor/client/engine/cio/ConnectionFactory;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lio/ktor/client/request/UnixSocketSettings;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/net/Proxy;",
            "Z",
            "Lio/ktor/client/engine/cio/CIOEngineConfig;",
            "Lio/ktor/client/engine/cio/ConnectionFactory;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lio/ktor/client/request/UnixSocketSettings;",
            ")V"
        }
    .end annotation

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionFactory"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDone"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lio/ktor/client/engine/cio/Endpoint;->host:Ljava/lang/String;

    .line 29
    iput p2, p0, Lio/ktor/client/engine/cio/Endpoint;->port:I

    .line 30
    iput-object p3, p0, Lio/ktor/client/engine/cio/Endpoint;->proxy:Ljava/net/Proxy;

    .line 31
    iput-boolean p4, p0, Lio/ktor/client/engine/cio/Endpoint;->secure:Z

    .line 32
    iput-object p5, p0, Lio/ktor/client/engine/cio/Endpoint;->config:Lio/ktor/client/engine/cio/CIOEngineConfig;

    .line 33
    iput-object p6, p0, Lio/ktor/client/engine/cio/Endpoint;->connectionFactory:Lio/ktor/client/engine/cio/ConnectionFactory;

    .line 34
    iput-object p7, p0, Lio/ktor/client/engine/cio/Endpoint;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 35
    iput-object p8, p0, Lio/ktor/client/engine/cio/Endpoint;->onDone:Lkotlin/jvm/functions/Function0;

    .line 36
    iput-object p9, p0, Lio/ktor/client/engine/cio/Endpoint;->unixSocket:Lio/ktor/client/request/UnixSocketSettings;

    .line 38
    invoke-static {}, Lio/ktor/util/date/DateJvmKt;->getTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lio/ktor/client/engine/cio/Endpoint;->lastActivity:J

    const/4 p1, 0x0

    .line 39
    iput p1, p0, Lio/ktor/client/engine/cio/Endpoint;->connections:I

    const/4 p2, 0x7

    const/4 p3, 0x0

    .line 40
    invoke-static {p1, p3, p3, p2, p3}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/engine/cio/Endpoint;->deliveryPoint:Lkotlinx/coroutines/channels/Channel;

    const/4 p1, 0x2

    int-to-long p1, p1

    .line 41
    invoke-virtual {p5}, Lio/ktor/client/engine/cio/CIOEngineConfig;->getEndpoint()Lio/ktor/client/engine/cio/EndpointConfig;

    move-result-object p4

    invoke-virtual {p4}, Lio/ktor/client/engine/cio/EndpointConfig;->getConnectTimeout()J

    move-result-wide p4

    mul-long/2addr p1, p4

    iput-wide p1, p0, Lio/ktor/client/engine/cio/Endpoint;->maxEndpointIdleTime:J

    .line 43
    invoke-virtual {p0}, Lio/ktor/client/engine/cio/Endpoint;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    new-instance p2, Lkotlinx/coroutines/CoroutineName;

    const-string p4, "cio-endpoint-timeout"

    invoke-direct {p2, p4}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    new-instance v3, Lio/ktor/client/engine/cio/Endpoint$timeout$1;

    invoke-direct {v3, p0, p3}, Lio/ktor/client/engine/cio/Endpoint$timeout$1;-><init>(Lio/ktor/client/engine/cio/Endpoint;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/engine/cio/Endpoint;->timeout:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$connect(Lio/ktor/client/engine/cio/Endpoint;Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 26
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/cio/Endpoint;->connect(Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createPipeline(Lio/ktor/client/engine/cio/Endpoint;Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 26
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/cio/Endpoint;->createPipeline(Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getConnectionFactory$p(Lio/ktor/client/engine/cio/Endpoint;)Lio/ktor/client/engine/cio/ConnectionFactory;
    .registers 1

    .line 26
    iget-object p0, p0, Lio/ktor/client/engine/cio/Endpoint;->connectionFactory:Lio/ktor/client/engine/cio/ConnectionFactory;

    return-object p0
.end method

.method public static final synthetic access$getDeliveryPoint$p(Lio/ktor/client/engine/cio/Endpoint;)Lkotlinx/coroutines/channels/Channel;
    .registers 1

    .line 26
    iget-object p0, p0, Lio/ktor/client/engine/cio/Endpoint;->deliveryPoint:Lkotlinx/coroutines/channels/Channel;

    return-object p0
.end method

.method public static final synthetic access$getMaxEndpointIdleTime$p(Lio/ktor/client/engine/cio/Endpoint;)J
    .registers 3

    .line 26
    iget-wide v0, p0, Lio/ktor/client/engine/cio/Endpoint;->maxEndpointIdleTime:J

    return-wide v0
.end method

.method public static final synthetic access$getOnDone$p(Lio/ktor/client/engine/cio/Endpoint;)Lkotlin/jvm/functions/Function0;
    .registers 1

    .line 26
    iget-object p0, p0, Lio/ktor/client/engine/cio/Endpoint;->onDone:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$makeDedicatedRequest(Lio/ktor/client/engine/cio/Endpoint;Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/client/engine/cio/Endpoint;->makeDedicatedRequest(Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$makePipelineRequest(Lio/ktor/client/engine/cio/Endpoint;Lio/ktor/client/engine/cio/RequestTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 26
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/cio/Endpoint;->makePipelineRequest(Lio/ktor/client/engine/cio/RequestTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final connect$lambda$0$0(Lio/ktor/client/engine/cio/Endpoint;Lio/ktor/network/sockets/InetSocketAddress;Lio/ktor/network/tls/TLSConfigBuilder;)Lkotlin/Unit;
    .registers 4

    const-string v0, "$this$tls"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    iget-object p0, p0, Lio/ktor/client/engine/cio/Endpoint;->config:Lio/ktor/client/engine/cio/CIOEngineConfig;

    invoke-virtual {p0}, Lio/ktor/client/engine/cio/CIOEngineConfig;->getHttps()Lio/ktor/network/tls/TLSConfigBuilder;

    move-result-object p0

    invoke-static {p2, p0}, Lio/ktor/network/tls/TLSConfigBuilderKt;->takeFrom(Lio/ktor/network/tls/TLSConfigBuilder;Lio/ktor/network/tls/TLSConfigBuilder;)V

    .line 253
    invoke-virtual {p2}, Lio/ktor/network/tls/TLSConfigBuilder;->getServerName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_18

    invoke-virtual {p1}, Lio/ktor/network/sockets/InetSocketAddress;->getHostname()Ljava/lang/String;

    move-result-object p0

    :cond_18
    invoke-virtual {p2, p0}, Lio/ktor/network/tls/TLSConfigBuilder;->setServerName(Ljava/lang/String;)V

    .line 254
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final createPipeline$lambda$0(Lio/ktor/client/engine/cio/Endpoint;Lio/ktor/network/sockets/SocketAddress;Ljava/lang/Throwable;)Lkotlin/Unit;
    .registers 3

    .line 195
    invoke-virtual {p0, p1}, Lio/ktor/client/engine/cio/Endpoint;->releaseConnection(Lio/ktor/network/sockets/SocketAddress;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final makeDedicatedRequest$lambda$0(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/network/sockets/Connection;Lio/ktor/client/engine/cio/Endpoint;Lio/ktor/network/sockets/SocketAddress;Ljava/lang/Throwable;)Lkotlin/Unit;
    .registers 6

    if-eqz p5, :cond_7

    .line 112
    invoke-static {p5}, Lio/ktor/client/utils/ExceptionUtilsJvmKt;->unwrapCancellationException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p5

    goto :goto_8

    :cond_7
    const/4 p5, 0x0

    .line 114
    :goto_8
    :try_start_8
    invoke-interface {p0, p5}, Lio/ktor/utils/io/ByteReadChannel;->cancel(Ljava/lang/Throwable;)V

    .line 115
    invoke-static {p1, p5}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->close(Lio/ktor/utils/io/ByteWriteChannel;Ljava/lang/Throwable;)V

    .line 116
    invoke-virtual {p2}, Lio/ktor/network/sockets/Connection;->getSocket()Lio/ktor/network/sockets/Socket;

    move-result-object p0

    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_19

    .line 120
    :goto_15
    invoke-virtual {p3, p4}, Lio/ktor/client/engine/cio/Endpoint;->releaseConnection(Lio/ktor/network/sockets/SocketAddress;)V

    goto :goto_24

    :catchall_19
    move-exception p0

    .line 118
    :try_start_1a
    invoke-static {}, Lio/ktor/client/engine/cio/EndpointKt;->access$getLOGGER$p()Lorg/slf4j/Logger;

    move-result-object p1

    const-string p2, "An error occurred while closing connection"

    invoke-interface {p1, p2, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_27

    goto :goto_15

    .line 122
    :goto_24
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_27
    move-exception p0

    .line 120
    invoke-virtual {p3, p4}, Lio/ktor/client/engine/cio/Endpoint;->releaseConnection(Lio/ktor/network/sockets/SocketAddress;)V

    throw p0
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 308
    iget-object p0, p0, Lio/ktor/client/engine/cio/Endpoint;->timeout:Lkotlinx/coroutines/Job;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public final connect(Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/request/HttpRequestData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Pair<",
            "+",
            "Lio/ktor/network/sockets/SocketAddress;",
            "Lio/ktor/network/sockets/Connection;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    instance-of v1, v0, Lio/ktor/client/engine/cio/Endpoint$connect$1;

    if-eqz v1, :cond_17

    move-object v1, v0

    check-cast v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;

    iget v2, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_17

    sub-int/2addr v2, v3

    iput v2, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->label:I

    goto :goto_1c

    :cond_17
    new-instance v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;

    invoke-direct {v1, v7, v0}, Lio/ktor/client/engine/cio/Endpoint$connect$1;-><init>(Lio/ktor/client/engine/cio/Endpoint;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v0, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v8

    .line 199
    iget v2, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->label:I

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eqz v2, :cond_f5

    if-eq v2, v14, :cond_cc

    if-eq v2, v13, :cond_9d

    if-eq v2, v12, :cond_60

    if-ne v2, v11, :cond_58

    iget-object v2, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$6:Ljava/lang/Object;

    check-cast v2, Lio/ktor/network/sockets/InetSocketAddress;

    iget-object v2, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$5:Ljava/lang/Object;

    check-cast v2, Lio/ktor/network/sockets/Connection;

    iget-object v2, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lio/ktor/network/sockets/Socket;

    iget-object v3, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/functions/Function2;

    iget-object v3, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lio/ktor/network/sockets/SocketAddress;

    iget-object v4, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v1, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/ktor/client/request/HttpRequestData;

    :try_start_4e
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_54

    move-object v1, v7

    goto/16 :goto_2f7

    :catchall_54
    move-exception v0

    move-object v1, v7

    goto/16 :goto_30a

    :cond_58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    iget v2, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->I$2:I

    iget v3, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->I$1:I

    iget-wide v4, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->J$1:J

    iget-wide v12, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->J$0:J

    iget v6, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->I$0:I

    iget-object v10, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$5:Ljava/lang/Object;

    check-cast v10, Lio/ktor/network/sockets/Connection;

    iget-object v14, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$4:Ljava/lang/Object;

    check-cast v14, Lio/ktor/network/sockets/Socket;

    iget-object v15, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$3:Ljava/lang/Object;

    check-cast v15, Lkotlin/jvm/functions/Function2;

    iget-object v9, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lio/ktor/network/sockets/SocketAddress;

    iget-object v11, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$IntRef;

    move/from16 p1, v2

    iget-object v2, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/client/request/HttpRequestData;

    :try_start_84
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_97

    move-object v0, v14

    move-object/from16 v22, v10

    move/from16 v10, p1

    move-wide/from16 v23, v4

    move-object v5, v8

    move-object/from16 v4, v22

    move-object v8, v15

    move-wide v14, v12

    move-wide/from16 v12, v23

    goto/16 :goto_26a

    :catchall_97
    move-exception v0

    move-object v1, v7

    move-object v3, v9

    move-object v2, v14

    goto/16 :goto_30a

    :cond_9d
    iget v2, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->I$3:I

    iget v3, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->I$2:I

    iget v4, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->I$1:I

    iget-wide v5, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->J$1:J

    iget-wide v12, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->J$0:J

    iget v15, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->I$0:I

    iget-object v9, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/functions/Function2;

    iget-object v11, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lio/ktor/network/sockets/SocketAddress;

    iget-object v14, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$1:Ljava/lang/Object;

    check-cast v14, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lio/ktor/client/request/HttpRequestData;

    :try_start_b9
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_bc
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_c8

    move-wide/from16 v19, v12

    move-wide v12, v5

    move-object v5, v8

    move-object v8, v9

    const/4 v6, 0x2

    move-object v9, v1

    move-object v1, v7

    move v7, v4

    const/4 v4, 0x0

    goto/16 :goto_1ec

    :catchall_c8
    move-exception v0

    move-object v1, v7

    goto/16 :goto_313

    :cond_cc
    iget v10, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->I$2:I

    iget v2, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->I$1:I

    iget-wide v3, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->J$1:J

    iget-wide v5, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->J$0:J

    iget v9, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->I$0:I

    iget-object v11, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$3:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function2;

    iget-object v12, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$2:Ljava/lang/Object;

    check-cast v12, Lio/ktor/network/sockets/SocketAddress;

    iget-object v13, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$1:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v14, v1, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lio/ktor/client/request/HttpRequestData;

    :try_start_e6
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_e9
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_c8

    move-object v15, v13

    move/from16 v22, v9

    move-object v9, v1

    move-object v1, v7

    move-object v7, v14

    move-wide v13, v5

    move-object v5, v8

    move/from16 v6, v22

    goto/16 :goto_19d

    :cond_f5
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 200
    iget-object v0, v7, Lio/ktor/client/engine/cio/Endpoint;->config:Lio/ktor/client/engine/cio/CIOEngineConfig;

    invoke-virtual {v0}, Lio/ktor/client/engine/cio/CIOEngineConfig;->getEndpoint()Lio/ktor/client/engine/cio/EndpointConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/client/engine/cio/EndpointConfig;->getConnectAttempts()I

    move-result v0

    .line 201
    invoke-virtual/range {p0 .. p1}, Lio/ktor/client/engine/cio/Endpoint;->retrieveTimeouts(Lio/ktor/client/request/HttpRequestData;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    .line 202
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 204
    sget-object v9, Lio/ktor/client/engine/cio/Endpoint;->connections$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v9, v7}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    move-object v9, v1

    move-object v15, v2

    move-wide v13, v3

    move-wide v11, v5

    const/4 v10, 0x0

    move v6, v0

    move-object/from16 v0, p1

    :goto_12c
    if-ge v10, v6, :cond_319

    .line 208
    :try_start_12e
    iget-object v1, v7, Lio/ktor/client/engine/cio/Endpoint;->unixSocket:Lio/ktor/client/request/UnixSocketSettings;

    if-eqz v1, :cond_13f

    .line 209
    new-instance v1, Lio/ktor/network/sockets/UnixSocketAddress;

    iget-object v2, v7, Lio/ktor/client/engine/cio/Endpoint;->unixSocket:Lio/ktor/client/request/UnixSocketSettings;

    invoke-virtual {v2}, Lio/ktor/client/request/UnixSocketSettings;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/ktor/network/sockets/UnixSocketAddress;-><init>(Ljava/lang/String;)V

    :goto_13d
    move-object v4, v1

    goto :goto_149

    .line 211
    :cond_13f
    new-instance v1, Lio/ktor/network/sockets/InetSocketAddress;

    iget-object v2, v7, Lio/ktor/client/engine/cio/Endpoint;->host:Ljava/lang/String;

    iget v3, v7, Lio/ktor/client/engine/cio/Endpoint;->port:I

    invoke-direct {v1, v2, v3}, Lio/ktor/network/sockets/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    goto :goto_13d

    .line 214
    :goto_149
    new-instance v5, Lio/ktor/client/engine/cio/Endpoint$connect$2$connect$1;
    :try_end_14b
    .catchall {:try_start_12e .. :try_end_14b} :catchall_c8

    const/16 v20, 0x0

    move-object v1, v5

    move-object/from16 v2, p0

    move-object v3, v4

    move-object/from16 p1, v5

    move-object/from16 v21, v8

    move-object v8, v4

    move-wide v4, v11

    move v7, v6

    move-object/from16 v6, v20

    :try_start_15a
    invoke-direct/range {v1 .. v6}, Lio/ktor/client/engine/cio/Endpoint$connect$2$connect$1;-><init>(Lio/ktor/client/engine/cio/Endpoint;Lio/ktor/network/sockets/SocketAddress;JLkotlin/coroutines/Continuation;)V

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, v13, v1

    if-nez v1, :cond_1b6

    .line 221
    iput-object v0, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$0:Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$1:Ljava/lang/Object;

    iput-object v8, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$2:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$3:Ljava/lang/Object;

    iput v7, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->I$0:I

    iput-wide v13, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->J$0:J

    iput-wide v11, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->J$1:J

    iput v10, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->I$1:I

    const/4 v1, 0x0

    iput v1, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->I$2:I

    const/4 v1, 0x1

    iput v1, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->label:I
    :try_end_184
    .catchall {:try_start_15a .. :try_end_184} :catchall_1b1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move v2, v7

    :try_start_189
    invoke-interface {v3, v1, v9}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v5, v21

    if-ne v4, v5, :cond_192

    return-object v5

    :cond_192
    move-object v7, v0

    move v6, v2

    move-object v0, v4

    move v2, v10

    const/4 v10, 0x0

    move-wide/from16 v22, v11

    move-object v11, v3

    move-object v12, v8

    move-wide/from16 v3, v22

    :goto_19d
    check-cast v0, Lio/ktor/network/sockets/Socket;

    move-object v8, v11

    move-object v11, v15

    move-wide v14, v13

    move/from16 v22, v2

    move-object v2, v0

    move/from16 v0, v22

    move-wide/from16 v23, v3

    move-object v3, v12

    move-wide/from16 v12, v23

    goto/16 :goto_20f

    :catchall_1ae
    move-exception v0

    goto/16 :goto_313

    :catchall_1b1
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_313

    :cond_1b6
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move v2, v7

    move-object/from16 v5, v21

    .line 223
    iput-object v0, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$0:Ljava/lang/Object;

    iput-object v15, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$1:Ljava/lang/Object;

    iput-object v8, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$2:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$3:Ljava/lang/Object;

    iput v2, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->I$0:I

    iput-wide v13, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->J$0:J

    iput-wide v11, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->J$1:J

    iput v10, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->I$1:I

    iput v10, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->I$2:I

    const/4 v4, 0x0

    iput v4, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->I$3:I

    const/4 v6, 0x2

    iput v6, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->label:I

    invoke-static {v13, v14, v3, v9}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_1e0

    return-object v5

    :cond_1e0
    move-wide/from16 v19, v13

    move-object v14, v15

    move v15, v2

    move v2, v4

    move-wide v12, v11

    move-object v11, v8

    move-object v8, v3

    move v3, v10

    move-object v10, v0

    move-object v0, v7

    move v7, v3

    .line 199
    :goto_1ec
    check-cast v0, Lio/ktor/network/sockets/Socket;

    if-nez v0, :cond_206

    .line 225
    iget v0, v14, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, v14, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_1f6
    .catchall {:try_start_189 .. :try_end_1f6} :catchall_1ae

    add-int/lit8 v0, v7, 0x1

    move-object v7, v1

    move-object v8, v5

    move-wide v11, v12

    move v6, v15

    move-object v15, v14

    move-wide/from16 v13, v19

    move-object/from16 v22, v10

    move v10, v0

    move-object/from16 v0, v22

    goto/16 :goto_12c

    :cond_206
    move-object v7, v10

    move v6, v15

    move v10, v2

    move-object v2, v0

    move v0, v3

    move-object v3, v11

    move-object v11, v14

    move-wide/from16 v14, v19

    .line 233
    :goto_20f
    :try_start_20f
    invoke-static {v2}, Lio/ktor/network/sockets/SocketsKt;->connection(Lio/ktor/network/sockets/Socket;)Lio/ktor/network/sockets/Connection;

    move-result-object v4

    move-object/from16 v21, v5

    .line 234
    iget-boolean v5, v1, Lio/ktor/client/engine/cio/Endpoint;->secure:Z

    if-nez v5, :cond_221

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0

    :catchall_21e
    move-exception v0

    goto/16 :goto_30a

    .line 236
    :cond_221
    iget-object v5, v1, Lio/ktor/client/engine/cio/Endpoint;->proxy:Ljava/net/Proxy;

    if-eqz v5, :cond_22a

    invoke-static {v5}, Lio/ktor/client/engine/ProxyConfigJvmKt;->getType(Ljava/net/Proxy;)Lio/ktor/client/engine/ProxyType;

    move-result-object v5
    :try_end_229
    .catchall {:try_start_20f .. :try_end_229} :catchall_21e

    goto :goto_22b

    :cond_22a
    const/4 v5, 0x0

    :goto_22b
    :try_start_22b
    sget-object v1, Lio/ktor/client/engine/ProxyType;->HTTP:Lio/ktor/client/engine/ProxyType;

    if-ne v5, v1, :cond_271

    .line 237
    invoke-virtual {v4}, Lio/ktor/network/sockets/Connection;->getOutput()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v1

    invoke-virtual {v4}, Lio/ktor/network/sockets/Connection;->getInput()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v5

    iput-object v7, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$0:Ljava/lang/Object;

    move-object/from16 p1, v1

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$1:Ljava/lang/Object;

    iput-object v3, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$2:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$3:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$4:Ljava/lang/Object;

    iput-object v4, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$5:Ljava/lang/Object;

    iput v6, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->I$0:I

    iput-wide v14, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->J$0:J

    iput-wide v12, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->J$1:J

    iput v0, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->I$1:I

    iput v10, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->I$2:I

    const/4 v1, 0x3

    iput v1, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->label:I

    move-object/from16 v1, p1

    invoke-static {v7, v1, v5, v9}, Lio/ktor/client/engine/cio/UtilsKt;->startTunnel(Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_260
    .catchall {:try_start_22b .. :try_end_260} :catchall_274

    move-object/from16 v5, v21

    if-ne v1, v5, :cond_265

    return-object v5

    :cond_265
    move-object v1, v9

    move-object v9, v3

    move v3, v0

    move-object v0, v2

    move-object v2, v7

    :goto_26a
    move-object v7, v2

    move-object/from16 v21, v5

    move-object v2, v0

    move v0, v3

    move-object v3, v9

    move-object v9, v1

    :cond_271
    move-object/from16 v1, p0

    goto :goto_279

    :catchall_274
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_30a

    .line 240
    :goto_279
    :try_start_279
    iget-object v5, v1, Lio/ktor/client/engine/cio/Endpoint;->unixSocket:Lio/ktor/client/request/UnixSocketSettings;

    if-nez v5, :cond_302

    .line 244
    iget-object v5, v1, Lio/ktor/client/engine/cio/Endpoint;->proxy:Ljava/net/Proxy;

    if-nez v5, :cond_299

    .line 246
    instance-of v5, v3, Lio/ktor/network/sockets/InetSocketAddress;

    if-eqz v5, :cond_289

    move-object v5, v3

    check-cast v5, Lio/ktor/network/sockets/InetSocketAddress;

    goto :goto_28a

    :cond_289
    const/4 v5, 0x0

    :goto_28a
    if-eqz v5, :cond_291

    move/from16 v18, v0

    move/from16 v17, v10

    goto :goto_2b2

    .line 247
    :cond_291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Expected InetSocketAddress for TLS connection"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_299
    new-instance v5, Lio/ktor/network/sockets/InetSocketAddress;

    invoke-virtual {v7}, Lio/ktor/client/request/HttpRequestData;->getUrl()Lio/ktor/http/Url;

    move-result-object v16

    move/from16 v17, v10

    invoke-virtual/range {v16 .. v16}, Lio/ktor/http/Url;->getHost()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lio/ktor/client/request/HttpRequestData;->getUrl()Lio/ktor/http/Url;

    move-result-object v16

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v16}, Lio/ktor/http/Url;->getPort()I

    move-result v0

    invoke-direct {v5, v10, v0}, Lio/ktor/network/sockets/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 251
    :goto_2b2
    invoke-virtual/range {p0 .. p0}, Lio/ktor/client/engine/cio/Endpoint;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v10, Lio/ktor/client/engine/cio/Endpoint$$ExternalSyntheticLambda2;

    invoke-direct {v10, v1, v5}, Lio/ktor/client/engine/cio/Endpoint$$ExternalSyntheticLambda2;-><init>(Lio/ktor/client/engine/cio/Endpoint;Lio/ktor/network/sockets/InetSocketAddress;)V

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$0:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$1:Ljava/lang/Object;

    iput-object v3, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$2:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$3:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$4:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$5:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->L$6:Ljava/lang/Object;

    iput v6, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->I$0:I

    iput-wide v14, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->J$0:J

    iput-wide v12, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->J$1:J

    move/from16 v5, v18

    iput v5, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->I$1:I

    move/from16 v5, v17

    iput v5, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->I$2:I

    const/4 v5, 0x4

    iput v5, v9, Lio/ktor/client/engine/cio/Endpoint$connect$1;->label:I

    invoke-static {v4, v0, v10, v9}, Lio/ktor/network/tls/TLSCommonKt;->tls(Lio/ktor/network/sockets/Connection;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v4, v21

    if-ne v0, v4, :cond_2f7

    return-object v4

    .line 199
    :cond_2f7
    :goto_2f7
    check-cast v0, Lio/ktor/network/sockets/Socket;

    .line 255
    invoke-static {v0}, Lio/ktor/network/sockets/SocketsKt;->connection(Lio/ktor/network/sockets/Socket;)Lio/ktor/network/sockets/Connection;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0

    .line 241
    :cond_302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "TLS over Unix sockets is not supported"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_30a
    .catchall {:try_start_279 .. :try_end_30a} :catchall_21e

    .line 258
    :goto_30a
    :try_start_30a
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_30d
    .catchall {:try_start_30a .. :try_end_30d} :catchall_30d

    .line 262
    :catchall_30d
    :try_start_30d
    iget-object v2, v1, Lio/ktor/client/engine/cio/Endpoint;->connectionFactory:Lio/ktor/client/engine/cio/ConnectionFactory;

    invoke-virtual {v2, v3}, Lio/ktor/client/engine/cio/ConnectionFactory;->release(Lio/ktor/network/sockets/SocketAddress;)V

    .line 263
    throw v0
    :try_end_313
    .catchall {:try_start_30d .. :try_end_313} :catchall_1ae

    .line 267
    :goto_313
    sget-object v2, Lio/ktor/client/engine/cio/Endpoint;->connections$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 268
    throw v0

    :cond_319
    move v2, v6

    move-object v1, v7

    .line 271
    sget-object v3, Lio/ktor/client/engine/cio/Endpoint;->connections$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 273
    iget v3, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v1, v2, v3, v0}, Lio/ktor/client/engine/cio/Endpoint;->getTimeoutException(IILio/ktor/client/request/HttpRequestData;)Ljava/lang/Exception;

    move-result-object v0

    throw v0
.end method

.method public final createPipeline(Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/request/HttpRequestData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/client/engine/cio/Endpoint$createPipeline$1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lio/ktor/client/engine/cio/Endpoint$createPipeline$1;

    iget v1, v0, Lio/ktor/client/engine/cio/Endpoint$createPipeline$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/client/engine/cio/Endpoint$createPipeline$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/ktor/client/engine/cio/Endpoint$createPipeline$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/client/engine/cio/Endpoint$createPipeline$1;-><init>(Lio/ktor/client/engine/cio/Endpoint;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lio/ktor/client/engine/cio/Endpoint$createPipeline$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 183
    iget v2, v0, Lio/ktor/client/engine/cio/Endpoint$createPipeline$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_35

    if-ne v2, v3, :cond_2d

    iget-object p1, v0, Lio/ktor/client/engine/cio/Endpoint$createPipeline$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/client/request/HttpRequestData;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_47

    :cond_2d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_35
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 184
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lio/ktor/client/engine/cio/Endpoint$createPipeline$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/client/engine/cio/Endpoint$createPipeline$1;->label:I

    invoke-virtual {p0, p1, v0}, Lio/ktor/client/engine/cio/Endpoint;->connect(Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_47

    return-object v1

    :cond_47
    :goto_47
    check-cast p2, Lkotlin/Pair;

    invoke-virtual {p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/ktor/network/sockets/SocketAddress;

    invoke-virtual {p2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p2

    move-object v8, p2

    check-cast v8, Lio/ktor/network/sockets/Connection;

    .line 186
    new-instance p2, Lio/ktor/client/engine/cio/ConnectionPipeline;

    .line 187
    iget-object v0, p0, Lio/ktor/client/engine/cio/Endpoint;->config:Lio/ktor/client/engine/cio/CIOEngineConfig;

    invoke-virtual {v0}, Lio/ktor/client/engine/cio/CIOEngineConfig;->getEndpoint()Lio/ktor/client/engine/cio/EndpointConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/client/engine/cio/EndpointConfig;->getKeepAliveTime()J

    move-result-wide v5

    .line 188
    iget-object v0, p0, Lio/ktor/client/engine/cio/Endpoint;->config:Lio/ktor/client/engine/cio/CIOEngineConfig;

    invoke-virtual {v0}, Lio/ktor/client/engine/cio/CIOEngineConfig;->getEndpoint()Lio/ktor/client/engine/cio/EndpointConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/client/engine/cio/EndpointConfig;->getPipelineMaxSize()I

    move-result v7

    .line 190
    iget-object v0, p0, Lio/ktor/client/engine/cio/Endpoint;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_72

    :goto_70
    move v9, v3

    goto :goto_74

    :cond_72
    const/4 v3, 0x0

    goto :goto_70

    .line 191
    :goto_74
    iget-object v10, p0, Lio/ktor/client/engine/cio/Endpoint;->deliveryPoint:Lkotlinx/coroutines/channels/Channel;

    .line 192
    invoke-virtual {p0}, Lio/ktor/client/engine/cio/Endpoint;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v11

    move-object v4, p2

    .line 186
    invoke-direct/range {v4 .. v11}, Lio/ktor/client/engine/cio/ConnectionPipeline;-><init>(JILio/ktor/network/sockets/Connection;ZLkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/CoroutineContext;)V

    .line 195
    invoke-virtual {p2}, Lio/ktor/client/engine/cio/ConnectionPipeline;->getPipelineContext()Lkotlinx/coroutines/Job;

    move-result-object p2

    new-instance v0, Lio/ktor/client/engine/cio/Endpoint$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lio/ktor/client/engine/cio/Endpoint$$ExternalSyntheticLambda0;-><init>(Lio/ktor/client/engine/cio/Endpoint;Lio/ktor/network/sockets/SocketAddress;)V

    invoke-interface {p2, v0}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 196
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final execute(Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/request/HttpRequestData;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/request/HttpResponseData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/client/engine/cio/Endpoint$execute$1;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lio/ktor/client/engine/cio/Endpoint$execute$1;

    iget v1, v0, Lio/ktor/client/engine/cio/Endpoint$execute$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/client/engine/cio/Endpoint$execute$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/ktor/client/engine/cio/Endpoint$execute$1;

    invoke-direct {v0, p0, p3}, Lio/ktor/client/engine/cio/Endpoint$execute$1;-><init>(Lio/ktor/client/engine/cio/Endpoint;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lio/ktor/client/engine/cio/Endpoint$execute$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 60
    iget v2, v0, Lio/ktor/client/engine/cio/Endpoint$execute$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_6c

    if-eq v2, v5, :cond_5f

    if-eq v2, v4, :cond_4b

    if-ne v2, v3, :cond_43

    iget-object p0, v0, Lio/ktor/client/engine/cio/Endpoint$execute$1;->L$3:Ljava/lang/Object;

    check-cast p0, Lio/ktor/client/engine/cio/RequestTask;

    iget-object p1, v0, Lio/ktor/client/engine/cio/Endpoint$execute$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CompletableDeferred;

    iget-object p1, v0, Lio/ktor/client/engine/cio/Endpoint$execute$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    iget-object p1, v0, Lio/ktor/client/engine/cio/Endpoint$execute$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/client/request/HttpRequestData;

    :try_start_3b
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_40

    goto/16 :goto_c7

    :catchall_40
    move-exception p1

    goto/16 :goto_ca

    :cond_43
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4b
    iget-object p0, v0, Lio/ktor/client/engine/cio/Endpoint$execute$1;->L$3:Ljava/lang/Object;

    check-cast p0, Lio/ktor/client/engine/cio/RequestTask;

    iget-object p1, v0, Lio/ktor/client/engine/cio/Endpoint$execute$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CompletableDeferred;

    iget-object p2, v0, Lio/ktor/client/engine/cio/Endpoint$execute$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    iget-object v2, v0, Lio/ktor/client/engine/cio/Endpoint$execute$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/client/request/HttpRequestData;

    :try_start_5b
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_40

    goto :goto_aa

    :cond_5f
    iget-object p0, v0, Lio/ktor/client/engine/cio/Endpoint$execute$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lkotlin/coroutines/CoroutineContext;

    iget-object p0, v0, Lio/ktor/client/engine/cio/Endpoint$execute$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lio/ktor/client/request/HttpRequestData;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_e7

    :cond_6c
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    invoke-static {}, Lio/ktor/util/date/DateJvmKt;->getTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lio/ktor/client/engine/cio/Endpoint;->lastActivity:J

    .line 66
    iget-object p3, p0, Lio/ktor/client/engine/cio/Endpoint;->config:Lio/ktor/client/engine/cio/CIOEngineConfig;

    invoke-virtual {p3}, Lio/ktor/client/engine/HttpClientEngineConfig;->getPipelining()Z

    move-result p3

    if-eqz p3, :cond_d2

    invoke-static {p1}, Lio/ktor/client/engine/cio/EngineTasksKt;->requiresDedicatedConnection(Lio/ktor/client/request/HttpRequestData;)Z

    move-result p3

    if-eqz p3, :cond_84

    goto :goto_d2

    :cond_84
    const/4 p3, 0x0

    .line 70
    invoke-static {p3, v5, p3}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p3

    .line 71
    new-instance v2, Lio/ktor/client/engine/cio/RequestTask;

    invoke-direct {v2, p1, p3, p2}, Lio/ktor/client/engine/cio/RequestTask;-><init>(Lio/ktor/client/request/HttpRequestData;Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/CoroutineContext;)V

    .line 73
    :try_start_8e
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/ktor/client/engine/cio/Endpoint$execute$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/ktor/client/engine/cio/Endpoint$execute$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lio/ktor/client/engine/cio/Endpoint$execute$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lio/ktor/client/engine/cio/Endpoint$execute$1;->L$3:Ljava/lang/Object;

    iput v4, v0, Lio/ktor/client/engine/cio/Endpoint$execute$1;->label:I

    invoke-virtual {p0, v2, v0}, Lio/ktor/client/engine/cio/Endpoint;->makePipelineRequest(Lio/ktor/client/engine/cio/RequestTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_a4
    .catchall {:try_start_8e .. :try_end_a4} :catchall_c8

    if-ne p0, v1, :cond_a7

    return-object v1

    :cond_a7
    move-object p0, v2

    move-object v2, p1

    move-object p1, p3

    .line 74
    :goto_aa
    :try_start_aa
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v0, Lio/ktor/client/engine/cio/Endpoint$execute$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lio/ktor/client/engine/cio/Endpoint$execute$1;->L$1:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lio/ktor/client/engine/cio/Endpoint$execute$1;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Lio/ktor/client/engine/cio/Endpoint$execute$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/client/engine/cio/Endpoint$execute$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_c4
    .catchall {:try_start_aa .. :try_end_c4} :catchall_40

    if-ne p3, v1, :cond_c7

    return-object v1

    :cond_c7
    :goto_c7
    return-object p3

    :catchall_c8
    move-exception p1

    move-object p0, v2

    .line 76
    :goto_ca
    invoke-virtual {p0}, Lio/ktor/client/engine/cio/RequestTask;->getResponse()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 77
    throw p1

    .line 67
    :cond_d2
    :goto_d2
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v0, Lio/ktor/client/engine/cio/Endpoint$execute$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v0, Lio/ktor/client/engine/cio/Endpoint$execute$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lio/ktor/client/engine/cio/Endpoint$execute$1;->label:I

    invoke-virtual {p0, p1, p2, v0}, Lio/ktor/client/engine/cio/Endpoint;->makeDedicatedRequest(Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_e7

    return-object v1

    :cond_e7
    :goto_e7
    return-object p3
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .registers 1

    .line 34
    iget-object p0, p0, Lio/ktor/client/engine/cio/Endpoint;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method public final getTimeoutException(IILio/ktor/client/request/HttpRequestData;)Ljava/lang/Exception;
    .registers 4

    if-ne p2, p1, :cond_9

    const/4 p0, 0x2

    const/4 p1, 0x0

    .line 284
    invoke-static {p3, p1, p0, p1}, Lio/ktor/client/plugins/HttpTimeoutKt;->ConnectTimeoutException$default(Lio/ktor/client/request/HttpRequestData;Ljava/lang/Throwable;ILjava/lang/Object;)Lio/ktor/client/network/sockets/ConnectTimeoutException;

    move-result-object p0

    goto :goto_e

    .line 285
    :cond_9
    new-instance p0, Lio/ktor/client/engine/cio/FailToConnectException;

    invoke-direct {p0}, Lio/ktor/client/engine/cio/FailToConnectException;-><init>()V

    :goto_e
    return-object p0
.end method

.method public final makeDedicatedRequest(Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/request/HttpRequestData;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/request/HttpResponseData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    instance-of v3, v2, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;

    if-eqz v3, :cond_1a

    move-object v3, v2

    check-cast v3, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;

    iget v4, v3, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_1a

    sub-int/2addr v4, v5

    iput v4, v3, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->label:I

    :goto_18
    move-object v12, v3

    goto :goto_20

    :cond_1a
    new-instance v3, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;

    invoke-direct {v3, v0, v2}, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;-><init>(Lio/ktor/client/engine/cio/Endpoint;Lkotlin/coroutines/Continuation;)V

    goto :goto_18

    :goto_20
    iget-object v2, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v13

    .line 97
    iget v3, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->label:I

    const/4 v14, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v3, :cond_d9

    if-eq v3, v9, :cond_c7

    if-eq v3, v8, :cond_a0

    if-eq v3, v7, :cond_69

    if-ne v3, v14, :cond_61

    iget-object v0, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$7:Ljava/lang/Object;

    check-cast v0, Lio/ktor/util/date/GMTDate;

    iget-object v0, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$6:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v0, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$5:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v0, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$4:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/ByteReadChannel;

    iget-object v0, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$3:Ljava/lang/Object;

    check-cast v0, Lio/ktor/network/sockets/Connection;

    iget-object v0, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lio/ktor/network/sockets/SocketAddress;

    iget-object v0, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    iget-object v0, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lio/ktor/client/request/HttpRequestData;

    :try_start_57
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5d

    move-object v15, v1

    goto/16 :goto_237

    :catchall_5d
    move-exception v0

    move-object v15, v1

    goto/16 :goto_23a

    :cond_61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_69
    iget v0, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->I$0:I

    iget-wide v3, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->J$0:J

    iget-object v1, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$7:Ljava/lang/Object;

    check-cast v1, Lio/ktor/util/date/GMTDate;

    iget-object v5, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$6:Ljava/lang/Object;

    check-cast v5, Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v6, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$5:Ljava/lang/Object;

    check-cast v6, Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v7, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$4:Ljava/lang/Object;

    check-cast v7, Lio/ktor/utils/io/ByteReadChannel;

    iget-object v8, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$3:Ljava/lang/Object;

    check-cast v8, Lio/ktor/network/sockets/Connection;

    iget-object v9, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lio/ktor/network/sockets/SocketAddress;

    iget-object v10, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lkotlin/coroutines/CoroutineContext;

    iget-object v11, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lio/ktor/client/request/HttpRequestData;

    :try_start_8d
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_9c

    move-object v14, v1

    move-object/from16 v17, v8

    move-object v8, v10

    move-object v15, v11

    move-object/from16 v22, v7

    move-object v7, v6

    move-object/from16 v6, v22

    goto/16 :goto_1fa

    :catchall_9c
    move-exception v0

    move-object v15, v11

    goto/16 :goto_23a

    :cond_a0
    iget-object v0, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$7:Ljava/lang/Object;

    check-cast v0, Lio/ktor/util/date/GMTDate;

    iget-object v0, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$6:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v0, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$5:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v0, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$4:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/ByteReadChannel;

    iget-object v0, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$3:Ljava/lang/Object;

    check-cast v0, Lio/ktor/network/sockets/Connection;

    iget-object v0, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lio/ktor/network/sockets/SocketAddress;

    iget-object v0, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    iget-object v0, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lio/ktor/client/request/HttpRequestData;

    :try_start_c1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_c4
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_5d

    move-object v15, v1

    goto/16 :goto_1a9

    :cond_c7
    iget-object v1, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    iget-object v3, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ktor/client/request/HttpRequestData;

    :try_start_cf
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_d2
    .catchall {:try_start_cf .. :try_end_d2} :catchall_d5

    move-object v11, v1

    move-object v15, v3

    goto :goto_ee

    :catchall_d5
    move-exception v0

    move-object v15, v3

    goto/16 :goto_23a

    :cond_d9
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 102
    :try_start_dc
    iput-object v1, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$0:Ljava/lang/Object;

    move-object/from16 v2, p2

    iput-object v2, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$1:Ljava/lang/Object;

    iput v9, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->label:I

    invoke-virtual {v0, v1, v12}, Lio/ktor/client/engine/cio/Endpoint;->connect(Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_e8
    .catchall {:try_start_dc .. :try_end_e8} :catchall_5d

    if-ne v3, v13, :cond_eb

    return-object v13

    :cond_eb
    move-object v15, v1

    move-object v11, v2

    move-object v2, v3

    :goto_ee
    :try_start_ee
    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lio/ktor/network/sockets/SocketAddress;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lio/ktor/network/sockets/Connection;

    .line 103
    invoke-virtual/range {v17 .. v17}, Lio/ktor/network/sockets/Connection;->getInput()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v10

    .line 104
    invoke-virtual/range {v17 .. v17}, Lio/ktor/network/sockets/Connection;->getOutput()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v6

    .line 108
    iget-object v1, v0, Lio/ktor/client/engine/cio/Endpoint;->config:Lio/ktor/client/engine/cio/CIOEngineConfig;

    invoke-virtual {v1}, Lio/ktor/client/engine/cio/CIOEngineConfig;->getEndpoint()Lio/ktor/client/engine/cio/EndpointConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/client/engine/cio/EndpointConfig;->getAllowHalfClose()Z

    move-result v1

    .line 106
    invoke-static {v6, v11, v1}, Lio/ktor/client/engine/cio/UtilsKt;->handleHalfClosed(Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;Z)Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v18

    .line 111
    sget-object v1, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v11, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v1

    check-cast v5, Lkotlinx/coroutines/Job;

    new-instance v4, Lio/ktor/client/engine/cio/Endpoint$$ExternalSyntheticLambda1;

    move-object v1, v4

    move-object v2, v10

    move-object v3, v6

    move-object v14, v4

    move-object/from16 v4, v17

    move-object v7, v5

    move-object/from16 v5, p0

    move-object/from16 p1, v6

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lio/ktor/client/engine/cio/Endpoint$$ExternalSyntheticLambda1;-><init>(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/network/sockets/Connection;Lio/ktor/client/engine/cio/Endpoint;Lio/ktor/network/sockets/SocketAddress;)V

    invoke-interface {v7, v14}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 124
    iget-object v1, v0, Lio/ktor/client/engine/cio/Endpoint;->config:Lio/ktor/client/engine/cio/CIOEngineConfig;

    invoke-static {v15, v1}, Lio/ktor/client/engine/cio/EndpointKt;->getRequestTimeout(Lio/ktor/client/request/HttpRequestData;Lio/ktor/client/engine/cio/CIOEngineConfig;)J

    move-result-wide v1

    .line 125
    invoke-static {v11, v15, v1, v2}, Lio/ktor/client/engine/cio/EndpointKt;->access$setupTimeout(Lkotlin/coroutines/CoroutineContext;Lio/ktor/client/request/HttpRequestData;J)V

    const/4 v3, 0x0

    .line 127
    invoke-static {v3, v9, v3}, Lio/ktor/util/date/DateJvmKt;->GMTDate$default(Ljava/lang/Long;ILjava/lang/Object;)Lio/ktor/util/date/GMTDate;

    move-result-object v14

    .line 128
    iget-object v3, v0, Lio/ktor/client/engine/cio/Endpoint;->proxy:Ljava/net/Proxy;

    const/4 v4, 0x0

    if-eqz v3, :cond_14b

    goto :goto_14c

    :cond_14b
    move v9, v4

    .line 130
    :goto_14c
    invoke-virtual {v15}, Lio/ktor/client/request/HttpRequestData;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v3

    sget-object v4, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v4}, Lio/ktor/http/HttpHeaders;->getExpect()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/ktor/util/StringValues;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Lio/ktor/client/request/HttpRequestData;->getBody()Lio/ktor/http/content/OutgoingContent;

    move-result-object v4

    invoke-static {v3, v4}, Lio/ktor/client/engine/cio/UtilsKt;->expectContinue(Ljava/lang/String;Lio/ktor/http/content/OutgoingContent;)Z

    move-result v3

    if-eqz v3, :cond_1b0

    .line 131
    iput-object v15, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$0:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$1:Ljava/lang/Object;

    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$2:Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$3:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$4:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$5:Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$6:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$7:Ljava/lang/Object;

    iput-wide v1, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->J$0:J

    iput v9, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->I$0:I

    iput v8, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->label:I

    move-object/from16 v1, p0

    move-object v2, v15

    move-object v3, v10

    move-object/from16 v4, v18

    move-object/from16 v5, p1

    move-object v6, v11

    move-object v7, v14

    move v8, v9

    move-object v9, v12

    invoke-virtual/range {v1 .. v9}, Lio/ktor/client/engine/cio/Endpoint;->processExpectContinue(Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;Lio/ktor/util/date/GMTDate;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v13, :cond_1a9

    return-object v13

    :cond_1a9
    :goto_1a9
    check-cast v2, Lio/ktor/client/request/HttpResponseData;

    goto/16 :goto_239

    :catchall_1ad
    move-exception v0

    goto/16 :goto_23a

    .line 133
    :cond_1b0
    iput-object v15, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$0:Ljava/lang/Object;

    iput-object v11, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$1:Ljava/lang/Object;

    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$2:Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$3:Ljava/lang/Object;

    iput-object v10, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$4:Ljava/lang/Object;

    move-object/from16 v0, p1

    iput-object v0, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$5:Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$6:Ljava/lang/Object;

    iput-object v14, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$7:Ljava/lang/Object;

    iput-wide v1, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->J$0:J

    iput v9, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->I$0:I

    const/4 v3, 0x3

    iput v3, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->label:I

    const/4 v8, 0x0

    const/16 v3, 0x10

    const/16 v19, 0x0

    move-object v4, v15

    move-object/from16 v5, v18

    move-object v6, v11

    move v7, v9

    move/from16 v20, v9

    move-object v9, v12

    move-object/from16 v21, v10

    move v10, v3

    move-object v3, v11

    move-object/from16 v11, v19

    invoke-static/range {v4 .. v11}, Lio/ktor/client/engine/cio/UtilsKt;->writeRequest$default(Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;ZZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v13, :cond_1ef

    return-object v13

    :cond_1ef
    move-object v7, v0

    move-object v8, v3

    move-object/from16 v9, v16

    move-object/from16 v5, v18

    move/from16 v0, v20

    move-object/from16 v6, v21

    move-wide v3, v1

    .line 134
    :goto_1fa
    iput-object v15, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$0:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$1:Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$2:Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$3:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$4:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$5:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$6:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->L$7:Ljava/lang/Object;

    iput-wide v3, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->J$0:J

    iput v0, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->I$0:I

    const/4 v0, 0x4

    iput v0, v12, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->label:I

    move-object v4, v14

    move-object v5, v15

    move-object v9, v12

    invoke-static/range {v4 .. v9}, Lio/ktor/client/engine/cio/UtilsKt;->readResponse(Lio/ktor/util/date/GMTDate;Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v13, :cond_237

    return-object v13

    .line 97
    :cond_237
    :goto_237
    check-cast v2, Lio/ktor/client/request/HttpResponseData;
    :try_end_239
    .catchall {:try_start_ee .. :try_end_239} :catchall_1ad

    :goto_239
    return-object v2

    .line 137
    :goto_23a
    invoke-static {v0, v15}, Lio/ktor/client/engine/cio/ExceptionsKt;->mapToKtor(Ljava/lang/Throwable;Lio/ktor/client/request/HttpRequestData;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method public final makePipelineRequest(Lio/ktor/client/engine/cio/RequestTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/engine/cio/RequestTask;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/client/engine/cio/Endpoint$makePipelineRequest$1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lio/ktor/client/engine/cio/Endpoint$makePipelineRequest$1;

    iget v1, v0, Lio/ktor/client/engine/cio/Endpoint$makePipelineRequest$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/client/engine/cio/Endpoint$makePipelineRequest$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/ktor/client/engine/cio/Endpoint$makePipelineRequest$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/client/engine/cio/Endpoint$makePipelineRequest$1;-><init>(Lio/ktor/client/engine/cio/Endpoint;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lio/ktor/client/engine/cio/Endpoint$makePipelineRequest$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 81
    iget v2, v0, Lio/ktor/client/engine/cio/Endpoint$makePipelineRequest$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_47

    if-eq v2, v4, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p0, v0, Lio/ktor/client/engine/cio/Endpoint$makePipelineRequest$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lio/ktor/client/engine/cio/RequestTask;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_94

    :cond_30
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    iget p1, v0, Lio/ktor/client/engine/cio/Endpoint$makePipelineRequest$1;->I$0:I

    iget-object v2, v0, Lio/ktor/client/engine/cio/Endpoint$makePipelineRequest$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/client/engine/cio/RequestTask;

    :try_start_3e
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_44

    move p2, p1

    move-object p1, v2

    goto :goto_81

    :catchall_44
    move-exception p0

    move-object p1, v2

    goto :goto_79

    :cond_47
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 82
    iget-object p2, p0, Lio/ktor/client/engine/cio/Endpoint;->deliveryPoint:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {p2, p1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/channels/ChannelResult;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_59

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 84
    :cond_59
    iget p2, p0, Lio/ktor/client/engine/cio/Endpoint;->connections:I

    .line 85
    iget-object v2, p0, Lio/ktor/client/engine/cio/Endpoint;->config:Lio/ktor/client/engine/cio/CIOEngineConfig;

    invoke-virtual {v2}, Lio/ktor/client/engine/cio/CIOEngineConfig;->getEndpoint()Lio/ktor/client/engine/cio/EndpointConfig;

    move-result-object v2

    invoke-virtual {v2}, Lio/ktor/client/engine/cio/EndpointConfig;->getMaxConnectionsPerRoute()I

    move-result v2

    if-ge p2, v2, :cond_81

    .line 87
    :try_start_67
    invoke-virtual {p1}, Lio/ktor/client/engine/cio/RequestTask;->getRequest()Lio/ktor/client/request/HttpRequestData;

    move-result-object v2

    iput-object p1, v0, Lio/ktor/client/engine/cio/Endpoint$makePipelineRequest$1;->L$0:Ljava/lang/Object;

    iput p2, v0, Lio/ktor/client/engine/cio/Endpoint$makePipelineRequest$1;->I$0:I

    iput v4, v0, Lio/ktor/client/engine/cio/Endpoint$makePipelineRequest$1;->label:I

    invoke-virtual {p0, v2, v0}, Lio/ktor/client/engine/cio/Endpoint;->createPipeline(Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_75
    .catchall {:try_start_67 .. :try_end_75} :catchall_78

    if-ne v2, v1, :cond_81

    return-object v1

    :catchall_78
    move-exception p0

    .line 89
    :goto_79
    invoke-virtual {p1}, Lio/ktor/client/engine/cio/RequestTask;->getResponse()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    invoke-interface {p1, p0}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 90
    throw p0

    .line 94
    :cond_81
    :goto_81
    iget-object p0, p0, Lio/ktor/client/engine/cio/Endpoint;->deliveryPoint:Lkotlinx/coroutines/channels/Channel;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lio/ktor/client/engine/cio/Endpoint$makePipelineRequest$1;->L$0:Ljava/lang/Object;

    iput p2, v0, Lio/ktor/client/engine/cio/Endpoint$makePipelineRequest$1;->I$0:I

    iput v3, v0, Lio/ktor/client/engine/cio/Endpoint$makePipelineRequest$1;->label:I

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_94

    return-object v1

    .line 95
    :cond_94
    :goto_94
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final processExpectContinue(Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;Lio/ktor/util/date/GMTDate;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/request/HttpRequestData;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lio/ktor/util/date/GMTDate;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/request/HttpResponseData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 149
    new-instance v9, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p1

    move-object v2, p3

    move/from16 v3, p7

    move-object/from16 v4, p6

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;-><init>(Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteWriteChannel;ZLio/ktor/util/date/GMTDate;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V

    move-object v0, p5

    move-object/from16 v1, p8

    invoke-static {p5, v9, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final releaseConnection(Lio/ktor/network/sockets/SocketAddress;)V
    .registers 3

    .line 303
    iget-object v0, p0, Lio/ktor/client/engine/cio/Endpoint;->connectionFactory:Lio/ktor/client/engine/cio/ConnectionFactory;

    invoke-virtual {v0, p1}, Lio/ktor/client/engine/cio/ConnectionFactory;->release(Lio/ktor/network/sockets/SocketAddress;)V

    .line 304
    sget-object p1, Lio/ktor/client/engine/cio/Endpoint;->connections$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    return-void
.end method

.method public final retrieveTimeouts(Lio/ktor/client/request/HttpRequestData;)Lkotlin/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/request/HttpRequestData;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lio/ktor/client/engine/cio/Endpoint;->config:Lio/ktor/client/engine/cio/CIOEngineConfig;

    invoke-virtual {v0}, Lio/ktor/client/engine/cio/CIOEngineConfig;->getEndpoint()Lio/ktor/client/engine/cio/EndpointConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/client/engine/cio/EndpointConfig;->getConnectTimeout()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/client/engine/cio/Endpoint;->config:Lio/ktor/client/engine/cio/CIOEngineConfig;

    invoke-virtual {v1}, Lio/ktor/client/engine/cio/CIOEngineConfig;->getEndpoint()Lio/ktor/client/engine/cio/EndpointConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/client/engine/cio/EndpointConfig;->getSocketTimeout()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 294
    sget-object v1, Lio/ktor/client/plugins/HttpTimeoutCapability;->INSTANCE:Lio/ktor/client/plugins/HttpTimeoutCapability;

    invoke-virtual {p1, v1}, Lio/ktor/client/request/HttpRequestData;->getCapabilityOrNull(Lio/ktor/client/engine/HttpClientEngineCapability;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/ktor/client/plugins/HttpTimeoutConfig;

    if-nez p1, :cond_2b

    return-object v0

    .line 297
    :cond_2b
    invoke-virtual {p1}, Lio/ktor/client/plugins/HttpTimeoutConfig;->getSocketTimeoutMillis()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_40

    :cond_36
    iget-object v0, p0, Lio/ktor/client/engine/cio/Endpoint;->config:Lio/ktor/client/engine/cio/CIOEngineConfig;

    invoke-virtual {v0}, Lio/ktor/client/engine/cio/CIOEngineConfig;->getEndpoint()Lio/ktor/client/engine/cio/EndpointConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/client/engine/cio/EndpointConfig;->getSocketTimeout()J

    move-result-wide v0

    .line 298
    :goto_40
    invoke-virtual {p1}, Lio/ktor/client/plugins/HttpTimeoutConfig;->getConnectTimeoutMillis()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_4b

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    goto :goto_55

    :cond_4b
    iget-object p0, p0, Lio/ktor/client/engine/cio/Endpoint;->config:Lio/ktor/client/engine/cio/CIOEngineConfig;

    invoke-virtual {p0}, Lio/ktor/client/engine/cio/CIOEngineConfig;->getEndpoint()Lio/ktor/client/engine/cio/EndpointConfig;

    move-result-object p0

    invoke-virtual {p0}, Lio/ktor/client/engine/cio/EndpointConfig;->getConnectTimeout()J

    move-result-wide p0

    .line 299
    :goto_55
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.client.engine.cio.Endpoint.Companion (io.ktor.client.engine.cio.Endpoint$Companion)
.class public final Lio/ktor/client/engine/cio/Endpoint$Companion;
.super Ljava/lang/Object;
.source "Endpoint.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/engine/cio/Endpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/ktor/client/engine/cio/Endpoint$Companion;-><init>()V

    return-void
.end method

###### Class io.ktor.client.engine.cio.Endpoint.AnonymousClass1 (io.ktor.client.engine.cio.Endpoint$connect$1)
.class public final Lio/ktor/client/engine/cio/Endpoint$connect$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Endpoint.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/cio/Endpoint;->connect(Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.client.engine.cio.Endpoint"
    f = "Endpoint.kt"
    l = {
        0xdd,
        0xdf,
        0xed,
        0xfb
    }
    m = "connect"
    v = 0x1
.end annotation


# instance fields
.field public I$0:I

.field public I$1:I

.field public I$2:I

.field public I$3:I

.field public J$0:J

.field public J$1:J

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public L$5:Ljava/lang/Object;

.field public L$6:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lio/ktor/client/engine/cio/Endpoint;


# direct methods
.method public constructor <init>(Lio/ktor/client/engine/cio/Endpoint;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/engine/cio/Endpoint;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/engine/cio/Endpoint$connect$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/cio/Endpoint$connect$1;->this$0:Lio/ktor/client/engine/cio/Endpoint;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/cio/Endpoint$connect$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/client/engine/cio/Endpoint$connect$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/client/engine/cio/Endpoint$connect$1;->label:I

    iget-object p1, p0, Lio/ktor/client/engine/cio/Endpoint$connect$1;->this$0:Lio/ktor/client/engine/cio/Endpoint;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lio/ktor/client/engine/cio/Endpoint;->access$connect(Lio/ktor/client/engine/cio/Endpoint;Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.client.engine.cio.Endpoint.C00341 (io.ktor.client.engine.cio.Endpoint$createPipeline$1)
.class public final Lio/ktor/client/engine/cio/Endpoint$createPipeline$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Endpoint.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/cio/Endpoint;->createPipeline(Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.client.engine.cio.Endpoint"
    f = "Endpoint.kt"
    l = {
        0xb8
    }
    m = "createPipeline"
    v = 0x1
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lio/ktor/client/engine/cio/Endpoint;


# direct methods
.method public constructor <init>(Lio/ktor/client/engine/cio/Endpoint;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/engine/cio/Endpoint;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/engine/cio/Endpoint$createPipeline$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/cio/Endpoint$createPipeline$1;->this$0:Lio/ktor/client/engine/cio/Endpoint;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/cio/Endpoint$createPipeline$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/client/engine/cio/Endpoint$createPipeline$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/client/engine/cio/Endpoint$createPipeline$1;->label:I

    iget-object p1, p0, Lio/ktor/client/engine/cio/Endpoint$createPipeline$1;->this$0:Lio/ktor/client/engine/cio/Endpoint;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lio/ktor/client/engine/cio/Endpoint;->access$createPipeline(Lio/ktor/client/engine/cio/Endpoint;Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.client.engine.cio.Endpoint.C00351 (io.ktor.client.engine.cio.Endpoint$execute$1)
.class public final Lio/ktor/client/engine/cio/Endpoint$execute$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Endpoint.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/cio/Endpoint;->execute(Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.client.engine.cio.Endpoint"
    f = "Endpoint.kt"
    l = {
        0x43,
        0x49,
        0x4a
    }
    m = "execute"
    v = 0x1
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lio/ktor/client/engine/cio/Endpoint;


# direct methods
.method public constructor <init>(Lio/ktor/client/engine/cio/Endpoint;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/engine/cio/Endpoint;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/engine/cio/Endpoint$execute$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/cio/Endpoint$execute$1;->this$0:Lio/ktor/client/engine/cio/Endpoint;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/cio/Endpoint$execute$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/client/engine/cio/Endpoint$execute$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/client/engine/cio/Endpoint$execute$1;->label:I

    iget-object p1, p0, Lio/ktor/client/engine/cio/Endpoint$execute$1;->this$0:Lio/ktor/client/engine/cio/Endpoint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lio/ktor/client/engine/cio/Endpoint;->execute(Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.client.engine.cio.Endpoint.C00361 (io.ktor.client.engine.cio.Endpoint$makeDedicatedRequest$1)
.class public final Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Endpoint.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/cio/Endpoint;->makeDedicatedRequest(Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.client.engine.cio.Endpoint"
    f = "Endpoint.kt"
    l = {
        0x66,
        0x83,
        0x85,
        0x86
    }
    m = "makeDedicatedRequest"
    v = 0x1
.end annotation


# instance fields
.field public I$0:I

.field public J$0:J

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

.field public final synthetic this$0:Lio/ktor/client/engine/cio/Endpoint;


# direct methods
.method public constructor <init>(Lio/ktor/client/engine/cio/Endpoint;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/engine/cio/Endpoint;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->this$0:Lio/ktor/client/engine/cio/Endpoint;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->label:I

    iget-object p1, p0, Lio/ktor/client/engine/cio/Endpoint$makeDedicatedRequest$1;->this$0:Lio/ktor/client/engine/cio/Endpoint;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Lio/ktor/client/engine/cio/Endpoint;->access$makeDedicatedRequest(Lio/ktor/client/engine/cio/Endpoint;Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.client.engine.cio.Endpoint.C00371 (io.ktor.client.engine.cio.Endpoint$makePipelineRequest$1)
.class public final Lio/ktor/client/engine/cio/Endpoint$makePipelineRequest$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Endpoint.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/cio/Endpoint;->makePipelineRequest(Lio/ktor/client/engine/cio/RequestTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.client.engine.cio.Endpoint"
    f = "Endpoint.kt"
    l = {
        0x57,
        0x5e
    }
    m = "makePipelineRequest"
    v = 0x1
.end annotation


# instance fields
.field public I$0:I

.field public L$0:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lio/ktor/client/engine/cio/Endpoint;


# direct methods
.method public constructor <init>(Lio/ktor/client/engine/cio/Endpoint;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/engine/cio/Endpoint;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/engine/cio/Endpoint$makePipelineRequest$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/cio/Endpoint$makePipelineRequest$1;->this$0:Lio/ktor/client/engine/cio/Endpoint;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/cio/Endpoint$makePipelineRequest$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/client/engine/cio/Endpoint$makePipelineRequest$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/client/engine/cio/Endpoint$makePipelineRequest$1;->label:I

    iget-object p1, p0, Lio/ktor/client/engine/cio/Endpoint$makePipelineRequest$1;->this$0:Lio/ktor/client/engine/cio/Endpoint;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lio/ktor/client/engine/cio/Endpoint;->access$makePipelineRequest(Lio/ktor/client/engine/cio/Endpoint;Lio/ktor/client/engine/cio/RequestTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.client.engine.cio.Endpoint.AnonymousClass2 (io.ktor.client.engine.cio.Endpoint$processExpectContinue$2)
.class public final Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Endpoint.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/cio/Endpoint;->processExpectContinue(Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;Lio/ktor/util/date/GMTDate;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lio/ktor/client/request/HttpResponseData;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.client.engine.cio.Endpoint$processExpectContinue$2"
    f = "Endpoint.kt"
    l = {
        0x96,
        0x98,
        0x9d,
        0xa4,
        0xa8,
        0xac,
        0xb1,
        0xb4
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public final synthetic $callContext:Lkotlin/coroutines/CoroutineContext;

.field public final synthetic $input:Lio/ktor/utils/io/ByteReadChannel;

.field public final synthetic $originOutput:Lio/ktor/utils/io/ByteWriteChannel;

.field public final synthetic $output:Lio/ktor/utils/io/ByteWriteChannel;

.field public final synthetic $overProxy:Z

.field public final synthetic $request:Lio/ktor/client/request/HttpRequestData;

.field public final synthetic $requestTime:Lio/ktor/util/date/GMTDate;

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteWriteChannel;ZLio/ktor/util/date/GMTDate;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/request/HttpRequestData;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Z",
            "Lio/ktor/util/date/GMTDate;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$request:Lio/ktor/client/request/HttpRequestData;

    iput-object p2, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    iput-boolean p3, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$overProxy:Z

    iput-object p4, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$requestTime:Lio/ktor/util/date/GMTDate;

    iput-object p5, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$input:Lio/ktor/utils/io/ByteReadChannel;

    iput-object p6, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$originOutput:Lio/ktor/utils/io/ByteWriteChannel;

    iput-object p7, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$callContext:Lkotlin/coroutines/CoroutineContext;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 12
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
    new-instance p1, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;

    iget-object v1, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$request:Lio/ktor/client/request/HttpRequestData;

    iget-object v2, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    iget-boolean v3, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$overProxy:Z

    iget-object v4, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$requestTime:Lio/ktor/util/date/GMTDate;

    iget-object v5, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$input:Lio/ktor/utils/io/ByteReadChannel;

    iget-object v6, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$originOutput:Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v7, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$callContext:Lkotlin/coroutines/CoroutineContext;

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;-><init>(Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteWriteChannel;ZLio/ktor/util/date/GMTDate;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lio/ktor/client/request/HttpResponseData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 149
    iget v1, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_166

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_12
    iget-object p0, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_164

    :pswitch_1b
    iget-object v0, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->L$1:Ljava/lang/Object;

    check-cast v0, Lio/ktor/client/request/HttpResponseData;

    iget-object p0, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_128

    :pswitch_28
    iget-object v1, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->L$2:Ljava/lang/Object;

    check-cast v1, Lio/ktor/client/request/HttpRequestData;

    :pswitch_2c
    iget-object v1, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->L$1:Ljava/lang/Object;

    check-cast v1, Lio/ktor/client/request/HttpResponseData;

    :pswitch_30
    iget-object v1, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_144

    :pswitch_39
    iget-object v1, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_94

    :pswitch_41
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_74

    :pswitch_45
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_61

    :pswitch_49
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 150
    iget-object v3, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$request:Lio/ktor/client/request/HttpRequestData;

    iget-object v4, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    iget-boolean v5, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$overProxy:Z

    const/4 p1, 0x1

    iput p1, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->label:I

    const/4 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v7, p0

    invoke-static/range {v3 .. v9}, Lio/ktor/client/engine/cio/UtilsKt;->writeHeaders$default(Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteWriteChannel;ZZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_61

    return-object v0

    .line 152
    :cond_61
    :goto_61
    new-instance p1, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2$responseReady$1;

    iget-object v1, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$input:Lio/ktor/utils/io/ByteReadChannel;

    invoke-direct {p1, v1, v2}, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2$responseReady$1;-><init>(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x2

    iput v1, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->label:I

    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4, p1, p0}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_74

    return-object v0

    .line 149
    :cond_74
    :goto_74
    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_129

    .line 157
    iget-object v3, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$requestTime:Lio/ktor/util/date/GMTDate;

    iget-object v4, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$request:Lio/ktor/client/request/HttpRequestData;

    iget-object v5, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$input:Lio/ktor/utils/io/ByteReadChannel;

    iget-object v6, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$originOutput:Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v7, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$callContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->L$0:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->label:I

    move-object v8, p0

    invoke-static/range {v3 .. v8}, Lio/ktor/client/engine/cio/UtilsKt;->readResponse(Lio/ktor/util/date/GMTDate;Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_94

    return-object v0

    .line 149
    :cond_94
    :goto_94
    check-cast p1, Lio/ktor/client/request/HttpResponseData;

    .line 158
    invoke-virtual {p1}, Lio/ktor/client/request/HttpResponseData;->getStatusCode()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    .line 159
    sget-object v4, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    invoke-virtual {v4}, Lio/ktor/http/HttpStatusCode$Companion;->getExpectationFailed()Lio/ktor/http/HttpStatusCode;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e8

    .line 160
    new-instance v3, Lio/ktor/client/request/HttpRequestBuilder;

    invoke-direct {v3}, Lio/ktor/client/request/HttpRequestBuilder;-><init>()V

    iget-object v4, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$request:Lio/ktor/client/request/HttpRequestData;

    .line 161
    invoke-static {v3, v4}, Lio/ktor/client/request/HttpRequestKt;->takeFrom(Lio/ktor/client/request/HttpRequestBuilder;Lio/ktor/client/request/HttpRequestData;)Lio/ktor/client/request/HttpRequestBuilder;

    .line 162
    invoke-virtual {v3}, Lio/ktor/client/request/HttpRequestBuilder;->getHeaders()Lio/ktor/http/HeadersBuilder;

    move-result-object v4

    sget-object v5, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v5}, Lio/ktor/http/HttpHeaders;->getExpect()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/ktor/util/StringValuesBuilderImpl;->remove(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v3}, Lio/ktor/client/request/HttpRequestBuilder;->build()Lio/ktor/client/request/HttpRequestData;

    move-result-object v6

    .line 164
    iget-object v7, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v8, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$callContext:Lkotlin/coroutines/CoroutineContext;

    iget-boolean v9, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$overProxy:Z

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->L$1:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->L$2:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->label:I

    const/4 v10, 0x0

    const/16 v12, 0x10

    const/4 v13, 0x0

    move-object v11, p0

    invoke-static/range {v6 .. v13}, Lio/ktor/client/engine/cio/UtilsKt;->writeRequest$default(Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;ZZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_144

    return-object v0

    .line 167
    :cond_e8
    invoke-virtual {v4}, Lio/ktor/http/HttpStatusCode$Companion;->getContinue()Lio/ktor/http/HttpStatusCode;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_113

    .line 168
    iget-object v4, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$request:Lio/ktor/client/request/HttpRequestData;

    iget-object v5, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v6, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$callContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->L$1:Ljava/lang/Object;

    const/4 p1, 0x5

    iput p1, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->label:I

    const/4 v7, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    move-object v8, p0

    invoke-static/range {v4 .. v10}, Lio/ktor/client/engine/cio/UtilsKt;->writeBody$default(Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_144

    return-object v0

    .line 172
    :cond_113
    iget-object v2, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->L$1:Ljava/lang/Object;

    const/4 v1, 0x6

    iput v1, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->label:I

    invoke-interface {v2, p0}, Lio/ktor/utils/io/ByteWriteChannel;->flushAndClose(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_127

    return-object v0

    :cond_127
    move-object v0, p1

    :goto_128
    return-object v0

    .line 177
    :cond_129
    iget-object v3, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$request:Lio/ktor/client/request/HttpRequestData;

    iget-object v4, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v5, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$callContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->L$0:Ljava/lang/Object;

    const/4 p1, 0x7

    iput p1, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->label:I

    const/4 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v7, p0

    invoke-static/range {v3 .. v9}, Lio/ktor/client/engine/cio/UtilsKt;->writeBody$default(Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_144

    return-object v0

    .line 180
    :cond_144
    :goto_144
    iget-object v3, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$requestTime:Lio/ktor/util/date/GMTDate;

    iget-object v4, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$request:Lio/ktor/client/request/HttpRequestData;

    iget-object v5, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$input:Lio/ktor/utils/io/ByteReadChannel;

    iget-object v6, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$originOutput:Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v7, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->$callContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->L$0:Ljava/lang/Object;

    iput-object v2, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->L$1:Ljava/lang/Object;

    iput-object v2, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->L$2:Ljava/lang/Object;

    const/16 p1, 0x8

    iput p1, p0, Lio/ktor/client/engine/cio/Endpoint$processExpectContinue$2;->label:I

    move-object v8, p0

    invoke-static/range {v3 .. v8}, Lio/ktor/client/engine/cio/UtilsKt;->readResponse(Lio/ktor/util/date/GMTDate;Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_164

    return-object v0

    :cond_164
    :goto_164
    return-object p1

    nop

    :pswitch_data_166
    .packed-switch 0x0
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_39
        :pswitch_28
        :pswitch_2c
        :pswitch_1b
        :pswitch_30
        :pswitch_12
    .end packed-switch
.end method

###### Class io.ktor.client.engine.cio.Endpoint$$ExternalSyntheticLambda0 (io.ktor.client.engine.cio.Endpoint$$ExternalSyntheticLambda0)
.class public final synthetic Lio/ktor/client/engine/cio/Endpoint$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lio/ktor/client/engine/cio/Endpoint;

.field public final synthetic f$1:Lio/ktor/network/sockets/SocketAddress;


# direct methods
.method public synthetic constructor <init>(Lio/ktor/client/engine/cio/Endpoint;Lio/ktor/network/sockets/SocketAddress;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/client/engine/cio/Endpoint$$ExternalSyntheticLambda0;->f$0:Lio/ktor/client/engine/cio/Endpoint;

    iput-object p2, p0, Lio/ktor/client/engine/cio/Endpoint$$ExternalSyntheticLambda0;->f$1:Lio/ktor/network/sockets/SocketAddress;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/ktor/client/engine/cio/Endpoint$$ExternalSyntheticLambda0;->f$0:Lio/ktor/client/engine/cio/Endpoint;

    iget-object p0, p0, Lio/ktor/client/engine/cio/Endpoint$$ExternalSyntheticLambda0;->f$1:Lio/ktor/network/sockets/SocketAddress;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p0, p1}, Lio/ktor/client/engine/cio/Endpoint;->$r8$lambda$ot0cZqRjk4CJuvYIBry7y5ZDkuo(Lio/ktor/client/engine/cio/Endpoint;Lio/ktor/network/sockets/SocketAddress;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.client.engine.cio.Endpoint$$ExternalSyntheticLambda1 (io.ktor.client.engine.cio.Endpoint$$ExternalSyntheticLambda1)
.class public final synthetic Lio/ktor/client/engine/cio/Endpoint$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lio/ktor/utils/io/ByteReadChannel;

.field public final synthetic f$1:Lio/ktor/utils/io/ByteWriteChannel;

.field public final synthetic f$2:Lio/ktor/network/sockets/Connection;

.field public final synthetic f$3:Lio/ktor/client/engine/cio/Endpoint;

.field public final synthetic f$4:Lio/ktor/network/sockets/SocketAddress;


# direct methods
.method public synthetic constructor <init>(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/network/sockets/Connection;Lio/ktor/client/engine/cio/Endpoint;Lio/ktor/network/sockets/SocketAddress;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/client/engine/cio/Endpoint$$ExternalSyntheticLambda1;->f$0:Lio/ktor/utils/io/ByteReadChannel;

    iput-object p2, p0, Lio/ktor/client/engine/cio/Endpoint$$ExternalSyntheticLambda1;->f$1:Lio/ktor/utils/io/ByteWriteChannel;

    iput-object p3, p0, Lio/ktor/client/engine/cio/Endpoint$$ExternalSyntheticLambda1;->f$2:Lio/ktor/network/sockets/Connection;

    iput-object p4, p0, Lio/ktor/client/engine/cio/Endpoint$$ExternalSyntheticLambda1;->f$3:Lio/ktor/client/engine/cio/Endpoint;

    iput-object p5, p0, Lio/ktor/client/engine/cio/Endpoint$$ExternalSyntheticLambda1;->f$4:Lio/ktor/network/sockets/SocketAddress;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 0
    iget-object v0, p0, Lio/ktor/client/engine/cio/Endpoint$$ExternalSyntheticLambda1;->f$0:Lio/ktor/utils/io/ByteReadChannel;

    iget-object v1, p0, Lio/ktor/client/engine/cio/Endpoint$$ExternalSyntheticLambda1;->f$1:Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v2, p0, Lio/ktor/client/engine/cio/Endpoint$$ExternalSyntheticLambda1;->f$2:Lio/ktor/network/sockets/Connection;

    iget-object v3, p0, Lio/ktor/client/engine/cio/Endpoint$$ExternalSyntheticLambda1;->f$3:Lio/ktor/client/engine/cio/Endpoint;

    iget-object v4, p0, Lio/ktor/client/engine/cio/Endpoint$$ExternalSyntheticLambda1;->f$4:Lio/ktor/network/sockets/SocketAddress;

    move-object v5, p1

    check-cast v5, Ljava/lang/Throwable;

    invoke-static/range {v0 .. v5}, Lio/ktor/client/engine/cio/Endpoint;->$r8$lambda$PbQzK2MQSE6KimdGRGHf_jrSbXo(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/network/sockets/Connection;Lio/ktor/client/engine/cio/Endpoint;Lio/ktor/network/sockets/SocketAddress;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.client.engine.cio.Endpoint$$ExternalSyntheticLambda2 (io.ktor.client.engine.cio.Endpoint$$ExternalSyntheticLambda2)
.class public final synthetic Lio/ktor/client/engine/cio/Endpoint$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lio/ktor/client/engine/cio/Endpoint;

.field public final synthetic f$1:Lio/ktor/network/sockets/InetSocketAddress;


# direct methods
.method public synthetic constructor <init>(Lio/ktor/client/engine/cio/Endpoint;Lio/ktor/network/sockets/InetSocketAddress;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/client/engine/cio/Endpoint$$ExternalSyntheticLambda2;->f$0:Lio/ktor/client/engine/cio/Endpoint;

    iput-object p2, p0, Lio/ktor/client/engine/cio/Endpoint$$ExternalSyntheticLambda2;->f$1:Lio/ktor/network/sockets/InetSocketAddress;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/ktor/client/engine/cio/Endpoint$$ExternalSyntheticLambda2;->f$0:Lio/ktor/client/engine/cio/Endpoint;

    iget-object p0, p0, Lio/ktor/client/engine/cio/Endpoint$$ExternalSyntheticLambda2;->f$1:Lio/ktor/network/sockets/InetSocketAddress;

    check-cast p1, Lio/ktor/network/tls/TLSConfigBuilder;

    invoke-static {v0, p0, p1}, Lio/ktor/client/engine/cio/Endpoint;->$r8$lambda$QXTo5y6p07_2eFUkD3Bl4XcA38g(Lio/ktor/client/engine/cio/Endpoint;Lio/ktor/network/sockets/InetSocketAddress;Lio/ktor/network/tls/TLSConfigBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
