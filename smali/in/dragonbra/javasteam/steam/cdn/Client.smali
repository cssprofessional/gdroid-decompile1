###### Class in.dragonbra.javasteam.steam.cdn.Client (in.dragonbra.javasteam.steam.cdn.Client)
.class public final Lin/dragonbra/javasteam/steam/cdn/Client;
.super Ljava/lang/Object;
.source "Client.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/cdn/Client$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/steam/cdn/Client$Companion;

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field private final httpClient:Lokhttp3/OkHttpClient;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lin/dragonbra/javasteam/steam/cdn/Client$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/steam/cdn/Client$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/steam/cdn/Client;->Companion:Lin/dragonbra/javasteam/steam/cdn/Client$Companion;

    .line 39
    const-class v0, Lin/dragonbra/javasteam/steam/cdn/Client;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/steam/cdn/Client;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;)V
    .registers 5

    const-string v0, "steamClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/cdn/Client;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 86
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/CMClient;->getConfiguration()Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->getHttpClient()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/cdn/Client;->httpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static final synthetic access$getHttpClient$p(Lin/dragonbra/javasteam/steam/cdn/Client;)Lokhttp3/OkHttpClient;
    .registers 1

    .line 33
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/cdn/Client;->httpClient:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public static final synthetic access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;
    .registers 1

    .line 33
    sget-object v0, Lin/dragonbra/javasteam/steam/cdn/Client;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-object v0
.end method

