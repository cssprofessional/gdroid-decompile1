###### Class com.gmodvr.flat.SteamSession (com.gmodvr.flat.SteamSession)
.class final Lcom/gmodvr/flat/SteamSession;
.super Ljava/lang/Object;
.source "SteamSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/SteamSession$Status;,
        Lcom/gmodvr/flat/SteamSession$Depot;,
        Lcom/gmodvr/flat/SteamSession$CdnRequest;,
        Lcom/gmodvr/flat/SteamSession$ConnectionLost;
    }
.end annotation


# instance fields
.field private final appInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lin/dragonbra/javasteam/types/KeyValue;",
            ">;"
        }
    .end annotation
.end field

.field final apps:Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;

.field private final authTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final callbacks:Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;

.field private final cdn:Lin/dragonbra/javasteam/steam/cdn/Client;

.field final cdnRetries:Ljava/util/concurrent/atomic/AtomicInteger;

.field final client:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

.field private volatile closed:Z

.field private final connected:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final deniedTokens:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final directory:Lin/dragonbra/javasteam/rpc/service/ContentServerDirectory;

.field private volatile disconnected:Z

.field final http:Lokhttp3/OkHttpClient;

.field private final loggedOn:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/enums/EResult;",
            ">;"
        }
    .end annotation
.end field

.field private final preferredContentServer:Ljava/util/concurrent/atomic/AtomicInteger;

.field final published:Lin/dragonbra/javasteam/rpc/service/PublishedFile;

.field private final pump:Ljava/lang/Thread;

.field private servers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/cdn/Server;",
            ">;"
        }
    .end annotation
.end field

