###### Class io.ktor.client.engine.cio.EndpointKt (io.ktor.client.engine.cio.EndpointKt)
.class public final Lio/ktor/client/engine/cio/EndpointKt;
.super Ljava/lang/Object;
.source "Endpoint.kt"


# static fields
.field public static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method public static synthetic $r8$lambda$sHB6UNAvE7bLKkNphFHnhCujT3U(Lkotlinx/coroutines/Job;Ljava/lang/Throwable;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/ktor/client/engine/cio/EndpointKt;->setupTimeout$lambda$0(Lkotlinx/coroutines/Job;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 24
    const-string v0, "io.ktor.client.engine.cio.Endpoint"

    invoke-static {v0}, Lio/ktor/util/logging/KtorSimpleLoggerJvmKt;->KtorSimpleLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/ktor/client/engine/cio/EndpointKt;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public static final synthetic access$getLOGGER$p()Lorg/slf4j/Logger;
    .registers 1

    .line 1
    sget-object v0, Lio/ktor/client/engine/cio/EndpointKt;->LOGGER:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static final synthetic access$setupTimeout(Lkotlin/coroutines/CoroutineContext;Lio/ktor/client/request/HttpRequestData;J)V
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/client/engine/cio/EndpointKt;->setupTimeout(Lkotlin/coroutines/CoroutineContext;Lio/ktor/client/request/HttpRequestData;J)V

    return-void
.end method

.method public static final getRequestTimeout(Lio/ktor/client/request/HttpRequestData;Lio/ktor/client/engine/cio/CIOEngineConfig;)J
    .registers 4

    const-string v0, "request"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "engineConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lio/ktor/client/request/HttpRequestData;->getUrl()Lio/ktor/http/Url;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/http/Url;->getProtocol()Lio/ktor/http/URLProtocol;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/http/URLProtocolKt;->isWebsocket(Lio/ktor/http/URLProtocol;)Z

    move-result v0

    .line 343
    sget-object v1, Lio/ktor/client/plugins/HttpTimeoutCapability;->INSTANCE:Lio/ktor/client/plugins/HttpTimeoutCapability;

    invoke-virtual {p0, v1}, Lio/ktor/client/request/HttpRequestData;->getCapabilityOrNull(Lio/ktor/client/engine/HttpClientEngineCapability;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_32

    if-nez v0, :cond_32

    .line 345
    invoke-static {p0}, Lio/ktor/client/request/HttpRequestKt;->isUpgradeRequest(Lio/ktor/client/request/HttpRequestData;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 346
    invoke-static {p0}, Lio/ktor/client/request/HttpRequestKt;->isSseRequest(Lio/ktor/client/request/HttpRequestData;)Z

    move-result p0

    if-eqz p0, :cond_2d

    goto :goto_32

    .line 351
    :cond_2d
    invoke-virtual {p1}, Lio/ktor/client/engine/cio/CIOEngineConfig;->getRequestTimeout()J

    move-result-wide p0

    return-wide p0

    :cond_32
    :goto_32
    const-wide p0, 0x7fffffffffffffffL

    return-wide p0
.end method

.method public static final setupTimeout(Lkotlin/coroutines/CoroutineContext;Lio/ktor/client/request/HttpRequestData;J)V
    .registers 13

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p2, v0

    if-eqz v0, :cond_37

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_10

    goto :goto_37

    .line 320
    :cond_10
    sget-object v1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    new-instance v2, Lkotlinx/coroutines/CoroutineName;

    const-string v0, "cio-request-timeout"

    invoke-direct {v2, v0}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    new-instance v0, Lio/ktor/client/engine/cio/EndpointKt$setupTimeout$timeoutJob$1;

    const/4 v8, 0x0

    move-object v3, v0

    move-wide v4, p2

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v3 .. v8}, Lio/ktor/client/engine/cio/EndpointKt$setupTimeout$timeoutJob$1;-><init>(JLkotlin/coroutines/CoroutineContext;Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 325
    invoke-static {p0}, Lkotlinx/coroutines/JobKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    move-result-object p0

    new-instance p2, Lio/ktor/client/engine/cio/EndpointKt$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lio/ktor/client/engine/cio/EndpointKt$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/Job;)V

    invoke-interface {p0, p2}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    :cond_37
    :goto_37
    return-void
.end method

.method public static final setupTimeout$lambda$0(Lkotlinx/coroutines/Job;Ljava/lang/Throwable;)Lkotlin/Unit;
    .registers 3

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 326
    invoke-static {p0, p1, v0, p1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 327
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

###### Class io.ktor.client.engine.cio.EndpointKt$$ExternalSyntheticLambda0 (io.ktor.client.engine.cio.EndpointKt$$ExternalSyntheticLambda0)
.class public final synthetic Lio/ktor/client/engine/cio/EndpointKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/Job;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/Job;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/client/engine/cio/EndpointKt$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lio/ktor/client/engine/cio/EndpointKt$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/Job;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p0, p1}, Lio/ktor/client/engine/cio/EndpointKt;->$r8$lambda$sHB6UNAvE7bLKkNphFHnhCujT3U(Lkotlinx/coroutines/Job;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
