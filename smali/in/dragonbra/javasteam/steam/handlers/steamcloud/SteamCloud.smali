###### Class in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud (in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;
.super Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;
.source "SteamCloud.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSteamCloud.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SteamCloud.kt\nin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud\n+ 2 SteamUnifiedMessages.kt\nin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages\n*L\n1#1,547:1\n32#2:548\n32#2:549\n*S KotlinDebug\n*F\n+ 1 SteamCloud.kt\nin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud\n*L\n53#1:548\n58#1:549\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$Companion;


# instance fields
.field private final clientMetrics$delegate:Lkotlin/Lazy;

.field private final cloudService$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$0rWQtN1DYc4rBAKC02k2_nM08QY(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;)Lin/dragonbra/javasteam/rpc/service/ClientMetrics;
    .registers 1

    .line 0
    invoke-static {p0}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->clientMetrics_delegate$lambda$0(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;)Lin/dragonbra/javasteam/rpc/service/ClientMetrics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lQlTllm3rOej8R2QpI7V3E0F9yI(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;)Lin/dragonbra/javasteam/rpc/service/Cloud;
    .registers 1

    .line 0
    invoke-static {p0}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->cloudService_delegate$lambda$0(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;)Lin/dragonbra/javasteam/rpc/service/Cloud;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->Companion:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;-><init>()V

    .line 50
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$$ExternalSyntheticLambda0;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->cloudService$delegate:Lkotlin/Lazy;

    .line 55
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$$ExternalSyntheticLambda1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->clientMetrics$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getCloudService(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;)Lin/dragonbra/javasteam/rpc/service/Cloud;
    .registers 1

    .line 47
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->getCloudService()Lin/dragonbra/javasteam/rpc/service/Cloud;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic appCloudSyncStats$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;ILin/dragonbra/javasteam/enums/EPlatformType;ZZIIIJJJJJJJJJJJJIIILjava/lang/Object;)V
    .registers 73

    move/from16 v0, p34

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move v6, v2

    goto :goto_b

    :cond_9
    move/from16 v6, p3

    :goto_b
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_11

    move v8, v2

    goto :goto_13

    :cond_11
    move/from16 v8, p5

    :goto_13
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_19

    move v9, v2

    goto :goto_1b

    :cond_19
    move/from16 v9, p6

    :goto_1b
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_21

    move v10, v2

    goto :goto_23

    :cond_21
    move/from16 v10, p7

    :goto_23
    and-int/lit16 v1, v0, 0x80

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_2b

    move-wide v11, v2

    goto :goto_2d

    :cond_2b
    move-wide/from16 v11, p8

    :goto_2d
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_33

    move-wide v13, v2

    goto :goto_35

    :cond_33
    move-wide/from16 v13, p10

    :goto_35
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_3c

    move-wide/from16 v21, v2

    goto :goto_3e

    :cond_3c
    move-wide/from16 v21, p18

    :goto_3e
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_45

    move-wide/from16 v23, v2

    goto :goto_47

    :cond_45
    move-wide/from16 v23, p20

    :goto_47
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_4e

    move-wide/from16 v25, v2

    goto :goto_50

    :cond_4e
    move-wide/from16 v25, p22

    :goto_50
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_58

    move-wide/from16 v29, v2

    goto :goto_5a

    :cond_58
    move-wide/from16 v29, p26

    :goto_5a
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_62

    move-wide/from16 v31, v2

    goto :goto_64

    :cond_62
    move-wide/from16 v31, p28

    :goto_64
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_6c

    move-wide/from16 v33, v2

    goto :goto_6e

    :cond_6c
    move-wide/from16 v33, p30

    :goto_6e
    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_77

    const/4 v0, 0x1

    move/from16 v35, v0

    goto :goto_79

    :cond_77
    move/from16 v35, p32

    :goto_79
    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v7, p4

    move-wide/from16 v15, p12

    move-wide/from16 v17, p14

    move-wide/from16 v19, p16

    move-wide/from16 v27, p24

    move/from16 v36, p33

    .line 340
    invoke-virtual/range {v3 .. v36}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->appCloudSyncStats(ILin/dragonbra/javasteam/enums/EPlatformType;ZZIIIJJJJJJJJJJJJII)V

    return-void
.end method

