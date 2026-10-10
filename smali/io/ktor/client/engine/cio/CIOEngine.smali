###### Class io.ktor.client.engine.cio.CIOEngine (io.ktor.client.engine.cio.CIOEngine)
.class public final Lio/ktor/client/engine/cio/CIOEngine;
.super Lio/ktor/client/engine/HttpClientEngineBase;
.source "CIOEngine.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/engine/cio/CIOEngine$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCIOEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CIOEngine.kt\nio/ktor/client/engine/cio/CIOEngine\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,153:1\n216#2,2:154\n*S KotlinDebug\n*F\n+ 1 CIOEngine.kt\nio/ktor/client/engine/cio/CIOEngine\n*L\n102#1:154,2\n*E\n"
.end annotation


# instance fields
.field public final config:Lio/ktor/client/engine/cio/CIOEngineConfig;

.field public final connectionFactory:Lio/ktor/client/engine/cio/ConnectionFactory;

.field public final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public final endpoints:Lio/ktor/util/collections/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/collections/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lio/ktor/client/engine/cio/Endpoint;",
            ">;"
        }
    .end annotation
.end field

.field public final proxy:Ljava/net/Proxy;

.field public final requestsJob:Lkotlin/coroutines/CoroutineContext;

.field public final selectorManager:Lio/ktor/network/selector/SelectorManager;