.field private final subscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$B0C1HwpbOYRXM1DSJpQfjxrbydc(Lcom/gmodvr/flat/SteamSession;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/SteamSession;->lambda$new$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$EgNdUXnTRLYuhEPdWU4lSCTyIic(Lcom/gmodvr/flat/SteamSession;Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/SteamSession;->lambda$new$2(Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VghRTE-9L9zlxCM7uBAqWcOBoro(Lcom/gmodvr/flat/SteamSession;Lin/dragonbra/javasteam/types/ChunkData;Lcom/gmodvr/flat/SteamSession$Depot;Lin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;)[B
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gmodvr/flat/SteamSession;->lambda$chunk$7(Lin/dragonbra/javasteam/types/ChunkData;Lcom/gmodvr/flat/SteamSession$Depot;Lin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bVL62OYm9V4s0DC8W1-pwWWXtI8(Lcom/gmodvr/flat/SteamSession;Lin/dragonbra/javasteam/steam/steamclient/callbacks/ConnectedCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/SteamSession;->lambda$new$1(Lin/dragonbra/javasteam/steam/steamclient/callbacks/ConnectedCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cvw_LyckyXLkuBtqti0LB3b1VIg(Lcom/gmodvr/flat/SteamSession;Lcom/gmodvr/flat/SteamSession$Depot;JLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;)Lin/dragonbra/javasteam/types/DepotManifest;
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/gmodvr/flat/SteamSession;->lambda$manifest$6(Lcom/gmodvr/flat/SteamSession$Depot;JLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;)Lin/dragonbra/javasteam/types/DepotManifest;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iH4Fru3folVh6pTSF2inBY1xpwI(Lcom/gmodvr/flat/SteamSession;Lin/dragonbra/javasteam/steam/steamclient/callbacks/DisconnectedCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/SteamSession;->lambda$new$3(Lin/dragonbra/javasteam/steam/steamclient/callbacks/DisconnectedCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qdM-u4YXF37NLo27gYKG_9Ld3Ww(Lokhttp3/OkHttpClient;Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/SteamSession;->lambda$new$0(Lokhttp3/OkHttpClient;Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xz98yTXpamCzGmYx04hXT7BmHDI(Lcom/gmodvr/flat/SteamSession;Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOffCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/SteamSession;->lambda$new$4(Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOffCallback;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 52
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v2, 0x2d

    .line 53
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v2, 0x4b

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 54
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, v0, v1}, Lcom/gmodvr/flat/SteamSession;-><init>(Lokhttp3/OkHttpClient;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/OkHttpClient;",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/cdn/Server;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmodvr/flat/SteamSession;->subscriptions:Ljava/util/List;

    .line 39
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v1, p0, Lcom/gmodvr/flat/SteamSession;->connected:Ljava/util/concurrent/CompletableFuture;

    .line 40
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v1, p0, Lcom/gmodvr/flat/SteamSession;->loggedOn:Ljava/util/concurrent/CompletableFuture;

    .line 41
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/gmodvr/flat/SteamSession;->appInfo:Ljava/util/Map;

    .line 42
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/gmodvr/flat/SteamSession;->authTokens:Ljava/util/Map;

    .line 43
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v1

    iput-object v1, p0, Lcom/gmodvr/flat/SteamSession;->deniedTokens:Ljava/util/Set;

    .line 45
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lcom/gmodvr/flat/SteamSession;->cdnRetries:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lcom/gmodvr/flat/SteamSession;->preferredContentServer:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    iput-object p1, p0, Lcom/gmodvr/flat/SteamSession;->http:Lokhttp3/OkHttpClient;

    if-nez p2, :cond_40

    const/4 p2, 0x0

    goto :goto_46

    .line 60
    :cond_40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p2, v1

    :goto_46
    iput-object p2, p0, Lcom/gmodvr/flat/SteamSession;->servers:Ljava/util/List;

    .line 61
    new-instance p2, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    new-instance v1, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda2;-><init>(Lokhttp3/OkHttpClient;)V

    invoke-static {v1}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->create(Lin/dragonbra/javasteam/util/compat/Consumer;)Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;

    move-result-object p1

    invoke-direct {p2, p1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;-><init>(Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;)V

    iput-object p2, p0, Lcom/gmodvr/flat/SteamSession;->client:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    .line 62
    new-instance p1, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;

    invoke-direct {p1, p2}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;)V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamSession;->callbacks:Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;

    .line 63
    const-class v1, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;

    invoke-virtual {p2, v1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getHandler(Ljava/lang/Class;)Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;

    iput-object v1, p0, Lcom/gmodvr/flat/SteamSession;->apps:Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;

    .line 64
    const-class v1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    invoke-virtual {p2, v1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getHandler(Ljava/lang/Class;)Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    .line 65
    const-class v2, Lin/dragonbra/javasteam/rpc/service/ContentServerDirectory;

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->createService(Ljava/lang/Class;)Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;

    move-result-object v2

    check-cast v2, Lin/dragonbra/javasteam/rpc/service/ContentServerDirectory;

    iput-object v2, p0, Lcom/gmodvr/flat/SteamSession;->directory:Lin/dragonbra/javasteam/rpc/service/ContentServerDirectory;

    .line 66
    const-class v2, Lin/dragonbra/javasteam/rpc/service/PublishedFile;

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->createService(Ljava/lang/Class;)Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/rpc/service/PublishedFile;

    iput-object v1, p0, Lcom/gmodvr/flat/SteamSession;->published:Lin/dragonbra/javasteam/rpc/service/PublishedFile;

    .line 67
    new-instance v1, Lin/dragonbra/javasteam/steam/cdn/Client;

    invoke-direct {v1, p2}, Lin/dragonbra/javasteam/steam/cdn/Client;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;)V

    iput-object v1, p0, Lcom/gmodvr/flat/SteamSession;->cdn:Lin/dragonbra/javasteam/steam/cdn/Client;

    .line 68
    new-instance p2, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda3;-><init>(Lcom/gmodvr/flat/SteamSession;)V

    const-class v1, Lin/dragonbra/javasteam/steam/steamclient/callbacks/ConnectedCallback;

    invoke-virtual {p1, v1, p2}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->subscribe(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;)Ljava/io/Closeable;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance p2, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda4;-><init>(Lcom/gmodvr/flat/SteamSession;)V

    const-class v1, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;

    invoke-virtual {p1, v1, p2}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->subscribe(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;)Ljava/io/Closeable;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance p2, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda5;-><init>(Lcom/gmodvr/flat/SteamSession;)V

    const-class v1, Lin/dragonbra/javasteam/steam/steamclient/callbacks/DisconnectedCallback;

    invoke-virtual {p1, v1, p2}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->subscribe(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;)Ljava/io/Closeable;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance p2, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda6;-><init>(Lcom/gmodvr/flat/SteamSession;)V

    const-class v1, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOffCallback;

    invoke-virtual {p1, v1, p2}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->subscribe(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;)Ljava/io/Closeable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda7;-><init>(Lcom/gmodvr/flat/SteamSession;)V

    const-string v0, "Steam callbacks"

    invoke-direct {p1, p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamSession;->pump:Ljava/lang/Thread;

    const/4 p0, 0x1

    .line 85
    invoke-virtual {p1, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 86
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static await(Ljava/util/concurrent/CompletableFuture;I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    int-to-long v0, p1

    .line 181
    :try_start_1
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, p1}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_7} :catch_a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_7} :catch_a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_7} :catch_8

    return-object p0

    :catch_8
    move-exception p0

    goto :goto_c

    :catch_a
    move-exception p1

    goto :goto_1f

    .line 184
    :goto_c
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 185
    instance-of p1, p0, Ljava/lang/Exception;

    if-eqz p1, :cond_17

    check-cast p0, Ljava/lang/Exception;

    throw p0

    .line 186
    :cond_17
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Steam operation failed"

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_1f
    const/4 v0, 0x1

    .line 182
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    throw p1
.end method

.method private fromCdn(Lcom/gmodvr/flat/SteamSession$Depot;Lcom/gmodvr/flat/SteamSession$CdnRequest;Ljava/lang/String;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/gmodvr/flat/SteamSession$Depot;",
            "Lcom/gmodvr/flat/SteamSession$CdnRequest<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 262
    iget v0, p1, Lcom/gmodvr/flat/SteamSession$Depot;->app:I

    invoke-virtual {p0, v0}, Lcom/gmodvr/flat/SteamSession;->servers(I)Ljava/util/List;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/gmodvr/flat/SteamSession;->preferredContentServer:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    const/4 v5, 0x6

    if-ge v4, v5, :cond_c3

    .line 268
    invoke-virtual {p0}, Lcom/gmodvr/flat/SteamSession;->check()V

    .line 269
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    rem-int v5, v1, v5

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lin/dragonbra/javasteam/steam/cdn/Server;

    .line 270
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Lcom/gmodvr/flat/SteamSession$Depot;->app:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/gmodvr/flat/SteamSession$Depot;->depot:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lin/dragonbra/javasteam/steam/cdn/Server;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 271
    iget-object v7, p0, Lcom/gmodvr/flat/SteamSession;->authTokens:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    .line 273
    :try_start_49
    iget-object v8, p0, Lcom/gmodvr/flat/SteamSession;->authTokens:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {p2, v5, v8}, Lcom/gmodvr/flat/SteamSession$CdnRequest;->run(Lin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 274
    iget-object v9, p0, Lcom/gmodvr/flat/SteamSession;->preferredContentServer:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    rem-int v10, v1, v10

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_60
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_60} :catch_63
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_60} :catch_61

    return-object v8

    :catch_61
    move-exception v8

    goto :goto_65

    :catch_63
    move-exception p0

    goto :goto_c2

    .line 278
    :goto_65
    iget-object v9, p0, Lcom/gmodvr/flat/SteamSession;->cdnRetries:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    if-nez v2, :cond_6e

    move-object v2, v8

    goto :goto_73

    :cond_6e
    if-eq v8, v2, :cond_73

    .line 279
    invoke-virtual {v2, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 280
    :cond_73
    :goto_73
    instance-of v9, v8, Lin/dragonbra/javasteam/util/SteamKitWebRequestException;

    if-eqz v9, :cond_7e

    check-cast v8, Lin/dragonbra/javasteam/util/SteamKitWebRequestException;

    invoke-virtual {v8}, Lin/dragonbra/javasteam/util/SteamKitWebRequestException;->getStatusCode()I

    move-result v8

    goto :goto_7f

    :cond_7e
    move v8, v3

    :goto_7f
    const/16 v9, 0x193

    if-ne v8, v9, :cond_a5

    if-nez v7, :cond_a5

    .line 281
    iget-object v7, p0, Lcom/gmodvr/flat/SteamSession;->deniedTokens:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a5

    .line 282
    :try_start_8d
    iget-object v7, p0, Lcom/gmodvr/flat/SteamSession;->authTokens:Ljava/util/Map;

    invoke-direct {p0, p1, v5}, Lcom/gmodvr/flat/SteamSession;->token(Lcom/gmodvr/flat/SteamSession$Depot;Lin/dragonbra/javasteam/steam/cdn/Server;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_96
    .catch Ljava/lang/InterruptedException; {:try_start_8d .. :try_end_96} :catch_99
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_96} :catch_97

    goto :goto_be

    :catch_97
    move-exception v5

    goto :goto_9b

    :catch_99
    move-exception p0

    goto :goto_a4

    .line 284
    :goto_9b
    iget-object v7, p0, Lcom/gmodvr/flat/SteamSession;->deniedTokens:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a5

    .line 283
    :goto_a4
    throw p0

    :cond_a5
    :goto_a5
    const/16 v5, 0x191

    if-eq v8, v5, :cond_ab

    if-ne v8, v9, :cond_b0

    .line 286
    :cond_ab
    iget-object v5, p0, Lcom/gmodvr/flat/SteamSession;->authTokens:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b0
    add-int/lit8 v1, v1, 0x1

    const-wide/16 v5, 0xfa

    shl-long/2addr v5, v4

    const-wide/16 v7, 0xfa0

    .line 288
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    :goto_be
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_f

    .line 276
    :goto_c2
    throw p0

    .line 291
    :cond_c3
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, p3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method private synthetic lambda$chunk$7(Lin/dragonbra/javasteam/types/ChunkData;Lcom/gmodvr/flat/SteamSession$Depot;Lin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;)[B
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 317
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/ChunkData;->getCompressedLength()I

    move-result v0

    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/ChunkData;->getUncompressedLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    .line 318
    iget-object v1, p0, Lcom/gmodvr/flat/SteamSession;->cdn:Lin/dragonbra/javasteam/steam/cdn/Client;

    iget v2, p2, Lcom/gmodvr/flat/SteamSession$Depot;->depot:I

    iget-object v6, p2, Lcom/gmodvr/flat/SteamSession$Depot;->key:[B

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p3

    move-object v5, v0

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lin/dragonbra/javasteam/steam/cdn/Client;->downloadDepotChunkFuture(ILin/dragonbra/javasteam/types/ChunkData;Lin/dragonbra/javasteam/steam/cdn/Server;[B[BLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    const/16 p2, 0x50

    invoke-static {p0, p2}, Lcom/gmodvr/flat/SteamSession;->await(Ljava/util/concurrent/CompletableFuture;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 319
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/ChunkData;->getUncompressedLength()I

    move-result p2

    if-ne p0, p2, :cond_42

    .line 320
    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 323
    invoke-static {p1, p0}, Lcom/gmodvr/flat/SteamTransfer;->matchesChunk(Lin/dragonbra/javasteam/types/ChunkData;[B)Z

    move-result p1

    if-eqz p1, :cond_3a

    return-object p0

    :cond_3a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Steam chunk failed SHA-1 verification"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 319
    :cond_42
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Steam chunk length mismatch"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private synthetic lambda$manifest$6(Lcom/gmodvr/flat/SteamSession$Depot;JLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;)Lin/dragonbra/javasteam/types/DepotManifest;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/gmodvr/flat/SteamSession;->cdn:Lin/dragonbra/javasteam/steam/cdn/Client;

    iget v1, p1, Lcom/gmodvr/flat/SteamSession$Depot;->depot:I

    iget-wide v2, p1, Lcom/gmodvr/flat/SteamSession$Depot;->manifest:J

    iget-object v7, p1, Lcom/gmodvr/flat/SteamSession$Depot;->key:[B

    const/4 v8, 0x0

    move-wide v4, p2

    move-object v6, p4

    move-object v9, p5

    invoke-virtual/range {v0 .. v9}, Lin/dragonbra/javasteam/steam/cdn/Client;->downloadManifestFuture(IJJLin/dragonbra/javasteam/steam/cdn/Server;[BLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    const/16 p2, 0x50

    invoke-static {p0, p2}, Lcom/gmodvr/flat/SteamSession;->await(Ljava/util/concurrent/CompletableFuture;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/types/DepotManifest;

    .line 309
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/DepotManifest;->getFilenamesEncrypted()Z

    move-result p2

    if-nez p2, :cond_31

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/DepotManifest;->getDepotID()I

    move-result p2

    iget p3, p1, Lcom/gmodvr/flat/SteamSession$Depot;->depot:I

    if-ne p2, p3, :cond_31

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/DepotManifest;->getManifestGID()J

    move-result-wide p2

    iget-wide p4, p1, Lcom/gmodvr/flat/SteamSession$Depot;->manifest:J

    cmp-long p1, p2, p4

    if-nez p1, :cond_31

    return-object p0

    .line 310
    :cond_31
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Steam returned the wrong manifest or could not decrypt filenames"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static synthetic lambda$new$0(Lokhttp3/OkHttpClient;Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;)V
    .registers 2

    .line 61
    invoke-interface {p1, p0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;->withHttpClient(Lokhttp3/OkHttpClient;)Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;

    return-void
.end method

.method private synthetic lambda$new$1(Lin/dragonbra/javasteam/steam/steamclient/callbacks/ConnectedCallback;)V
    .registers 2

    .line 68
    iget-object p0, p0, Lcom/gmodvr/flat/SteamSession;->connected:Ljava/util/concurrent/CompletableFuture;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$new$2(Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;)V
    .registers 2

    .line 69
    iget-object p0, p0, Lcom/gmodvr/flat/SteamSession;->loggedOn:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$new$3(Lin/dragonbra/javasteam/steam/steamclient/callbacks/DisconnectedCallback;)V
    .registers 3

    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Lcom/gmodvr/flat/SteamSession;->disconnected:Z

    .line 72
    new-instance p1, Lcom/gmodvr/flat/SteamSession$ConnectionLost;

    invoke-direct {p1}, Lcom/gmodvr/flat/SteamSession$ConnectionLost;-><init>()V

    .line 73
    iget-object v0, p0, Lcom/gmodvr/flat/SteamSession;->connected:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 74
    iget-object p0, p0, Lcom/gmodvr/flat/SteamSession;->loggedOn:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method private synthetic lambda$new$4(Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOffCallback;)V
    .registers 2

    const/4 p1, 0x1

    .line 76
    iput-boolean p1, p0, Lcom/gmodvr/flat/SteamSession;->disconnected:Z

    return-void
.end method

.method private synthetic lambda$new$5()V
    .registers 4

    .line 78
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/gmodvr/flat/SteamSession;->closed:Z

    if-nez v0, :cond_1a

    .line 81
    :try_start_4
    iget-object v0, p0, Lcom/gmodvr/flat/SteamSession;->callbacks:Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->runWaitCallbacks(J)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_c

    goto :goto_0

    .line 82
    :catch_c
    iget-boolean v0, p0, Lcom/gmodvr/flat/SteamSession;->closed:Z

    if-nez v0, :cond_1a

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1a
    return-void
.end method

.method private token(Lcom/gmodvr/flat/SteamSession$Depot;Lin/dragonbra/javasteam/steam/cdn/Server;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 295
    iget-object p0, p0, Lcom/gmodvr/flat/SteamSession;->directory:Lin/dragonbra/javasteam/rpc/service/ContentServerDirectory;

    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetCDNAuthToken_Request;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetCDNAuthToken_Request$Builder;

    move-result-object v0

    iget v1, p1, Lcom/gmodvr/flat/SteamSession$Depot;->app:I

    .line 296
    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetCDNAuthToken_Request$Builder;->setAppId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetCDNAuthToken_Request$Builder;

    move-result-object v0

    iget p1, p1, Lcom/gmodvr/flat/SteamSession$Depot;->depot:I

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetCDNAuthToken_Request$Builder;->setDepotId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetCDNAuthToken_Request$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/cdn/Server;->getHost()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetCDNAuthToken_Request$Builder;->setHostName(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetCDNAuthToken_Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetCDNAuthToken_Request$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetCDNAuthToken_Request;

    move-result-object p1

    .line 295
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/rpc/service/ContentServerDirectory;->getCDNAuthToken(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetCDNAuthToken_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    .line 296
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->toFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    const/16 p1, 0x1e

    .line 295
    invoke-static {p0, p1}, Lcom/gmodvr/flat/SteamSession;->await(Ljava/util/concurrent/CompletableFuture;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    .line 297
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p1

    sget-object p2, Lin/dragonbra/javasteam/enums/EResult;->OK:Lin/dragonbra/javasteam/enums/EResult;

    if-ne p1, p2, :cond_41

    .line 298
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetCDNAuthToken_Response$Builder;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetCDNAuthToken_Response$Builder;->getToken()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 297
    :cond_41
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Steam CDN authorization failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private waitForCodeOrApproval(Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;Lcom/gmodvr/flat/SteamSession$Status;)Lin/dragonbra/javasteam/steam/authentication/AuthPollResult;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 132
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->getAllowedConfirmations()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, ""

    const/4 v2, 0x0

    move-object v3, v0

    move v4, v2

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;

    .line 133
    invoke-virtual {v5}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;->getConfirmationType()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    move-result-object v7

    .line 134
    sget-object v8, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;->k_EAuthSessionGuardType_DeviceCode:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    if-eq v7, v8, :cond_27

    sget-object v8, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;->k_EAuthSessionGuardType_EmailCode:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    if-ne v7, v8, :cond_2e

    :cond_27
    if-nez v3, :cond_2e

    .line 135
    invoke-virtual {v5}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;->getAssociatedMessage()Ljava/lang/String;

    move-result-object v1

    move-object v3, v7

    .line 136
    :cond_2e
    sget-object v5, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;->k_EAuthSessionGuardType_None:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    if-eq v7, v5, :cond_3c

    sget-object v5, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;->k_EAuthSessionGuardType_DeviceConfirmation:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    if-eq v7, v5, :cond_3c

    sget-object v5, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;->k_EAuthSessionGuardType_EmailConfirmation:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    if-ne v7, v5, :cond_3b

    goto :goto_3c

    :cond_3b
    move v6, v2

    :cond_3c
    :goto_3c
    or-int/2addr v4, v6

    goto :goto_e

    :cond_3e
    if-nez v3, :cond_4b

    if-eqz v4, :cond_43

    goto :goto_4b

    .line 140
    :cond_43
    new-instance p0, Ljava/io/IOException;

    const-string p1, "This account\'s Steam Guard method is not supported here."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 141
    :cond_4b
    :goto_4b
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->getPollingInterval()F

    move-result p0

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr p0, v4

    float-to-long v4, p0

    const-wide/16 v7, 0x3e8

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 142
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x12c

    invoke-virtual {p0, v9, v10}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v9

    add-long/2addr v7, v9

    move-object v9, v0

    move p0, v2

    .line 146
    :cond_68
    :goto_68
    :try_start_68
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    cmp-long v10, v10, v7

    if-gez v10, :cond_ed

    if-eqz v3, :cond_87

    if-nez v2, :cond_87

    if-nez v9, :cond_87

    .line 148
    sget-object v10, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;->k_EAuthSessionGuardType_DeviceCode:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    if-ne v3, v10, :cond_83

    .line 149
    invoke-interface {p2, p0}, Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;->getDeviceCode(Z)Ljava/util/concurrent/CompletableFuture;

    move-result-object v9

    goto :goto_87

    :catchall_7f
    move-exception p0

    move-object v0, v9

    goto/16 :goto_f3

    :cond_83
    invoke-interface {p2, v1, p0}, Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;->getEmailCode(Ljava/lang/String;Z)Ljava/util/concurrent/CompletableFuture;

    move-result-object v9
    :try_end_87
    .catchall {:try_start_68 .. :try_end_87} :catchall_7f

    :cond_87
    :goto_87
    if-eqz v9, :cond_95

    if-eqz v2, :cond_8c

    goto :goto_95

    .line 152
    :cond_8c
    :try_start_8c
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v4, v5, v10}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;
    :try_end_94
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8c .. :try_end_94} :catch_98
    .catchall {:try_start_8c .. :try_end_94} :catchall_7f

    goto :goto_99

    .line 151
    :cond_95
    :goto_95
    :try_start_95
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_7f

    :catch_98
    move-object v10, v0

    :goto_99
    const/16 v11, 0x2d

    if-eqz v10, :cond_db

    .line 155
    :try_start_9d
    const-string v9, "Checking the Steam Guard code\u2026"

    invoke-interface {p3, v9}, Lcom/gmodvr/flat/SteamSession$Status;->show(Ljava/lang/String;)V
    :try_end_a2
    .catchall {:try_start_9d .. :try_end_a2} :catchall_ac

    .line 156
    :try_start_a2
    invoke-virtual {p1, v10, v3}, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;->sendSteamGuardCode(Ljava/lang/String;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v9

    invoke-static {v9, v11}, Lcom/gmodvr/flat/SteamSession;->await(Ljava/util/concurrent/CompletableFuture;I)Ljava/lang/Object;
    :try_end_a9
    .catch Lin/dragonbra/javasteam/steam/authentication/AuthenticationException; {:try_start_a2 .. :try_end_a9} :catch_ae
    .catchall {:try_start_a2 .. :try_end_a9} :catchall_ac

    move-object v9, v0

    move v2, v6

    goto :goto_db

    :catchall_ac
    move-exception p0

    goto :goto_f3

    :catch_ae
    move-exception p0

    .line 158
    :try_start_af
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p0

    .line 159
    sget-object v9, Lin/dragonbra/javasteam/enums/EResult;->TwoFactorCodeMismatch:Lin/dragonbra/javasteam/enums/EResult;

    if-eq p0, v9, :cond_d8

    sget-object v9, Lin/dragonbra/javasteam/enums/EResult;->InvalidLoginAuthCode:Lin/dragonbra/javasteam/enums/EResult;

    if-ne p0, v9, :cond_bc

    goto :goto_d8

    .line 160
    :cond_bc
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Steam did not accept the Steam Guard code ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "). Start the sign-in again."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_d8
    .catchall {:try_start_af .. :try_end_d8} :catchall_ac

    :cond_d8
    :goto_d8
    move-object v9, v0

    move p0, v6

    goto :goto_68

    .line 165
    :cond_db
    :goto_db
    :try_start_db
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->pollAuthSessionStatus()Ljava/util/concurrent/CompletableFuture;

    move-result-object v10

    invoke-static {v10, v11}, Lcom/gmodvr/flat/SteamSession;->await(Ljava/util/concurrent/CompletableFuture;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lin/dragonbra/javasteam/steam/authentication/AuthPollResult;
    :try_end_e5
    .catchall {:try_start_db .. :try_end_e5} :catchall_7f

    if-eqz v10, :cond_68

    if-eqz v9, :cond_ec

    .line 169
    invoke-virtual {v9, v6}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    :cond_ec
    return-object v10

    .line 168
    :cond_ed
    :try_start_ed
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p0
    :try_end_f3
    .catchall {:try_start_ed .. :try_end_f3} :catchall_7f

    :goto_f3
    if-eqz v0, :cond_f8

    .line 169
    invoke-virtual {v0, v6}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    :cond_f8
    throw p0
.end method

.method public static workshopDetails(JLin/dragonbra/javasteam/enums/EResult;Ljava/util/List;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lin/dragonbra/javasteam/enums/EResult;",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;",
            ">;)",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Workshop item "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    sget-object v1, Lin/dragonbra/javasteam/enums/EResult;->OK:Lin/dragonbra/javasteam/enums/EResult;

    const-string v2, " lookup failed (Steam result "

    if-ne p2, v1, :cond_b2

    .line 353
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    const/4 v3, 0x1

    if-ne p2, v3, :cond_9b

    const/4 p2, 0x0

    .line 354
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;

    .line 355
    invoke-virtual {p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getResult()I

    move-result p3

    sget-object v3, Lin/dragonbra/javasteam/enums/EResult;->FileNotFound:Lin/dragonbra/javasteam/enums/EResult;

    invoke-virtual {v3}, Lin/dragonbra/javasteam/enums/EResult;->code()I

    move-result v3

    if-eq p3, v3, :cond_84

    .line 357
    invoke-virtual {p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getResult()I

    move-result p3

    invoke-virtual {v1}, Lin/dragonbra/javasteam/enums/EResult;->code()I

    move-result v1

    if-ne p3, v1, :cond_63

    .line 359
    invoke-virtual {p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getPublishedfileid()J

    move-result-wide v0

    cmp-long p3, v0, p0

    if-nez p3, :cond_48

    return-object p2

    .line 360
    :cond_48
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Steam returned details for a different Workshop item; expected "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 358
    :cond_63
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getResult()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "). Check the item\'s availability for this Steam account."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 356
    :cond_84
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " was not found (Steam result 9: FileNotFound). Check the Workshop link and that the item is visible to this Steam account. Owning the game alone does not guarantee access to an item."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 353
    :cond_9b
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Steam returned incomplete details for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 352
    :cond_b2
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lin/dragonbra/javasteam/enums/EResult;->code()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "). Resume to retry."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public anonymous()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/gmodvr/flat/SteamSession;->client:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/CMClient;->connect()V

    .line 175
    iget-object v0, p0, Lcom/gmodvr/flat/SteamSession;->connected:Ljava/util/concurrent/CompletableFuture;

    const/16 v1, 0x2d

    invoke-static {v0, v1}, Lcom/gmodvr/flat/SteamSession;->await(Ljava/util/concurrent/CompletableFuture;I)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/gmodvr/flat/SteamSession;->client:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    const-class v2, Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser;

    invoke-virtual {v0, v2}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getHandler(Ljava/lang/Class;)Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser;->logOnAnonymous()V

    .line 177
    iget-object p0, p0, Lcom/gmodvr/flat/SteamSession;->loggedOn:Ljava/util/concurrent/CompletableFuture;

    invoke-static {p0, v1}, Lcom/gmodvr/flat/SteamSession;->await(Ljava/util/concurrent/CompletableFuture;I)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lin/dragonbra/javasteam/enums/EResult;->OK:Lin/dragonbra/javasteam/enums/EResult;

    if-ne p0, v0, :cond_24

    return-void

    :cond_24
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Anonymous Steam connection failed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public app(I)Lin/dragonbra/javasteam/types/KeyValue;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/gmodvr/flat/SteamSession;->appInfo:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object p0, p0, Lcom/gmodvr/flat/SteamSession;->appInfo:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/types/KeyValue;

    return-object p0

    .line 192
    :cond_19
    iget-object v0, p0, Lcom/gmodvr/flat/SteamSession;->apps:Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;->picsGetAccessTokens(Ljava/lang/Integer;Ljava/lang/Integer;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->toFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-static {v0, v1}, Lcom/gmodvr/flat/SteamSession;->await(Ljava/util/concurrent/CompletableFuture;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSTokensCallback;

    .line 193
    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSTokensCallback;->getAppTokens()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 194
    iget-object v0, p0, Lcom/gmodvr/flat/SteamSession;->apps:Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;

    new-instance v5, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;

    invoke-direct {v5, p1, v3, v4}, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;-><init>(IJ)V

    const/4 v3, 0x0

    invoke-virtual {v0, v5, v2, v3}, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;->picsGetProductInfo(Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;Z)Lin/dragonbra/javasteam/types/AsyncJobMultiple;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/types/AsyncJobMultiple;->toFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/gmodvr/flat/SteamSession;->await(Ljava/util/concurrent/CompletableFuture;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/types/AsyncJobMultiple$ResultSet;

    .line 195
    invoke-virtual {v0}, Lin/dragonbra/javasteam/types/AsyncJobMultiple$ResultSet;->getComplete()Z

    move-result v1

    if-eqz v1, :cond_d0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/types/AsyncJobMultiple$ResultSet;->getFailed()Z

    move-result v1

    if-nez v1, :cond_d0

    .line 196
    invoke-virtual {v0}, Lin/dragonbra/javasteam/types/AsyncJobMultiple$ResultSet;->getResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_72
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSProductInfoCallback;

    .line 197
    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSProductInfoCallback;->getApps()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;

    if-eqz v1, :cond_72

    .line 198
    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->isMissingToken()Z

    move-result v2

    if-nez v2, :cond_72

    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->getKeyValues()Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v2

    invoke-virtual {v2}, Lin/dragonbra/javasteam/types/KeyValue;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_72

    .line 199
    iget-object p0, p0, Lcom/gmodvr/flat/SteamSession;->appInfo:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->getKeyValues()Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->getKeyValues()Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p0

    return-object p0

    .line 203
    :cond_b4
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Steam did not return app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Check account ownership."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 195
    :cond_d0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Steam app metadata was incomplete"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public check()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 365
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/gmodvr/flat/SteamSession;->closed:Z

    if-nez v0, :cond_19

    .line 366
    iget-boolean p0, p0, Lcom/gmodvr/flat/SteamSession;->disconnected:Z

    if-nez p0, :cond_13

    return-void

    :cond_13
    new-instance p0, Lcom/gmodvr/flat/SteamSession$ConnectionLost;

    invoke-direct {p0}, Lcom/gmodvr/flat/SteamSession$ConnectionLost;-><init>()V

    throw p0

    .line 365
    :cond_19
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0
.end method

.method public chunk(Lcom/gmodvr/flat/SteamSession$Depot;Lin/dragonbra/javasteam/types/ChunkData;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 316
    new-instance v0, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p1}, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda1;-><init>(Lcom/gmodvr/flat/SteamSession;Lin/dragonbra/javasteam/types/ChunkData;Lcom/gmodvr/flat/SteamSession$Depot;)V

    const-string p2, "Steam content servers could not supply a verified chunk. Resume to retry."

    invoke-direct {p0, p1, v0, p2}, Lcom/gmodvr/flat/SteamSession;->fromCdn(Lcom/gmodvr/flat/SteamSession$Depot;Lcom/gmodvr/flat/SteamSession$CdnRequest;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public close()V
    .registers 3

    const/4 v0, 0x1

    .line 370
    iput-boolean v0, p0, Lcom/gmodvr/flat/SteamSession;->closed:Z

    .line 371
    iget-object v0, p0, Lcom/gmodvr/flat/SteamSession;->client:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/CMClient;->disconnect()V

    .line 372
    iget-object v0, p0, Lcom/gmodvr/flat/SteamSession;->pump:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 373
    iget-object v0, p0, Lcom/gmodvr/flat/SteamSession;->subscriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    :try_start_1f
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_13

    goto :goto_13

    .line 374
    :cond_23
    iget-object v0, p0, Lcom/gmodvr/flat/SteamSession;->http:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->cancelAll()V

    .line 375
    iget-object p0, p0, Lcom/gmodvr/flat/SteamSession;->cdn:Lin/dragonbra/javasteam/steam/cdn/Client;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/cdn/Client;->close()V

    return-void
.end method

.method public depot(IIJ)Lcom/gmodvr/flat/SteamSession$Depot;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 217
    invoke-virtual {p0, p1}, Lcom/gmodvr/flat/SteamSession;->app(I)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v0

    const-string v1, "depots"

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v0

    .line 218
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 219
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v4, p1

    :goto_1f
    const-wide/16 v5, 0x0

    cmp-long v3, p3, v5

    .line 220
    const-string v5, "gid"

    const-string v6, "public"

    const-string v7, "manifests"

    if-nez v3, :cond_82

    invoke-virtual {v0, v7}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v8

    invoke-virtual {v8, v6}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v8

    invoke-virtual {v8, v5}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v8

    invoke-static {v8}, Lcom/gmodvr/flat/SteamCatalog;->value(Lin/dragonbra/javasteam/types/KeyValue;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_82

    .line 221
    const-string v3, "depotfromapp"

    invoke-virtual {v0, v3}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v0

    invoke-static {v0}, Lcom/gmodvr/flat/SteamCatalog;->value(Lin/dragonbra/javasteam/types/KeyValue;)Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_53

    const/4 p0, 0x0

    return-object p0

    .line 223
    :cond_53
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 224
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v3, 0x8

    if-gt v0, v3, :cond_7a

    .line 225
    invoke-virtual {p0, v4}, Lcom/gmodvr/flat/SteamSession;->app(I)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v0

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v0

    goto :goto_1f

    .line 224
    :cond_7a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cyclic shared Steam depot metadata"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_82
    if-eqz v3, :cond_86

    :goto_84
    move-wide v6, p3

    goto :goto_9b

    .line 228
    :cond_86
    invoke-virtual {v0, v7}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p3

    invoke-virtual {p3, v6}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p3

    invoke-virtual {p3, v5}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p3

    invoke-static {p3}, Lcom/gmodvr/flat/SteamCatalog;->value(Lin/dragonbra/javasteam/types/KeyValue;)Ljava/lang/String;

    move-result-object p3

    .line 227
    invoke-static {p3}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;)J

    move-result-wide p3

    goto :goto_84

    .line 229
    :goto_9b
    iget-object p0, p0, Lcom/gmodvr/flat/SteamSession;->apps:Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;

    invoke-virtual {p0, p2, p1}, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;->getDepotDecryptionKey(II)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->toFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    const/16 p1, 0x2d

    invoke-static {p0, p1}, Lcom/gmodvr/flat/SteamSession;->await(Ljava/util/concurrent/CompletableFuture;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/DepotKeyCallback;

    .line 230
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/DepotKeyCallback;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p1

    sget-object p3, Lin/dragonbra/javasteam/enums/EResult;->OK:Lin/dragonbra/javasteam/enums/EResult;

    if-ne p1, p3, :cond_ca

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/DepotKeyCallback;->getDepotKey()[B

    move-result-object p1

    array-length p1, p1

    const/16 p3, 0x20

    if-ne p1, p3, :cond_ca

    .line 232
    new-instance p1, Lcom/gmodvr/flat/SteamSession$Depot;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/DepotKeyCallback;->getDepotKey()[B

    move-result-object v8

    move-object v3, p1

    move v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/gmodvr/flat/SteamSession$Depot;-><init>(IIJ[B)V

    return-object p1

    .line 231
    :cond_ca
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Steam denied depot "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/DepotKeyCallback;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "). This account needs access to the game."

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLin/dragonbra/javasteam/steam/authentication/IAuthenticator;Lcom/gmodvr/flat/SteamSession$Status;)Lin/dragonbra/javasteam/steam/authentication/AuthPollResult;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    const-string v0, "Connecting to Steam\u2026"

    invoke-interface {p6, v0}, Lcom/gmodvr/flat/SteamSession$Status;->show(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/gmodvr/flat/SteamSession;->client:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/CMClient;->connect()V

    .line 93
    iget-object v0, p0, Lcom/gmodvr/flat/SteamSession;->connected:Ljava/util/concurrent/CompletableFuture;

    const/16 v1, 0x2d

    invoke-static {v0, v1}, Lcom/gmodvr/flat/SteamSession;->await(Ljava/util/concurrent/CompletableFuture;I)Ljava/lang/Object;

    const/16 v0, 0x3c

    const/4 v1, 0x0

    if-eqz p3, :cond_1c

    .line 95
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 96
    :cond_1c
    const-string p3, "Signing in to Steam\u2026"

    invoke-interface {p6, p3}, Lcom/gmodvr/flat/SteamSession$Status;->show(Ljava/lang/String;)V

    .line 97
    new-instance p3, Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;

    invoke-direct {p3}, Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;-><init>()V

    .line 98
    iput-object p1, p3, Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;->username:Ljava/lang/String;

    .line 99
    iput-object p2, p3, Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;->password:Ljava/lang/String;

    .line 100
    iput-boolean p4, p3, Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;->persistentSession:Z

    .line 101
    const-string p1, "GDroid device"

    iput-object p1, p3, Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;->deviceFriendlyName:Ljava/lang/String;

    .line 102
    iput-object p5, p3, Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;->authenticator:Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;

    .line 104
    :try_start_32
    iget-object p1, p0, Lcom/gmodvr/flat/SteamSession;->client:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getAuthentication()Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;

    move-result-object p1

    invoke-virtual {p1, p3}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;->beginAuthSessionViaCredentials(Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/gmodvr/flat/SteamSession;->await(Ljava/util/concurrent/CompletableFuture;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;

    .line 105
    invoke-direct {p0, p1, p5, p6}, Lcom/gmodvr/flat/SteamSession;->waitForCodeOrApproval(Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;Lcom/gmodvr/flat/SteamSession$Status;)Lin/dragonbra/javasteam/steam/authentication/AuthPollResult;

    move-result-object p1
    :try_end_46
    .catchall {:try_start_32 .. :try_end_46} :catchall_b0

    .line 106
    iput-object v1, p3, Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;->password:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/authentication/AuthPollResult;->getAccountName()Ljava/lang/String;

    move-result-object p2

    .line 108
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/authentication/AuthPollResult;->getRefreshToken()Ljava/lang/String;

    move-result-object p3

    move-object v1, p1

    move-object p1, p2

    .line 110
    :cond_52
    new-instance p2, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;

    invoke-direct {p2}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;-><init>()V

    .line 111
    invoke-virtual {p2, p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->setUsername(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2, p3}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->setAccessToken(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2, p4}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->setShouldRememberPassword(Z)V

    .line 114
    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    const p3, 0x7ffffffe

    invoke-virtual {p1, p3}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->setLoginID(Ljava/lang/Integer;)V

    .line 115
    iget-object p1, p0, Lcom/gmodvr/flat/SteamSession;->client:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    const-class p3, Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser;

    invoke-virtual {p1, p3}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getHandler(Ljava/lang/Class;)Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser;

    invoke-virtual {p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser;->logOn(Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;)V

    .line 116
    iget-object p0, p0, Lcom/gmodvr/flat/SteamSession;->loggedOn:Ljava/util/concurrent/CompletableFuture;

    invoke-static {p0, v0}, Lcom/gmodvr/flat/SteamSession;->await(Ljava/util/concurrent/CompletableFuture;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/enums/EResult;

    .line 117
    sget-object p1, Lin/dragonbra/javasteam/enums/EResult;->OK:Lin/dragonbra/javasteam/enums/EResult;

    if-ne p0, p1, :cond_94

    .line 118
    const-string p0, "Connected to Steam"

    invoke-interface {p6, p0}, Lcom/gmodvr/flat/SteamSession$Status;->show(Ljava/lang/String;)V

    return-object v1

    .line 117
    :cond_94
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Steam sign-in failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". Sign out and try again."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_b0
    move-exception p0

    .line 106
    iput-object v1, p3, Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;->password:Ljava/lang/String;

    throw p0
.end method

.method public manifest(Lcom/gmodvr/flat/SteamSession$Depot;)Lin/dragonbra/javasteam/types/DepotManifest;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/gmodvr/flat/SteamSession;->directory:Lin/dragonbra/javasteam/rpc/service/ContentServerDirectory;

    .line 303
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetManifestRequestCode_Request;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetManifestRequestCode_Request$Builder;

    move-result-object v1

    iget v2, p1, Lcom/gmodvr/flat/SteamSession$Depot;->app:I

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetManifestRequestCode_Request$Builder;->setAppId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetManifestRequestCode_Request$Builder;

    move-result-object v1

    iget v2, p1, Lcom/gmodvr/flat/SteamSession$Depot;->depot:I

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetManifestRequestCode_Request$Builder;->setDepotId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetManifestRequestCode_Request$Builder;

    move-result-object v1

    iget-wide v2, p1, Lcom/gmodvr/flat/SteamSession$Depot;->manifest:J

    invoke-virtual {v1, v2, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetManifestRequestCode_Request$Builder;->setManifestId(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetManifestRequestCode_Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetManifestRequestCode_Request$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetManifestRequestCode_Request;

    move-result-object v1

    .line 302
    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/rpc/service/ContentServerDirectory;->getManifestRequestCode(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetManifestRequestCode_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->toFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    const/16 v1, 0x2d

    .line 302
    invoke-static {v0, v1}, Lcom/gmodvr/flat/SteamSession;->await(Ljava/util/concurrent/CompletableFuture;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    .line 304
    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetManifestRequestCode_Response$Builder;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetManifestRequestCode_Response$Builder;->getManifestRequestCode()J

    move-result-wide v1

    .line 305
    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v0

    sget-object v3, Lin/dragonbra/javasteam/enums/EResult;->OK:Lin/dragonbra/javasteam/enums/EResult;

    if-ne v0, v3, :cond_52

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_52

    .line 306
    new-instance v0, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda0;-><init>(Lcom/gmodvr/flat/SteamSession;Lcom/gmodvr/flat/SteamSession$Depot;J)V

    const-string v1, "Could not download the Steam manifest. Check the connection and retry."

    invoke-direct {p0, p1, v0, v1}, Lcom/gmodvr/flat/SteamSession;->fromCdn(Lcom/gmodvr/flat/SteamSession$Depot;Lcom/gmodvr/flat/SteamSession$CdnRequest;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/types/DepotManifest;

    return-object p0

    .line 305
    :cond_52
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Steam denied this content manifest. Check game ownership and try again."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized servers(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/cdn/Server;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 236
    :try_start_1
    iget-object p1, p0, Lcom/gmodvr/flat/SteamSession;->servers:Ljava/util/List;

    if-nez p1, :cond_f7

    .line 237
    iget-object p1, p0, Lcom/gmodvr/flat/SteamSession;->directory:Lin/dragonbra/javasteam/rpc/service/ContentServerDirectory;

    .line 238
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetServersForSteamPipe_Request;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetServersForSteamPipe_Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/gmodvr/flat/SteamSession;->client:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/CMClient;->getCellID()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_15

    const/4 v1, 0x0

    goto :goto_1f

    :cond_15
    iget-object v1, p0, Lcom/gmodvr/flat/SteamSession;->client:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/CMClient;->getCellID()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1f
    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetServersForSteamPipe_Request$Builder;->setCellId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetServersForSteamPipe_Request$Builder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetServersForSteamPipe_Request$Builder;->setMaxServers(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetServersForSteamPipe_Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetServersForSteamPipe_Request$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetServersForSteamPipe_Request;

    move-result-object v0

    .line 237
    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/rpc/service/ContentServerDirectory;->getServersForSteamPipe(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetServersForSteamPipe_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p1

    .line 238
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->toFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    const/16 v0, 0x2d

    .line 237
    invoke-static {p1, v0}, Lcom/gmodvr/flat/SteamSession;->await(Ljava/util/concurrent/CompletableFuture;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    .line 239
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v0

    sget-object v1, Lin/dragonbra/javasteam/enums/EResult;->OK:Lin/dragonbra/javasteam/enums/EResult;

    if-ne v0, v1, :cond_dc

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmodvr/flat/SteamSession;->servers:Ljava/util/List;

    .line 241
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetServersForSteamPipe_Response$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetServersForSteamPipe_Response$Builder;->getServersList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5a
    :goto_5a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cb

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_ServerInfo;

    .line 242
    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_ServerInfo;->getUseAsProxy()Z

    move-result v1

    if-nez v1, :cond_5a

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_ServerInfo;->getSteamChinaOnly()Z

    move-result v1

    if-nez v1, :cond_5a

    .line 243
    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_ServerInfo;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CDN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8d

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_ServerInfo;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SteamCache"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    goto :goto_8d

    :catchall_8b
    move-exception p1

    goto :goto_fb

    .line 244
    :cond_8d
    :goto_8d
    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_ServerInfo;->getHttpsSupport()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mandatory"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a6

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_ServerInfo;->getHttpsSupport()Ljava/lang/String;

    move-result-object v1

    const-string v2, "optional"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a6

    goto :goto_5a

    .line 245
    :cond_a6
    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_ServerInfo;->getVhost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b5

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_ServerInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_b9

    :cond_b5
    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_ServerInfo;->getVhost()Ljava/lang/String;

    move-result-object v0

    .line 246
    :goto_b9
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5a

    iget-object v1, p0, Lcom/gmodvr/flat/SteamSession;->servers:Ljava/util/List;

    const/16 v2, 0x1bb

    invoke-static {v0, v2}, Lin/dragonbra/javasteam/steam/cdn/Server;->fromHostAndPort(Ljava/lang/String;I)Lin/dragonbra/javasteam/steam/cdn/Server;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 248
    :cond_cb
    iget-object p1, p0, Lcom/gmodvr/flat/SteamSession;->servers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d4

    goto :goto_f7

    :cond_d4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Steam returned no HTTPS content servers"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 239
    :cond_dc
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Steam CDN discovery failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_f7
    :goto_f7
    iget-object p1, p0, Lcom/gmodvr/flat/SteamSession;->servers:Ljava/util/List;
    :try_end_f9
    .catchall {:try_start_1 .. :try_end_f9} :catchall_8b

    monitor-exit p0

    return-object p1

    :goto_fb
    :try_start_fb
    monitor-exit p0
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_8b

    throw p1
.end method

.method public workshop(IJ)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 329
    iget-object p0, p0, Lcom/gmodvr/flat/SteamSession;->published:Lin/dragonbra/javasteam/rpc/service/PublishedFile;

    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Request;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Request$Builder;

    move-result-object v0

    .line 330
    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Request$Builder;->setAppid(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Request$Builder;->addPublishedfileids(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Request$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Request$Builder;->setIncludechildren(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Request$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Request$Builder;->setIncludetags(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Request$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Request;

    move-result-object p1

    .line 329
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/rpc/service/PublishedFile;->getDetails(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    .line 330
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->toFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    const/16 p1, 0x2d

    .line 329
    invoke-static {p0, p1}, Lcom/gmodvr/flat/SteamSession;->await(Ljava/util/concurrent/CompletableFuture;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    .line 331
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p1

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Response$Builder;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Response$Builder;->getPublishedfiledetailsList()Ljava/util/List;

    move-result-object p0

    invoke-static {p2, p3, p1, p0}, Lcom/gmodvr/flat/SteamSession;->workshopDetails(JLin/dragonbra/javasteam/enums/EResult;Ljava/util/List;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;

    move-result-object p0

    return-object p0
.end method

.method public workshopBatch(ILjava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 339
    invoke-virtual {p0}, Lcom/gmodvr/flat/SteamSession;->check()V

    .line 340
    iget-object p0, p0, Lcom/gmodvr/flat/SteamSession;->published:Lin/dragonbra/javasteam/rpc/service/PublishedFile;

    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Request;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Request$Builder;

    move-result-object v0

    .line 341
    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Request$Builder;->setAppid(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Request$Builder;->addAllPublishedfileids(Ljava/lang/Iterable;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Request$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Request$Builder;->setIncludechildren(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Request$Builder;->setIncludetags(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Request$Builder;

    move-result-object p1

    .line 342
    invoke-virtual {p1, p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Request$Builder;->setShortDescription(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Request$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Request;

    move-result-object p1

    .line 340
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/rpc/service/PublishedFile;->getDetails(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    .line 342
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->toFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    const/16 p1, 0x3c

    .line 340
    invoke-static {p0, p1}, Lcom/gmodvr/flat/SteamSession;->await(Ljava/util/concurrent/CompletableFuture;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    .line 343
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p1

    sget-object p2, Lin/dragonbra/javasteam/enums/EResult;->OK:Lin/dragonbra/javasteam/enums/EResult;

    if-ne p1, p2, :cond_45

    .line 345
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Response$Builder;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Response$Builder;->getPublishedfiledetailsList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 344
    :cond_45
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Workshop lookup failed (Steam result "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/enums/EResult;->code()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "). Resume to retry."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class com.gmodvr.flat.SteamSession.CdnRequest (com.gmodvr.flat.SteamSession$CdnRequest)
.class interface abstract Lcom/gmodvr/flat/SteamSession$CdnRequest;
.super Ljava/lang/Object;
.source "SteamSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/SteamSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CdnRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract run(Lin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/cdn/Server;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

###### Class com.gmodvr.flat.SteamSession.ConnectionLost (com.gmodvr.flat.SteamSession$ConnectionLost)
.class final Lcom/gmodvr/flat/SteamSession$ConnectionLost;
.super Ljava/io/IOException;
.source "SteamSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/SteamSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectionLost"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    const-string v0, "Steam disconnected. Resume to reconnect."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

###### Class com.gmodvr.flat.SteamSession.Depot (com.gmodvr.flat.SteamSession$Depot)
.class final Lcom/gmodvr/flat/SteamSession$Depot;
.super Ljava/lang/Object;
.source "SteamSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/SteamSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Depot"
.end annotation


# instance fields
.field final app:I

.field final depot:I

.field final key:[B

.field final manifest:J


# direct methods
.method public constructor <init>(IIJ[B)V
    .registers 6

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput p1, p0, Lcom/gmodvr/flat/SteamSession$Depot;->app:I

    iput p2, p0, Lcom/gmodvr/flat/SteamSession$Depot;->depot:I

    iput-wide p3, p0, Lcom/gmodvr/flat/SteamSession$Depot;->manifest:J

    iput-object p5, p0, Lcom/gmodvr/flat/SteamSession$Depot;->key:[B

    return-void
.end method

###### Class com.gmodvr.flat.SteamSession.Status (com.gmodvr.flat.SteamSession$Status)
.class interface abstract Lcom/gmodvr/flat/SteamSession$Status;
.super Ljava/lang/Object;
.source "SteamSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/SteamSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Status"
.end annotation


# virtual methods
.method public abstract show(Ljava/lang/String;)V
.end method

###### Class com.gmodvr.flat.SteamSession$$ExternalSyntheticLambda0 (com.gmodvr.flat.SteamSession$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/SteamSession$CdnRequest;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/SteamSession;

.field public final synthetic f$1:Lcom/gmodvr/flat/SteamSession$Depot;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/SteamSession;Lcom/gmodvr/flat/SteamSession$Depot;J)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/SteamSession;

    iput-object p2, p0, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda0;->f$1:Lcom/gmodvr/flat/SteamSession$Depot;

    iput-wide p3, p0, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda0;->f$2:J

    return-void
.end method


# virtual methods
.method public final run(Lin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;)Ljava/lang/Object;
    .registers 9

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/SteamSession;

    iget-object v1, p0, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda0;->f$1:Lcom/gmodvr/flat/SteamSession$Depot;

    iget-wide v2, p0, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda0;->f$2:J

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/gmodvr/flat/SteamSession;->$r8$lambda$cvw_LyckyXLkuBtqti0LB3b1VIg(Lcom/gmodvr/flat/SteamSession;Lcom/gmodvr/flat/SteamSession$Depot;JLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;)Lin/dragonbra/javasteam/types/DepotManifest;

    move-result-object p0

    return-object p0
.end method

###### Class com.gmodvr.flat.SteamSession$$ExternalSyntheticLambda1 (com.gmodvr.flat.SteamSession$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/SteamSession$CdnRequest;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/SteamSession;

.field public final synthetic f$1:Lin/dragonbra/javasteam/types/ChunkData;

.field public final synthetic f$2:Lcom/gmodvr/flat/SteamSession$Depot;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/SteamSession;Lin/dragonbra/javasteam/types/ChunkData;Lcom/gmodvr/flat/SteamSession$Depot;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/SteamSession;

    iput-object p2, p0, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda1;->f$1:Lin/dragonbra/javasteam/types/ChunkData;

    iput-object p3, p0, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda1;->f$2:Lcom/gmodvr/flat/SteamSession$Depot;

    return-void
.end method


# virtual methods
.method public final run(Lin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/SteamSession;

    iget-object v1, p0, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda1;->f$1:Lin/dragonbra/javasteam/types/ChunkData;

    iget-object p0, p0, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda1;->f$2:Lcom/gmodvr/flat/SteamSession$Depot;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/gmodvr/flat/SteamSession;->$r8$lambda$VghRTE-9L9zlxCM7uBAqWcOBoro(Lcom/gmodvr/flat/SteamSession;Lin/dragonbra/javasteam/types/ChunkData;Lcom/gmodvr/flat/SteamSession$Depot;Lin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

###### Class com.gmodvr.flat.SteamSession$$ExternalSyntheticLambda2 (com.gmodvr.flat.SteamSession$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lin/dragonbra/javasteam/util/compat/Consumer;


# instance fields
.field public final synthetic f$0:Lokhttp3/OkHttpClient;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/OkHttpClient;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda2;->f$0:Lokhttp3/OkHttpClient;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda2;->f$0:Lokhttp3/OkHttpClient;

    check-cast p1, Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/SteamSession;->$r8$lambda$qdM-u4YXF37NLo27gYKG_9Ld3Ww(Lokhttp3/OkHttpClient;Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;)V

    return-void
.end method

###### Class com.gmodvr.flat.SteamSession$$ExternalSyntheticLambda3 (com.gmodvr.flat.SteamSession$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lin/dragonbra/javasteam/util/compat/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/SteamSession;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/SteamSession;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda3;->f$0:Lcom/gmodvr/flat/SteamSession;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda3;->f$0:Lcom/gmodvr/flat/SteamSession;

    check-cast p1, Lin/dragonbra/javasteam/steam/steamclient/callbacks/ConnectedCallback;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/SteamSession;->$r8$lambda$bVL62OYm9V4s0DC8W1-pwWWXtI8(Lcom/gmodvr/flat/SteamSession;Lin/dragonbra/javasteam/steam/steamclient/callbacks/ConnectedCallback;)V

    return-void
.end method

###### Class com.gmodvr.flat.SteamSession$$ExternalSyntheticLambda4 (com.gmodvr.flat.SteamSession$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lin/dragonbra/javasteam/util/compat/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/SteamSession;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/SteamSession;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda4;->f$0:Lcom/gmodvr/flat/SteamSession;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda4;->f$0:Lcom/gmodvr/flat/SteamSession;

    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/SteamSession;->$r8$lambda$EgNdUXnTRLYuhEPdWU4lSCTyIic(Lcom/gmodvr/flat/SteamSession;Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;)V

    return-void
.end method

###### Class com.gmodvr.flat.SteamSession$$ExternalSyntheticLambda5 (com.gmodvr.flat.SteamSession$$ExternalSyntheticLambda5)
.class public final synthetic Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lin/dragonbra/javasteam/util/compat/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/SteamSession;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/SteamSession;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda5;->f$0:Lcom/gmodvr/flat/SteamSession;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda5;->f$0:Lcom/gmodvr/flat/SteamSession;

    check-cast p1, Lin/dragonbra/javasteam/steam/steamclient/callbacks/DisconnectedCallback;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/SteamSession;->$r8$lambda$iH4Fru3folVh6pTSF2inBY1xpwI(Lcom/gmodvr/flat/SteamSession;Lin/dragonbra/javasteam/steam/steamclient/callbacks/DisconnectedCallback;)V

    return-void
.end method

###### Class com.gmodvr.flat.SteamSession$$ExternalSyntheticLambda6 (com.gmodvr.flat.SteamSession$$ExternalSyntheticLambda6)
.class public final synthetic Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lin/dragonbra/javasteam/util/compat/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/SteamSession;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/SteamSession;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda6;->f$0:Lcom/gmodvr/flat/SteamSession;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda6;->f$0:Lcom/gmodvr/flat/SteamSession;

    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOffCallback;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/SteamSession;->$r8$lambda$xz98yTXpamCzGmYx04hXT7BmHDI(Lcom/gmodvr/flat/SteamSession;Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOffCallback;)V

    return-void
.end method

###### Class com.gmodvr.flat.SteamSession$$ExternalSyntheticLambda7 (com.gmodvr.flat.SteamSession$$ExternalSyntheticLambda7)
.class public final synthetic Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/SteamSession;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/SteamSession;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda7;->f$0:Lcom/gmodvr/flat/SteamSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/SteamSession$$ExternalSyntheticLambda7;->f$0:Lcom/gmodvr/flat/SteamSession;

    invoke-static {p0}, Lcom/gmodvr/flat/SteamSession;->$r8$lambda$B0C1HwpbOYRXM1DSJpQfjxrbydc(Lcom/gmodvr/flat/SteamSession;)V

    return-void
.end method