.method public static synthetic downloadDepotChunk$default(Lin/dragonbra/javasteam/steam/cdn/Client;ILin/dragonbra/javasteam/types/ChunkData;Lin/dragonbra/javasteam/steam/cdn/Server;[B[BLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 22

    and-int/lit8 v0, p9, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move-object v7, v1

    goto :goto_9

    :cond_7
    move-object/from16 v7, p5

    :goto_9
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_f

    move-object v8, v1

    goto :goto_11

    :cond_f
    move-object/from16 v8, p6

    :goto_11
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_17

    move-object v9, v1

    goto :goto_19

    :cond_17
    move-object/from16 v9, p7

    :goto_19
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v10, p8

    .line 194
    invoke-virtual/range {v2 .. v10}, Lin/dragonbra/javasteam/steam/cdn/Client;->downloadDepotChunk(ILin/dragonbra/javasteam/types/ChunkData;Lin/dragonbra/javasteam/steam/cdn/Server;[B[BLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic downloadDepotChunkFuture$default(Lin/dragonbra/javasteam/steam/cdn/Client;ILin/dragonbra/javasteam/types/ChunkData;Lin/dragonbra/javasteam/steam/cdn/Server;[B[BLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;
    .registers 20

    and-int/lit8 v0, p8, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move-object v7, v1

    goto :goto_8

    :cond_7
    move-object v7, p5

    :goto_8
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_e

    move-object v8, v1

    goto :goto_10

    :cond_e
    move-object/from16 v8, p6

    :goto_10
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_16

    move-object v9, v1

    goto :goto_18

    :cond_16
    move-object/from16 v9, p7

    :goto_18
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 344
    invoke-virtual/range {v2 .. v9}, Lin/dragonbra/javasteam/steam/cdn/Client;->downloadDepotChunkFuture(ILin/dragonbra/javasteam/types/ChunkData;Lin/dragonbra/javasteam/steam/cdn/Server;[B[BLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic downloadManifest-vpSrzaI$default(Lin/dragonbra/javasteam/steam/cdn/Client;IJJLin/dragonbra/javasteam/steam/cdn/Server;[BLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 26

    and-int/lit8 v0, p11, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move-object v9, v1

    goto :goto_9

    :cond_7
    move-object/from16 v9, p7

    :goto_9
    and-int/lit8 v0, p11, 0x20

    if-eqz v0, :cond_f

    move-object v10, v1

    goto :goto_11

    :cond_f
    move-object/from16 v10, p8

    :goto_11
    and-int/lit8 v0, p11, 0x40

    if-eqz v0, :cond_17

    move-object v11, v1

    goto :goto_19

    :cond_17
    move-object/from16 v11, p9

    :goto_19
    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v12, p10

    .line 112
    invoke-virtual/range {v2 .. v12}, Lin/dragonbra/javasteam/steam/cdn/Client;->downloadManifest-vpSrzaI(IJJLin/dragonbra/javasteam/steam/cdn/Server;[BLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic downloadManifestFuture$default(Lin/dragonbra/javasteam/steam/cdn/Client;IJJLin/dragonbra/javasteam/steam/cdn/Server;[BLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;
    .registers 24

    and-int/lit8 v0, p10, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move-object v9, v1

    goto :goto_9

    :cond_7
    move-object/from16 v9, p7

    :goto_9
    and-int/lit8 v0, p10, 0x20

    if-eqz v0, :cond_f

    move-object v10, v1

    goto :goto_11

    :cond_f
    move-object/from16 v10, p8

    :goto_11
    and-int/lit8 v0, p10, 0x40

    if-eqz v0, :cond_17

    move-object v11, v1

    goto :goto_19

    :cond_17
    move-object/from16 v11, p9

    :goto_19
    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    .line 292
    invoke-virtual/range {v2 .. v11}, Lin/dragonbra/javasteam/steam/cdn/Client;->downloadManifestFuture(IJJLin/dragonbra/javasteam/steam/cdn/Server;[BLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 4

    .line 92
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/cdn/Client;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/cdn/Client;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ConnectionPool;->evictAll()V

    .line 94
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/cdn/Client;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public final downloadDepotChunk(ILin/dragonbra/javasteam/types/ChunkData;Lin/dragonbra/javasteam/steam/cdn/Server;[B[BLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lin/dragonbra/javasteam/types/ChunkData;",
            "Lin/dragonbra/javasteam/steam/cdn/Server;",
            "[B[B",
            "Lin/dragonbra/javasteam/steam/cdn/Server;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 202
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v10, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;

    const/4 v9, 0x0

    move-object v1, v10

    move-object v2, p2

    move-object v3, p4

    move v4, p1

    move-object v5, p3

    move-object/from16 v6, p7

    move-object/from16 v7, p6

    move-object v8, p0

    invoke-direct/range {v1 .. v9}, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;-><init>(Lin/dragonbra/javasteam/types/ChunkData;[BILin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;Lin/dragonbra/javasteam/steam/cdn/Server;Lin/dragonbra/javasteam/steam/cdn/Client;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v1, p8

    invoke-static {v0, v10, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final downloadDepotChunkFuture(ILin/dragonbra/javasteam/types/ChunkData;Lin/dragonbra/javasteam/steam/cdn/Server;[B)Ljava/util/concurrent/CompletableFuture;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lin/dragonbra/javasteam/types/ChunkData;",
            "Lin/dragonbra/javasteam/steam/cdn/Server;",
            "[B)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 0
    const-string v0, "chunk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "server"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x70

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v10}, Lin/dragonbra/javasteam/steam/cdn/Client;->downloadDepotChunkFuture$default(Lin/dragonbra/javasteam/steam/cdn/Client;ILin/dragonbra/javasteam/types/ChunkData;Lin/dragonbra/javasteam/steam/cdn/Server;[B[BLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final downloadDepotChunkFuture(ILin/dragonbra/javasteam/types/ChunkData;Lin/dragonbra/javasteam/steam/cdn/Server;[B[B)Ljava/util/concurrent/CompletableFuture;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lin/dragonbra/javasteam/types/ChunkData;",
            "Lin/dragonbra/javasteam/steam/cdn/Server;",
            "[B[B)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 0
    const-string v0, "chunk"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "server"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x60

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v10}, Lin/dragonbra/javasteam/steam/cdn/Client;->downloadDepotChunkFuture$default(Lin/dragonbra/javasteam/steam/cdn/Client;ILin/dragonbra/javasteam/types/ChunkData;Lin/dragonbra/javasteam/steam/cdn/Server;[B[BLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final downloadDepotChunkFuture(ILin/dragonbra/javasteam/types/ChunkData;Lin/dragonbra/javasteam/steam/cdn/Server;[B[BLin/dragonbra/javasteam/steam/cdn/Server;)Ljava/util/concurrent/CompletableFuture;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lin/dragonbra/javasteam/types/ChunkData;",
            "Lin/dragonbra/javasteam/steam/cdn/Server;",
            "[B[B",
            "Lin/dragonbra/javasteam/steam/cdn/Server;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 0
    const-string v0, "chunk"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "server"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x40

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v10}, Lin/dragonbra/javasteam/steam/cdn/Client;->downloadDepotChunkFuture$default(Lin/dragonbra/javasteam/steam/cdn/Client;ILin/dragonbra/javasteam/types/ChunkData;Lin/dragonbra/javasteam/steam/cdn/Server;[B[BLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final downloadDepotChunkFuture(ILin/dragonbra/javasteam/types/ChunkData;Lin/dragonbra/javasteam/steam/cdn/Server;[B[BLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;)Ljava/util/concurrent/CompletableFuture;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lin/dragonbra/javasteam/types/ChunkData;",
            "Lin/dragonbra/javasteam/steam/cdn/Server;",
            "[B[B",
            "Lin/dragonbra/javasteam/steam/cdn/Server;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "chunk"

    move-object/from16 v4, p2

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "server"

    move-object/from16 v7, p3

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    move-object/from16 v3, p4

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v5, p0

    .line 355
    iget-object v12, v5, Lin/dragonbra/javasteam/steam/cdn/Client;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v13, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;

    const/4 v11, 0x0

    move-object v1, v13

    move-object/from16 v2, p5

    move v6, p1

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object v10, v0

    invoke-direct/range {v1 .. v11}, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;-><init>([B[BLin/dragonbra/javasteam/types/ChunkData;Lin/dragonbra/javasteam/steam/cdn/Client;ILin/dragonbra/javasteam/steam/cdn/Server;Lin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;Ljava/util/concurrent/CompletableFuture;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object p0, v12

    move-object p1, v3

    move-object/from16 p2, v4

    move-object/from16 p3, v13

    move/from16 p4, v1

    move-object/from16 p5, v2

    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-object v0
.end method

.method public final downloadManifest-vpSrzaI(IJJLin/dragonbra/javasteam/steam/cdn/Server;[BLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Lin/dragonbra/javasteam/steam/cdn/Server;",
            "[B",
            "Lin/dragonbra/javasteam/steam/cdn/Server;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/types/DepotManifest;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 120
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v13, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;

    const/4 v12, 0x0

    move-object v1, v13

    move-wide/from16 v2, p4

    move v4, p1

    move-wide/from16 v5, p2

    move-object/from16 v7, p6

    move-object/from16 v8, p9

    move-object/from16 v9, p8

    move-object v10, p0

    move-object/from16 v11, p7

    invoke-direct/range {v1 .. v12}, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;-><init>(JIJLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;Lin/dragonbra/javasteam/steam/cdn/Server;Lin/dragonbra/javasteam/steam/cdn/Client;[BLkotlin/coroutines/Continuation;)V

    move-object/from16 v1, p10

    invoke-static {v0, v13, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final downloadManifestFuture(IJJLin/dragonbra/javasteam/steam/cdn/Server;)Ljava/util/concurrent/CompletableFuture;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Lin/dragonbra/javasteam/steam/cdn/Server;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/types/DepotManifest;",
            ">;"
        }
    .end annotation

    .line 0
    const-string v0, "server"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v11, 0x70

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    invoke-static/range {v1 .. v12}, Lin/dragonbra/javasteam/steam/cdn/Client;->downloadManifestFuture$default(Lin/dragonbra/javasteam/steam/cdn/Client;IJJLin/dragonbra/javasteam/steam/cdn/Server;[BLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final downloadManifestFuture(IJJLin/dragonbra/javasteam/steam/cdn/Server;[B)Ljava/util/concurrent/CompletableFuture;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Lin/dragonbra/javasteam/steam/cdn/Server;",
            "[B)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/types/DepotManifest;",
            ">;"
        }
    .end annotation

    .line 0
    const-string v0, "server"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v11, 0x60

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v8, p7

    invoke-static/range {v1 .. v12}, Lin/dragonbra/javasteam/steam/cdn/Client;->downloadManifestFuture$default(Lin/dragonbra/javasteam/steam/cdn/Client;IJJLin/dragonbra/javasteam/steam/cdn/Server;[BLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final downloadManifestFuture(IJJLin/dragonbra/javasteam/steam/cdn/Server;[BLin/dragonbra/javasteam/steam/cdn/Server;)Ljava/util/concurrent/CompletableFuture;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Lin/dragonbra/javasteam/steam/cdn/Server;",
            "[B",
            "Lin/dragonbra/javasteam/steam/cdn/Server;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/types/DepotManifest;",
            ">;"
        }
    .end annotation

    .line 0
    const-string v0, "server"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v11, 0x40

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v1 .. v12}, Lin/dragonbra/javasteam/steam/cdn/Client;->downloadManifestFuture$default(Lin/dragonbra/javasteam/steam/cdn/Client;IJJLin/dragonbra/javasteam/steam/cdn/Server;[BLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final downloadManifestFuture(IJJLin/dragonbra/javasteam/steam/cdn/Server;[BLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;)Ljava/util/concurrent/CompletableFuture;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Lin/dragonbra/javasteam/steam/cdn/Server;",
            "[B",
            "Lin/dragonbra/javasteam/steam/cdn/Server;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/types/DepotManifest;",
            ">;"
        }
    .end annotation

    const-string v0, "server"

    move-object/from16 v8, p6

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object/from16 v2, p0

    .line 303
    iget-object v14, v2, Lin/dragonbra/javasteam/steam/cdn/Client;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v15, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;

    const/4 v13, 0x0

    move-object v1, v15

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object v12, v0

    invoke-direct/range {v1 .. v13}, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;-><init>(Lin/dragonbra/javasteam/steam/cdn/Client;IJJLin/dragonbra/javasteam/steam/cdn/Server;[BLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;Ljava/util/concurrent/CompletableFuture;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 p0, v14

    move-object/from16 p1, v3

    move-object/from16 p2, v4

    move-object/from16 p3, v15

    move/from16 p4, v1

    move-object/from16 p5, v2

    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-object v0
.end method

###### Class in.dragonbra.javasteam.steam.cdn.Client.Companion (in.dragonbra.javasteam.steam.cdn.Client$Companion)
.class public final Lin/dragonbra/javasteam/steam/cdn/Client$Companion;
.super Ljava/lang/Object;
.source "Client.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/cdn/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/cdn/Client$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$buildCommand(Lin/dragonbra/javasteam/steam/cdn/Client$Companion;Lin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;Ljava/lang/String;Lin/dragonbra/javasteam/steam/cdn/Server;)Lokhttp3/HttpUrl;
    .registers 5

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lin/dragonbra/javasteam/steam/cdn/Client$Companion;->buildCommand(Lin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;Ljava/lang/String;Lin/dragonbra/javasteam/steam/cdn/Server;)Lokhttp3/HttpUrl;

    move-result-object p0

    return-object p0
.end method

.method private final buildCommand(Lin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;Ljava/lang/String;Lin/dragonbra/javasteam/steam/cdn/Server;)Lokhttp3/HttpUrl;
    .registers 23

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 47
    invoke-virtual/range {p1 .. p1}, Lin/dragonbra/javasteam/steam/cdn/Server;->getProtocol()Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;

    move-result-object v2

    sget-object v3, Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;->HTTP:Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;

    if-ne v2, v3, :cond_d

    const-string v2, "http"

    goto :goto_f

    :cond_d
    const-string v2, "https"

    .line 48
    :goto_f
    invoke-virtual/range {p1 .. p1}, Lin/dragonbra/javasteam/steam/cdn/Server;->getVHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-nez v3, :cond_1f

    invoke-virtual/range {p1 .. p1}, Lin/dragonbra/javasteam/steam/cdn/Server;->getHost()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1f

    move-object v7, v4

    goto :goto_20

    :cond_1f
    move-object v7, v3

    .line 49
    :goto_20
    invoke-virtual/range {p1 .. p1}, Lin/dragonbra/javasteam/steam/cdn/Server;->getPort()I

    move-result v3

    if-eqz p4, :cond_73

    .line 52
    invoke-virtual/range {p4 .. p4}, Lin/dragonbra/javasteam/steam/cdn/Server;->getUseAsProxy()Z

    move-result v5

    if-eqz v5, :cond_73

    invoke-virtual/range {p4 .. p4}, Lin/dragonbra/javasteam/steam/cdn/Server;->getProxyRequestPathTemplate()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_73

    .line 53
    invoke-virtual/range {p4 .. p4}, Lin/dragonbra/javasteam/steam/cdn/Server;->getProxyRequestPathTemplate()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v9, 0x4

    const/4 v10, 0x0

    .line 54
    const-string v6, "%host%"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v12, "%path%"

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-virtual/range {p4 .. p4}, Lin/dragonbra/javasteam/steam/cdn/Server;->getVHost()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6d

    invoke-virtual/range {p4 .. p4}, Lin/dragonbra/javasteam/steam/cdn/Server;->getHost()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6d

    move-object v7, v4

    goto :goto_6e

    :cond_6d
    move-object v7, v5

    .line 58
    :goto_6e
    invoke-virtual/range {p4 .. p4}, Lin/dragonbra/javasteam/steam/cdn/Server;->getPort()I

    move-result v5

    goto :goto_7a

    :cond_73
    move-object/from16 v5, p2

    move-object/from16 v17, v5

    move v5, v3

    move-object/from16 v3, v17

    .line 62
    :goto_7a
    new-instance v6, Lokhttp3/HttpUrl$Builder;

    invoke-direct {v6}, Lokhttp3/HttpUrl$Builder;-><init>()V

    .line 63
    invoke-virtual {v6, v2}, Lokhttp3/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    .line 64
    invoke-virtual {v2, v7}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    .line 65
    invoke-virtual {v2, v5}, Lokhttp3/HttpUrl$Builder;->port(I)Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    .line 66
    new-array v5, v1, [C

    const/16 v6, 0x2f

    aput-char v6, v5, v0

    invoke-static {v3, v5}, Lkotlin/text/StringsKt__StringsKt;->trimStart(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    if-eqz p3, :cond_103

    .line 69
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_103

    .line 70
    const-string v3, "&"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p3

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 71
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b5
    :goto_b5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_103

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    .line 72
    const-string v5, "="

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 73
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_e7

    .line 74
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v6, v5}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto :goto_b5

    .line 75
    :cond_e7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v1, :cond_b5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_b5

    .line 76
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto :goto_b5

    .line 82
    :cond_103
    invoke-virtual {v2}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic buildCommand$default(Lin/dragonbra/javasteam/steam/cdn/Client$Companion;Lin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;Ljava/lang/String;Lin/dragonbra/javasteam/steam/cdn/Server;ILjava/lang/Object;)Lokhttp3/HttpUrl;
    .registers 8

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move-object p3, v0

    :cond_6
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_b

    move-object p4, v0

    .line 41
    :cond_b
    invoke-direct {p0, p1, p2, p3, p4}, Lin/dragonbra/javasteam/steam/cdn/Client$Companion;->buildCommand(Lin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;Ljava/lang/String;Lin/dragonbra/javasteam/steam/cdn/Server;)Lokhttp3/HttpUrl;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.cdn.Client.AnonymousClass2 (in.dragonbra.javasteam.steam.cdn.Client$downloadDepotChunk$2)
.class final Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Client.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/cdn/Client;->downloadDepotChunk(ILin/dragonbra/javasteam/types/ChunkData;Lin/dragonbra/javasteam/steam/cdn/Server;[B[BLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Client.kt\nin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,396:1\n1#2:397\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.steam.cdn.Client$downloadDepotChunk$2"
    f = "Client.kt"
    l = {
        0xde
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $cdnAuthToken:Ljava/lang/String;

.field final synthetic $chunk:Lin/dragonbra/javasteam/types/ChunkData;

.field final synthetic $depotId:I

.field final synthetic $destination:[B

.field final synthetic $proxyServer:Lin/dragonbra/javasteam/steam/cdn/Server;

.field final synthetic $server:Lin/dragonbra/javasteam/steam/cdn/Server;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/cdn/Client;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/types/ChunkData;[BILin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;Lin/dragonbra/javasteam/steam/cdn/Server;Lin/dragonbra/javasteam/steam/cdn/Client;Lkotlin/coroutines/Continuation;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/types/ChunkData;",
            "[BI",
            "Lin/dragonbra/javasteam/steam/cdn/Server;",
            "Ljava/lang/String;",
            "Lin/dragonbra/javasteam/steam/cdn/Server;",
            "Lin/dragonbra/javasteam/steam/cdn/Client;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->$chunk:Lin/dragonbra/javasteam/types/ChunkData;

    iput-object p2, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->$destination:[B

    iput p3, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->$depotId:I

    iput-object p4, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->$server:Lin/dragonbra/javasteam/steam/cdn/Server;

    iput-object p5, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->$cdnAuthToken:Ljava/lang/String;

    iput-object p6, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->$proxyServer:Lin/dragonbra/javasteam/steam/cdn/Server;

    iput-object p7, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->this$0:Lin/dragonbra/javasteam/steam/cdn/Client;

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
    new-instance p1, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->$chunk:Lin/dragonbra/javasteam/types/ChunkData;

    iget-object v2, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->$destination:[B

    iget v3, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->$depotId:I

    iget-object v4, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->$server:Lin/dragonbra/javasteam/steam/cdn/Server;

    iget-object v5, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->$cdnAuthToken:Ljava/lang/String;

    iget-object v6, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->$proxyServer:Lin/dragonbra/javasteam/steam/cdn/Server;

    iget-object v7, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->this$0:Lin/dragonbra/javasteam/steam/cdn/Client;

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;-><init>(Lin/dragonbra/javasteam/types/ChunkData;[BILin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;Lin/dragonbra/javasteam/steam/cdn/Server;Lin/dragonbra/javasteam/steam/cdn/Client;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 202
    iget v1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_27

    if-ne v1, v2, :cond_1f

    iget-object v0, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->L$2:Ljava/lang/Object;

    check-cast v0, Lokhttp3/Request;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    :try_start_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1c

    goto/16 :goto_ae

    :catch_1c
    move-exception p0

    goto/16 :goto_194

    :cond_1f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_27
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 203
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->$chunk:Lin/dragonbra/javasteam/types/ChunkData;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/ChunkData;->getChunkID()[B

    move-result-object p1

    if-eqz p1, :cond_1c5

    .line 205
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->$destination:[B

    array-length p1, p1

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->$chunk:Lin/dragonbra/javasteam/types/ChunkData;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/types/ChunkData;->getCompressedLength()I

    move-result v1

    if-ne p1, v1, :cond_1bd

    .line 209
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->$chunk:Lin/dragonbra/javasteam/types/ChunkData;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/ChunkData;->getChunkID()[B

    move-result-object p1

    invoke-static {p1}, Lin/dragonbra/javasteam/util/Strings;->toHex([B)Ljava/lang/String;

    move-result-object p1

    .line 210
    iget v1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->$depotId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "depot/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/chunk/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    sget-object v3, Lin/dragonbra/javasteam/steam/cdn/ClientLancache;->INSTANCE:Lin/dragonbra/javasteam/steam/cdn/ClientLancache;

    invoke-virtual {v3}, Lin/dragonbra/javasteam/steam/cdn/ClientLancache;->getUseLanCacheServer()Z

    move-result v4

    if-eqz v4, :cond_73

    .line 213
    iget-object v4, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->$server:Lin/dragonbra/javasteam/steam/cdn/Server;

    iget-object v5, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->$cdnAuthToken:Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v5}, Lin/dragonbra/javasteam/steam/cdn/ClientLancache;->buildLancacheRequest(Lin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object v3

    goto :goto_8c

    .line 215
    :cond_73
    sget-object v3, Lin/dragonbra/javasteam/steam/cdn/Client;->Companion:Lin/dragonbra/javasteam/steam/cdn/Client$Companion;

    iget-object v4, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->$server:Lin/dragonbra/javasteam/steam/cdn/Server;

    iget-object v5, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->$cdnAuthToken:Ljava/lang/String;

    iget-object v6, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->$proxyServer:Lin/dragonbra/javasteam/steam/cdn/Server;

    invoke-static {v3, v4, v1, v5, v6}, Lin/dragonbra/javasteam/steam/cdn/Client$Companion;->access$buildCommand(Lin/dragonbra/javasteam/steam/cdn/Client$Companion;Lin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;Ljava/lang/String;Lin/dragonbra/javasteam/steam/cdn/Server;)Lokhttp3/HttpUrl;

    move-result-object v3

    .line 216
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    .line 217
    invoke-virtual {v4, v3}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 218
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    .line 222
    :goto_8c
    :try_start_8c
    iget-object v4, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->this$0:Lin/dragonbra/javasteam/steam/cdn/Client;

    invoke-static {v4}, Lin/dragonbra/javasteam/steam/cdn/Client;->access$getHttpClient$p(Lin/dragonbra/javasteam/steam/cdn/Client;)Lokhttp3/OkHttpClient;

    move-result-object v4

    invoke-virtual {v4, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v4

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->L$0:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->L$1:Ljava/lang/Object;

    iput-object v3, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->L$2:Ljava/lang/Object;

    iput v2, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->label:I

    invoke-static {v4, p0}, Lokhttp3/coroutines/ExecuteAsyncKt;->executeAsync(Lokhttp3/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_aa} :catch_192

    if-ne p1, v0, :cond_ad

    return-object v0

    :cond_ad
    move-object v0, v3

    .line 202
    :goto_ae
    :try_start_ae
    check-cast p1, Lokhttp3/Response;

    .line 224
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->$chunk:Lin/dragonbra/javasteam/types/ChunkData;

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunk$2;->$destination:[B
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b4} :catch_1c

    .line 225
    :try_start_b4
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v2
    :try_end_b8
    .catchall {:try_start_b4 .. :try_end_b8} :catchall_108

    const-string v3, ")"

    if-eqz v2, :cond_162

    .line 232
    :try_start_bc
    invoke-virtual {v1}, Lin/dragonbra/javasteam/types/ChunkData;->getCompressedLength()I

    move-result v2

    .line 234
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4
    :try_end_c8
    .catchall {:try_start_bc .. :try_end_c8} :catchall_108

    long-to-int v4, v4

    const-string v5, ", but should be "

    const/4 v6, 0x0

    if-lez v4, :cond_10b

    .line 235
    :try_start_ce
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v7

    long-to-int v2, v7

    .line 238
    invoke-virtual {v1}, Lin/dragonbra/javasteam/types/ChunkData;->getCompressedLength()I

    move-result v4

    if-lez v4, :cond_117

    invoke-virtual {v1}, Lin/dragonbra/javasteam/types/ChunkData;->getCompressedLength()I

    move-result v4

    if-ne v2, v4, :cond_e4

    goto :goto_117

    .line 239
    :cond_e4
    new-instance p0, Lin/dragonbra/javasteam/util/SteamKitWebRequestException;

    .line 240
    invoke-virtual {v1}, Lin/dragonbra/javasteam/types/ChunkData;->getCompressedLength()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content-Length mismatch for depot chunk! (was "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-direct {p0, v1}, Lin/dragonbra/javasteam/util/SteamKitWebRequestException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_108
    move-exception p0

    goto/16 :goto_18c

    :cond_10b
    if-lez v2, :cond_15a

    .line 244
    invoke-static {}, Lin/dragonbra/javasteam/steam/cdn/Client;->access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v1

    const-string v4, "Response does not have Content-Length, falling back to chunk.CompressedLength."

    const/4 v7, 0x2

    invoke-static {v1, v4, v6, v7, v6}, Lin/dragonbra/javasteam/util/log/Logger;->debug$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 252
    :cond_117
    :goto_117
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v1

    .line 254
    array-length v4, v1

    if-eqz v4, :cond_152

    .line 258
    array-length v4, v1

    if-ne v4, v2, :cond_131

    const/4 v3, 0x0

    .line 264
    invoke-static {v1, v3, p0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_12d
    .catchall {:try_start_ce .. :try_end_12d} :catchall_108

    .line 224
    :try_start_12d
    invoke-static {p1, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_130} :catch_1c

    return-object p0

    .line 259
    :cond_131
    :try_start_131
    new-instance p0, Lin/dragonbra/javasteam/util/SteamKitWebRequestException;

    .line 260
    array-length v1, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Length mismatch after downloading depot chunk! (was "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-direct {p0, v1}, Lin/dragonbra/javasteam/util/SteamKitWebRequestException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 255
    :cond_152
    new-instance p0, Lin/dragonbra/javasteam/util/SteamKitWebRequestException;

    const-string v1, "Response is empty"

    invoke-direct {p0, v1}, Lin/dragonbra/javasteam/util/SteamKitWebRequestException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 246
    :cond_15a
    new-instance p0, Lin/dragonbra/javasteam/util/SteamKitWebRequestException;

    .line 247
    const-string v1, "Response does not have Content-Length and chunk.CompressedLength is not set."

    .line 246
    invoke-direct {p0, v1, p1}, Lin/dragonbra/javasteam/util/SteamKitWebRequestException;-><init>(Ljava/lang/String;Lokhttp3/Response;)V

    throw p0

    .line 226
    :cond_162
    new-instance p0, Lin/dragonbra/javasteam/util/SteamKitWebRequestException;

    .line 227
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Response status code does not indicate success: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-direct {p0, v1, p1}, Lin/dragonbra/javasteam/util/SteamKitWebRequestException;-><init>(Ljava/lang/String;Lokhttp3/Response;)V

    throw p0
    :try_end_18c
    .catchall {:try_start_131 .. :try_end_18c} :catchall_108

    .line 224
    :goto_18c
    :try_start_18c
    throw p0
    :try_end_18d
    .catchall {:try_start_18c .. :try_end_18d} :catchall_18d

    :catchall_18d
    move-exception v1

    :try_start_18e
    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_192
    .catch Ljava/lang/Exception; {:try_start_18e .. :try_end_192} :catch_1c

    :catch_192
    move-exception p0

    move-object v0, v3

    .line 268
    :goto_194
    invoke-static {}, Lin/dragonbra/javasteam/steam/cdn/Client;->access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object p1

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to download a depot chunk "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 269
    throw p0

    .line 206
    :cond_1bd
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The destination buffer must be the same size as the chunk CompressedLength (Since we take out decompression step from download"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 203
    :cond_1c5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Chunk must have a ChunkID."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class in.dragonbra.javasteam.steam.cdn.Client.AnonymousClass1 (in.dragonbra.javasteam.steam.cdn.Client$downloadDepotChunkFuture$1)
.class final Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Client.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/cdn/Client;->downloadDepotChunkFuture(ILin/dragonbra/javasteam/types/ChunkData;Lin/dragonbra/javasteam/steam/cdn/Server;[B[BLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;)Ljava/util/concurrent/CompletableFuture;
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
    c = "in.dragonbra.javasteam.steam.cdn.Client$downloadDepotChunkFuture$1"
    f = "Client.kt"
    l = {
        0x171
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $cdnAuthToken:Ljava/lang/String;

.field final synthetic $chunk:Lin/dragonbra/javasteam/types/ChunkData;

.field final synthetic $depotId:I

.field final synthetic $depotKey:[B

.field final synthetic $destination:[B

.field final synthetic $future:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $proxyServer:Lin/dragonbra/javasteam/steam/cdn/Server;

.field final synthetic $server:Lin/dragonbra/javasteam/steam/cdn/Server;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/cdn/Client;


# direct methods
.method public constructor <init>([B[BLin/dragonbra/javasteam/types/ChunkData;Lin/dragonbra/javasteam/steam/cdn/Client;ILin/dragonbra/javasteam/steam/cdn/Server;Lin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;Ljava/util/concurrent/CompletableFuture;Lkotlin/coroutines/Continuation;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Lin/dragonbra/javasteam/types/ChunkData;",
            "Lin/dragonbra/javasteam/steam/cdn/Client;",
            "I",
            "Lin/dragonbra/javasteam/steam/cdn/Server;",
            "Lin/dragonbra/javasteam/steam/cdn/Server;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$depotKey:[B

    iput-object p2, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$destination:[B

    iput-object p3, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$chunk:Lin/dragonbra/javasteam/types/ChunkData;

    iput-object p4, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->this$0:Lin/dragonbra/javasteam/steam/cdn/Client;

    iput p5, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$depotId:I

    iput-object p6, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$server:Lin/dragonbra/javasteam/steam/cdn/Server;

    iput-object p7, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$proxyServer:Lin/dragonbra/javasteam/steam/cdn/Server;

    iput-object p8, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$cdnAuthToken:Ljava/lang/String;

    iput-object p9, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$future:Ljava/util/concurrent/CompletableFuture;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p10}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 14
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
    new-instance p1, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$depotKey:[B

    iget-object v2, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$destination:[B

    iget-object v3, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$chunk:Lin/dragonbra/javasteam/types/ChunkData;

    iget-object v4, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->this$0:Lin/dragonbra/javasteam/steam/cdn/Client;

    iget v5, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$depotId:I

    iget-object v6, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$server:Lin/dragonbra/javasteam/steam/cdn/Server;

    iget-object v7, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$proxyServer:Lin/dragonbra/javasteam/steam/cdn/Server;

    iget-object v8, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$cdnAuthToken:Ljava/lang/String;

    iget-object v9, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$future:Ljava/util/concurrent/CompletableFuture;

    move-object v0, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;-><init>([B[BLin/dragonbra/javasteam/types/ChunkData;Lin/dragonbra/javasteam/steam/cdn/Client;ILin/dragonbra/javasteam/steam/cdn/Server;Lin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;Ljava/util/concurrent/CompletableFuture;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 355
    iget v1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1e

    if-ne v1, v2, :cond_16

    iget-object v0, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->L$0:Ljava/lang/Object;

    check-cast v0, [B

    :try_start_f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_13

    goto :goto_69

    :catch_13
    move-exception p1

    goto/16 :goto_9d

    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 357
    :try_start_21
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$depotKey:[B

    if-eqz p1, :cond_39

    .line 358
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$destination:[B

    array-length p1, p1

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$chunk:Lin/dragonbra/javasteam/types/ChunkData;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/types/ChunkData;->getCompressedLength()I

    move-result v1

    if-lt p1, v1, :cond_31

    goto :goto_44

    .line 359
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The destination buffer must be longer than the chunk CompressedLength (since no depot key was provided)."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 362
    :cond_39
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$destination:[B

    array-length p1, p1

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$chunk:Lin/dragonbra/javasteam/types/ChunkData;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/types/ChunkData;->getCompressedLength()I

    move-result v1

    if-ne p1, v1, :cond_95

    .line 367
    :goto_44
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$chunk:Lin/dragonbra/javasteam/types/ChunkData;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/ChunkData;->getCompressedLength()I

    move-result p1

    new-array p1, p1, [B

    .line 369
    iget-object v3, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->this$0:Lin/dragonbra/javasteam/steam/cdn/Client;

    .line 370
    iget v4, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$depotId:I

    .line 371
    iget-object v5, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$chunk:Lin/dragonbra/javasteam/types/ChunkData;

    .line 372
    iget-object v6, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$server:Lin/dragonbra/javasteam/steam/cdn/Server;

    .line 374
    iget-object v8, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$depotKey:[B

    .line 375
    iget-object v9, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$proxyServer:Lin/dragonbra/javasteam/steam/cdn/Server;

    .line 376
    iget-object v10, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$cdnAuthToken:Ljava/lang/String;

    .line 369
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->label:I

    move-object v7, p1

    move-object v11, p0

    invoke-virtual/range {v3 .. v11}, Lin/dragonbra/javasteam/steam/cdn/Client;->downloadDepotChunk(ILin/dragonbra/javasteam/types/ChunkData;Lin/dragonbra/javasteam/steam/cdn/Server;[B[BLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_67

    return-object v0

    :cond_67
    move-object v0, p1

    move-object p1, v1

    :goto_69
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 379
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$depotKey:[B

    if-eqz v1, :cond_85

    .line 380
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$chunk:Lin/dragonbra/javasteam/types/ChunkData;

    iget-object v2, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$destination:[B

    invoke-static {p1, v0, v2, v1}, Lin/dragonbra/javasteam/steam/cdn/DepotChunk;->process(Lin/dragonbra/javasteam/types/ChunkData;[B[B[B)I

    move-result p1

    .line 381
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$future:Ljava/util/concurrent/CompletableFuture;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_a2

    .line 383
    :cond_85
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$destination:[B

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$future:Ljava/util/concurrent/CompletableFuture;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_a2

    .line 363
    :cond_95
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The destination buffer must be the same size as the chunk UncompressedLength."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_9d} :catch_13

    .line 387
    :goto_9d
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadDepotChunkFuture$1;->$future:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 389
    :goto_a2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.cdn.Client.C00111 (in.dragonbra.javasteam.steam.cdn.Client$downloadManifestFuture$1)
.class final Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Client.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/cdn/Client;->downloadManifestFuture(IJJLin/dragonbra/javasteam/steam/cdn/Server;[BLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;)Ljava/util/concurrent/CompletableFuture;
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
    c = "in.dragonbra.javasteam.steam.cdn.Client$downloadManifestFuture$1"
    f = "Client.kt"
    l = {
        0x131
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $cdnAuthToken:Ljava/lang/String;

.field final synthetic $depotId:I

.field final synthetic $depotKey:[B

.field final synthetic $future:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/types/DepotManifest;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $manifestId:J

.field final synthetic $manifestRequestCode:J

.field final synthetic $proxyServer:Lin/dragonbra/javasteam/steam/cdn/Server;

.field final synthetic $server:Lin/dragonbra/javasteam/steam/cdn/Server;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/cdn/Client;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/cdn/Client;IJJLin/dragonbra/javasteam/steam/cdn/Server;[BLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;Ljava/util/concurrent/CompletableFuture;Lkotlin/coroutines/Continuation;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/cdn/Client;",
            "IJJ",
            "Lin/dragonbra/javasteam/steam/cdn/Server;",
            "[B",
            "Lin/dragonbra/javasteam/steam/cdn/Server;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/types/DepotManifest;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;->this$0:Lin/dragonbra/javasteam/steam/cdn/Client;

    iput p2, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;->$depotId:I

    iput-wide p3, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;->$manifestId:J

    iput-wide p5, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;->$manifestRequestCode:J

    iput-object p7, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;->$server:Lin/dragonbra/javasteam/steam/cdn/Server;

    iput-object p8, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;->$depotKey:[B

    iput-object p9, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;->$proxyServer:Lin/dragonbra/javasteam/steam/cdn/Server;

    iput-object p10, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;->$cdnAuthToken:Ljava/lang/String;

    iput-object p11, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;->$future:Ljava/util/concurrent/CompletableFuture;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p12}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 16
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
    new-instance p1, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;->this$0:Lin/dragonbra/javasteam/steam/cdn/Client;

    iget v2, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;->$depotId:I

    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;->$manifestId:J

    iget-wide v5, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;->$manifestRequestCode:J

    iget-object v7, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;->$server:Lin/dragonbra/javasteam/steam/cdn/Server;

    iget-object v8, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;->$depotKey:[B

    iget-object v9, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;->$proxyServer:Lin/dragonbra/javasteam/steam/cdn/Server;

    iget-object v10, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;->$cdnAuthToken:Ljava/lang/String;

    iget-object v11, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;->$future:Ljava/util/concurrent/CompletableFuture;

    move-object v0, p1

    move-object v12, p2

    invoke-direct/range {v0 .. v12}, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;-><init>(Lin/dragonbra/javasteam/steam/cdn/Client;IJJLin/dragonbra/javasteam/steam/cdn/Server;[BLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;Ljava/util/concurrent/CompletableFuture;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 303
    iget v1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    if-ne v1, v2, :cond_11

    :try_start_b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_3b

    :catch_f
    move-exception p1

    goto :goto_43

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 305
    :try_start_1c
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;->this$0:Lin/dragonbra/javasteam/steam/cdn/Client;

    .line 306
    iget p1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;->$depotId:I

    .line 307
    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;->$manifestId:J

    .line 308
    iget-wide v5, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;->$manifestRequestCode:J

    invoke-static {v5, v6}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v5

    .line 309
    iget-object v7, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;->$server:Lin/dragonbra/javasteam/steam/cdn/Server;

    .line 310
    iget-object v8, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;->$depotKey:[B

    .line 311
    iget-object v9, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;->$proxyServer:Lin/dragonbra/javasteam/steam/cdn/Server;

    .line 312
    iget-object v10, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;->$cdnAuthToken:Ljava/lang/String;

    .line 305
    iput v2, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;->label:I

    move v2, p1

    move-object v11, p0

    invoke-virtual/range {v1 .. v11}, Lin/dragonbra/javasteam/steam/cdn/Client;->downloadManifest-vpSrzaI(IJJLin/dragonbra/javasteam/steam/cdn/Server;[BLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3b

    return-object v0

    .line 303
    :cond_3b
    :goto_3b
    check-cast p1, Lin/dragonbra/javasteam/types/DepotManifest;

    .line 314
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;->$future:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_42} :catch_f

    goto :goto_48

    .line 316
    :goto_43
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifestFuture$1;->$future:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 318
    :goto_48
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