.field public final supportedCapabilities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/ktor/client/engine/HttpClientEngineCapability<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$iZVHD6Wrf3M_tFCKHJmFLSSzWKU(Lio/ktor/client/engine/cio/CIOEngine;Ljava/lang/String;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/ktor/client/engine/cio/CIOEngine;->selectEndpoint$lambda$0$0(Lio/ktor/client/engine/cio/CIOEngine;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$v9gXHymp8bVCIuyuB3FQuZ5jGHk(Lio/ktor/http/URLProtocol;Ljava/lang/String;ILjava/net/Proxy;Lio/ktor/client/engine/cio/CIOEngine;Lio/ktor/client/request/UnixSocketSettings;Ljava/lang/String;)Lio/ktor/client/engine/cio/Endpoint;
    .registers 7

    .line 0
    invoke-static/range {p0 .. p6}, Lio/ktor/client/engine/cio/CIOEngine;->selectEndpoint$lambda$0(Lio/ktor/http/URLProtocol;Ljava/lang/String;ILjava/net/Proxy;Lio/ktor/client/engine/cio/CIOEngine;Lio/ktor/client/request/UnixSocketSettings;Ljava/lang/String;)Lio/ktor/client/engine/cio/Endpoint;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lio/ktor/client/engine/cio/CIOEngineConfig;)V
    .registers 9

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    const-string v0, "ktor-cio"

    .line 22
    invoke-direct {p0, v0}, Lio/ktor/client/engine/HttpClientEngineBase;-><init>(Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lio/ktor/client/engine/cio/CIOEngine;->config:Lio/ktor/client/engine/cio/CIOEngineConfig;

    const/4 p1, 0x5

    .line 32
    new-array p1, p1, [Lio/ktor/client/engine/HttpClientEngineCapability;

    sget-object v0, Lio/ktor/client/plugins/HttpTimeoutCapability;->INSTANCE:Lio/ktor/client/plugins/HttpTimeoutCapability;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    sget-object v0, Lio/ktor/client/plugins/websocket/WebSocketCapability;->INSTANCE:Lio/ktor/client/plugins/websocket/WebSocketCapability;

    const/4 v2, 0x1

    aput-object v0, p1, v2

    sget-object v0, Lio/ktor/client/plugins/websocket/WebSocketExtensionsCapability;->INSTANCE:Lio/ktor/client/plugins/websocket/WebSocketExtensionsCapability;

    const/4 v3, 0x2

    aput-object v0, p1, v3

    sget-object v0, Lio/ktor/client/plugins/sse/SSECapability;->INSTANCE:Lio/ktor/client/plugins/sse/SSECapability;

    const/4 v4, 0x3

    aput-object v0, p1, v4

    sget-object v0, Lio/ktor/client/request/UnixSocketCapability;->INSTANCE:Lio/ktor/client/request/UnixSocketCapability;

    const/4 v4, 0x4

    aput-object v0, p1, v4

    .line 27
    invoke-static {p1}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/engine/cio/CIOEngine;->supportedCapabilities:Ljava/util/Set;

    .line 35
    new-instance p1, Lio/ktor/util/collections/ConcurrentMap;

    const/4 v0, 0x0

    invoke-direct {p1, v1, v2, v0}, Lio/ktor/util/collections/ConcurrentMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lio/ktor/client/engine/cio/CIOEngine;->endpoints:Lio/ktor/util/collections/ConcurrentMap;

    .line 37
    invoke-virtual {p0}, Lio/ktor/client/engine/HttpClientEngineBase;->getDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    invoke-static {p1}, Lio/ktor/network/selector/SelectorManagerKt;->SelectorManager(Lkotlin/coroutines/CoroutineContext;)Lio/ktor/network/selector/SelectorManager;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/engine/cio/CIOEngine;->selectorManager:Lio/ktor/network/selector/SelectorManager;

    .line 39
    new-instance v1, Lio/ktor/client/engine/cio/ConnectionFactory;

    .line 41
    invoke-virtual {p0}, Lio/ktor/client/engine/cio/CIOEngine;->getConfig()Lio/ktor/client/engine/cio/CIOEngineConfig;

    move-result-object v4

    invoke-virtual {v4}, Lio/ktor/client/engine/cio/CIOEngineConfig;->getMaxConnectionsCount()I

    move-result v4

    .line 42
    invoke-virtual {p0}, Lio/ktor/client/engine/cio/CIOEngine;->getConfig()Lio/ktor/client/engine/cio/CIOEngineConfig;

    move-result-object v5

    invoke-virtual {v5}, Lio/ktor/client/engine/cio/CIOEngineConfig;->getEndpoint()Lio/ktor/client/engine/cio/EndpointConfig;

    move-result-object v5

    invoke-virtual {v5}, Lio/ktor/client/engine/cio/EndpointConfig;->getMaxConnectionsPerRoute()I

    move-result v5

    .line 39
    invoke-direct {v1, p1, v4, v5}, Lio/ktor/client/engine/cio/ConnectionFactory;-><init>(Lio/ktor/network/selector/SelectorManager;II)V

    iput-object v1, p0, Lio/ktor/client/engine/cio/CIOEngine;->connectionFactory:Lio/ktor/client/engine/cio/ConnectionFactory;

    .line 49
    invoke-virtual {p0}, Lio/ktor/client/engine/cio/CIOEngine;->getConfig()Lio/ktor/client/engine/cio/CIOEngineConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/client/engine/HttpClientEngineConfig;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    if-eqz v1, :cond_6a

    invoke-static {v1}, Lio/ktor/client/engine/ProxyConfigJvmKt;->getType(Ljava/net/Proxy;)Lio/ktor/client/engine/ProxyType;

    move-result-object v1

    goto :goto_6b

    :cond_6a
    move-object v1, v0

    :goto_6b
    const/4 v4, -0x1

    if-nez v1, :cond_70

    move v5, v4

    goto :goto_78

    :cond_70
    sget-object v5, Lio/ktor/client/engine/cio/CIOEngine$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    :goto_78
    if-eq v5, v4, :cond_a3

    if-eq v5, v2, :cond_a3

    if-ne v5, v3, :cond_87

    .line 53
    invoke-virtual {p0}, Lio/ktor/client/engine/cio/CIOEngine;->getConfig()Lio/ktor/client/engine/cio/CIOEngineConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/client/engine/HttpClientEngineConfig;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    goto :goto_a4

    .line 54
    :cond_87
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CIO engine does not currently support "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " proxies."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a3
    move-object v1, v0

    .line 49
    :goto_a4
    iput-object v1, p0, Lio/ktor/client/engine/cio/CIOEngine;->proxy:Ljava/net/Proxy;

    .line 58
    invoke-super {p0}, Lio/ktor/client/engine/HttpClientEngineBase;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 59
    sget-object v2, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lkotlinx/coroutines/Job;

    .line 61
    invoke-static {v3}, Lio/ktor/util/CoroutinesUtilsKt;->SilentSupervisor(Lkotlinx/coroutines/Job;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    iput-object v3, p0, Lio/ktor/client/engine/cio/CIOEngine;->requestsJob:Lkotlin/coroutines/CoroutineContext;

    .line 64
    invoke-interface {v1, v3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    iput-object v4, p0, Lio/ktor/client/engine/cio/CIOEngine;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 66
    invoke-interface {v3, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lkotlinx/coroutines/Job;

    .line 69
    sget-object v2, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    sget-object v3, Lkotlinx/coroutines/CoroutineStart;->ATOMIC:Lkotlinx/coroutines/CoroutineStart;

    new-instance v4, Lio/ktor/client/engine/cio/CIOEngine$1;

    invoke-direct {v4, p0, p1, v0}, Lio/ktor/client/engine/cio/CIOEngine$1;-><init>(Lkotlinx/coroutines/Job;Lio/ktor/network/selector/SelectorManager;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v1, v3, v4}, Lkotlinx/coroutines/BuildersKt;->launch(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final selectEndpoint$lambda$0(Lio/ktor/http/URLProtocol;Ljava/lang/String;ILjava/net/Proxy;Lio/ktor/client/engine/cio/CIOEngine;Lio/ktor/client/request/UnixSocketSettings;Ljava/lang/String;)Lio/ktor/client/engine/cio/Endpoint;
    .registers 18

    move-object v0, p4

    .line 130
    invoke-static {p0}, Lio/ktor/http/URLProtocolKt;->isSecure(Lio/ktor/http/URLProtocol;)Z

    move-result v4

    .line 131
    new-instance v10, Lio/ktor/client/engine/cio/Endpoint;

    .line 136
    invoke-virtual {p4}, Lio/ktor/client/engine/cio/CIOEngine;->getConfig()Lio/ktor/client/engine/cio/CIOEngineConfig;

    move-result-object v5

    .line 137
    iget-object v6, v0, Lio/ktor/client/engine/cio/CIOEngine;->connectionFactory:Lio/ktor/client/engine/cio/ConnectionFactory;

    .line 138
    invoke-virtual {p4}, Lio/ktor/client/engine/cio/CIOEngine;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v7

    .line 139
    new-instance v8, Lio/ktor/client/engine/cio/CIOEngine$$ExternalSyntheticLambda1;

    move-object/from16 v1, p6

    invoke-direct {v8, p4, v1}, Lio/ktor/client/engine/cio/CIOEngine$$ExternalSyntheticLambda1;-><init>(Lio/ktor/client/engine/cio/CIOEngine;Ljava/lang/String;)V

    move-object v0, v10

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v9, p5

    .line 131
    invoke-direct/range {v0 .. v9}, Lio/ktor/client/engine/cio/Endpoint;-><init>(Ljava/lang/String;ILjava/net/Proxy;ZLio/ktor/client/engine/cio/CIOEngineConfig;Lio/ktor/client/engine/cio/ConnectionFactory;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lio/ktor/client/request/UnixSocketSettings;)V

    return-object v10
.end method

.method public static final selectEndpoint$lambda$0$0(Lio/ktor/client/engine/cio/CIOEngine;Ljava/lang/String;)Lkotlin/Unit;
    .registers 2

    .line 139
    iget-object p0, p0, Lio/ktor/client/engine/cio/CIOEngine;->endpoints:Lio/ktor/util/collections/ConcurrentMap;

    invoke-virtual {p0, p1}, Lio/ktor/util/collections/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 100
    invoke-super {p0}, Lio/ktor/client/engine/HttpClientEngineBase;->close()V

    .line 102
    iget-object v0, p0, Lio/ktor/client/engine/cio/CIOEngine;->endpoints:Lio/ktor/util/collections/ConcurrentMap;

    .line 216
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/ktor/client/engine/cio/Endpoint;

    .line 103
    invoke-virtual {v1}, Lio/ktor/client/engine/cio/Endpoint;->close()V

    goto :goto_d

    .line 106
    :cond_23
    iget-object p0, p0, Lio/ktor/client/engine/cio/CIOEngine;->requestsJob:Lkotlin/coroutines/CoroutineContext;

    sget-object v0, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CompletableJob"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlinx/coroutines/CompletableJob;

    invoke-interface {p0}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    return-void
.end method

.method public execute(Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/request/HttpRequestData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/request/HttpResponseData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/client/engine/cio/CIOEngine$execute$1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lio/ktor/client/engine/cio/CIOEngine$execute$1;

    iget v1, v0, Lio/ktor/client/engine/cio/CIOEngine$execute$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/client/engine/cio/CIOEngine$execute$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/ktor/client/engine/cio/CIOEngine$execute$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/client/engine/cio/CIOEngine$execute$1;-><init>(Lio/ktor/client/engine/cio/CIOEngine;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lio/ktor/client/engine/cio/CIOEngine$execute$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 78
    iget v2, v0, Lio/ktor/client/engine/cio/CIOEngine$execute$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_4f

    if-eq v2, v4, :cond_47

    if-ne v2, v3, :cond_3f

    iget-object p1, v0, Lio/ktor/client/engine/cio/CIOEngine$execute$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lio/ktor/client/engine/cio/Endpoint;

    iget-object v2, v0, Lio/ktor/client/engine/cio/CIOEngine$execute$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lio/ktor/client/request/UnixSocketSettings;

    iget-object v2, v0, Lio/ktor/client/engine/cio/CIOEngine$execute$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    iget-object v5, v0, Lio/ktor/client/engine/cio/CIOEngine$execute$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lio/ktor/client/request/HttpRequestData;

    :try_start_38
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3b
    .catch Lkotlinx/coroutines/channels/ClosedSendChannelException; {:try_start_38 .. :try_end_3b} :catch_b8
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_95

    :catchall_3c
    move-exception p2

    goto/16 :goto_aa

    :cond_3f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_47
    iget-object p1, v0, Lio/ktor/client/engine/cio/CIOEngine$execute$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/client/request/HttpRequestData;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5d

    :cond_4f
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 79
    iput-object p1, v0, Lio/ktor/client/engine/cio/CIOEngine$execute$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lio/ktor/client/engine/cio/CIOEngine$execute$1;->label:I

    invoke-static {v0}, Lio/ktor/client/engine/UtilsKt;->callContext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5d

    return-object v1

    .line 78
    :cond_5d
    :goto_5d
    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    move-object v5, p1

    move-object v2, p2

    .line 81
    :cond_61
    :goto_61
    invoke-virtual {p0}, Lio/ktor/client/engine/cio/CIOEngine;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlin/coroutines/CoroutineContext;)Z

    move-result p1

    if-eqz p1, :cond_c6

    .line 82
    sget-object p1, Lio/ktor/client/request/UnixSocketCapability;->INSTANCE:Lio/ktor/client/request/UnixSocketCapability;

    invoke-virtual {v5, p1}, Lio/ktor/client/request/HttpRequestData;->getCapabilityOrNull(Lio/ktor/client/engine/HttpClientEngineCapability;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/ktor/client/request/UnixSocketSettings;

    .line 83
    invoke-virtual {v5}, Lio/ktor/client/request/HttpRequestData;->getUrl()Lio/ktor/http/Url;

    move-result-object p2

    iget-object v6, p0, Lio/ktor/client/engine/cio/CIOEngine;->proxy:Ljava/net/Proxy;

    invoke-virtual {p0, p2, v6, p1}, Lio/ktor/client/engine/cio/CIOEngine;->selectEndpoint(Lio/ktor/http/Url;Ljava/net/Proxy;Lio/ktor/client/request/UnixSocketSettings;)Lio/ktor/client/engine/cio/Endpoint;

    move-result-object p2

    .line 86
    :try_start_7d
    iput-object v5, v0, Lio/ktor/client/engine/cio/CIOEngine$execute$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lio/ktor/client/engine/cio/CIOEngine$execute$1;->L$1:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lio/ktor/client/engine/cio/CIOEngine$execute$1;->L$2:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/client/engine/cio/CIOEngine$execute$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/client/engine/cio/CIOEngine$execute$1;->label:I

    invoke-virtual {p2, v5, v2, v0}, Lio/ktor/client/engine/cio/Endpoint;->execute(Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_8f
    .catch Lkotlinx/coroutines/channels/ClosedSendChannelException; {:try_start_7d .. :try_end_8f} :catch_a8
    .catchall {:try_start_7d .. :try_end_8f} :catchall_a3

    if-ne p1, v1, :cond_92

    return-object v1

    :cond_92
    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    .line 90
    :goto_95
    invoke-virtual {p0}, Lio/ktor/client/engine/cio/CIOEngine;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlin/coroutines/CoroutineContext;)Z

    move-result p0

    if-nez p0, :cond_a2

    .line 91
    invoke-virtual {p1}, Lio/ktor/client/engine/cio/Endpoint;->close()V

    :cond_a2
    return-object p2

    :catchall_a3
    move-exception p1

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    goto :goto_aa

    :catch_a8
    move-object p1, p2

    goto :goto_b8

    .line 90
    :goto_aa
    invoke-virtual {p0}, Lio/ktor/client/engine/cio/CIOEngine;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlin/coroutines/CoroutineContext;)Z

    move-result p0

    if-nez p0, :cond_b7

    .line 91
    invoke-virtual {p1}, Lio/ktor/client/engine/cio/Endpoint;->close()V

    :cond_b7
    throw p2

    .line 90
    :catch_b8
    :goto_b8
    invoke-virtual {p0}, Lio/ktor/client/engine/cio/CIOEngine;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlin/coroutines/CoroutineContext;)Z

    move-result p2

    if-nez p2, :cond_61

    .line 91
    invoke-virtual {p1}, Lio/ktor/client/engine/cio/Endpoint;->close()V

    goto :goto_61

    .line 96
    :cond_c6
    new-instance p0, Lio/ktor/client/engine/ClientEngineClosedException;

    const/4 p1, 0x0

    invoke-direct {p0, p1, v4, p1}, Lio/ktor/client/engine/ClientEngineClosedException;-><init>(Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method public bridge synthetic getConfig()Lio/ktor/client/engine/HttpClientEngineConfig;
    .registers 1

    .line 22
    invoke-virtual {p0}, Lio/ktor/client/engine/cio/CIOEngine;->getConfig()Lio/ktor/client/engine/cio/CIOEngineConfig;

    move-result-object p0

    return-object p0
.end method

.method public getConfig()Lio/ktor/client/engine/cio/CIOEngineConfig;
    .registers 1

    .line 24
    iget-object p0, p0, Lio/ktor/client/engine/cio/CIOEngine;->config:Lio/ktor/client/engine/cio/CIOEngineConfig;

    return-object p0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .registers 1

    .line 47
    iget-object p0, p0, Lio/ktor/client/engine/cio/CIOEngine;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method public getSupportedCapabilities()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/ktor/client/engine/HttpClientEngineCapability<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 27
    iget-object p0, p0, Lio/ktor/client/engine/cio/CIOEngine;->supportedCapabilities:Ljava/util/Set;

    return-object p0
.end method

.method public final selectEndpoint(Lio/ktor/http/Url;Ljava/net/Proxy;Lio/ktor/client/request/UnixSocketSettings;)Lio/ktor/client/engine/cio/Endpoint;
    .registers 13

    .line 110
    invoke-static {p1}, Lio/ktor/client/engine/cio/CIOEngineKt;->rebuildIfNeeded(Lio/ktor/http/Url;)Lio/ktor/http/Url;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Lio/ktor/http/Url;->getProtocol()Lio/ktor/http/URLProtocol;

    move-result-object v1

    if-nez p2, :cond_e

    .line 116
    invoke-static {p1}, Lio/ktor/client/engine/cio/Proxy_jvmKt;->lookupGlobalProxy(Lio/ktor/http/Url;)Ljava/net/Proxy;

    move-result-object p2

    :cond_e
    move-object v4, p2

    if-eqz v4, :cond_20

    .line 119
    invoke-static {v4}, Lio/ktor/client/engine/ProxyConfigJvmKt;->resolveAddress(Ljava/net/Proxy;)Ljava/net/SocketAddress;

    move-result-object p1

    .line 120
    invoke-static {p1}, Lio/ktor/util/network/NetworkAddressJvmKt;->getHostname(Ljava/net/SocketAddress;)Ljava/lang/String;

    move-result-object p2

    .line 121
    invoke-static {p1}, Lio/ktor/util/network/NetworkAddressJvmKt;->getPort(Ljava/net/SocketAddress;)I

    move-result p1

    :goto_1d
    move v3, p1

    move-object v2, p2

    goto :goto_29

    .line 123
    :cond_20
    invoke-virtual {p1}, Lio/ktor/http/Url;->getHost()Ljava/lang/String;

    move-result-object p2

    .line 124
    invoke-virtual {p1}, Lio/ktor/http/Url;->getPort()I

    move-result p1

    goto :goto_1d

    .line 127
    :goto_29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x3a

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_49

    invoke-virtual {p3}, Lio/ktor/client/request/UnixSocketSettings;->getPath()Ljava/lang/String;

    move-result-object p2

    goto :goto_4a

    :cond_49
    const/4 p2, 0x0

    :goto_4a
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 129
    iget-object p2, p0, Lio/ktor/client/engine/cio/CIOEngine;->endpoints:Lio/ktor/util/collections/ConcurrentMap;

    new-instance v8, Lio/ktor/client/engine/cio/CIOEngine$$ExternalSyntheticLambda0;

    move-object v0, v8

    move-object v5, p0

    move-object v6, p3

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lio/ktor/client/engine/cio/CIOEngine$$ExternalSyntheticLambda0;-><init>(Lio/ktor/http/URLProtocol;Ljava/lang/String;ILjava/net/Proxy;Lio/ktor/client/engine/cio/CIOEngine;Lio/ktor/client/request/UnixSocketSettings;Ljava/lang/String;)V

    invoke-virtual {p2, p1, v8}, Lio/ktor/util/collections/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/ktor/client/engine/cio/Endpoint;

    return-object p0
.end method

###### Class io.ktor.client.engine.cio.CIOEngine.AnonymousClass1 (io.ktor.client.engine.cio.CIOEngine$1)
.class public final Lio/ktor/client/engine/cio/CIOEngine$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CIOEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/cio/CIOEngine;-><init>(Lio/ktor/client/engine/cio/CIOEngineConfig;)V
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.client.engine.cio.CIOEngine$1"
    f = "CIOEngine.kt"
    l = {
        0x47
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public final synthetic $requestJob:Lkotlinx/coroutines/Job;

.field public final synthetic $selector:Lio/ktor/network/selector/SelectorManager;

.field public label:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/Job;Lio/ktor/network/selector/SelectorManager;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/Job;",
            "Lio/ktor/network/selector/SelectorManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/engine/cio/CIOEngine$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/cio/CIOEngine$1;->$requestJob:Lkotlinx/coroutines/Job;

    iput-object p2, p0, Lio/ktor/client/engine/cio/CIOEngine$1;->$selector:Lio/ktor/network/selector/SelectorManager;

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
    new-instance p1, Lio/ktor/client/engine/cio/CIOEngine$1;

    iget-object v0, p0, Lio/ktor/client/engine/cio/CIOEngine$1;->$requestJob:Lkotlinx/coroutines/Job;

    iget-object p0, p0, Lio/ktor/client/engine/cio/CIOEngine$1;->$selector:Lio/ktor/network/selector/SelectorManager;

    invoke-direct {p1, v0, p0, p2}, Lio/ktor/client/engine/cio/CIOEngine$1;-><init>(Lkotlinx/coroutines/Job;Lio/ktor/network/selector/SelectorManager;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/cio/CIOEngine$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/cio/CIOEngine$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/ktor/client/engine/cio/CIOEngine$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/ktor/client/engine/cio/CIOEngine$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 69
    iget v1, p0, Lio/ktor/client/engine/cio/CIOEngine$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    if-ne v1, v2, :cond_11

    :try_start_b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    goto :goto_27

    :catchall_f
    move-exception p1

    goto :goto_2f

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 71
    :try_start_1c
    iget-object p1, p0, Lio/ktor/client/engine/cio/CIOEngine$1;->$requestJob:Lkotlinx/coroutines/Job;

    iput v2, p0, Lio/ktor/client/engine/cio/CIOEngine$1;->label:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_f

    if-ne p1, v0, :cond_27

    return-object v0

    .line 73
    :cond_27
    :goto_27
    iget-object p0, p0, Lio/ktor/client/engine/cio/CIOEngine$1;->$selector:Lio/ktor/network/selector/SelectorManager;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 75
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 73
    :goto_2f
    iget-object p0, p0, Lio/ktor/client/engine/cio/CIOEngine$1;->$selector:Lio/ktor/network/selector/SelectorManager;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    throw p1
.end method

###### Class io.ktor.client.engine.cio.CIOEngine.WhenMappings (io.ktor.client.engine.cio.CIOEngine$WhenMappings)
.class public final synthetic Lio/ktor/client/engine/cio/CIOEngine$WhenMappings;
.super Ljava/lang/Object;
.source "CIOEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/engine/cio/CIOEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lio/ktor/client/engine/ProxyType;->values()[Lio/ktor/client/engine/ProxyType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/ktor/client/engine/ProxyType;->SOCKS:Lio/ktor/client/engine/ProxyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/ktor/client/engine/ProxyType;->HTTP:Lio/ktor/client/engine/ProxyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    sput-object v0, Lio/ktor/client/engine/cio/CIOEngine$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method

###### Class io.ktor.client.engine.cio.CIOEngine.C00331 (io.ktor.client.engine.cio.CIOEngine$execute$1)
.class public final Lio/ktor/client/engine/cio/CIOEngine$execute$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "CIOEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/cio/CIOEngine;->execute(Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.client.engine.cio.CIOEngine"
    f = "CIOEngine.kt"
    l = {
        0x4f,
        0x56
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

.field public final synthetic this$0:Lio/ktor/client/engine/cio/CIOEngine;


# direct methods
.method public constructor <init>(Lio/ktor/client/engine/cio/CIOEngine;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/engine/cio/CIOEngine;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/engine/cio/CIOEngine$execute$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/cio/CIOEngine$execute$1;->this$0:Lio/ktor/client/engine/cio/CIOEngine;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/cio/CIOEngine$execute$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/client/engine/cio/CIOEngine$execute$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/client/engine/cio/CIOEngine$execute$1;->label:I

    iget-object p1, p0, Lio/ktor/client/engine/cio/CIOEngine$execute$1;->this$0:Lio/ktor/client/engine/cio/CIOEngine;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lio/ktor/client/engine/cio/CIOEngine;->execute(Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.client.engine.cio.CIOEngine$$ExternalSyntheticLambda0 (io.ktor.client.engine.cio.CIOEngine$$ExternalSyntheticLambda0)
.class public final synthetic Lio/ktor/client/engine/cio/CIOEngine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lio/ktor/http/URLProtocol;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/net/Proxy;

.field public final synthetic f$4:Lio/ktor/client/engine/cio/CIOEngine;

.field public final synthetic f$5:Lio/ktor/client/request/UnixSocketSettings;

.field public final synthetic f$6:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/ktor/http/URLProtocol;Ljava/lang/String;ILjava/net/Proxy;Lio/ktor/client/engine/cio/CIOEngine;Lio/ktor/client/request/UnixSocketSettings;Ljava/lang/String;)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/client/engine/cio/CIOEngine$$ExternalSyntheticLambda0;->f$0:Lio/ktor/http/URLProtocol;

    iput-object p2, p0, Lio/ktor/client/engine/cio/CIOEngine$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput p3, p0, Lio/ktor/client/engine/cio/CIOEngine$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lio/ktor/client/engine/cio/CIOEngine$$ExternalSyntheticLambda0;->f$3:Ljava/net/Proxy;

    iput-object p5, p0, Lio/ktor/client/engine/cio/CIOEngine$$ExternalSyntheticLambda0;->f$4:Lio/ktor/client/engine/cio/CIOEngine;

    iput-object p6, p0, Lio/ktor/client/engine/cio/CIOEngine$$ExternalSyntheticLambda0;->f$5:Lio/ktor/client/request/UnixSocketSettings;

    iput-object p7, p0, Lio/ktor/client/engine/cio/CIOEngine$$ExternalSyntheticLambda0;->f$6:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 8

    .line 0
    iget-object v0, p0, Lio/ktor/client/engine/cio/CIOEngine$$ExternalSyntheticLambda0;->f$0:Lio/ktor/http/URLProtocol;

    iget-object v1, p0, Lio/ktor/client/engine/cio/CIOEngine$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget v2, p0, Lio/ktor/client/engine/cio/CIOEngine$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lio/ktor/client/engine/cio/CIOEngine$$ExternalSyntheticLambda0;->f$3:Ljava/net/Proxy;

    iget-object v4, p0, Lio/ktor/client/engine/cio/CIOEngine$$ExternalSyntheticLambda0;->f$4:Lio/ktor/client/engine/cio/CIOEngine;

    iget-object v5, p0, Lio/ktor/client/engine/cio/CIOEngine$$ExternalSyntheticLambda0;->f$5:Lio/ktor/client/request/UnixSocketSettings;

    iget-object v6, p0, Lio/ktor/client/engine/cio/CIOEngine$$ExternalSyntheticLambda0;->f$6:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lio/ktor/client/engine/cio/CIOEngine;->$r8$lambda$v9gXHymp8bVCIuyuB3FQuZ5jGHk(Lio/ktor/http/URLProtocol;Ljava/lang/String;ILjava/net/Proxy;Lio/ktor/client/engine/cio/CIOEngine;Lio/ktor/client/request/UnixSocketSettings;Ljava/lang/String;)Lio/ktor/client/engine/cio/Endpoint;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.client.engine.cio.CIOEngine$$ExternalSyntheticLambda1 (io.ktor.client.engine.cio.CIOEngine$$ExternalSyntheticLambda1)
.class public final synthetic Lio/ktor/client/engine/cio/CIOEngine$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lio/ktor/client/engine/cio/CIOEngine;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/ktor/client/engine/cio/CIOEngine;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/client/engine/cio/CIOEngine$$ExternalSyntheticLambda1;->f$0:Lio/ktor/client/engine/cio/CIOEngine;

    iput-object p2, p0, Lio/ktor/client/engine/cio/CIOEngine$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/ktor/client/engine/cio/CIOEngine$$ExternalSyntheticLambda1;->f$0:Lio/ktor/client/engine/cio/CIOEngine;

    iget-object p0, p0, Lio/ktor/client/engine/cio/CIOEngine$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lio/ktor/client/engine/cio/CIOEngine;->$r8$lambda$iZVHD6Wrf3M_tFCKHJmFLSSzWKU(Lio/ktor/client/engine/cio/CIOEngine;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
