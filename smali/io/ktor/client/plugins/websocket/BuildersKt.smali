###### Class io.ktor.client.plugins.websocket.BuildersKt (io.ktor.client.plugins.websocket.BuildersKt)
.class public final Lio/ktor/client/plugins/websocket/BuildersKt;
.super Ljava/lang/Object;
.source "builders.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nbuilders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 builders.kt\nio/ktor/client/plugins/websocket/BuildersKt\n+ 2 builders.kt\nio/ktor/client/request/BuildersKt\n+ 3 HttpStatement.kt\nio/ktor/client/statement/HttpStatement\n+ 4 HttpTimeout.kt\nio/ktor/client/plugins/HttpTimeoutKt\n+ 5 HttpClientCall.kt\nio/ktor/client/call/HttpClientCallKt\n+ 6 Type.kt\nio/ktor/util/reflect/TypeKt\n*L\n1#1,265:1\n93#2:266\n52#2:267\n93#2:268\n52#2:269\n132#3:270\n133#3,3:273\n136#3,3:286\n308#4,2:271\n310#4,2:289\n162#5:276\n69#6:277\n84#6,8:278\n*S KotlinDebug\n*F\n+ 1 builders.kt\nio/ktor/client/plugins/websocket/BuildersKt\n*L\n36#1:266\n36#1:267\n105#1:268\n105#1:269\n112#1:270\n112#1:273,3\n112#1:286,3\n112#1:271,2\n112#1:289,2\n112#1:276\n112#1:277\n112#1:278,8\n*E\n"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$zmxB96NQ4uMtOzLa3HoWJzb8RwM(Lio/ktor/http/URLBuilder;Lio/ktor/http/URLBuilder;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/ktor/client/plugins/websocket/BuildersKt;->webSocketSession$lambda$0$0(Lio/ktor/http/URLBuilder;Lio/ktor/http/URLBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final webSocketSession(Lio/ktor/client/HttpClient;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/HttpClient;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/plugins/websocket/DefaultClientWebSocketSession;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 34
    sget-object v0, Lio/ktor/client/plugins/websocket/WebSockets;->Plugin:Lio/ktor/client/plugins/websocket/WebSockets$Plugin;

    invoke-static {p0, v0}, Lio/ktor/client/plugins/HttpClientPluginKt;->plugin(Lio/ktor/client/HttpClient;Lio/ktor/client/plugins/HttpClientPlugin;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 35
    invoke-static {v1, v0, v1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    .line 93
    new-instance v2, Lio/ktor/client/request/HttpRequestBuilder;

    invoke-direct {v2}, Lio/ktor/client/request/HttpRequestBuilder;-><init>()V

    .line 37
    new-instance v3, Lio/ktor/client/plugins/websocket/BuildersKt$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lio/ktor/client/plugins/websocket/BuildersKt$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, v3}, Lio/ktor/client/request/HttpRequestBuilder;->url(Lkotlin/jvm/functions/Function2;)V

    .line 41
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance p1, Lio/ktor/client/statement/HttpStatement;

    invoke-direct {p1, v2, p0}, Lio/ktor/client/statement/HttpStatement;-><init>(Lio/ktor/client/request/HttpRequestBuilder;Lio/ktor/client/HttpClient;)V

    .line 44
    new-instance v6, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;

    invoke-direct {v6, p1, v0, v1}, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;-><init>(Lio/ktor/client/statement/HttpStatement;Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 62
    invoke-interface {v0, p2}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final webSocketSession$lambda$0$0(Lio/ktor/http/URLBuilder;Lio/ktor/http/URLBuilder;)Lkotlin/Unit;
    .registers 3

    const-string v0, "$this$url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object p1, Lio/ktor/http/URLProtocol;->Companion:Lio/ktor/http/URLProtocol$Companion;

    invoke-virtual {p1}, Lio/ktor/http/URLProtocol$Companion;->getWS()Lio/ktor/http/URLProtocol;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/ktor/http/URLBuilder;->setProtocol(Lio/ktor/http/URLProtocol;)V

    .line 39
    invoke-virtual {p0}, Lio/ktor/http/URLBuilder;->getProtocol()Lio/ktor/http/URLProtocol;

    move-result-object p1

    invoke-virtual {p1}, Lio/ktor/http/URLProtocol;->getDefaultPort()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/ktor/http/URLBuilder;->setPort(I)V

    .line 40
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

###### Class io.ktor.client.plugins.websocket.BuildersKt.AnonymousClass2 (io.ktor.client.plugins.websocket.BuildersKt$webSocketSession$2)
.class public final Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "builders.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/websocket/BuildersKt;->webSocketSession(Lio/ktor/client/HttpClient;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nbuilders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 builders.kt\nio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2\n+ 2 HttpStatement.kt\nio/ktor/client/statement/HttpStatement\n+ 3 HttpTimeout.kt\nio/ktor/client/plugins/HttpTimeoutKt\n+ 4 HttpClientCall.kt\nio/ktor/client/call/HttpClientCallKt\n+ 5 Type.kt\nio/ktor/util/reflect/TypeKt\n*L\n1#1,265:1\n132#2:266\n133#2,3:269\n136#2,3:282\n308#3,2:267\n310#3,2:285\n162#4:272\n69#5:273\n84#5,8:274\n*S KotlinDebug\n*F\n+ 1 builders.kt\nio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2\n*L\n46#1:266\n46#1:269,3\n46#1:282,3\n46#1:267,2\n46#1:285,2\n46#1:272\n46#1:273\n46#1:274,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.client.plugins.websocket.BuildersKt$webSocketSession$2"
    f = "builders.kt"
    l = {
        0x10d,
        0x110,
        0x38,
        0x11c,
        0x11c
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public final synthetic $sessionDeferred:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lio/ktor/client/plugins/websocket/DefaultClientWebSocketSession;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $statement:Lio/ktor/client/statement/HttpStatement;

.field public I$0:I

.field public I$1:I

.field public I$2:I

.field public I$3:I

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public L$5:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(Lio/ktor/client/statement/HttpStatement;Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/statement/HttpStatement;",
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lio/ktor/client/plugins/websocket/DefaultClientWebSocketSession;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->$statement:Lio/ktor/client/statement/HttpStatement;

    iput-object p2, p0, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->$sessionDeferred:Lkotlinx/coroutines/CompletableDeferred;

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
    new-instance p1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;

    iget-object v0, p0, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->$statement:Lio/ktor/client/statement/HttpStatement;

    iget-object p0, p0, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->$sessionDeferred:Lkotlinx/coroutines/CompletableDeferred;

    invoke-direct {p1, v0, p0, p2}, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;-><init>(Lio/ktor/client/statement/HttpStatement;Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 19

    move-object/from16 v1, p0

    const-class v0, Lio/ktor/client/plugins/websocket/DefaultClientWebSocketSession;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 44
    iget v3, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->label:I

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v3, :cond_bf

    if-eq v3, v8, :cond_a4

    if-eq v3, v7, :cond_77

    if-eq v3, v6, :cond_51

    if-eq v3, v5, :cond_3c

    if-eq v3, v4, :cond_25

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    iget-object v0, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    iget-object v2, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$1:Ljava/lang/Object;

    check-cast v2, Lio/ktor/client/statement/HttpResponse;

    iget-object v2, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/client/statement/HttpStatement;

    :try_start_31
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_34
    .catch Ljava/util/concurrent/CancellationException; {:try_start_31 .. :try_end_34} :catch_39
    .catchall {:try_start_31 .. :try_end_34} :catchall_36

    goto/16 :goto_1bd

    :catchall_36
    move-exception v0

    goto/16 :goto_1c3

    :catch_39
    move-exception v0

    goto/16 :goto_1be

    :cond_3c
    iget-object v0, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$3:Ljava/lang/Object;

    check-cast v0, Lio/ktor/client/plugins/websocket/DefaultClientWebSocketSession;

    iget-object v0, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$2:Ljava/lang/Object;

    check-cast v0, Lkotlin/Unit;

    iget-object v0, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$1:Ljava/lang/Object;

    check-cast v0, Lio/ktor/client/statement/HttpResponse;

    iget-object v0, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lio/ktor/client/statement/HttpStatement;

    :try_start_4c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4f
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4c .. :try_end_4f} :catch_39
    .catchall {:try_start_4c .. :try_end_4f} :catchall_36

    goto/16 :goto_1c8

    :cond_51
    iget v3, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->I$2:I

    iget v6, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->I$1:I

    iget v7, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->I$0:I

    iget-object v0, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$5:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CompletableDeferred;

    iget-object v0, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$4:Ljava/lang/Object;

    check-cast v0, Lio/ktor/client/plugins/websocket/DefaultClientWebSocketSession;

    iget-object v0, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$3:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    iget-object v0, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$2:Ljava/lang/Object;

    check-cast v0, Lio/ktor/client/plugins/websocket/DefaultClientWebSocketSession;

    iget-object v8, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$1:Ljava/lang/Object;

    check-cast v8, Lio/ktor/client/statement/HttpResponse;

    iget-object v9, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$0:Ljava/lang/Object;

    check-cast v9, Lio/ktor/client/statement/HttpStatement;

    :try_start_6f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_74

    goto/16 :goto_15e

    :catchall_74
    move-exception v0

    goto/16 :goto_199

    :cond_77
    iget v3, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->I$2:I

    iget v7, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->I$1:I

    iget v11, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->I$0:I

    iget-object v0, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$4:Ljava/lang/Object;

    check-cast v0, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;

    iget-object v0, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$3:Ljava/lang/Object;

    check-cast v0, Lio/ktor/client/statement/HttpResponse;

    iget-object v0, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$2:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lio/ktor/client/statement/HttpResponse;

    iget-object v0, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CompletableDeferred;

    iget-object v13, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$0:Ljava/lang/Object;

    check-cast v13, Lio/ktor/client/statement/HttpStatement;

    :try_start_92
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_9d

    move v6, v7

    move v7, v11

    move-object v15, v13

    move-object v11, v0

    move-object/from16 v0, p1

    goto/16 :goto_117

    :catchall_9d
    move-exception v0

    move v6, v7

    move v7, v11

    move-object v8, v12

    move-object v9, v13

    goto/16 :goto_199

    :cond_a4
    iget v3, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->I$2:I

    iget v11, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->I$1:I

    iget v12, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->I$0:I

    iget-object v13, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$1:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/CompletableDeferred;

    iget-object v14, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$0:Ljava/lang/Object;

    check-cast v14, Lio/ktor/client/statement/HttpStatement;

    :try_start_b2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_b5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_b2 .. :try_end_b5} :catch_39
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_36

    move-object v15, v14

    move v14, v12

    move-object/from16 v12, p1

    move-object/from16 v16, v13

    move v13, v11

    move-object/from16 v11, v16

    goto :goto_dd

    :cond_bf
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    :try_start_c2
    iget-object v3, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->$statement:Lio/ktor/client/statement/HttpStatement;

    iget-object v11, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->$sessionDeferred:Lkotlinx/coroutines/CompletableDeferred;
    :try_end_c6
    .catchall {:try_start_c2 .. :try_end_c6} :catchall_36

    .line 133
    :try_start_c6
    iput-object v3, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$1:Ljava/lang/Object;

    iput v9, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->I$0:I

    iput v9, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->I$1:I

    iput v9, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->I$2:I

    iput v8, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->label:I

    invoke-virtual {v3, v1}, Lio/ktor/client/statement/HttpStatement;->fetchStreamingResponse(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v2, :cond_d9

    return-object v2

    :cond_d9
    move-object v15, v3

    move v3, v9

    move v13, v3

    move v14, v13

    .line 44
    :goto_dd
    check-cast v12, Lio/ktor/client/statement/HttpResponse;
    :try_end_df
    .catch Ljava/util/concurrent/CancellationException; {:try_start_c6 .. :try_end_df} :catch_39
    .catchall {:try_start_c6 .. :try_end_df} :catchall_36

    .line 162
    :try_start_df
    invoke-virtual {v12}, Lio/ktor/client/statement/HttpResponse;->getCall()Lio/ktor/client/call/HttpClientCall;

    move-result-object v4

    .line 69
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5
    :try_end_e7
    .catchall {:try_start_df .. :try_end_e7} :catchall_194

    .line 88
    :try_start_e7
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v0
    :try_end_eb
    .catchall {:try_start_e7 .. :try_end_eb} :catchall_ec

    goto :goto_ed

    :catchall_ec
    move-object v0, v10

    .line 69
    :goto_ed
    :try_start_ed
    new-instance v6, Lio/ktor/util/reflect/TypeInfo;

    invoke-direct {v6, v5, v0}, Lio/ktor/util/reflect/TypeInfo;-><init>(Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)V

    .line 162
    iput-object v15, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$1:Ljava/lang/Object;

    iput-object v12, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$2:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$3:Ljava/lang/Object;

    invoke-static/range {p0 .. p0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$4:Ljava/lang/Object;

    iput v14, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->I$0:I

    iput v13, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->I$1:I

    iput v3, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->I$2:I

    iput v9, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->I$3:I

    iput v7, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->label:I

    invoke-virtual {v4, v6, v1}, Lio/ktor/client/call/HttpClientCall;->bodyNullable(Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_112
    .catchall {:try_start_ed .. :try_end_112} :catchall_194

    if-ne v0, v2, :cond_115

    return-object v2

    :cond_115
    move v6, v13

    move v7, v14

    :goto_117
    if-eqz v0, :cond_18c

    :try_start_119
    check-cast v0, Lio/ktor/client/plugins/websocket/DefaultClientWebSocketSession;

    .line 47
    invoke-static {v10, v8, v10}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v4

    .line 48
    invoke-interface {v11, v0}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {v0}, Lio/ktor/client/plugins/websocket/DefaultClientWebSocketSession;->getOutgoing()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v5

    new-instance v8, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2$1$1;

    invoke-direct {v8, v4}, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2$1$1;-><init>(Lkotlinx/coroutines/CompletableDeferred;)V

    invoke-interface {v5, v8}, Lkotlinx/coroutines/channels/SendChannel;->invokeOnClose(Lkotlin/jvm/functions/Function1;)V

    .line 56
    iput-object v15, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$1:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$2:Ljava/lang/Object;

    invoke-static/range {p0 .. p0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$3:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$4:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$5:Ljava/lang/Object;

    iput v7, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->I$0:I

    iput v6, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->I$1:I

    iput v3, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->I$2:I

    iput v9, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->I$3:I

    const/4 v5, 0x3

    iput v5, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->label:I

    invoke-interface {v4, v1}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_159
    .catchall {:try_start_119 .. :try_end_159} :catchall_188

    if-ne v4, v2, :cond_15c

    return-object v2

    :cond_15c
    move-object v8, v12

    move-object v9, v15

    .line 57
    :goto_15e
    :try_start_15e
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_160
    .catchall {:try_start_15e .. :try_end_160} :catchall_74

    .line 138
    :try_start_160
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$0:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$1:Ljava/lang/Object;

    iput-object v4, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$2:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$3:Ljava/lang/Object;

    iput-object v10, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$4:Ljava/lang/Object;

    iput-object v10, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$5:Ljava/lang/Object;

    iput v7, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->I$0:I

    iput v6, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->I$1:I

    iput v3, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->I$2:I

    const/4 v0, 0x4

    iput v0, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->label:I

    invoke-virtual {v9, v8, v1}, Lio/ktor/client/statement/HttpStatement;->cleanup(Lio/ktor/client/statement/HttpResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_185
    .catch Ljava/util/concurrent/CancellationException; {:try_start_160 .. :try_end_185} :catch_39
    .catchall {:try_start_160 .. :try_end_185} :catchall_36

    if-ne v0, v2, :cond_1c8

    return-object v2

    :catchall_188
    move-exception v0

    move-object v8, v12

    :goto_18a
    move-object v9, v15

    goto :goto_199

    .line 162
    :cond_18c
    :try_start_18c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v4, "null cannot be cast to non-null type io.ktor.client.plugins.websocket.DefaultClientWebSocketSession"

    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_194
    .catchall {:try_start_18c .. :try_end_194} :catchall_188

    :catchall_194
    move-exception v0

    move-object v8, v12

    move v6, v13

    move v7, v14

    goto :goto_18a

    .line 138
    :goto_199
    :try_start_199
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$0:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$1:Ljava/lang/Object;

    iput-object v0, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$2:Ljava/lang/Object;

    iput-object v10, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$3:Ljava/lang/Object;

    iput-object v10, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$4:Ljava/lang/Object;

    iput-object v10, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->L$5:Ljava/lang/Object;

    iput v7, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->I$0:I

    iput v6, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->I$1:I

    iput v3, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->I$2:I

    const/4 v3, 0x5

    iput v3, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->label:I

    invoke-virtual {v9, v8, v1}, Lio/ktor/client/statement/HttpStatement;->cleanup(Lio/ktor/client/statement/HttpResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1bd

    return-object v2

    .line 310
    :cond_1bd
    :goto_1bd
    throw v0
    :try_end_1be
    .catch Ljava/util/concurrent/CancellationException; {:try_start_199 .. :try_end_1be} :catch_39
    .catchall {:try_start_199 .. :try_end_1be} :catchall_36

    .line 311
    :goto_1be
    :try_start_1be
    invoke-static {v0}, Lio/ktor/client/utils/ExceptionUtilsJvmKt;->unwrapCancellationException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
    :try_end_1c3
    .catchall {:try_start_1be .. :try_end_1c3} :catchall_36

    .line 59
    :goto_1c3
    iget-object v1, v1, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->$sessionDeferred:Lkotlinx/coroutines/CompletableDeferred;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 61
    :cond_1c8
    :goto_1c8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.ktor.client.plugins.websocket.BuildersKt$webSocketSession$2$1$1 (io.ktor.client.plugins.websocket.BuildersKt$webSocketSession$2$1$1)
.class public final Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2$1$1;
.super Ljava/lang/Object;
.source "builders.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $sessionCompleted:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CompletableDeferred;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2$1$1;->$sessionCompleted:Lkotlinx/coroutines/CompletableDeferred;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 49
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2$1$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .registers 2

    if-eqz p1, :cond_8

    .line 51
    iget-object p0, p0, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2$1$1;->$sessionCompleted:Lkotlinx/coroutines/CompletableDeferred;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_f

    .line 53
    :cond_8
    iget-object p0, p0, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$2$1$1;->$sessionCompleted:Lkotlinx/coroutines/CompletableDeferred;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    :goto_f
    return-void
.end method

###### Class io.ktor.client.plugins.websocket.BuildersKt$$ExternalSyntheticLambda0 (io.ktor.client.plugins.websocket.BuildersKt$$ExternalSyntheticLambda0)
.class public final synthetic Lio/ktor/client/plugins/websocket/BuildersKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lio/ktor/http/URLBuilder;

    check-cast p2, Lio/ktor/http/URLBuilder;

    invoke-static {p1, p2}, Lio/ktor/client/plugins/websocket/BuildersKt;->$r8$lambda$zmxB96NQ4uMtOzLa3HoWJzb8RwM(Lio/ktor/http/URLBuilder;Lio/ktor/http/URLBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
