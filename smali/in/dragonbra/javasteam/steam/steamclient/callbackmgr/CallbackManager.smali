###### Class in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackManager (in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackManager)
.class public final Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;
.super Ljava/lang/Object;
.source "CallbackManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCallbackManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CallbackManager.kt\nin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,288:1\n1869#2,2:289\n*S KotlinDebug\n*F\n+ 1 CallbackManager.kt\nin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager\n*L\n281#1:289,2\n*E\n"
.end annotation


# instance fields
.field private final registeredCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackBase;",
            ">;"
        }
    .end annotation
.end field

.field private final steamClient:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

.field private final steamUnifiedMessages:Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;


# direct methods
.method public static synthetic $r8$lambda$MCTUI4ZW9V1QX0jyOlXlc1NegDg(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodNotification;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->subscribeServiceNotification$lambda$0(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodNotification;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oqX_nmAPUnQHr9xhnPt6TF7tfE4(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->subscribeServiceResponse$lambda$0(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;)V

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;)V
    .registers 4

    const-string v0, "steamClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->steamClient:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "newSetFromMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->registeredCallbacks:Ljava/util/Set;

    .line 27
    const-class v0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getHandler(Ljava/lang/Class;)Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->steamUnifiedMessages:Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    return-void
.end method

.method private final handle(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V
    .registers 5

    .line 277
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->registeredCallbacks:Ljava/util/Set;

    .line 278
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1869
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackBase;

    .line 282
    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackBase;->getCallbackType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 283
    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackBase;->run(Ljava/lang/Object;)V

    goto :goto_a

    :cond_24
    return-void
.end method

.method public static synthetic subscribe$default(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;Lin/dragonbra/javasteam/types/JobID;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/io/Closeable;
    .registers 5

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_6

    .line 242
    sget-object p1, Lin/dragonbra/javasteam/types/JobID;->INVALID:Lin/dragonbra/javasteam/types/JobID;

    .line 241
    :cond_6
    const-string p3, "jobID"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "callbackFunc"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x4

    .line 244
    const-string p4, "TCallback"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    new-instance p3, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$sam$i$in_dragonbra_javasteam_util_compat_Consumer$0;

    invoke-direct {p3, p2}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$sam$i$in_dragonbra_javasteam_util_compat_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    const-class p2, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;

    invoke-virtual {p0, p2, p1, p3}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->subscribe(Ljava/lang/Class;Lin/dragonbra/javasteam/types/JobID;Lin/dragonbra/javasteam/util/compat/Consumer;)Ljava/io/Closeable;

    move-result-object p0

    return-object p0
.end method

.method private static final subscribeServiceNotification$lambda$0(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodNotification;)V
    .registers 4

    .line 163
    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodNotification;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 164
    const-string p0, "null cannot be cast to non-null type in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodNotification<TNotification of in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackManager.subscribeServiceNotification>"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lin/dragonbra/javasteam/util/compat/Consumer;->accept(Ljava/lang/Object;)V

    :cond_16
    return-void
.end method

.method private static final subscribeServiceResponse$lambda$0(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;)V
    .registers 4

    .line 224
    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 225
    const-string p0, "null cannot be cast to non-null type in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodResponse<TNotification of in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackManager.subscribeServiceResponse>"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lin/dragonbra/javasteam/util/compat/Consumer;->accept(Ljava/lang/Object;)V

    :cond_16
    return-void
.end method


# virtual methods
.method public final register$javasteam(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackBase;)V
    .registers 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->registeredCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 269
    :cond_e
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->registeredCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final runCallbacks()Z
    .registers 2

    .line 36
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->steamClient:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getCallback()Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 38
    :cond_a
    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->handle(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final runWaitAllCallbacks(J)V
    .registers 3

    .line 65
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->runWaitCallbacks(J)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 69
    :cond_7
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->runCallbacks()Z

    move-result p1

    if-nez p1, :cond_7

    return-void
.end method

.method public final runWaitCallbackAsync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$runWaitCallbackAsync$1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$runWaitCallbackAsync$1;

    iget v1, v0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$runWaitCallbackAsync$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$runWaitCallbackAsync$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$runWaitCallbackAsync$1;

    invoke-direct {v0, p0, p1}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$runWaitCallbackAsync$1;-><init>(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$runWaitCallbackAsync$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 87
    iget v2, v0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$runWaitCallbackAsync$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3f

    :cond_29
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 88
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->steamClient:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    iput v3, v0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$runWaitCallbackAsync$1;->label:I

    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->waitForCallbackAsync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3f

    return-object v1

    .line 87
    :cond_3f
    :goto_3f
    check-cast p1, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;

    .line 89
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->handle(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V

    .line 90
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final runWaitCallbacks()V
    .registers 2

    .line 79
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->steamClient:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->waitForCallback()Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;

    move-result-object v0

    .line 80
    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->handle(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V

    return-void
.end method

.method public final runWaitCallbacks(J)Z
    .registers 4

    .line 51
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->steamClient:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    invoke-virtual {v0, p1, p2}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->waitForCallback(J)Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p0, 0x0

    return p0

    .line 53
    :cond_a
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->handle(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic subscribe(Lin/dragonbra/javasteam/types/JobID;Lkotlin/jvm/functions/Function1;)Ljava/io/Closeable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TCallback:",
            "Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;",
            ">(",
            "Lin/dragonbra/javasteam/types/JobID;",
            "Lkotlin/jvm/functions/Function1<",
            "-TTCallback;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/io/Closeable;"
        }
    .end annotation

    const-string v0, "jobID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackFunc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 244
    const-string v1, "TCallback"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    new-instance v0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$sam$i$in_dragonbra_javasteam_util_compat_Consumer$0;

    invoke-direct {v0, p2}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$sam$i$in_dragonbra_javasteam_util_compat_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    const-class p2, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;

    invoke-virtual {p0, p2, p1, v0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->subscribe(Ljava/lang/Class;Lin/dragonbra/javasteam/types/JobID;Lin/dragonbra/javasteam/util/compat/Consumer;)Ljava/io/Closeable;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic subscribe(Lin/dragonbra/javasteam/util/compat/Consumer;)Ljava/io/Closeable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TCallback:",
            "Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;",
            ">(",
            "Lin/dragonbra/javasteam/util/compat/Consumer<",
            "TTCallback;>;)",
            "Ljava/io/Closeable;"
        }
    .end annotation

    const-string v0, "callbackFunc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 249
    const-string v1, "TCallback"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;

    sget-object v1, Lin/dragonbra/javasteam/types/JobID;->INVALID:Lin/dragonbra/javasteam/types/JobID;

    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->subscribe(Ljava/lang/Class;Lin/dragonbra/javasteam/types/JobID;Lin/dragonbra/javasteam/util/compat/Consumer;)Ljava/io/Closeable;

    move-result-object p0

    return-object p0
.end method

.method public final subscribe(Ljava/lang/Class;Lin/dragonbra/javasteam/types/JobID;Lin/dragonbra/javasteam/util/compat/Consumer;)Ljava/io/Closeable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TCallback:",
            "Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;",
            ">(",
            "Ljava/lang/Class<",
            "+TTCallback;>;",
            "Lin/dragonbra/javasteam/types/JobID;",
            "Lin/dragonbra/javasteam/util/compat/Consumer<",
            "TTCallback;>;)",
            "Ljava/io/Closeable;"
        }
    .end annotation

    const-string v0, "callbackType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jobID"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackFunc"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    new-instance v0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/Callback;

    invoke-direct {v0, p1, p3, p0, p2}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/Callback;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;Lin/dragonbra/javasteam/types/JobID;)V

    return-object v0
.end method

.method public final subscribe(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;)Ljava/io/Closeable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TCallback:",
            "Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;",
            ">(",
            "Ljava/lang/Class<",
            "+TTCallback;>;",
            "Lin/dragonbra/javasteam/util/compat/Consumer<",
            "TTCallback;>;)",
            "Ljava/io/Closeable;"
        }
    .end annotation

    const-string v0, "callbackType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackFunc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    sget-object v0, Lin/dragonbra/javasteam/types/JobID;->INVALID:Lin/dragonbra/javasteam/types/JobID;

    invoke-virtual {p0, p1, v0, p2}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->subscribe(Ljava/lang/Class;Lin/dragonbra/javasteam/types/JobID;Lin/dragonbra/javasteam/util/compat/Consumer;)Ljava/io/Closeable;

    move-result-object p0

    return-object p0
.end method

.method public final subscribeServiceNotification(Ljava/lang/Class;Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;)Ljava/io/Closeable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TService:",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;",
            "TNotification:",
            "Lcom/google/protobuf/GeneratedMessage$Builder<",
            "TTNotification;>;>(",
            "Ljava/lang/Class<",
            "TTService;>;",
            "Ljava/lang/Class<",
            "TTNotification;>;",
            "Lin/dragonbra/javasteam/util/compat/Consumer<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodNotification<",
            "TTNotification;>;>;)",
            "Ljava/io/Closeable;"
        }
    .end annotation

    const-string v0, "serviceClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackFunc"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->steamUnifiedMessages:Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->createService(Ljava/lang/Class;)Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;

    .line 162
    new-instance p1, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2, p3}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;)V

    .line 168
    new-instance p2, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/Callback;

    .line 169
    const-class p3, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodNotification;

    .line 172
    sget-object v0, Lin/dragonbra/javasteam/types/JobID;->INVALID:Lin/dragonbra/javasteam/types/JobID;

    .line 168
    invoke-direct {p2, p3, p1, p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/Callback;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;Lin/dragonbra/javasteam/types/JobID;)V

    return-object p2
.end method

.method public final synthetic subscribeServiceNotification(Lkotlin/jvm/functions/Function1;)Ljava/io/Closeable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TService:",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;",
            "TNotification:",
            "Lcom/google/protobuf/GeneratedMessage$Builder<",
            "TTNotification;>;>(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodNotification<",
            "TTNotification;>;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/io/Closeable;"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    const-string v0, "TService"

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-string v0, "TNotification"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    new-instance v0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$sam$i$in_dragonbra_javasteam_util_compat_Consumer$0;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$sam$i$in_dragonbra_javasteam_util_compat_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    const-class p1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;

    const-class v1, Lcom/google/protobuf/GeneratedMessage$Builder;

    invoke-virtual {p0, p1, v1, v0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->subscribeServiceNotification(Ljava/lang/Class;Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;)Ljava/io/Closeable;

    move-result-object p0

    return-object p0
.end method

.method public final subscribeServiceResponse(Ljava/lang/Class;Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;)Ljava/io/Closeable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TService:",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;",
            "TNotification:",
            "Lcom/google/protobuf/GeneratedMessage$Builder<",
            "TTNotification;>;>(",
            "Ljava/lang/Class<",
            "TTService;>;",
            "Ljava/lang/Class<",
            "TTNotification;>;",
            "Lin/dragonbra/javasteam/util/compat/Consumer<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "TTNotification;>;>;)",
            "Ljava/io/Closeable;"
        }
    .end annotation

    const-string v0, "serviceClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackFunc"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->steamUnifiedMessages:Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->createService(Ljava/lang/Class;)Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;

    .line 223
    new-instance p1, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2, p3}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;)V

    .line 229
    new-instance p2, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/Callback;

    .line 230
    const-class p3, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    .line 233
    sget-object v0, Lin/dragonbra/javasteam/types/JobID;->INVALID:Lin/dragonbra/javasteam/types/JobID;

    .line 229
    invoke-direct {p2, p3, p1, p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/Callback;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;Lin/dragonbra/javasteam/types/JobID;)V

    return-object p2
