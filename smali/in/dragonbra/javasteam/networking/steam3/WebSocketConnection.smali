###### Class in.dragonbra.javasteam.networking.steam3.WebSocketConnection (in.dragonbra.javasteam.networking.steam3.WebSocketConnection)
.class public final Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;
.super Lin/dragonbra/javasteam/networking/steam3/Connection;
.source "WebSocketConnection.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebSocketConnection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebSocketConnection.kt\nin/dragonbra/javasteam/networking/steam3/WebSocketConnection\n+ 2 LogManager.kt\nin/dragonbra/javasteam/util/log/LogManager\n*L\n1#1,185:1\n53#2:186\n*S KotlinDebug\n*F\n+ 1 WebSocketConnection.kt\nin/dragonbra/javasteam/networking/steam3/WebSocketConnection\n*L\n37#1:186\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$Companion;

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field private client:Lio/ktor/client/HttpClient;

.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private endpoint:Ljava/net/InetSocketAddress;

.field private final job:Lkotlinx/coroutines/Job;

.field private lastFrameTime:J

.field private session:Lio/ktor/websocket/WebSocketSession;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->Companion:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$Companion;

    .line 53
    const-class v0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    .line 37
    sput-object v0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 32
    invoke-direct {p0}, Lin/dragonbra/javasteam/networking/steam3/Connection;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 40
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->job:Lkotlinx/coroutines/Job;

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->lastFrameTime:J

    .line 50
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-void
.end method

.method public static final synthetic access$getClient$p(Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;)Lio/ktor/client/HttpClient;
    .registers 1

    .line 32
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->client:Lio/ktor/client/HttpClient;

    return-object p0
.end method

.method public static final synthetic access$getJob$p(Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;)Lkotlinx/coroutines/Job;
    .registers 1

    .line 32
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->job:Lkotlinx/coroutines/Job;

    return-object p0
.end method

.method public static final synthetic access$getLastFrameTime$p(Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;)J
    .registers 3

    .line 32
    iget-wide v0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->lastFrameTime:J

    return-wide v0
.end method

.method public static final synthetic access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;
    .registers 1

    .line 32
    sget-object v0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-object v0
.end method

.method public static final synthetic access$getSession$p(Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;)Lio/ktor/websocket/WebSocketSession;
    .registers 1

    .line 32
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->session:Lio/ktor/websocket/WebSocketSession;

    return-object p0
.end method