.method public static synthetic beginAppUploadBatch$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;ILjava/lang/String;Ljava/util/List;Ljava/util/List;JJLkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;
    .registers 24

    and-int/lit8 v0, p10, 0x2

    if-eqz v0, :cond_f

    .line 201
    invoke-static {}, Lin/dragonbra/javasteam/util/HardwareUtils;->getMachineName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getMachineName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    goto :goto_10

    :cond_f
    move-object v4, p2

    :goto_10
    and-int/lit8 v0, p10, 0x4

    if-eqz v0, :cond_1a

    .line 202
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v5, v0

    goto :goto_1b

    :cond_1a
    move-object v5, p3

    :goto_1b
    and-int/lit8 v0, p10, 0x8

    if-eqz v0, :cond_25

    .line 203
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v6, v0

    goto :goto_27

    :cond_25
    move-object/from16 v6, p4

    :goto_27
    and-int/lit8 v0, p10, 0x40

    if-eqz v0, :cond_35

    .line 206
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    move-object v11, v0

    goto :goto_37

    :cond_35
    move-object/from16 v11, p9

    :goto_37
    move-object v2, p0

    move v3, p1

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    .line 199
    invoke-virtual/range {v2 .. v11}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->beginAppUploadBatch(ILjava/lang/String;Ljava/util/List;Ljava/util/List;JJLkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic beginFileUpload$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;III[BLjava/util/Date;Ljava/lang/String;IIZZLjava/lang/Integer;JLkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;
    .registers 34

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_9

    const/4 v1, -0x1

    move v9, v1

    goto :goto_b

    :cond_9
    move/from16 v9, p7

    :goto_b
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_20

    .line 242
    invoke-virtual/range {p0 .. p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/CMClient;->getCellID()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v10, v1

    goto :goto_22

    :cond_20
    move/from16 v10, p8

    :goto_22
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_29

    const/4 v1, 0x1

    move v11, v1

    goto :goto_2b

    :cond_29
    move/from16 v11, p9

    :goto_2b
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_32

    const/4 v1, 0x0

    move v12, v1

    goto :goto_34

    :cond_32
    move/from16 v12, p10

    :goto_34
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_3b

    const/4 v1, 0x0

    move-object v13, v1

    goto :goto_3d

    :cond_3b
    move-object/from16 v13, p11

    :goto_3d
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_4c

    .line 247
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_4e

    :cond_4c
    move-object/from16 v16, p14

    :goto_4e
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v14, p12

    .line 234
    invoke-virtual/range {v2 .. v16}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->beginFileUpload(III[BLjava/util/Date;Ljava/lang/String;IIZZLjava/lang/Integer;JLkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic clientFileDownload$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;ILjava/lang/String;Lin/dragonbra/javasteam/enums/ESteamRealm;ZLkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;
    .registers 14

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_6

    .line 170
    sget-object p3, Lin/dragonbra/javasteam/enums/ESteamRealm;->SteamGlobal:Lin/dragonbra/javasteam/enums/ESteamRealm;

    :cond_6
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_c

    const/4 p4, 0x0

    :cond_c
    move v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_19

    .line 172
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p3

    invoke-static {p3}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p5

    :cond_19
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 167
    invoke-virtual/range {v0 .. v5}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->clientFileDownload(ILjava/lang/String;Lin/dragonbra/javasteam/enums/ESteamRealm;ZLkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method private static final clientMetrics_delegate$lambda$0(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;)Lin/dragonbra/javasteam/rpc/service/ClientMetrics;
    .registers 2

    .line 56
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    const-class v0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getHandler(Ljava/lang/Class;)Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    if-eqz p0, :cond_17

    .line 32
    const-class v0, Lin/dragonbra/javasteam/rpc/service/ClientMetrics;

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->createService(Ljava/lang/Class;)Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/rpc/service/ClientMetrics;

    return-object p0

    .line 57
    :cond_17
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Unable to get SteamUnifiedMessages handler"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final cloudService_delegate$lambda$0(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;)Lin/dragonbra/javasteam/rpc/service/Cloud;
    .registers 2

    .line 51
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    const-class v0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getHandler(Ljava/lang/Class;)Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    if-eqz p0, :cond_17

    .line 32
    const-class v0, Lin/dragonbra/javasteam/rpc/service/Cloud;

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->createService(Ljava/lang/Class;)Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/rpc/service/Cloud;

    return-object p0

    .line 52
    :cond_17
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Unable to get SteamUnifiedMessages handler"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic commitFileUpload$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;ZI[BLjava/lang/String;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;
    .registers 14

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_c

    .line 285
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p5

    invoke-static {p5}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p5

    :cond_c
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 280
    invoke-virtual/range {v0 .. v5}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->commitFileUpload(ZI[BLjava/lang/String;Lkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic completeAppUploadBatch$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;IJLin/dragonbra/javasteam/enums/EResult;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;
    .registers 14

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_6

    .line 311
    sget-object p4, Lin/dragonbra/javasteam/enums/EResult;->OK:Lin/dragonbra/javasteam/enums/EResult;

    :cond_6
    move-object v4, p4

    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_13

    .line 312
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p4

    invoke-static {p4}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p5

    :cond_13
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .line 308
    invoke-virtual/range {v0 .. v5}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->completeAppUploadBatch(IJLin/dragonbra/javasteam/enums/EResult;Lkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic externalStorageTransferReport$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;Ljava/lang/String;Ljava/lang/String;ZZIJJIIZZZIIIIILjava/lang/Object;)V
    .registers 41

    move/from16 v0, p19

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_17

    .line 496
    invoke-virtual/range {p0 .. p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/CMClient;->getCellID()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v12, v0

    goto :goto_19

    :cond_17
    move/from16 v12, p11

    :goto_19
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    .line 487
    invoke-virtual/range {v1 .. v19}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->externalStorageTransferReport(Ljava/lang/String;Ljava/lang/String;ZZIJJIIZZZIIII)V

    return-void
.end method

.method public static synthetic getAppFileListChange$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;IJLkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;
    .registers 7

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_6

    const-wide/16 p2, 0x0

    :cond_6
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_12

    .line 144
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p4

    invoke-static {p4}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p4

    .line 141
    :cond_12
    invoke-virtual {p0, p1, p2, p3, p4}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->getAppFileListChange(IJLkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method private final getClientMetrics()Lin/dragonbra/javasteam/rpc/service/ClientMetrics;
    .registers 1

    .line 55
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->clientMetrics$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/rpc/service/ClientMetrics;

    return-object p0
.end method

.method private final getCloudService()Lin/dragonbra/javasteam/rpc/service/Cloud;
    .registers 1

    .line 50
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->cloudService$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/rpc/service/Cloud;

    return-object p0
.end method

.method public static synthetic signalAppLaunchIntent$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;IJLjava/lang/String;Ljava/lang/Boolean;Lin/dragonbra/javasteam/enums/EOSType;Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;
    .registers 22

    and-int/lit8 v0, p9, 0x4

    if-eqz v0, :cond_f

    .line 427
    invoke-static {}, Lin/dragonbra/javasteam/util/HardwareUtils;->getMachineName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getMachineName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v0

    goto :goto_10

    :cond_f
    move-object v6, p4

    :goto_10
    and-int/lit8 v0, p9, 0x8

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    move-object v7, v0

    goto :goto_19

    :cond_17
    move-object/from16 v7, p5

    :goto_19
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_21

    .line 431
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->k_BluetoothDeviceType_Unknown:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    move-object v9, v0

    goto :goto_23

    :cond_21
    move-object/from16 v9, p7

    :goto_23
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_31

    .line 432
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    move-object v10, v0

    goto :goto_33

    :cond_31
    move-object/from16 v10, p8

    :goto_33
    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object/from16 v8, p6

    .line 424
    invoke-virtual/range {v2 .. v10}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->signalAppLaunchIntent(IJLjava/lang/String;Ljava/lang/Boolean;Lin/dragonbra/javasteam/enums/EOSType;Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;Lkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final appCloudSyncStats(ILin/dragonbra/javasteam/enums/EPlatformType;ZJJJJI)V
    .registers 49

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p3

    move-wide/from16 v12, p4

    move-wide/from16 v14, p6

    move-wide/from16 v16, p8

    move-wide/from16 v24, p10

    move/from16 v33, p12

    const-string v3, "platformType"

    move-object/from16 v5, p2

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v34, 0xf71f4

    const/16 v35, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    invoke-static/range {v0 .. v35}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->appCloudSyncStats$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;ILin/dragonbra/javasteam/enums/EPlatformType;ZZIIIJJJJJJJJJJJJIIILjava/lang/Object;)V

    return-void
.end method

.method public final appCloudSyncStats(ILin/dragonbra/javasteam/enums/EPlatformType;ZZIIIJJJJI)V
    .registers 53

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move-wide/from16 v16, p12

    move-wide/from16 v24, p14

    move/from16 v33, p16

    const-string v8, "platformType"

    move-object/from16 v9, p2

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v34, 0xf7180

    const/16 v35, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    invoke-static/range {v0 .. v35}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->appCloudSyncStats$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;ILin/dragonbra/javasteam/enums/EPlatformType;ZZIIIJJJJJJJJJJJJIIILjava/lang/Object;)V

    return-void
.end method

.method public final appCloudSyncStats(ILin/dragonbra/javasteam/enums/EPlatformType;ZZIIIJJJJJI)V
    .registers 55

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    move-wide/from16 v16, p14

    move-wide/from16 v24, p16

    move/from16 v33, p18

    const-string v10, "platformType"

    move-object/from16 v11, p2

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v34, 0xf7100

    const/16 v35, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    invoke-static/range {v0 .. v35}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->appCloudSyncStats$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;ILin/dragonbra/javasteam/enums/EPlatformType;ZZIIIJJJJJJJJJJJJIIILjava/lang/Object;)V

    return-void
.end method

.method public final appCloudSyncStats(ILin/dragonbra/javasteam/enums/EPlatformType;ZZIIIJJJJJJI)V
    .registers 57

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move-wide/from16 v16, p16

    move-wide/from16 v24, p18

    move/from16 v33, p20

    const-string v0, "platformType"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v34, 0xf7000

    const/16 v35, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static/range {v0 .. v35}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->appCloudSyncStats$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;ILin/dragonbra/javasteam/enums/EPlatformType;ZZIIIJJJJJJJJJJJJIIILjava/lang/Object;)V

    return-void
.end method

.method public final appCloudSyncStats(ILin/dragonbra/javasteam/enums/EPlatformType;ZZIIIJJJJJJJI)V
    .registers 59

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move-wide/from16 v16, p16

    move-wide/from16 v18, p18

    move-wide/from16 v24, p20

    move/from16 v33, p22

    const-string v0, "platformType"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v34, 0xf6000

    const/16 v35, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static/range {v0 .. v35}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->appCloudSyncStats$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;ILin/dragonbra/javasteam/enums/EPlatformType;ZZIIIJJJJJJJJJJJJIIILjava/lang/Object;)V

    return-void
.end method

.method public final appCloudSyncStats(ILin/dragonbra/javasteam/enums/EPlatformType;ZZIIIJJJJJJJJI)V
    .registers 61

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move-wide/from16 v16, p16

    move-wide/from16 v18, p18

    move-wide/from16 v20, p20

    move-wide/from16 v24, p22

    move/from16 v33, p24

    const-string v0, "platformType"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v34, 0xf4000

    const/16 v35, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static/range {v0 .. v35}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->appCloudSyncStats$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;ILin/dragonbra/javasteam/enums/EPlatformType;ZZIIIJJJJJJJJJJJJIIILjava/lang/Object;)V

    return-void
.end method

.method public final appCloudSyncStats(ILin/dragonbra/javasteam/enums/EPlatformType;ZZIIIJJJJJJJJJI)V
    .registers 63

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move-wide/from16 v16, p16

    move-wide/from16 v18, p18

    move-wide/from16 v20, p20

    move-wide/from16 v22, p22

    move-wide/from16 v24, p24

    move/from16 v33, p26

    const-string v0, "platformType"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v34, 0xf0000

    const/16 v35, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static/range {v0 .. v35}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->appCloudSyncStats$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;ILin/dragonbra/javasteam/enums/EPlatformType;ZZIIIJJJJJJJJJJJJIIILjava/lang/Object;)V

    return-void
.end method

.method public final appCloudSyncStats(ILin/dragonbra/javasteam/enums/EPlatformType;ZZIIIJJJJJJJJJJI)V
    .registers 65

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move-wide/from16 v16, p16

    move-wide/from16 v18, p18

    move-wide/from16 v20, p20

    move-wide/from16 v22, p22

    move-wide/from16 v24, p24

    move-wide/from16 v26, p26

    move/from16 v33, p28

    const-string v0, "platformType"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v34, 0xe0000

    const/16 v35, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static/range {v0 .. v35}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->appCloudSyncStats$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;ILin/dragonbra/javasteam/enums/EPlatformType;ZZIIIJJJJJJJJJJJJIIILjava/lang/Object;)V

    return-void
.end method

.method public final appCloudSyncStats(ILin/dragonbra/javasteam/enums/EPlatformType;ZZIIIJJJJJJJJJJJI)V
    .registers 67

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move-wide/from16 v16, p16

    move-wide/from16 v18, p18

    move-wide/from16 v20, p20

    move-wide/from16 v22, p22

    move-wide/from16 v24, p24

    move-wide/from16 v26, p26

    move-wide/from16 v28, p28

    move/from16 v33, p30

    const-string v0, "platformType"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v34, 0xc0000

    const/16 v35, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static/range {v0 .. v35}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->appCloudSyncStats$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;ILin/dragonbra/javasteam/enums/EPlatformType;ZZIIIJJJJJJJJJJJJIIILjava/lang/Object;)V

    return-void
.end method

.method public final appCloudSyncStats(ILin/dragonbra/javasteam/enums/EPlatformType;ZZIIIJJJJJJJJJJJJI)V
    .registers 69

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move-wide/from16 v16, p16

    move-wide/from16 v18, p18

    move-wide/from16 v20, p20

    move-wide/from16 v22, p22

    move-wide/from16 v24, p24

    move-wide/from16 v26, p26

    move-wide/from16 v28, p28

    move-wide/from16 v30, p30

    move/from16 v33, p32

    const-string v0, "platformType"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v34, 0x80000

    const/16 v35, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static/range {v0 .. v35}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->appCloudSyncStats$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;ILin/dragonbra/javasteam/enums/EPlatformType;ZZIIIJJJJJJJJJJJJIIILjava/lang/Object;)V

    return-void
.end method

.method public final appCloudSyncStats(ILin/dragonbra/javasteam/enums/EPlatformType;ZZIIIJJJJJJJJJJJJII)V
    .registers 50

    move/from16 v0, p5

    move/from16 v1, p6

    move/from16 v2, p7

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    move-wide/from16 v7, p18

    move-wide/from16 v9, p20

    move-wide/from16 v11, p22

    move-wide/from16 v13, p26

    const-string v15, "platformType"

    move-object/from16 v13, p2

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;

    move-result-object v14

    move/from16 v15, p1

    .line 364
    invoke-virtual {v14, v15}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;->setAppId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;

    .line 365
    invoke-virtual/range {p2 .. p2}, Lin/dragonbra/javasteam/enums/EPlatformType;->code()I

    move-result v13

    invoke-virtual {v14, v13}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;->setPlatformType(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;

    move/from16 v13, p3

    .line 366
    invoke-virtual {v14, v13}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;->setPreload(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;

    move/from16 v13, p4

    .line 367
    invoke-virtual {v14, v13}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;->setBlockingAppLaunch(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;

    if-lez v0, :cond_38

    .line 369
    invoke-virtual {v14, v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;->setFilesUploaded(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;

    :cond_38
    if-lez v1, :cond_3d

    .line 372
    invoke-virtual {v14, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;->setFilesDownloaded(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;

    :cond_3d
    if-lez v2, :cond_42

    .line 375
    invoke-virtual {v14, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;->setFilesDeleted(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;

    :cond_42
    const-wide/16 v0, 0x0

    cmp-long v2, v3, v0

    if-lez v2, :cond_4b

    .line 378
    invoke-virtual {v14, v3, v4}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;->setBytesUploaded(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;

    :cond_4b
    cmp-long v2, v5, v0

    if-lez v2, :cond_52

    .line 381
    invoke-virtual {v14, v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;->setBytesDownloaded(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;

    :cond_52
    move-wide/from16 v2, p12

    .line 383
    invoke-virtual {v14, v2, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;->setMicrosecTotal(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;

    move-wide/from16 v2, p14

    .line 384
    invoke-virtual {v14, v2, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;->setMicrosecInitCaches(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;

    move-wide/from16 v2, p16

    .line 385
    invoke-virtual {v14, v2, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;->setMicrosecValidateState(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;

    cmp-long v2, v7, v0

    if-lez v2, :cond_68

    .line 387
    invoke-virtual {v14, v7, v8}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;->setMicrosecAcLaunch(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;

    :cond_68
    cmp-long v2, v9, v0

    if-lez v2, :cond_6f

    .line 390
    invoke-virtual {v14, v9, v10}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;->setMicrosecAcPrepUserFiles(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;

    :cond_6f
    cmp-long v2, v11, v0

    if-lez v2, :cond_76

    .line 393
    invoke-virtual {v14, v11, v12}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;->setMicrosecAcExit(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;

    :cond_76
    move-wide/from16 v2, p24

    .line 395
    invoke-virtual {v14, v2, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;->setMicrosecBuildSyncList(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;

    move-wide/from16 v2, p26

    cmp-long v4, v2, v0

    if-lez v4, :cond_84

    .line 397
    invoke-virtual {v14, v2, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;->setMicrosecDeleteFiles(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;

    :cond_84
    move-wide/from16 v2, p28

    cmp-long v4, v2, v0

    if-lez v4, :cond_8d

    .line 400
    invoke-virtual {v14, v2, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;->setMicrosecDownloadFiles(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;

    :cond_8d
    move-wide/from16 v2, p30

    cmp-long v0, v2, v0

    if-lez v0, :cond_96

    .line 403
    invoke-virtual {v14, v2, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;->setMicrosecUploadFiles(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;

    :cond_96
    move/from16 v0, p32

    .line 405
    invoke-virtual {v14, v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;->setHardwareType(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;

    move/from16 v0, p33

    .line 406
    invoke-virtual {v14, v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;->setFilesManaged(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;

    .line 408
    invoke-direct/range {p0 .. p0}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->getClientMetrics()Lin/dragonbra/javasteam/rpc/service/ClientMetrics;

    move-result-object v0

    invoke-virtual {v14}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/rpc/service/ClientMetrics;->clientCloudAppSyncStats(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientmetricsSteamclient$CClientMetrics_CloudAppSyncStats_Notification;)V

    return-void
.end method

.method public final appCloudSyncStats(ILin/dragonbra/javasteam/enums/EPlatformType;ZZIIJJJJI)V
    .registers 52

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v12, p7

    move-wide/from16 v14, p9

    move-wide/from16 v16, p11

    move-wide/from16 v24, p13

    move/from16 v33, p15

    const-string v7, "platformType"

    move-object/from16 v8, p2

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v34, 0xf71c0

    const/16 v35, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    invoke-static/range {v0 .. v35}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->appCloudSyncStats$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;ILin/dragonbra/javasteam/enums/EPlatformType;ZZIIIJJJJJJJJJJJJIIILjava/lang/Object;)V

    return-void
.end method

.method public final appCloudSyncStats(ILin/dragonbra/javasteam/enums/EPlatformType;ZZIJJJJI)V
    .registers 51

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v12, p6

    move-wide/from16 v14, p8

    move-wide/from16 v16, p10

    move-wide/from16 v24, p12

    move/from16 v33, p14

    const-string v6, "platformType"

    move-object/from16 v7, p2

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v34, 0xf71e0

    const/16 v35, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    invoke-static/range {v0 .. v35}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->appCloudSyncStats$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;ILin/dragonbra/javasteam/enums/EPlatformType;ZZIIIJJJJJJJJJJJJIIILjava/lang/Object;)V

    return-void
.end method

.method public final appCloudSyncStats(ILin/dragonbra/javasteam/enums/EPlatformType;ZZJJJJI)V
    .registers 50

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v12, p5

    move-wide/from16 v14, p7

    move-wide/from16 v16, p9

    move-wide/from16 v24, p11

    move/from16 v33, p13

    const-string v5, "platformType"

    move-object/from16 v6, p2

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v34, 0xf71f0

    const/16 v35, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    invoke-static/range {v0 .. v35}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->appCloudSyncStats$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;ILin/dragonbra/javasteam/enums/EPlatformType;ZZIIIJJJJJJJJJJJJIIILjava/lang/Object;)V

    return-void
.end method

.method public final beginAppUploadBatch(IJJ)Ljava/util/concurrent/CompletableFuture;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppUploadBatchResponse;",
            ">;"
        }
    .end annotation

    .line 0
    const/16 v10, 0x4e

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v5, p2

    move-wide/from16 v7, p4

    invoke-static/range {v0 .. v11}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->beginAppUploadBatch$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;ILjava/lang/String;Ljava/util/List;Ljava/util/List;JJLkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final beginAppUploadBatch(ILjava/lang/String;JJ)Ljava/util/concurrent/CompletableFuture;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppUploadBatchResponse;",
            ">;"
        }
    .end annotation

    .line 0
    const-string v0, "machineName"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v11, 0x4c

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-static/range {v1 .. v12}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->beginAppUploadBatch$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;ILjava/lang/String;Ljava/util/List;Ljava/util/List;JJLkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final beginAppUploadBatch(ILjava/lang/String;Ljava/util/List;JJ)Ljava/util/concurrent/CompletableFuture;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JJ)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppUploadBatchResponse;",
            ">;"
        }
    .end annotation

    .line 0
    const-string v0, "machineName"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filesToUpload"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v11, 0x48

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move v2, p1

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    invoke-static/range {v1 .. v12}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->beginAppUploadBatch$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;ILjava/lang/String;Ljava/util/List;Ljava/util/List;JJLkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final beginAppUploadBatch(ILjava/lang/String;Ljava/util/List;Ljava/util/List;JJ)Ljava/util/concurrent/CompletableFuture;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JJ)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppUploadBatchResponse;",
            ">;"
        }
    .end annotation

    .line 0
    const-string v0, "machineName"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filesToUpload"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filesToDelete"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v11, 0x40

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move v2, p1

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-static/range {v1 .. v12}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->beginAppUploadBatch$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;ILjava/lang/String;Ljava/util/List;Ljava/util/List;JJLkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final beginAppUploadBatch(ILjava/lang/String;Ljava/util/List;Ljava/util/List;JJLkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JJ",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppUploadBatchResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "machineName"

    move-object v4, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filesToUpload"

    move-object/from16 v5, p3

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filesToDelete"

    move-object/from16 v6, p4

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentScope"

    move-object/from16 v12, p9

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;

    const/4 v11, 0x0

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-direct/range {v1 .. v11}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;ILjava/lang/String;Ljava/util/List;Ljava/util/List;JJLkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 p0, p9

    move-object p1, v3

    move-object p2, v4

    move-object/from16 p3, v0

    move/from16 p4, v1

    move-object/from16 p5, v2

    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/future/FutureKt;->future$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final beginFileUpload(III[BLjava/util/Date;Ljava/lang/String;IIZZLjava/lang/Integer;JLkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III[B",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "IIZZ",
            "Ljava/lang/Integer;",
            "J",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "fileSha"

    move-object/from16 v6, p4

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestamp"

    move-object/from16 v7, p5

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filename"

    move-object/from16 v8, p6

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentScope"

    move-object/from16 v14, p14

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;

    const/16 v16, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move-wide/from16 v14, p12

    invoke-direct/range {v1 .. v16}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;III[BLjava/util/Date;Ljava/lang/String;IIZZLjava/lang/Integer;JLkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 p0, p14

    move-object/from16 p1, v3

    move-object/from16 p2, v4

    move-object/from16 p3, v0

    move/from16 p4, v1

    move-object/from16 p5, v2

    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/future/FutureKt;->future$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final clientFileDownload(ILjava/lang/String;)Ljava/util/concurrent/CompletableFuture;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileDownloadInfo;",
            ">;"
        }
    .end annotation

    .line 0
    const-string v0, "fileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v8}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->clientFileDownload$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;ILjava/lang/String;Lin/dragonbra/javasteam/enums/ESteamRealm;ZLkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final clientFileDownload(ILjava/lang/String;Lin/dragonbra/javasteam/enums/ESteamRealm;)Ljava/util/concurrent/CompletableFuture;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lin/dragonbra/javasteam/enums/ESteamRealm;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileDownloadInfo;",
            ">;"
        }
    .end annotation

    .line 0
    const-string v0, "fileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "realm"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v8}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->clientFileDownload$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;ILjava/lang/String;Lin/dragonbra/javasteam/enums/ESteamRealm;ZLkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final clientFileDownload(ILjava/lang/String;Lin/dragonbra/javasteam/enums/ESteamRealm;Z)Ljava/util/concurrent/CompletableFuture;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lin/dragonbra/javasteam/enums/ESteamRealm;",
            "Z)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileDownloadInfo;",
            ">;"
        }
    .end annotation

    .line 0
    const-string v0, "fileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "realm"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v1 .. v8}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->clientFileDownload$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;ILjava/lang/String;Lin/dragonbra/javasteam/enums/ESteamRealm;ZLkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final clientFileDownload(ILjava/lang/String;Lin/dragonbra/javasteam/enums/ESteamRealm;ZLkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lin/dragonbra/javasteam/enums/ESteamRealm;",
            "Z",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileDownloadInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "fileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "realm"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentScope"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$clientFileDownload$1;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$clientFileDownload$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;ILjava/lang/String;Lin/dragonbra/javasteam/enums/ESteamRealm;ZLkotlin/coroutines/Continuation;)V

    const/4 p4, 0x3

    const/4 v1, 0x0

    const/4 p1, 0x0

    const/4 p2, 0x0

    move-object p0, p5

    move-object p3, v0

    move-object p5, v1

    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/future/FutureKt;->future$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final commitFileUpload(ZI[BLjava/lang/String;)Ljava/util/concurrent/CompletableFuture;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI[B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 0
    const-string v0, "fileSha"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filename"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v8}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->commitFileUpload$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;ZI[BLjava/lang/String;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final commitFileUpload(ZI[BLjava/lang/String;Lkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI[B",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "fileSha"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filename"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentScope"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$commitFileUpload$1;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$commitFileUpload$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;ZI[BLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p4, 0x3

    const/4 v1, 0x0

    const/4 p1, 0x0

    const/4 p2, 0x0

    move-object p0, p5

    move-object p3, v0

    move-object p5, v1

    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/future/FutureKt;->future$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final completeAppUploadBatch(IJ)Ljava/util/concurrent/CompletableFuture;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-static/range {v0 .. v7}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->completeAppUploadBatch$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;IJLin/dragonbra/javasteam/enums/EResult;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final completeAppUploadBatch(IJLin/dragonbra/javasteam/enums/EResult;)Ljava/util/concurrent/CompletableFuture;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lin/dragonbra/javasteam/enums/EResult;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    const-string v0, "batchEResult"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-static/range {v1 .. v8}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->completeAppUploadBatch$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;IJLin/dragonbra/javasteam/enums/EResult;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final completeAppUploadBatch(IJLin/dragonbra/javasteam/enums/EResult;Lkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lin/dragonbra/javasteam/enums/EResult;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "batchEResult"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentScope"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$completeAppUploadBatch$1;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$completeAppUploadBatch$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;IJLin/dragonbra/javasteam/enums/EResult;Lkotlin/coroutines/Continuation;)V

    const/4 p4, 0x3

    const/4 v1, 0x0

    const/4 p1, 0x0

    const/4 p2, 0x0

    move-object p0, p5

    move-object p3, v0

    move-object p5, v1

    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/future/FutureKt;->future$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final externalStorageTransferReport(Ljava/lang/String;Ljava/lang/String;ZZIJJIIZZZIIII)V
    .registers 22

    move-object v0, p1

    move-object v1, p2

    const-string v2, "host"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "path"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification$Builder;

    move-result-object v2

    .line 506
    invoke-virtual {v2, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification$Builder;->setHost(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification$Builder;

    .line 507
    invoke-virtual {v2, p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification$Builder;->setPath(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification$Builder;

    move v0, p3

    .line 508
    invoke-virtual {v2, p3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification$Builder;->setIsUpload(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification$Builder;

    move v0, p4

    .line 509
    invoke-virtual {v2, p4}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification$Builder;->setSuccess(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification$Builder;

    move v0, p5

    .line 510
    invoke-virtual {v2, p5}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification$Builder;->setHttpStatusCode(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification$Builder;

    move-wide v0, p6

    .line 511
    invoke-virtual {v2, p6, p7}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification$Builder;->setBytesExpected(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification$Builder;

    move-wide v0, p8

    .line 512
    invoke-virtual {v2, p8, p9}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification$Builder;->setBytesActual(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification$Builder;

    move v0, p10

    .line 513
    invoke-virtual {v2, p10}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification$Builder;->setDurationMs(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification$Builder;

    move v0, p11

    .line 514
    invoke-virtual {v2, p11}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification$Builder;->setCellid(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification$Builder;

    move v0, p12

    .line 515
    invoke-virtual {v2, p12}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification$Builder;->setProxied(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification$Builder;

    move/from16 v0, p13

    .line 516
    invoke-virtual {v2, v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification$Builder;->setIpv6Local(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification$Builder;

    move/from16 v0, p14

    .line 517
    invoke-virtual {v2, v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification$Builder;->setIpv6Remote(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification$Builder;

    move/from16 v0, p15

    .line 518
    invoke-virtual {v2, v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification$Builder;->setTimeToConnectMs(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification$Builder;

    move/from16 v0, p16

    .line 519
    invoke-virtual {v2, v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification$Builder;->setTimeToSendReqMs(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification$Builder;

    move/from16 v0, p17

    .line 520
    invoke-virtual {v2, v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification$Builder;->setTimeToFirstByteMs(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification$Builder;

    move/from16 v0, p18

    .line 521
    invoke-virtual {v2, v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification$Builder;->setTimeToLastByteMs(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification$Builder;

    .line 524
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->getCloudService()Lin/dragonbra/javasteam/rpc/service/Cloud;

    move-result-object v0

    invoke-virtual {v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/rpc/service/Cloud;->externalStorageTransferReport(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ExternalStorageTransferReport_Notification;)V

    return-void
.end method

.method public final externalStorageTransferReport(Ljava/lang/String;Ljava/lang/String;ZZIJJIZZZIIII)V
    .registers 39

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    const-string v11, "host"

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    move-object/from16 v11, p2

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v19, 0x100

    const/16 v20, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v20}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->externalStorageTransferReport$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;Ljava/lang/String;Ljava/lang/String;ZZIJJIIZZZIIIIILjava/lang/Object;)V

    return-void
.end method

.method public final getAppFileListChange(I)Ljava/util/concurrent/CompletableFuture;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileChangeList;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 v5, 0x6

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v6}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->getAppFileListChange$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;IJLkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final getAppFileListChange(IJ)Ljava/util/concurrent/CompletableFuture;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileChangeList;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-static/range {v0 .. v6}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->getAppFileListChange$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;IJLkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final getAppFileListChange(IJLkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileChangeList;",
            ">;"
        }
    .end annotation

    const-string v0, "parentScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$getAppFileListChange$1;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$getAppFileListChange$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;IJLkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p4

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/future/FutureKt;->future$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final getSingleFileInfo(ILjava/lang/String;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/SingleFileInfoCallback;",
            ">;"
        }
    .end annotation

    const-string v0, "filename"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 94
    sget-object v3, Lin/dragonbra/javasteam/enums/EMsg;->ClientUFSGetSingleFileInfo:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 92
    const-class v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSGetSingleFileInfo;

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 96
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getNextJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->setSourceJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 98
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSGetSingleFileInfo$Builder;

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSGetSingleFileInfo$Builder;->setAppId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSGetSingleFileInfo$Builder;

    .line 99
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSGetSingleFileInfo$Builder;

    invoke-virtual {p1, p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSGetSingleFileInfo$Builder;->setFileName(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSGetSingleFileInfo$Builder;

    .line 102
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p1

    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    .line 104
    new-instance p1, Lin/dragonbra/javasteam/types/AsyncJobSingle;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getSourceJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lin/dragonbra/javasteam/types/AsyncJobSingle;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lin/dragonbra/javasteam/types/JobID;)V

    return-object p1
.end method

.method public handleMsg(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 3

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    sget-object v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->Companion:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$Companion;

    invoke-static {v0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$Companion;->access$getCallback(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$Companion;Lin/dragonbra/javasteam/base/IPacketMsg;)Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;

    move-result-object p1

    if-nez p1, :cond_e

    return-void

    .line 535
    :cond_e
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->postCallback(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V

    return-void
.end method

.method public final requestUGCDetails(Lin/dragonbra/javasteam/types/UGCHandle;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/types/UGCHandle;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/UGCDetailsCallback;",
            ">;"
        }
    .end annotation

    const-string v0, "ugcId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 71
    sget-object v3, Lin/dragonbra/javasteam/enums/EMsg;->ClientUFSGetUGCDetails:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 69
    const-class v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSGetUGCDetails;

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 73
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getNextJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->setSourceJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 75
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSGetUGCDetails$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/GlobalID;->getValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSGetUGCDetails$Builder;->setHcontent(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSGetUGCDetails$Builder;

    .line 78
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p1

    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    .line 80
    new-instance p1, Lin/dragonbra/javasteam/types/AsyncJobSingle;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getSourceJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lin/dragonbra/javasteam/types/JobID;)V

    return-object p1
.end method

.method public final shareFile(ILjava/lang/String;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/ShareFileCallback;",
            ">;"
        }
    .end annotation

    const-string v0, "filename"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 118
    sget-object v3, Lin/dragonbra/javasteam/enums/EMsg;->ClientUFSShareFile:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 116
    const-class v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSShareFile;

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 120
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getNextJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->setSourceJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 122
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSShareFile$Builder;

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSShareFile$Builder;->setAppId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSShareFile$Builder;

    .line 123
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSShareFile$Builder;

    invoke-virtual {p1, p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSShareFile$Builder;->setFileName(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSShareFile$Builder;

    .line 126
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p1

    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    .line 128
    new-instance p1, Lin/dragonbra/javasteam/types/AsyncJobSingle;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getSourceJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lin/dragonbra/javasteam/types/AsyncJobSingle;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lin/dragonbra/javasteam/types/JobID;)V

    return-object p1
.end method

.method public final signalAppExitSyncDone(IJZZ)V
    .registers 7

    .line 461
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppExitSyncDone_Notification;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppExitSyncDone_Notification$Builder;

    move-result-object v0

    .line 462
    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppExitSyncDone_Notification$Builder;->setAppid(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppExitSyncDone_Notification$Builder;

    .line 463
    invoke-virtual {v0, p2, p3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppExitSyncDone_Notification$Builder;->setClientId(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppExitSyncDone_Notification$Builder;

    .line 464
    invoke-virtual {v0, p4}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppExitSyncDone_Notification$Builder;->setUploadsCompleted(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppExitSyncDone_Notification$Builder;

    .line 465
    invoke-virtual {v0, p5}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppExitSyncDone_Notification$Builder;->setUploadsRequired(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppExitSyncDone_Notification$Builder;

    .line 468
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->getCloudService()Lin/dragonbra/javasteam/rpc/service/Cloud;

    move-result-object p0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppExitSyncDone_Notification$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppExitSyncDone_Notification;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/rpc/service/Cloud;->signalAppExitSyncDone(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppExitSyncDone_Notification;)V

    return-void
.end method

.method public final signalAppLaunchIntent(IJLin/dragonbra/javasteam/enums/EOSType;)Ljava/util/concurrent/CompletableFuture;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lin/dragonbra/javasteam/enums/EOSType;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/PendingRemoteOperation;",
            ">;>;"
        }
    .end annotation

    .line 0
    const-string v0, "osType"

    move-object/from16 v7, p4

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0x6c

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    invoke-static/range {v1 .. v11}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->signalAppLaunchIntent$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;IJLjava/lang/String;Ljava/lang/Boolean;Lin/dragonbra/javasteam/enums/EOSType;Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final signalAppLaunchIntent(IJLjava/lang/String;Lin/dragonbra/javasteam/enums/EOSType;)Ljava/util/concurrent/CompletableFuture;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Lin/dragonbra/javasteam/enums/EOSType;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/PendingRemoteOperation;",
            ">;>;"
        }
    .end annotation

    .line 0
    const-string v0, "machineName"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "osType"

    move-object/from16 v7, p5

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0x68

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    invoke-static/range {v1 .. v11}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->signalAppLaunchIntent$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;IJLjava/lang/String;Ljava/lang/Boolean;Lin/dragonbra/javasteam/enums/EOSType;Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final signalAppLaunchIntent(IJLjava/lang/String;Ljava/lang/Boolean;Lin/dragonbra/javasteam/enums/EOSType;)Ljava/util/concurrent/CompletableFuture;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lin/dragonbra/javasteam/enums/EOSType;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/PendingRemoteOperation;",
            ">;>;"
        }
    .end annotation

    .line 0
    const-string v0, "machineName"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "osType"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0x60

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v11}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->signalAppLaunchIntent$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;IJLjava/lang/String;Ljava/lang/Boolean;Lin/dragonbra/javasteam/enums/EOSType;Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final signalAppLaunchIntent(IJLjava/lang/String;Ljava/lang/Boolean;Lin/dragonbra/javasteam/enums/EOSType;Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;)Ljava/util/concurrent/CompletableFuture;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lin/dragonbra/javasteam/enums/EOSType;",
            "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/PendingRemoteOperation;",
            ">;>;"
        }
    .end annotation

    .line 0
    const-string v0, "machineName"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "osType"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceType"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0x40

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v11}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->signalAppLaunchIntent$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;IJLjava/lang/String;Ljava/lang/Boolean;Lin/dragonbra/javasteam/enums/EOSType;Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final signalAppLaunchIntent(IJLjava/lang/String;Ljava/lang/Boolean;Lin/dragonbra/javasteam/enums/EOSType;Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;Lkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lin/dragonbra/javasteam/enums/EOSType;",
            "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/PendingRemoteOperation;",
            ">;>;"
        }
    .end annotation

    const-string v0, "machineName"

    move-object/from16 v6, p4

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "osType"

    move-object/from16 v8, p6

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceType"

    move-object/from16 v9, p7

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentScope"

    move-object/from16 v11, p8

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;

    const/4 v10, 0x0

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v10}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;IJLjava/lang/String;Ljava/lang/Boolean;Lin/dragonbra/javasteam/enums/EOSType;Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 p0, p8

    move-object p1, v3

    move-object p2, v4

    move-object p3, v0

    move/from16 p4, v1

    move-object/from16 p5, v2

    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/future/FutureKt;->future$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud.Companion (in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$Companion)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$Companion;
.super Ljava/lang/Object;
.source "SteamCloud.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$Companion$WhenMappings;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCallback(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$Companion;Lin/dragonbra/javasteam/base/IPacketMsg;)Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
    .registers 2

    .line 538
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$Companion;->getCallback(Lin/dragonbra/javasteam/base/IPacketMsg;)Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;

    move-result-object p0

    return-object p0
.end method

.method private final getCallback(Lin/dragonbra/javasteam/base/IPacketMsg;)Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
    .registers 3

    .line 539
    invoke-interface {p1}, Lin/dragonbra/javasteam/base/IPacketMsg;->getMsgType()Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object p0

    sget-object v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_23

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x3

    if-eq p0, v0, :cond_17

    const/4 p0, 0x0

    goto :goto_28

    .line 542
    :cond_17
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/ShareFileCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/ShareFileCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_28

    .line 541
    :cond_1d
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/SingleFileInfoCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/SingleFileInfoCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_28

    .line 540
    :cond_23
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/UGCDetailsCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/UGCDetailsCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    :goto_28
    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud.Companion.WhenMappings (in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$Companion$WhenMappings)
.class public final synthetic Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$Companion$WhenMappings;
.super Ljava/lang/Object;
.source "SteamCloud.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$Companion;
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
    invoke-static {}, Lin/dragonbra/javasteam/enums/EMsg;->values()[Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientUFSGetUGCDetailsResponse:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientUFSGetSingleFileInfoResponse:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientUFSShareFileResponse:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud.AnonymousClass1 (in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$beginAppUploadBatch$1)
.class final Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SteamCloud.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->beginAppUploadBatch(ILjava/lang/String;Ljava/util/List;Ljava/util/List;JJLkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;
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
        "Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppUploadBatchResponse;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$beginAppUploadBatch$1"
    f = "SteamCloud.kt"
    l = {
        0xd9
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $appBuildId:J

.field final synthetic $appId:I

.field final synthetic $clientId:J

.field final synthetic $filesToDelete:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $filesToUpload:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $machineName:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;ILjava/lang/String;Ljava/util/List;Ljava/util/List;JJLkotlin/coroutines/Continuation;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;

    iput p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;->$appId:I

    iput-object p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;->$machineName:Ljava/lang/String;

    iput-object p4, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;->$filesToUpload:Ljava/util/List;

    iput-object p5, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;->$filesToDelete:Ljava/util/List;

    iput-wide p6, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;->$clientId:J

    iput-wide p8, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;->$appBuildId:J

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
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;

    iget v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;->$appId:I

    iget-object v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;->$machineName:Ljava/lang/String;

    iget-object v4, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;->$filesToUpload:Ljava/util/List;

    iget-object v5, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;->$filesToDelete:Ljava/util/List;

    iget-wide v6, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;->$clientId:J

    iget-wide v8, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;->$appBuildId:J

    move-object v0, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;ILjava/lang/String;Ljava/util/List;Ljava/util/List;JJLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppUploadBatchResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 207
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    if-ne v1, v2, :cond_13

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_BeginAppUploadBatch_Request$Builder;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_62

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 208
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_BeginAppUploadBatch_Request;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_BeginAppUploadBatch_Request$Builder;

    move-result-object p1

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;->$appId:I

    iget-object v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;->$machineName:Ljava/lang/String;

    iget-object v4, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;->$filesToUpload:Ljava/util/List;

    iget-object v5, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;->$filesToDelete:Ljava/util/List;

    iget-wide v6, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;->$clientId:J

    iget-wide v8, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;->$appBuildId:J

    .line 209
    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_BeginAppUploadBatch_Request$Builder;->setAppid(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_BeginAppUploadBatch_Request$Builder;

    .line 210
    invoke-virtual {p1, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_BeginAppUploadBatch_Request$Builder;->setMachineName(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_BeginAppUploadBatch_Request$Builder;

    .line 211
    invoke-virtual {p1, v4}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_BeginAppUploadBatch_Request$Builder;->addAllFilesToUpload(Ljava/lang/Iterable;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_BeginAppUploadBatch_Request$Builder;

    .line 212
    invoke-virtual {p1, v5}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_BeginAppUploadBatch_Request$Builder;->addAllFilesToDelete(Ljava/lang/Iterable;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_BeginAppUploadBatch_Request$Builder;

    .line 213
    invoke-virtual {p1, v6, v7}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_BeginAppUploadBatch_Request$Builder;->setClientId(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_BeginAppUploadBatch_Request$Builder;

    .line 214
    invoke-virtual {p1, v8, v9}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_BeginAppUploadBatch_Request$Builder;->setAppBuildId(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_BeginAppUploadBatch_Request$Builder;

    .line 217
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;

    invoke-static {v1}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->access$getCloudService(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;)Lin/dragonbra/javasteam/rpc/service/Cloud;

    move-result-object v1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_BeginAppUploadBatch_Request$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_BeginAppUploadBatch_Request;

    move-result-object v3

    const-string v4, "build(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lin/dragonbra/javasteam/rpc/service/Cloud;->beginAppUploadBatch(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_BeginAppUploadBatch_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object v1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginAppUploadBatch$1;->label:I

    invoke-virtual {v1, p0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_62

    return-object v0

    .line 207
    :cond_62
    :goto_62
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    .line 219
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppUploadBatchResponse;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_BeginAppUploadBatch_Response$Builder;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppUploadBatchResponse;-><init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_BeginAppUploadBatch_Response$Builder;)V

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud.C00211 (in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$beginFileUpload$1)
.class final Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SteamCloud.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->beginFileUpload(III[BLjava/util/Date;Ljava/lang/String;IIZZLjava/lang/Integer;JLkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;
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
        "Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadInfo;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSteamCloud.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SteamCloud.kt\nin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,547:1\n1#2:548\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$beginFileUpload$1"
    f = "SteamCloud.kt"
    l = {
        0x108
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $appId:I

.field final synthetic $canEncrypt:Z

.field final synthetic $cellId:I

.field final synthetic $deprecatedRealm:Ljava/lang/Integer;

.field final synthetic $fileSha:[B

.field final synthetic $fileSize:I

.field final synthetic $filename:Ljava/lang/String;

.field final synthetic $isSharedFile:Z

.field final synthetic $platformsToSync:I

.field final synthetic $rawFileSize:I

.field final synthetic $timestamp:Ljava/util/Date;

.field final synthetic $uploadBatchId:J

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;III[BLjava/util/Date;Ljava/lang/String;IIZZLjava/lang/Integer;JLkotlin/coroutines/Continuation;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;",
            "III[B",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "IIZZ",
            "Ljava/lang/Integer;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;

    move v1, p2

    iput v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$appId:I

    move v1, p3

    iput v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$fileSize:I

    move v1, p4

    iput v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$rawFileSize:I

    move-object v1, p5

    iput-object v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$fileSha:[B

    move-object v1, p6

    iput-object v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$timestamp:Ljava/util/Date;

    move-object v1, p7

    iput-object v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$filename:Ljava/lang/String;

    move v1, p8

    iput v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$platformsToSync:I

    move v1, p9

    iput v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$cellId:I

    move v1, p10

    iput-boolean v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$canEncrypt:Z

    move v1, p11

    iput-boolean v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$isSharedFile:Z

    move-object v1, p12

    iput-object v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$deprecatedRealm:Ljava/lang/Integer;

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$uploadBatchId:J

    const/4 v1, 0x2

    move-object/from16 v2, p15

    invoke-direct {p0, v1, v2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 20
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
    move-object/from16 v0, p0

    new-instance v16, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;

    iget-object v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;

    iget v2, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$appId:I

    iget v3, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$fileSize:I

    iget v4, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$rawFileSize:I

    iget-object v5, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$fileSha:[B

    iget-object v6, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$timestamp:Ljava/util/Date;

    iget-object v7, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$filename:Ljava/lang/String;

    iget v8, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$platformsToSync:I

    iget v9, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$cellId:I

    iget-boolean v10, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$canEncrypt:Z

    iget-boolean v11, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$isSharedFile:Z

    iget-object v12, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$deprecatedRealm:Ljava/lang/Integer;

    iget-wide v13, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$uploadBatchId:J

    move-object/from16 v0, v16

    move-object/from16 v15, p2

    invoke-direct/range {v0 .. v15}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;III[BLjava/util/Date;Ljava/lang/String;IIZZLjava/lang/Integer;JLkotlin/coroutines/Continuation;)V

    return-object v16
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 18

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 248
    iget v2, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_20

    if-ne v2, v3, :cond_18

    iget-object v0, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Request$Builder;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto/16 :goto_98

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 249
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Request;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Request$Builder;

    move-result-object v2

    iget v4, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$appId:I

    iget v5, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$fileSize:I

    iget v6, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$rawFileSize:I

    iget-object v7, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$fileSha:[B

    iget-object v8, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$timestamp:Ljava/util/Date;

    iget-object v9, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$filename:Ljava/lang/String;

    iget v10, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$platformsToSync:I

    iget v11, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$cellId:I

    iget-boolean v12, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$canEncrypt:Z

    iget-boolean v13, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$isSharedFile:Z

    iget-object v14, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$deprecatedRealm:Ljava/lang/Integer;

    move-object/from16 p1, v14

    iget-wide v14, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->$uploadBatchId:J

    .line 250
    invoke-virtual {v2, v4}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Request$Builder;->setAppid(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Request$Builder;

    .line 251
    invoke-virtual {v2, v5}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Request$Builder;->setFileSize(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Request$Builder;

    .line 252
    invoke-virtual {v2, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Request$Builder;->setRawFileSize(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Request$Builder;

    .line 253
    invoke-static {v7}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v2, v4}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Request$Builder;->setFileSha(Lcom/google/protobuf/ByteString;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Request$Builder;

    .line 254
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Request$Builder;->setTimeStamp(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Request$Builder;

    .line 255
    invoke-virtual {v2, v9}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Request$Builder;->setFilename(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Request$Builder;

    .line 256
    invoke-virtual {v2, v10}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Request$Builder;->setPlatformsToSync(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Request$Builder;

    .line 257
    invoke-virtual {v2, v11}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Request$Builder;->setCellId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Request$Builder;

    .line 258
    invoke-virtual {v2, v12}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Request$Builder;->setCanEncrypt(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Request$Builder;

    .line 259
    invoke-virtual {v2, v13}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Request$Builder;->setIsSharedFile(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Request$Builder;

    if-eqz p1, :cond_73

    .line 260
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Request$Builder;->setDeprecatedRealm(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Request$Builder;

    .line 261
    :cond_73
    invoke-virtual {v2, v14, v15}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Request$Builder;->setUploadBatchId(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Request$Builder;

    .line 264
    iget-object v4, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;

    invoke-static {v4}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->access$getCloudService(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;)Lin/dragonbra/javasteam/rpc/service/Cloud;

    move-result-object v4

    invoke-virtual {v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Request$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Request;

    move-result-object v5

    const-string v6, "build(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lin/dragonbra/javasteam/rpc/service/Cloud;->clientBeginFileUpload(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object v4

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$beginFileUpload$1;->label:I

    invoke-virtual {v4, v0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_98

    return-object v1

    .line 248
    :cond_98
    :goto_98
    check-cast v0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    .line 266
    new-instance v1, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadInfo;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Response$Builder;

    invoke-direct {v1, v0}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadInfo;-><init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Response$Builder;)V

    return-object v1
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud.C00221 (in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$clientFileDownload$1)
.class final Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$clientFileDownload$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SteamCloud.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->clientFileDownload(ILjava/lang/String;Lin/dragonbra/javasteam/enums/ESteamRealm;ZLkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;
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
        "Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileDownloadInfo;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$clientFileDownload$1"
    f = "SteamCloud.kt"
    l = {
        0xb5
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $appId:I

.field final synthetic $fileName:Ljava/lang/String;

.field final synthetic $forceProxy:Z

.field final synthetic $realm:Lin/dragonbra/javasteam/enums/ESteamRealm;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;ILjava/lang/String;Lin/dragonbra/javasteam/enums/ESteamRealm;ZLkotlin/coroutines/Continuation;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;",
            "I",
            "Ljava/lang/String;",
            "Lin/dragonbra/javasteam/enums/ESteamRealm;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$clientFileDownload$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$clientFileDownload$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;

    iput p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$clientFileDownload$1;->$appId:I

    iput-object p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$clientFileDownload$1;->$fileName:Ljava/lang/String;

    iput-object p4, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$clientFileDownload$1;->$realm:Lin/dragonbra/javasteam/enums/ESteamRealm;

    iput-boolean p5, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$clientFileDownload$1;->$forceProxy:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 10
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
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$clientFileDownload$1;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$clientFileDownload$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;

    iget v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$clientFileDownload$1;->$appId:I

    iget-object v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$clientFileDownload$1;->$fileName:Ljava/lang/String;

    iget-object v4, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$clientFileDownload$1;->$realm:Lin/dragonbra/javasteam/enums/ESteamRealm;

    iget-boolean v5, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$clientFileDownload$1;->$forceProxy:Z

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$clientFileDownload$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;ILjava/lang/String;Lin/dragonbra/javasteam/enums/ESteamRealm;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$clientFileDownload$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileDownloadInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$clientFileDownload$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$clientFileDownload$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$clientFileDownload$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 173
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$clientFileDownload$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    if-ne v1, v2, :cond_13

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$clientFileDownload$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientFileDownload_Request$Builder;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5c

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 174
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientFileDownload_Request;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientFileDownload_Request$Builder;

    move-result-object p1

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$clientFileDownload$1;->$appId:I

    iget-object v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$clientFileDownload$1;->$fileName:Ljava/lang/String;

    iget-object v4, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$clientFileDownload$1;->$realm:Lin/dragonbra/javasteam/enums/ESteamRealm;

    iget-boolean v5, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$clientFileDownload$1;->$forceProxy:Z

    .line 175
    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientFileDownload_Request$Builder;->setAppid(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientFileDownload_Request$Builder;

    .line 176
    invoke-virtual {p1, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientFileDownload_Request$Builder;->setFilename(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientFileDownload_Request$Builder;

    .line 177
    invoke-virtual {v4}, Lin/dragonbra/javasteam/enums/ESteamRealm;->code()I

    move-result v1

    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientFileDownload_Request$Builder;->setRealm(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientFileDownload_Request$Builder;

    .line 178
    invoke-virtual {p1, v5}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientFileDownload_Request$Builder;->setForceProxy(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientFileDownload_Request$Builder;

    .line 181
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$clientFileDownload$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;

    invoke-static {v1}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->access$getCloudService(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;)Lin/dragonbra/javasteam/rpc/service/Cloud;

    move-result-object v1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientFileDownload_Request$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientFileDownload_Request;

    move-result-object v3

    const-string v4, "build(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lin/dragonbra/javasteam/rpc/service/Cloud;->clientFileDownload(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientFileDownload_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object v1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$clientFileDownload$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$clientFileDownload$1;->label:I

    invoke-virtual {v1, p0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5c

    return-object v0

    .line 173
    :cond_5c
    :goto_5c
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    .line 183
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileDownloadInfo;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientFileDownload_Response$Builder;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileDownloadInfo;-><init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientFileDownload_Response$Builder;)V

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud.C00231 (in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$commitFileUpload$1)
.class final Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$commitFileUpload$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SteamCloud.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->commitFileUpload(ZI[BLjava/lang/String;Lkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$commitFileUpload$1"
    f = "SteamCloud.kt"
    l = {
        0x126
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $appId:I

.field final synthetic $fileSha:[B

.field final synthetic $filename:Ljava/lang/String;

.field final synthetic $transferSucceeded:Z

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;ZI[BLjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;",
            "ZI[B",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$commitFileUpload$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$commitFileUpload$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;

    iput-boolean p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$commitFileUpload$1;->$transferSucceeded:Z

    iput p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$commitFileUpload$1;->$appId:I

    iput-object p4, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$commitFileUpload$1;->$fileSha:[B

    iput-object p5, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$commitFileUpload$1;->$filename:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 10
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
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$commitFileUpload$1;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$commitFileUpload$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;

    iget-boolean v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$commitFileUpload$1;->$transferSucceeded:Z

    iget v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$commitFileUpload$1;->$appId:I

    iget-object v4, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$commitFileUpload$1;->$fileSha:[B

    iget-object v5, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$commitFileUpload$1;->$filename:Ljava/lang/String;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$commitFileUpload$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;ZI[BLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$commitFileUpload$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$commitFileUpload$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$commitFileUpload$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$commitFileUpload$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 286
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$commitFileUpload$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    if-ne v1, v2, :cond_13

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$commitFileUpload$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientCommitFileUpload_Request$Builder;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5c

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 287
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientCommitFileUpload_Request;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientCommitFileUpload_Request$Builder;

    move-result-object p1

    iget-boolean v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$commitFileUpload$1;->$transferSucceeded:Z

    iget v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$commitFileUpload$1;->$appId:I

    iget-object v4, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$commitFileUpload$1;->$fileSha:[B

    iget-object v5, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$commitFileUpload$1;->$filename:Ljava/lang/String;

    .line 288
    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientCommitFileUpload_Request$Builder;->setTransferSucceeded(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientCommitFileUpload_Request$Builder;

    .line 289
    invoke-virtual {p1, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientCommitFileUpload_Request$Builder;->setAppid(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientCommitFileUpload_Request$Builder;

    .line 290
    invoke-static {v4}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientCommitFileUpload_Request$Builder;->setFileSha(Lcom/google/protobuf/ByteString;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientCommitFileUpload_Request$Builder;

    .line 291
    invoke-virtual {p1, v5}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientCommitFileUpload_Request$Builder;->setFilename(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientCommitFileUpload_Request$Builder;

    .line 294
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$commitFileUpload$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;

    invoke-static {v1}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->access$getCloudService(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;)Lin/dragonbra/javasteam/rpc/service/Cloud;

    move-result-object v1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientCommitFileUpload_Request$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientCommitFileUpload_Request;

    move-result-object v3

    const-string v4, "build(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lin/dragonbra/javasteam/rpc/service/Cloud;->clientCommitFileUpload(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientCommitFileUpload_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object v1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$commitFileUpload$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$commitFileUpload$1;->label:I

    invoke-virtual {v1, p0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5c

    return-object v0

    .line 286
    :cond_5c
    :goto_5c
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    .line 295
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientCommitFileUpload_Response$Builder;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientCommitFileUpload_Response$Builder;->getFileCommitted()Z

    move-result p0

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud.C00241 (in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$completeAppUploadBatch$1)
.class final Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$completeAppUploadBatch$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SteamCloud.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->completeAppUploadBatch(IJLin/dragonbra/javasteam/enums/EResult;Lkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;
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
    c = "in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$completeAppUploadBatch$1"
    f = "SteamCloud.kt"
    l = {
        0x140
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $appId:I

.field final synthetic $batchEResult:Lin/dragonbra/javasteam/enums/EResult;

.field final synthetic $batchId:J

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;IJLin/dragonbra/javasteam/enums/EResult;Lkotlin/coroutines/Continuation;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;",
            "IJ",
            "Lin/dragonbra/javasteam/enums/EResult;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$completeAppUploadBatch$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$completeAppUploadBatch$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;

    iput p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$completeAppUploadBatch$1;->$appId:I

    iput-wide p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$completeAppUploadBatch$1;->$batchId:J

    iput-object p5, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$completeAppUploadBatch$1;->$batchEResult:Lin/dragonbra/javasteam/enums/EResult;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 10
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
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$completeAppUploadBatch$1;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$completeAppUploadBatch$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;

    iget v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$completeAppUploadBatch$1;->$appId:I

    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$completeAppUploadBatch$1;->$batchId:J

    iget-object v5, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$completeAppUploadBatch$1;->$batchEResult:Lin/dragonbra/javasteam/enums/EResult;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$completeAppUploadBatch$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;IJLin/dragonbra/javasteam/enums/EResult;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$completeAppUploadBatch$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$completeAppUploadBatch$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$completeAppUploadBatch$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$completeAppUploadBatch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 313
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$completeAppUploadBatch$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    if-ne v1, v2, :cond_13

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$completeAppUploadBatch$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_CompleteAppUploadBatch_Request$Builder;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_57

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 314
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_CompleteAppUploadBatch_Request;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_CompleteAppUploadBatch_Request$Builder;

    move-result-object p1

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$completeAppUploadBatch$1;->$appId:I

    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$completeAppUploadBatch$1;->$batchId:J

    iget-object v5, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$completeAppUploadBatch$1;->$batchEResult:Lin/dragonbra/javasteam/enums/EResult;

    .line 315
    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_CompleteAppUploadBatch_Request$Builder;->setAppid(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_CompleteAppUploadBatch_Request$Builder;

    .line 316
    invoke-virtual {p1, v3, v4}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_CompleteAppUploadBatch_Request$Builder;->setBatchId(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_CompleteAppUploadBatch_Request$Builder;

    .line 317
    invoke-virtual {v5}, Lin/dragonbra/javasteam/enums/EResult;->code()I

    move-result v1

    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_CompleteAppUploadBatch_Request$Builder;->setBatchEresult(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_CompleteAppUploadBatch_Request$Builder;

    .line 320
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$completeAppUploadBatch$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;

    invoke-static {v1}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->access$getCloudService(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;)Lin/dragonbra/javasteam/rpc/service/Cloud;

    move-result-object v1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_CompleteAppUploadBatch_Request$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_CompleteAppUploadBatch_Request;

    move-result-object v3

    const-string v4, "build(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lin/dragonbra/javasteam/rpc/service/Cloud;->completeAppUploadBatchBlocking(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_CompleteAppUploadBatch_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object v1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$completeAppUploadBatch$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$completeAppUploadBatch$1;->label:I

    invoke-virtual {v1, p0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_57

    return-object v0

    .line 321
    :cond_57
    :goto_57
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud.C00251 (in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$getAppFileListChange$1)
.class final Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$getAppFileListChange$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SteamCloud.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->getAppFileListChange(IJLkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;
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
        "Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileChangeList;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$getAppFileListChange$1"
    f = "SteamCloud.kt"
    l = {
        0x97
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $appId:I

.field final synthetic $syncedChangeNumber:J

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;IJLkotlin/coroutines/Continuation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;",
            "IJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$getAppFileListChange$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$getAppFileListChange$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;

    iput p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$getAppFileListChange$1;->$appId:I

    iput-wide p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$getAppFileListChange$1;->$syncedChangeNumber:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 9
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
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$getAppFileListChange$1;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$getAppFileListChange$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;

    iget v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$getAppFileListChange$1;->$appId:I

    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$getAppFileListChange$1;->$syncedChangeNumber:J

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$getAppFileListChange$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;IJLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$getAppFileListChange$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileChangeList;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$getAppFileListChange$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$getAppFileListChange$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$getAppFileListChange$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 145
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$getAppFileListChange$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    if-ne v1, v2, :cond_13

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$getAppFileListChange$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_GetAppFileChangelist_Request$Builder;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4e

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 146
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_GetAppFileChangelist_Request;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_GetAppFileChangelist_Request$Builder;

    move-result-object p1

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$getAppFileListChange$1;->$appId:I

    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$getAppFileListChange$1;->$syncedChangeNumber:J

    .line 147
    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_GetAppFileChangelist_Request$Builder;->setAppid(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_GetAppFileChangelist_Request$Builder;

    .line 148
    invoke-virtual {p1, v3, v4}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_GetAppFileChangelist_Request$Builder;->setSyncedChangeNumber(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_GetAppFileChangelist_Request$Builder;

    .line 151
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$getAppFileListChange$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;

    invoke-static {v1}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->access$getCloudService(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;)Lin/dragonbra/javasteam/rpc/service/Cloud;

    move-result-object v1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_GetAppFileChangelist_Request$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_GetAppFileChangelist_Request;

    move-result-object v3

    const-string v4, "build(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lin/dragonbra/javasteam/rpc/service/Cloud;->getAppFileChangelist(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_GetAppFileChangelist_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object v1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$getAppFileListChange$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$getAppFileListChange$1;->label:I

    invoke-virtual {v1, p0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4e

    return-object v0

    .line 145
    :cond_4e
    :goto_4e
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    .line 153
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileChangeList;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_GetAppFileChangelist_Response$Builder;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileChangeList;-><init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_GetAppFileChangelist_Response$Builder;)V

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud.C00261 (in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$signalAppLaunchIntent$1)
.class final Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SteamCloud.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->signalAppLaunchIntent(IJLjava/lang/String;Ljava/lang/Boolean;Lin/dragonbra/javasteam/enums/EOSType;Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;Lkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;
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
        "Ljava/util/List<",
        "+",
        "Lin/dragonbra/javasteam/steam/handlers/steamcloud/PendingRemoteOperation;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSteamCloud.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SteamCloud.kt\nin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,547:1\n1#2:548\n1563#3:549\n1634#3,3:550\n*S KotlinDebug\n*F\n+ 1 SteamCloud.kt\nin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1\n*L\n445#1:549\n445#1:550,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$signalAppLaunchIntent$1"
    f = "SteamCloud.kt"
    l = {
        0x1bb
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $appId:I

.field final synthetic $clientId:J

.field final synthetic $deviceType:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

.field final synthetic $ignorePendingOperations:Ljava/lang/Boolean;

.field final synthetic $machineName:Ljava/lang/String;

.field final synthetic $osType:Lin/dragonbra/javasteam/enums/EOSType;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;IJLjava/lang/String;Ljava/lang/Boolean;Lin/dragonbra/javasteam/enums/EOSType;Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;Lkotlin/coroutines/Continuation;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lin/dragonbra/javasteam/enums/EOSType;",
            "Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;

    iput p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;->$appId:I

    iput-wide p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;->$clientId:J

    iput-object p5, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;->$machineName:Ljava/lang/String;

    iput-object p6, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;->$ignorePendingOperations:Ljava/lang/Boolean;

    iput-object p7, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;->$osType:Lin/dragonbra/javasteam/enums/EOSType;

    iput-object p8, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;->$deviceType:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 13
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
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;

    iget v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;->$appId:I

    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;->$clientId:J

    iget-object v5, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;->$machineName:Ljava/lang/String;

    iget-object v6, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;->$ignorePendingOperations:Ljava/lang/Boolean;

    iget-object v7, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;->$osType:Lin/dragonbra/javasteam/enums/EOSType;

    iget-object v8, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;->$deviceType:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    move-object v0, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;IJLjava/lang/String;Ljava/lang/Boolean;Lin/dragonbra/javasteam/enums/EOSType;Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/PendingRemoteOperation;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 433
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    if-ne v1, v2, :cond_13

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppLaunchIntent_Request$Builder;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_70

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 434
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppLaunchIntent_Request;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppLaunchIntent_Request$Builder;

    move-result-object p1

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;->$appId:I

    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;->$clientId:J

    iget-object v5, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;->$machineName:Ljava/lang/String;

    iget-object v6, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;->$ignorePendingOperations:Ljava/lang/Boolean;

    iget-object v7, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;->$osType:Lin/dragonbra/javasteam/enums/EOSType;

    iget-object v8, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;->$deviceType:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;

    .line 435
    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppLaunchIntent_Request$Builder;->setAppid(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppLaunchIntent_Request$Builder;

    .line 436
    invoke-virtual {p1, v3, v4}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppLaunchIntent_Request$Builder;->setClientId(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppLaunchIntent_Request$Builder;

    .line 437
    invoke-virtual {p1, v5}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppLaunchIntent_Request$Builder;->setMachineName(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppLaunchIntent_Request$Builder;

    if-eqz v6, :cond_40

    .line 438
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppLaunchIntent_Request$Builder;->setIgnorePendingOperations(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppLaunchIntent_Request$Builder;

    .line 439
    :cond_40
    invoke-virtual {v7}, Lin/dragonbra/javasteam/enums/EOSType;->code()I

    move-result v1

    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppLaunchIntent_Request$Builder;->setOsType(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppLaunchIntent_Request$Builder;

    .line 440
    invoke-virtual {v8}, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$EBluetoothDeviceType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppLaunchIntent_Request$Builder;->setDeviceType(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppLaunchIntent_Request$Builder;

    .line 443
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;

    invoke-static {v1}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->access$getCloudService(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;)Lin/dragonbra/javasteam/rpc/service/Cloud;

    move-result-object v1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppLaunchIntent_Request$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppLaunchIntent_Request;

    move-result-object v3

    const-string v4, "build(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lin/dragonbra/javasteam/rpc/service/Cloud;->signalAppLaunchIntent(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppLaunchIntent_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object v1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$signalAppLaunchIntent$1;->label:I

    invoke-virtual {v1, p0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_70

    return-object v0

    .line 433
    :cond_70
    :goto_70
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    .line 445
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppLaunchIntent_Response$Builder;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppLaunchIntent_Response$Builder;->getPendingRemoteOperationsList()Ljava/util/List;

    move-result-object p0

    const-string p1, "getPendingRemoteOperationsList(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1563
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_90
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1635
    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientObjects$CCloud_PendingRemoteOperation;

    .line 445
    new-instance v1, Lin/dragonbra/javasteam/steam/handlers/steamcloud/PendingRemoteOperation;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v0}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/PendingRemoteOperation;-><init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientObjects$CCloud_PendingRemoteOperation;)V

    .line 1635
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_90

    :cond_a8
    return-object p1
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$$ExternalSyntheticLambda0 (in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$$ExternalSyntheticLambda0)
.class public final synthetic Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;


# direct methods
.method public synthetic constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$$ExternalSyntheticLambda0;->f$0:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$$ExternalSyntheticLambda0;->f$0:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;

    invoke-static {p0}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->$r8$lambda$lQlTllm3rOej8R2QpI7V3E0F9yI(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;)Lin/dragonbra/javasteam/rpc/service/Cloud;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$$ExternalSyntheticLambda1 (in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$$ExternalSyntheticLambda1)
.class public final synthetic Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;


# direct methods
.method public synthetic constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$$ExternalSyntheticLambda1;->f$0:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud$$ExternalSyntheticLambda1;->f$0:Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;

    invoke-static {p0}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;->$r8$lambda$0rWQtN1DYc4rBAKC02k2_nM08QY(Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;)Lin/dragonbra/javasteam/rpc/service/ClientMetrics;

    move-result-object p0

    return-object p0
.end method