.end method

.method public final synthetic subscribeServiceResponse(Lkotlin/jvm/functions/Function1;)Ljava/io/Closeable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TService:",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;",
            "TNotification:",
            "Lcom/google/protobuf/GeneratedMessage$Builder<",
            "TTNotification;>;>(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "TTNotification;>;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/io/Closeable;"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    const-string v0, "TService"

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-string v0, "TNotification"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    new-instance v0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$sam$i$in_dragonbra_javasteam_util_compat_Consumer$0;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$sam$i$in_dragonbra_javasteam_util_compat_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    const-class p1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;

    const-class v1, Lcom/google/protobuf/GeneratedMessage$Builder;

    invoke-virtual {p0, p1, v1, v0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->subscribeServiceResponse(Ljava/lang/Class;Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;)Ljava/io/Closeable;

    move-result-object p0

    return-object p0
.end method

.method public final unregister$javasteam(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackBase;)V
    .registers 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->registeredCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackManager.AnonymousClass1 (in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackManager$runWaitCallbackAsync$1)
.class final Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$runWaitCallbackAsync$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "CallbackManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->runWaitCallbackAsync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackManager"
    f = "CallbackManager.kt"
    l = {
        0x58
    }
    m = "runWaitCallbackAsync"
    v = 0x1
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$runWaitCallbackAsync$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$runWaitCallbackAsync$1;->this$0:Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$runWaitCallbackAsync$1;->result:Ljava/lang/Object;

    iget p1, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$runWaitCallbackAsync$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$runWaitCallbackAsync$1;->label:I

    iget-object p1, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$runWaitCallbackAsync$1;->this$0:Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;

    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->runWaitCallbackAsync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackManager$$ExternalSyntheticLambda0 (in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackManager$$ExternalSyntheticLambda0)
.class public final synthetic Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lin/dragonbra/javasteam/util/compat/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;

.field public final synthetic f$1:Lin/dragonbra/javasteam/util/compat/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Class;

    iput-object p2, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$$ExternalSyntheticLambda0;->f$1:Lin/dragonbra/javasteam/util/compat/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Class;

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$$ExternalSyntheticLambda0;->f$1:Lin/dragonbra/javasteam/util/compat/Consumer;

    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    invoke-static {v0, p0, p1}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->$r8$lambda$oqX_nmAPUnQHr9xhnPt6TF7tfE4(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;)V

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackManager$$ExternalSyntheticLambda1 (in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackManager$$ExternalSyntheticLambda1)
.class public final synthetic Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lin/dragonbra/javasteam/util/compat/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;

.field public final synthetic f$1:Lin/dragonbra/javasteam/util/compat/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Class;

    iput-object p2, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$$ExternalSyntheticLambda1;->f$1:Lin/dragonbra/javasteam/util/compat/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Class;

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$$ExternalSyntheticLambda1;->f$1:Lin/dragonbra/javasteam/util/compat/Consumer;

    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodNotification;

    invoke-static {v0, p0, p1}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->$r8$lambda$MCTUI4ZW9V1QX0jyOlXlc1NegDg(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodNotification;)V

    return-void
.end method