.method public static final synthetic access$setClient$p(Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;Lio/ktor/client/HttpClient;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->client:Lio/ktor/client/HttpClient;

    return-void
.end method

.method public static final synthetic access$setEndpoint$p(Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;Ljava/net/InetSocketAddress;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->endpoint:Ljava/net/InetSocketAddress;

    return-void
.end method

.method public static final synthetic access$setLastFrameTime$p(Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;J)V
    .registers 3

    .line 32
    iput-wide p1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->lastFrameTime:J

    return-void
.end method

.method public static final synthetic access$setSession$p(Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;Lio/ktor/websocket/WebSocketSession;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->session:Lio/ktor/websocket/WebSocketSession;

    return-void
.end method

.method public static final synthetic access$startConnectionMonitoring(Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;)V
    .registers 1

    .line 32
    invoke-direct {p0}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->startConnectionMonitoring()V

    return-void
.end method

.method private final startConnectionMonitoring()V
    .registers 7

    .line 156
    new-instance v3, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$startConnectionMonitoring$1;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$startConnectionMonitoring$1;-><init>(Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public connect(Ljava/net/InetSocketAddress;I)V
    .registers 10

    const-string v0, "endPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v4, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, p2, v0}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;-><init>(Ljava/net/InetSocketAddress;Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;ILkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public disconnect(Z)V
    .registers 12

    .line 118
    sget-object v0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnect called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lin/dragonbra/javasteam/util/log/Logger;->debug$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 119
    new-instance v7, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$disconnect$1;

    invoke-direct {v7, p0, p1, v3}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$disconnect$1;-><init>(Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;ZLkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .registers 1

    .line 50
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method public getCurrentEndPoint()Ljava/net/InetSocketAddress;
    .registers 1

    .line 148
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->endpoint:Ljava/net/InetSocketAddress;

    return-object p0
.end method

.method public getLocalIP()Ljava/net/InetAddress;
    .registers 2

    .line 146
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object p0

    const-string v0, "getLocalHost(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getProtocolTypes()Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;
    .registers 1

    .line 150
    sget-object p0, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;->WEB_SOCKET:Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    return-object p0
.end method

.method public send([B)V
    .registers 9

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    new-instance v4, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$send$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$send$1;-><init>([BLin/dragonbra/javasteam/networking/steam3/WebSocketConnection;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

###### Class in.dragonbra.javasteam.networking.steam3.WebSocketConnection.Companion (in.dragonbra.javasteam.networking.steam3.WebSocketConnection$Companion)
.class public final Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$Companion;
.super Ljava/lang/Object;
.source "WebSocketConnection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$Companion;-><init>()V

    return-void
.end method

###### Class in.dragonbra.javasteam.networking.steam3.WebSocketConnection.AnonymousClass1 (in.dragonbra.javasteam.networking.steam3.WebSocketConnection$connect$1)
.class final Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WebSocketConnection.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->connect(Ljava/net/InetSocketAddress;I)V
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
    value = "SMAP\nWebSocketConnection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebSocketConnection.kt\nin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1\n+ 2 Durations.kt\nio/ktor/client/plugins/websocket/DurationsKt\n*L\n1#1,185:1\n47#2,2:186\n*S KotlinDebug\n*F\n+ 1 WebSocketConnection.kt\nin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1\n*L\n61#1:186,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.networking.steam3.WebSocketConnection$connect$1"
    f = "WebSocketConnection.kt"
    l = {
        0x41
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $endPoint:Ljava/net/InetSocketAddress;

.field final synthetic $timeout:I

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;


# direct methods
.method public static synthetic $r8$lambda$0LFoWMlYnWQMJxKK2RUifPGOjOY(ILio/ktor/client/HttpClientConfig;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->invokeSuspend$lambda$0(ILio/ktor/client/HttpClientConfig;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BjhQBhSZvUdXOCuwsbKRg6e0smM(Ljava/net/InetSocketAddress;Lio/ktor/client/request/HttpRequestBuilder;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->invokeSuspend$lambda$1(Ljava/net/InetSocketAddress;Lio/ktor/client/request/HttpRequestBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IGDlsrYLq2sggqaVyw25R7q_yD4(Ljava/net/InetSocketAddress;Lio/ktor/http/URLBuilder;Lio/ktor/http/URLBuilder;)Lkotlin/Unit;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->invokeSuspend$lambda$1$0(Ljava/net/InetSocketAddress;Lio/ktor/http/URLBuilder;Lio/ktor/http/URLBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dNYQRZgMCkS8KfaGg0W2lrz-S98(ILio/ktor/client/plugins/websocket/WebSockets$Config;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->invokeSuspend$lambda$0$0(ILio/ktor/client/plugins/websocket/WebSockets$Config;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;ILkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->$endPoint:Ljava/net/InetSocketAddress;

    iput-object p2, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    iput p3, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->$timeout:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(ILio/ktor/client/HttpClientConfig;)Lkotlin/Unit;
    .registers 4

    .line 60
    sget-object v0, Lio/ktor/client/plugins/websocket/WebSockets;->Plugin:Lio/ktor/client/plugins/websocket/WebSockets$Plugin;

    new-instance v1, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Lio/ktor/client/HttpClientConfig;->install(Lio/ktor/client/plugins/HttpClientPlugin;Lkotlin/jvm/functions/Function1;)V

    .line 63
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokeSuspend$lambda$0$0(ILio/ktor/client/plugins/websocket/WebSockets$Config;)Lkotlin/Unit;
    .registers 4

    .line 61
    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p0, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    .line 47
    invoke-static {v0, v1}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lio/ktor/client/plugins/websocket/WebSockets$Config;->setPingIntervalMillis(J)V

    .line 62
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokeSuspend$lambda$1(Ljava/net/InetSocketAddress;Lio/ktor/client/request/HttpRequestBuilder;)Lkotlin/Unit;
    .registers 3

    .line 66
    new-instance v0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$$ExternalSyntheticLambda0;-><init>(Ljava/net/InetSocketAddress;)V

    invoke-virtual {p1, v0}, Lio/ktor/client/request/HttpRequestBuilder;->url(Lkotlin/jvm/functions/Function2;)V

    .line 72
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokeSuspend$lambda$1$0(Ljava/net/InetSocketAddress;Lio/ktor/http/URLBuilder;Lio/ktor/http/URLBuilder;)Lkotlin/Unit;
    .registers 4

    .line 67
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "getHostName(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lio/ktor/http/URLBuilder;->setHost(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p0

    invoke-virtual {p1, p0}, Lio/ktor/http/URLBuilder;->setPort(I)V

    .line 69
    sget-object p0, Lio/ktor/http/URLProtocol;->Companion:Lio/ktor/http/URLProtocol$Companion;

    invoke-virtual {p0}, Lio/ktor/http/URLProtocol$Companion;->getWSS()Lio/ktor/http/URLProtocol;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/ktor/http/URLBuilder;->setProtocol(Lio/ktor/http/URLProtocol;)V

    .line 70
    const-string p0, "cmsocket/"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lio/ktor/http/URLBuilderKt;->path(Lio/ktor/http/URLBuilder;[Ljava/lang/String;)V

    .line 71
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
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
    new-instance v0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;

    iget-object v1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->$endPoint:Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    iget p0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->$timeout:I

    invoke-direct {v0, v1, v2, p0, p2}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;-><init>(Ljava/net/InetSocketAddress;Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;ILkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->L$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 53
    iget v2, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->label:I

    const/4 v7, 0x2

    const-string v8, ":"

    const/4 v3, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_23

    if-ne v2, v3, :cond_1b

    :try_start_14
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_83

    :catch_18
    move-exception p1

    goto/16 :goto_cf

    :cond_1b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    invoke-static {}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object p1

    iget-object v2, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->$endPoint:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->$endPoint:Ljava/net/InetSocketAddress;

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying connection to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v9, v7, v9}, Lin/dragonbra/javasteam/util/log/Logger;->debug$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 57
    :try_start_50
    iget-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    iget-object v2, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->$endPoint:Ljava/net/InetSocketAddress;

    invoke-static {p1, v2}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->access$setEndpoint$p(Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;Ljava/net/InetSocketAddress;)V

    .line 59
    iget-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    sget-object v2, Lio/ktor/client/engine/cio/CIO;->INSTANCE:Lio/ktor/client/engine/cio/CIO;

    iget v4, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->$timeout:I

    new-instance v5, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v2, v5}, Lio/ktor/client/HttpClientKt;->HttpClient(Lio/ktor/client/engine/HttpClientEngineFactory;Lkotlin/jvm/functions/Function1;)Lio/ktor/client/HttpClient;

    move-result-object v2

    invoke-static {p1, v2}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->access$setClient$p(Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;Lio/ktor/client/HttpClient;)V

    .line 65
    iget-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    invoke-static {p1}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->access$getClient$p(Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;)Lio/ktor/client/HttpClient;

    move-result-object p1

    if-eqz p1, :cond_86

    iget-object v2, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->$endPoint:Ljava/net/InetSocketAddress;

    new-instance v4, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$$ExternalSyntheticLambda2;-><init>(Ljava/net/InetSocketAddress;)V

    iput-object v1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->label:I

    invoke-static {p1, v4, p0}, Lio/ktor/client/plugins/websocket/BuildersKt;->webSocketSession(Lio/ktor/client/HttpClient;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_83

    return-object v0

    :cond_83
    :goto_83
    check-cast p1, Lio/ktor/client/plugins/websocket/DefaultClientWebSocketSession;

    goto :goto_87

    :cond_86
    move-object p1, v9

    .line 74
    :goto_87
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    invoke-static {v0, p1}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->access$setSession$p(Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;Lio/ktor/websocket/WebSocketSession;)V

    .line 76
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    invoke-static {v0}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->access$startConnectionMonitoring(Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;)V

    .line 78
    new-instance v4, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;

    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    invoke-direct {v4, p1, v0, v9}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;-><init>(Lio/ktor/client/plugins/websocket/DefaultClientWebSocketSession;Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 108
    invoke-static {}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object p1

    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->$endPoint:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->$endPoint:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v9, v7, v9}, Lin/dragonbra/javasteam/util/log/Logger;->debug$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 109
    iget-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/Connection;->onConnected()V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_ce} :catch_18

    goto :goto_de

    .line 111
    :goto_cf
    invoke-static {}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    const-string v1, "An error occurred setting up the web socket client"

    invoke-virtual {v0, v1, p1}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->disconnect(Z)V

    .line 114
    :goto_de
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

###### Class in.dragonbra.javasteam.networking.steam3.WebSocketConnection.AnonymousClass1.AnonymousClass2 (in.dragonbra.javasteam.networking.steam3.WebSocketConnection$connect$1$2)
.class final Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WebSocketConnection.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    value = "SMAP\nWebSocketConnection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebSocketConnection.kt\nin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2\n+ 2 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n1#1,185:1\n160#2:186\n94#2,3:187\n161#2,2:190\n101#2:192\n97#2,3:193\n*S KotlinDebug\n*F\n+ 1 WebSocketConnection.kt\nin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2\n*L\n80#1:186\n80#1:187,3\n80#1:190,2\n80#1:192\n80#1:193,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.networking.steam3.WebSocketConnection$connect$1$2"
    f = "WebSocketConnection.kt"
    l = {
        0xbe
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $session:Lio/ktor/client/plugins/websocket/DefaultClientWebSocketSession;

.field I$0:I

.field I$1:I

.field I$2:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;


# direct methods
.method public constructor <init>(Lio/ktor/client/plugins/websocket/DefaultClientWebSocketSession;Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/plugins/websocket/DefaultClientWebSocketSession;",
            "Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;->$session:Lio/ktor/client/plugins/websocket/DefaultClientWebSocketSession;

    iput-object p2, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

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
    new-instance p1, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;

    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;->$session:Lio/ktor/client/plugins/websocket/DefaultClientWebSocketSession;

    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    invoke-direct {p1, v0, p0, p2}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;-><init>(Lio/ktor/client/plugins/websocket/DefaultClientWebSocketSession;Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 18

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 78
    iget v2, v1, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;->label:I

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v2, :cond_3b

    if-ne v2, v3, :cond_33

    iget v2, v1, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;->I$2:I

    iget v7, v1, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;->I$1:I

    iget v8, v1, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;->I$0:I

    iget-object v9, v1, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v10, v1, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v11, v1, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v12, v1, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;->L$1:Ljava/lang/Object;

    check-cast v12, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    iget-object v13, v1, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_29
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2f

    move-object/from16 v14, p1

    goto :goto_76

    :catchall_2f
    move-exception v0

    move-object v2, v0

    goto/16 :goto_fa

    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 80
    :try_start_3e
    iget-object v2, v1, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;->$session:Lio/ktor/client/plugins/websocket/DefaultClientWebSocketSession;

    if-eqz v2, :cond_12d

    invoke-virtual {v2}, Lio/ktor/client/plugins/websocket/DefaultClientWebSocketSession;->getIncoming()Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v11

    if-eqz v11, :cond_12d

    iget-object v2, v1, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;
    :try_end_4a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3e .. :try_end_4a} :catch_f8
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4a} :catch_f6

    .line 161
    :try_start_4a
    invoke-interface {v11}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v7

    move-object v12, v2

    move v2, v5

    move v8, v2

    move-object v9, v7

    move-object v10, v11

    move-object v13, v10

    move v7, v8

    :goto_55
    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    iput-object v14, v1, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;->L$1:Ljava/lang/Object;

    iput-object v11, v1, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;->L$2:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    iput-object v14, v1, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;->L$4:Ljava/lang/Object;

    iput v8, v1, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;->I$0:I

    iput v7, v1, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;->I$1:I

    iput v2, v1, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;->I$2:I

    iput v3, v1, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;->label:I

    invoke-interface {v9, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v0, :cond_76

    return-object v0

    :cond_76
    :goto_76
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_f0

    invoke-interface {v9}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lio/ktor/websocket/Frame;

    .line 82
    instance-of v15, v14, Lio/ktor/websocket/Frame$Binary;

    if-eqz v15, :cond_a0

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v12, v3, v4}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->access$setLastFrameTime$p(Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;J)V

    .line 85
    new-instance v3, Lin/dragonbra/javasteam/networking/steam3/NetMsgEventArgs;

    invoke-static {v14}, Lio/ktor/websocket/FrameCommonKt;->readBytes(Lio/ktor/websocket/Frame;)[B

    move-result-object v4

    invoke-virtual {v12}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->getCurrentEndPoint()Ljava/net/InetSocketAddress;

    move-result-object v14

    invoke-direct {v3, v4, v14}, Lin/dragonbra/javasteam/networking/steam3/NetMsgEventArgs;-><init>([BLjava/net/InetSocketAddress;)V

    invoke-virtual {v12, v3}, Lin/dragonbra/javasteam/networking/steam3/Connection;->onNetMsgReceived(Lin/dragonbra/javasteam/networking/steam3/NetMsgEventArgs;)V

    goto :goto_e7

    .line 88
    :cond_a0
    instance-of v3, v14, Lio/ktor/websocket/Frame$Close;

    if-eqz v3, :cond_a8

    invoke-virtual {v12, v5}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->disconnect(Z)V

    goto :goto_e7

    .line 90
    :cond_a8
    instance-of v3, v14, Lio/ktor/websocket/Frame$Ping;
    :try_end_aa
    .catchall {:try_start_4a .. :try_end_aa} :catchall_2f

    const-string v4, "Received pong"

    if-eqz v3, :cond_b7

    :try_start_ae
    invoke-static {}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v3

    const/4 v14, 0x2

    invoke-static {v3, v4, v6, v14, v6}, Lin/dragonbra/javasteam/util/log/Logger;->debug$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_e7

    .line 93
    :cond_b7
    instance-of v3, v14, Lio/ktor/websocket/Frame$Pong;

    if-eqz v3, :cond_c4

    invoke-static {}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v3

    const/4 v14, 0x2

    invoke-static {v3, v4, v6, v14, v6}, Lin/dragonbra/javasteam/util/log/Logger;->debug$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_e7

    .line 96
    :cond_c4
    instance-of v3, v14, Lio/ktor/websocket/Frame$Text;

    if-eqz v3, :cond_ea

    invoke-static {}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v3

    check-cast v14, Lio/ktor/websocket/Frame$Text;

    invoke-static {v14}, Lio/ktor/websocket/FrameCommonKt;->readText(Lio/ktor/websocket/Frame$Text;)Ljava/lang/String;

    move-result-object v4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Received plain text "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v14, 0x2

    invoke-static {v3, v4, v6, v14, v6}, Lin/dragonbra/javasteam/util/log/Logger;->debug$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_e7
    const/4 v3, 0x1

    goto/16 :goto_55

    .line 81
    :cond_ea
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 162
    :cond_f0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_f2
    .catchall {:try_start_ae .. :try_end_f2} :catchall_2f

    .line 101
    :try_start_f2
    invoke-static {v11, v6}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V
    :try_end_f5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_f2 .. :try_end_f5} :catch_f8
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_f5} :catch_f6

    goto :goto_12d

    :catch_f6
    move-exception v0

    goto :goto_101

    :catch_f8
    move-exception v0

    goto :goto_110

    .line 99
    :goto_fa
    :try_start_fa
    throw v2
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_fb

    :catchall_fb
    move-exception v0

    move-object v3, v0

    .line 101
    :try_start_fd
    invoke-static {v11, v2}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw v3
    :try_end_101
    .catch Ljava/util/concurrent/CancellationException; {:try_start_fd .. :try_end_101} :catch_f8
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_101} :catch_f6

    .line 103
    :goto_101
    invoke-static {}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v2

    const-string v3, "An error occurred while receiving data"

    invoke-virtual {v2, v3, v0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    iget-object v0, v1, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$2;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    invoke-virtual {v0, v5}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->disconnect(Z)V

    goto :goto_12d

    .line 101
    :goto_110
    invoke-static {}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Websocket cancelling: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v1, v0, v6, v2, v6}, Lin/dragonbra/javasteam/util/log/Logger;->debug$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 106
    :cond_12d
    :goto_12d
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class in.dragonbra.javasteam.networking.steam3.WebSocketConnection$connect$1$$ExternalSyntheticLambda0 (in.dragonbra.javasteam.networking.steam3.WebSocketConnection$connect$1$$ExternalSyntheticLambda0)
.class public final synthetic Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Ljava/net/InetSocketAddress;


# direct methods
.method public synthetic constructor <init>(Ljava/net/InetSocketAddress;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$$ExternalSyntheticLambda0;->f$0:Ljava/net/InetSocketAddress;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$$ExternalSyntheticLambda0;->f$0:Ljava/net/InetSocketAddress;

    check-cast p1, Lio/ktor/http/URLBuilder;

    check-cast p2, Lio/ktor/http/URLBuilder;

    invoke-static {p0, p1, p2}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->$r8$lambda$IGDlsrYLq2sggqaVyw25R7q_yD4(Ljava/net/InetSocketAddress;Lio/ktor/http/URLBuilder;Lio/ktor/http/URLBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.networking.steam3.WebSocketConnection$connect$1$$ExternalSyntheticLambda1 (in.dragonbra.javasteam.networking.steam3.WebSocketConnection$connect$1$$ExternalSyntheticLambda1)
.class public final synthetic Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$$ExternalSyntheticLambda1;->f$0:I

    check-cast p1, Lio/ktor/client/HttpClientConfig;

    invoke-static {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->$r8$lambda$0LFoWMlYnWQMJxKK2RUifPGOjOY(ILio/ktor/client/HttpClientConfig;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.networking.steam3.WebSocketConnection$connect$1$$ExternalSyntheticLambda2 (in.dragonbra.javasteam.networking.steam3.WebSocketConnection$connect$1$$ExternalSyntheticLambda2)
.class public final synthetic Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/net/InetSocketAddress;


# direct methods
.method public synthetic constructor <init>(Ljava/net/InetSocketAddress;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$$ExternalSyntheticLambda2;->f$0:Ljava/net/InetSocketAddress;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$$ExternalSyntheticLambda2;->f$0:Ljava/net/InetSocketAddress;

    check-cast p1, Lio/ktor/client/request/HttpRequestBuilder;

    invoke-static {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->$r8$lambda$BjhQBhSZvUdXOCuwsbKRg6e0smM(Ljava/net/InetSocketAddress;Lio/ktor/client/request/HttpRequestBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.networking.steam3.WebSocketConnection$connect$1$$ExternalSyntheticLambda3 (in.dragonbra.javasteam.networking.steam3.WebSocketConnection$connect$1$$ExternalSyntheticLambda3)
.class public final synthetic Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$$ExternalSyntheticLambda3;->f$0:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1$$ExternalSyntheticLambda3;->f$0:I

    check-cast p1, Lio/ktor/client/plugins/websocket/WebSockets$Config;

    invoke-static {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$connect$1;->$r8$lambda$dNYQRZgMCkS8KfaGg0W2lrz-S98(ILio/ktor/client/plugins/websocket/WebSockets$Config;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.networking.steam3.WebSocketConnection.C00031 (in.dragonbra.javasteam.networking.steam3.WebSocketConnection$disconnect$1)
.class final Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$disconnect$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WebSocketConnection.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->disconnect(Z)V
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
    c = "in.dragonbra.javasteam.networking.steam3.WebSocketConnection$disconnect$1"
    f = "WebSocketConnection.kt"
    l = {
        0x79
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $userInitiated:Z

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;ZLkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$disconnect$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$disconnect$1;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    iput-boolean p2, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$disconnect$1;->$userInitiated:Z

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
    new-instance p1, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$disconnect$1;

    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$disconnect$1;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    iget-boolean p0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$disconnect$1;->$userInitiated:Z

    invoke-direct {p1, v0, p0, p2}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$disconnect$1;-><init>(Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$disconnect$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$disconnect$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$disconnect$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$disconnect$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 119
    iget v1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$disconnect$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1a

    if-ne v1, v2, :cond_12

    :try_start_c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_10

    goto :goto_2e

    :catchall_10
    move-exception p1

    goto :goto_56

    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 121
    :try_start_1d
    iget-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$disconnect$1;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    invoke-static {p1}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->access$getSession$p(Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;)Lio/ktor/websocket/WebSocketSession;

    move-result-object p1

    if-eqz p1, :cond_2e

    iput v2, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$disconnect$1;->label:I

    invoke-static {p1, v3, p0, v2, v3}, Lio/ktor/websocket/WebSocketSessionKt;->close$default(Lio/ktor/websocket/WebSocketSession;Lio/ktor/websocket/CloseReason;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2e

    return-object v0

    .line 122
    :cond_2e
    :goto_2e
    iget-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$disconnect$1;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    invoke-static {p1}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->access$getClient$p(Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;)Lio/ktor/client/HttpClient;

    move-result-object p1

    if-eqz p1, :cond_39

    invoke-virtual {p1}, Lio/ktor/client/HttpClient;->close()V
    :try_end_39
    .catchall {:try_start_1d .. :try_end_39} :catchall_10

    .line 124
    :cond_39
    iget-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$disconnect$1;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    invoke-static {p1, v3}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->access$setSession$p(Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;Lio/ktor/websocket/WebSocketSession;)V

    .line 125
    iget-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$disconnect$1;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    invoke-static {p1, v3}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->access$setClient$p(Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;Lio/ktor/client/HttpClient;)V

    .line 127
    iget-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$disconnect$1;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    invoke-static {p1}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->access$getJob$p(Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;)Lkotlinx/coroutines/Job;

    move-result-object p1

    invoke-static {p1, v3, v2, v3}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 130
    iget-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$disconnect$1;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    iget-boolean p0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$disconnect$1;->$userInitiated:Z

    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/networking/steam3/Connection;->onDisconnected(Z)V

    .line 131
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 124
    :goto_56
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$disconnect$1;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    invoke-static {v0, v3}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->access$setSession$p(Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;Lio/ktor/websocket/WebSocketSession;)V

    .line 125
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$disconnect$1;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    invoke-static {v0, v3}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->access$setClient$p(Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;Lio/ktor/client/HttpClient;)V

    .line 127
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$disconnect$1;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    invoke-static {p0}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->access$getJob$p(Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;)Lkotlinx/coroutines/Job;

    move-result-object p0

    invoke-static {p0, v3, v2, v3}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    throw p1
.end method

###### Class in.dragonbra.javasteam.networking.steam3.WebSocketConnection.C00041 (in.dragonbra.javasteam.networking.steam3.WebSocketConnection$send$1)
.class final Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$send$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WebSocketConnection.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->send([B)V
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
    c = "in.dragonbra.javasteam.networking.steam3.WebSocketConnection$send$1"
    f = "WebSocketConnection.kt"
    l = {
        0x8a
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $data:[B

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;


# direct methods
.method public constructor <init>([BLin/dragonbra/javasteam/networking/steam3/WebSocketConnection;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$send$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$send$1;->$data:[B

    iput-object p2, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$send$1;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

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
    new-instance p1, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$send$1;

    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$send$1;->$data:[B

    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$send$1;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    invoke-direct {p1, v0, p0, p2}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$send$1;-><init>([BLin/dragonbra/javasteam/networking/steam3/WebSocketConnection;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$send$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$send$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$send$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$send$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 135
    iget v1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$send$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    if-ne v1, v2, :cond_15

    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$send$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lio/ktor/websocket/Frame$Binary;

    :try_start_f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_13

    goto :goto_4d

    :catch_13
    move-exception p1

    goto :goto_3e

    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 137
    :try_start_20
    new-instance p1, Lio/ktor/websocket/Frame$Binary;

    iget-object v1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$send$1;->$data:[B

    invoke-direct {p1, v2, v1}, Lio/ktor/websocket/Frame$Binary;-><init>(Z[B)V

    .line 138
    iget-object v1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$send$1;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    invoke-static {v1}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->access$getSession$p(Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;)Lio/ktor/websocket/WebSocketSession;

    move-result-object v1

    if-eqz v1, :cond_4d

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$send$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$send$1;->label:I

    invoke-interface {v1, p1, p0}, Lio/ktor/websocket/WebSocketSession;->send(Lio/ktor/websocket/Frame;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3b} :catch_13

    if-ne p0, v0, :cond_4d

    return-object v0

    .line 140
    :goto_3e
    invoke-static {}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    const-string v1, "An error occurred while sending data"

    invoke-virtual {v0, v1, p1}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$send$1;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->disconnect(Z)V

    .line 143
    :cond_4d
    :goto_4d
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

###### Class in.dragonbra.javasteam.networking.steam3.WebSocketConnection.C00051 (in.dragonbra.javasteam.networking.steam3.WebSocketConnection$startConnectionMonitoring$1)
.class final Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$startConnectionMonitoring$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WebSocketConnection.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->startConnectionMonitoring()V
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
    c = "in.dragonbra.javasteam.networking.steam3.WebSocketConnection$startConnectionMonitoring$1"
    f = "WebSocketConnection.kt"
    l = {
        0xb4
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$startConnectionMonitoring$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$startConnectionMonitoring$1;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

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
    new-instance v0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$startConnectionMonitoring$1;

    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$startConnectionMonitoring$1;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    invoke-direct {v0, p0, p2}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$startConnectionMonitoring$1;-><init>(Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$startConnectionMonitoring$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$startConnectionMonitoring$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$startConnectionMonitoring$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$startConnectionMonitoring$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$startConnectionMonitoring$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$startConnectionMonitoring$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 156
    iget v2, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$startConnectionMonitoring$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_18

    if-ne v2, v3, :cond_10

    goto :goto_18

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    :goto_18
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 157
    :cond_1b
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p1

    if-eqz p1, :cond_ad

    .line 158
    iget-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$startConnectionMonitoring$1;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    invoke-static {p1}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->access$getClient$p(Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;)Lio/ktor/client/HttpClient;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz p1, :cond_33

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p1

    if-nez p1, :cond_33

    goto :goto_41

    :cond_33
    iget-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$startConnectionMonitoring$1;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    invoke-static {p1}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->access$getSession$p(Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;)Lio/ktor/websocket/WebSocketSession;

    move-result-object p1

    if-eqz p1, :cond_4f

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p1

    if-nez p1, :cond_4f

    .line 159
    :goto_41
    invoke-static {}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object p1

    const-string v6, "Client or Session is no longer active"

    invoke-static {p1, v6, v5, v4, v5}, Lin/dragonbra/javasteam/util/log/Logger;->error$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 160
    iget-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$startConnectionMonitoring$1;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    invoke-virtual {p1, v2}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->disconnect(Z)V

    .line 163
    :cond_4f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$startConnectionMonitoring$1;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    invoke-static {p1}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->access$getLastFrameTime$p(Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x7530

    cmp-long p1, v6, v8

    if-lez p1, :cond_6f

    .line 168
    invoke-static {}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object p1

    const-string v0, "Watchdog: No response for 30 seconds. Disconnecting from steam"

    invoke-static {p1, v0, v5, v4, v5}, Lin/dragonbra/javasteam/util/log/Logger;->error$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 169
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$startConnectionMonitoring$1;->this$0:Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    invoke-virtual {p0, v2}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->disconnect(Z)V

    goto :goto_ad

    :cond_6f
    const-wide/16 v8, 0x61a8

    cmp-long p1, v6, v8

    if-lez p1, :cond_7f

    .line 173
    invoke-static {}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object p1

    const-string v2, "Watchdog: No response for 25 seconds"

    invoke-static {p1, v2, v5, v4, v5}, Lin/dragonbra/javasteam/util/log/Logger;->debug$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_9e

    :cond_7f
    const-wide/16 v8, 0x4e20

    cmp-long p1, v6, v8

    if-lez p1, :cond_8f

    .line 175
    invoke-static {}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object p1

    const-string v2, "Watchdog: No response for 20 seconds"

    invoke-static {p1, v2, v5, v4, v5}, Lin/dragonbra/javasteam/util/log/Logger;->debug$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_9e

    :cond_8f
    const-wide/16 v8, 0x3a98

    cmp-long p1, v6, v8

    if-lez p1, :cond_9e

    .line 177
    invoke-static {}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;->access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object p1

    const-string v2, "Watchdog: No response for 15 seconds"

    invoke-static {p1, v2, v5, v4, v5}, Lin/dragonbra/javasteam/util/log/Logger;->debug$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 180
    :cond_9e
    :goto_9e
    iput-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$startConnectionMonitoring$1;->L$0:Ljava/lang/Object;

    iput-wide v6, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$startConnectionMonitoring$1;->J$0:J

    iput v3, p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection$startConnectionMonitoring$1;->label:I

    const-wide/16 v4, 0x1388

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_1b

    return-object v1

    .line 182
    :cond_ad
    :goto_ad
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
