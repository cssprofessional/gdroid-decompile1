###### Class in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent (in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;
.super Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;
.source "SteamContent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSteamContent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SteamContent.kt\nin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent\n+ 2 SteamUnifiedMessages.kt\nin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages\n*L\n1#1,258:1\n32#2:259\n*S KotlinDebug\n*F\n+ 1 SteamContent.kt\nin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent\n*L\n36#1:259\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$Companion;

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field private final contentService$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$p5DHTMzUihbwoFezvtQ5L56oiqI(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;)Lin/dragonbra/javasteam/rpc/service/ContentServerDirectory;
    .registers 1

    .line 0
    invoke-static {p0}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;->contentService_delegate$lambda$0(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;)Lin/dragonbra/javasteam/rpc/service/ContentServerDirectory;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;->Companion:Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$Companion;

    .line 30
    const-class v0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;-><init>()V

    .line 33
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$$ExternalSyntheticLambda0;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;->contentService$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getClient(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;)Lin/dragonbra/javasteam/steam/steamclient/SteamClient;
    .registers 1

    .line 26
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContentService(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;)Lin/dragonbra/javasteam/rpc/service/ContentServerDirectory;
    .registers 1

    .line 26
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;->getContentService()Lin/dragonbra/javasteam/rpc/service/ContentServerDirectory;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;
    .registers 1

    .line 26
    sget-object v0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-object v0
.end method

.method private static final contentService_delegate$lambda$0(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;)Lin/dragonbra/javasteam/rpc/service/ContentServerDirectory;
    .registers 2

    .line 34
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    const-class v0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getHandler(Ljava/lang/Class;)Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    if-eqz p0, :cond_17

    .line 32
    const-class v0, Lin/dragonbra/javasteam/rpc/service/ContentServerDirectory;

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->createService(Ljava/lang/Class;)Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/rpc/service/ContentServerDirectory;

    return-object p0

    .line 35
    :cond_17
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Unable to get SteamUnifiedMessages handler"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getContentService()Lin/dragonbra/javasteam/rpc/service/ContentServerDirectory;
    .registers 1

    .line 33
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;->contentService$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/rpc/service/ContentServerDirectory;

    return-object p0
.end method

.method public static synthetic getDepotPatchInfo$default(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;IIJJLkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;
    .registers 19

    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_e

    .line 79
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getDefaultScope$javasteam()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    move-object v8, v0

    goto :goto_10

    :cond_e
    move-object/from16 v8, p7

    :goto_10
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    .line 74
    invoke-virtual/range {v1 .. v8}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;->getDepotPatchInfo(IIJJLkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getManifestRequestCode$default(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;IIJLjava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;
    .registers 20

    and-int/lit8 v0, p8, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move-object v7, v1

    goto :goto_8

    :cond_7
    move-object v7, p5

    :goto_8
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_e

    move-object v8, v1

    goto :goto_10

    :cond_e
    move-object/from16 v8, p6

    :goto_10
    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-object/from16 v9, p7

    .line 114
    invoke-virtual/range {v2 .. v9}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;->getManifestRequestCode(IIJLjava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getPeerContentInfo$default(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;JJJLkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;
    .registers 19

    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_e

    .line 228
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getDefaultScope$javasteam()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    move-object v8, v0

    goto :goto_10

    :cond_e
    move-object/from16 v8, p7

    :goto_10
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    .line 224
    invoke-virtual/range {v1 .. v8}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;->getPeerContentInfo(JJJLkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getServersForSteamPipe$default(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;
    .registers 7

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_b

    move-object p2, v0

    .line 47
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;->getServersForSteamPipe(Ljava/lang/Integer;Ljava/lang/Integer;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Deferred;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic requestPeerContentServer$default(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;JJJIILkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;
    .registers 23

    and-int/lit8 v0, p10, 0x10

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    move v9, v0

    goto :goto_9

    :cond_7
    move/from16 v9, p8

    :goto_9
    and-int/lit8 v0, p10, 0x20

    if-eqz v0, :cond_17

    .line 191
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getDefaultScope$javasteam()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    move-object v10, v0

    goto :goto_19

    :cond_17
    move-object/from16 v10, p9

    :goto_19
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    .line 185
    invoke-virtual/range {v1 .. v10}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;->requestPeerContentServer(JJJIILkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getCDNAuthToken(IILjava/lang/String;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Deferred;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")",
            "Lkotlinx/coroutines/Deferred<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcontent/CDNAuthToken;",
            ">;"
        }
    .end annotation

    const-string v0, "hostName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getCDNAuthToken$1;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getCDNAuthToken$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;IILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p4

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p0

    return-object p0
.end method

.method public final getDepotPatchInfo(IIJJ)Lkotlinx/coroutines/Deferred;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ)",
            "Lkotlinx/coroutines/Deferred<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;",
            ">;"
        }
    .end annotation

    .line 0
    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v9}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;->getDepotPatchInfo$default(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;IIJJLkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    return-object v0
.end method

.method public final getDepotPatchInfo(IIJJLkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Deferred;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")",
            "Lkotlinx/coroutines/Deferred<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "parentScope"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getDepotPatchInfo$1;

    const/4 v10, 0x0

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v10}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getDepotPatchInfo$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;IIJJLkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 p0, p7

    move-object p1, v4

    move-object p2, v5

    move-object p3, v0

    move p4, v2

    move-object/from16 p5, v3

    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    return-object v0
.end method

.method public final getManifestRequestCode(IIJLjava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Deferred;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")",
            "Lkotlinx/coroutines/Deferred<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "parentScope"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;

    const/4 v10, 0x0

    move-object v2, v0

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object v5, p0

    move v6, p2

    move v7, p1

    move-wide v8, p3

    invoke-direct/range {v2 .. v10}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;IIJLkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 p0, p7

    move-object p1, v4

    move-object p2, v5

    move-object p3, v0

    move p4, v2

    move-object/from16 p5, v3

    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    return-object v0
.end method

.method public final getPeerContentInfo(JJJ)Lkotlinx/coroutines/Deferred;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ)",
            "Lkotlinx/coroutines/Deferred<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcontent/GetPeerContentInfo;",
            ">;"
        }
    .end annotation

    .line 0
    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v9}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;->getPeerContentInfo$default(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;JJJLkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    return-object v0
.end method

.method public final getPeerContentInfo(JJJLkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Deferred;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")",
            "Lkotlinx/coroutines/Deferred<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcontent/GetPeerContentInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "parentScope"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getPeerContentInfo$1;

    const/4 v10, 0x0

    move-object v2, v0

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v10}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getPeerContentInfo$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;JJJLkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 p0, p7

    move-object p1, v4

    move-object p2, v5

    move-object p3, v0

    move p4, v2

    move-object/from16 p5, v3

    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    return-object v0
.end method

.method public final getServersForSteamPipe(Ljava/lang/Integer;Ljava/lang/Integer;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Deferred;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")",
            "Lkotlinx/coroutines/Deferred<",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/cdn/Server;",
            ">;>;"
        }
    .end annotation

    const-string v0, "parentScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v4, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getServersForSteamPipe$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getServersForSteamPipe$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p3

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p0

    return-object p0
.end method

.method public handleMsg(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 2

    .line 0
    const-string p0, "packetMsg"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final requestPeerContentServer(JJJI)Lkotlinx/coroutines/Deferred;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJI)",
            "Lkotlinx/coroutines/Deferred<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;",
            ">;"
        }
    .end annotation

    .line 0
    const/16 v10, 0x30

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    invoke-static/range {v0 .. v11}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;->requestPeerContentServer$default(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;JJJIILkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    return-object v0
.end method

.method public final requestPeerContentServer(JJJII)Lkotlinx/coroutines/Deferred;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJII)",
            "Lkotlinx/coroutines/Deferred<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;",
            ">;"
        }
    .end annotation

    .line 0
    const/16 v10, 0x20

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v11}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;->requestPeerContentServer$default(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;JJJIILkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    return-object v0
.end method

.method public final requestPeerContentServer(JJJIILkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Deferred;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJII",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")",
            "Lkotlinx/coroutines/Deferred<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;",
            ">;"
        }
    .end annotation

    const-string v0, "parentScope"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$requestPeerContentServer$1;

    const/4 v12, 0x0

    move-object v2, v0

    move-object v3, p0

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v2 .. v12}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$requestPeerContentServer$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;JJJIILkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 p0, p9

    move-object p1, v4

    move-object p2, v5

    move-object/from16 p3, v0

    move/from16 p4, v2

    move-object/from16 p5, v3

    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    return-object v0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent.Companion (in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent$Companion)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$Companion;
.super Ljava/lang/Object;
.source "SteamContent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$Companion;-><init>()V

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent.AnonymousClass1 (in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent$getCDNAuthToken$1)
.class final Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getCDNAuthToken$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SteamContent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;->getCDNAuthToken(IILjava/lang/String;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Deferred;
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
        "Lin/dragonbra/javasteam/steam/handlers/steamcontent/CDNAuthToken;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent$getCDNAuthToken$1"
    f = "SteamContent.kt"
    l = {
        0xa9
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $app:I

.field final synthetic $depot:I

.field final synthetic $hostName:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;IILjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;",
            "II",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getCDNAuthToken$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getCDNAuthToken$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;

    iput p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getCDNAuthToken$1;->$app:I

    iput p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getCDNAuthToken$1;->$depot:I

    iput-object p4, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getCDNAuthToken$1;->$hostName:Ljava/lang/String;

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
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getCDNAuthToken$1;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getCDNAuthToken$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;

    iget v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getCDNAuthToken$1;->$app:I

    iget v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getCDNAuthToken$1;->$depot:I

    iget-object v4, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getCDNAuthToken$1;->$hostName:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getCDNAuthToken$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;IILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getCDNAuthToken$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lin/dragonbra/javasteam/steam/handlers/steamcontent/CDNAuthToken;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getCDNAuthToken$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getCDNAuthToken$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getCDNAuthToken$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 162
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getCDNAuthToken$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    if-ne v1, v2, :cond_13

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getCDNAuthToken$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetCDNAuthToken_Request;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_51

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 163
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetCDNAuthToken_Request;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetCDNAuthToken_Request$Builder;

    move-result-object p1

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getCDNAuthToken$1;->$app:I

    iget v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getCDNAuthToken$1;->$depot:I

    iget-object v4, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getCDNAuthToken$1;->$hostName:Ljava/lang/String;

    .line 164
    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetCDNAuthToken_Request$Builder;->setAppId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetCDNAuthToken_Request$Builder;

    .line 165
    invoke-virtual {p1, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetCDNAuthToken_Request$Builder;->setDepotId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetCDNAuthToken_Request$Builder;

    .line 166
    invoke-virtual {p1, v4}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetCDNAuthToken_Request$Builder;->setHostName(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetCDNAuthToken_Request$Builder;

    .line 167
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetCDNAuthToken_Request$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetCDNAuthToken_Request;

    move-result-object p1

    .line 169
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getCDNAuthToken$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;

    invoke-static {v1}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;->access$getContentService(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;)Lin/dragonbra/javasteam/rpc/service/ContentServerDirectory;

    move-result-object v1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/rpc/service/ContentServerDirectory;->getCDNAuthToken(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetCDNAuthToken_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object v1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getCDNAuthToken$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getCDNAuthToken$1;->label:I

    invoke-virtual {v1, p0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_51

    return-object v0

    .line 162
    :cond_51
    :goto_51
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    .line 171
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/CDNAuthToken;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/CDNAuthToken;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;)V

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent.C00271 (in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent$getDepotPatchInfo$1)
.class final Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getDepotPatchInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SteamContent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;->getDepotPatchInfo(IIJJLkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Deferred;
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
        "Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent$getDepotPatchInfo$1"
    f = "SteamContent.kt"
    l = {
        0x58
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $appId:I

.field final synthetic $depotId:I

.field final synthetic $sourceManifestId:J

.field final synthetic $targetManifestId:J

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;IIJJLkotlin/coroutines/Continuation;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;",
            "IIJJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getDepotPatchInfo$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getDepotPatchInfo$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;

    iput p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getDepotPatchInfo$1;->$appId:I

    iput p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getDepotPatchInfo$1;->$depotId:I

    iput-wide p4, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getDepotPatchInfo$1;->$sourceManifestId:J

    iput-wide p6, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getDepotPatchInfo$1;->$targetManifestId:J

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
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getDepotPatchInfo$1;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getDepotPatchInfo$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;

    iget v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getDepotPatchInfo$1;->$appId:I

    iget v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getDepotPatchInfo$1;->$depotId:I

    iget-wide v4, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getDepotPatchInfo$1;->$sourceManifestId:J

    iget-wide v6, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getDepotPatchInfo$1;->$targetManifestId:J

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getDepotPatchInfo$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;IIJJLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getDepotPatchInfo$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getDepotPatchInfo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getDepotPatchInfo$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getDepotPatchInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 80
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getDepotPatchInfo$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    if-ne v1, v2, :cond_13

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getDepotPatchInfo$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetDepotPatchInfo_Request;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_56

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 81
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetDepotPatchInfo_Request;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetDepotPatchInfo_Request$Builder;

    move-result-object p1

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getDepotPatchInfo$1;->$appId:I

    iget v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getDepotPatchInfo$1;->$depotId:I

    iget-wide v4, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getDepotPatchInfo$1;->$sourceManifestId:J

    iget-wide v6, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getDepotPatchInfo$1;->$targetManifestId:J

    .line 82
    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetDepotPatchInfo_Request$Builder;->setAppid(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetDepotPatchInfo_Request$Builder;

    .line 83
    invoke-virtual {p1, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetDepotPatchInfo_Request$Builder;->setDepotid(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetDepotPatchInfo_Request$Builder;

    .line 84
    invoke-virtual {p1, v4, v5}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetDepotPatchInfo_Request$Builder;->setSourceManifestid(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetDepotPatchInfo_Request$Builder;

    .line 85
    invoke-virtual {p1, v6, v7}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetDepotPatchInfo_Request$Builder;->setTargetManifestid(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetDepotPatchInfo_Request$Builder;

    .line 86
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetDepotPatchInfo_Request$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetDepotPatchInfo_Request;

    move-result-object p1

    .line 88
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getDepotPatchInfo$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;

    invoke-static {v1}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;->access$getContentService(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;)Lin/dragonbra/javasteam/rpc/service/ContentServerDirectory;

    move-result-object v1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/rpc/service/ContentServerDirectory;->getDepotPatchInfo(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetDepotPatchInfo_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object v1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getDepotPatchInfo$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getDepotPatchInfo$1;->label:I

    invoke-virtual {v1, p0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_56

    return-object v0

    .line 80
    :cond_56
    :goto_56
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    .line 89
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetDepotPatchInfo_Response$Builder;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetDepotPatchInfo_Response$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetDepotPatchInfo_Response;

    move-result-object p0

    .line 91
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v0

    sget-object v1, Lin/dragonbra/javasteam/enums/EResult;->OK:Lin/dragonbra/javasteam/enums/EResult;

    if-eq v0, v1, :cond_88

    .line 92
    invoke-static {}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;->access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDepotPatchInfo got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lin/dragonbra/javasteam/util/log/Logger;->error$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 95
    :cond_88
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;

    .line 96
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetDepotPatchInfo_Response;->getIsAvailable()Z

    move-result v4

    .line 97
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetDepotPatchInfo_Response;->getPatchSize()J

    move-result-wide v5

    .line 98
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetDepotPatchInfo_Response;->getPatchedChunksSize()J

    move-result-wide v7

    move-object v3, p1

    .line 95
    invoke-direct/range {v3 .. v8}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;-><init>(ZJJ)V

    return-object p1
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent.C00281 (in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent$getManifestRequestCode$1)
.class final Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SteamContent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;->getManifestRequestCode(IIJLjava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Deferred;
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
        "Ljava/lang/Long;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSteamContent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SteamContent.kt\nin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,258:1\n1#2:259\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent$getManifestRequestCode$1"
    f = "SteamContent.kt"
    l = {
        0x8e
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $appId:I

.field final synthetic $branch:Ljava/lang/String;

.field final synthetic $branchPasswordHash:Ljava/lang/String;

.field final synthetic $depotId:I

.field final synthetic $manifestId:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;IIJLkotlin/coroutines/Continuation;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;",
            "IIJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;->$branch:Ljava/lang/String;

    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;->$branchPasswordHash:Ljava/lang/String;

    iput-object p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;

    iput p4, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;->$appId:I

    iput p5, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;->$depotId:I

    iput-wide p6, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;->$manifestId:J

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
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;->$branch:Ljava/lang/String;

    iget-object v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;->$branchPasswordHash:Ljava/lang/String;

    iget-object v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;

    iget v4, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;->$appId:I

    iget v5, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;->$depotId:I

    iget-wide v6, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;->$manifestId:J

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;IIJLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 121
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_24

    if-ne v1, v2, :cond_1c

    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetManifestRequestCode_Request;

    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_ac

    :cond_1c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_24
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 122
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;->$branch:Ljava/lang/String;

    iput-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 123
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;->$branchPasswordHash:Ljava/lang/String;

    iput-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 125
    iget-object v3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "public"

    invoke-static {v3, v4, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4a

    const/4 v3, 0x0

    .line 126
    iput-object v3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 127
    iput-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 130
    :cond_4a
    iget-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v3, :cond_5b

    iget-object v3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v3, :cond_53

    goto :goto_5b

    .line 131
    :cond_53
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Branch name may not be null if password is provided."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 134
    :cond_5b
    :goto_5b
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetManifestRequestCode_Request;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetManifestRequestCode_Request$Builder;

    move-result-object v3

    iget v4, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;->$appId:I

    iget v5, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;->$depotId:I

    iget-wide v6, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;->$manifestId:J

    .line 135
    invoke-virtual {v3, v4}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetManifestRequestCode_Request$Builder;->setAppId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetManifestRequestCode_Request$Builder;

    .line 136
    invoke-virtual {v3, v5}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetManifestRequestCode_Request$Builder;->setDepotId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetManifestRequestCode_Request$Builder;

    .line 137
    invoke-virtual {v3, v6, v7}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetManifestRequestCode_Request$Builder;->setManifestId(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetManifestRequestCode_Request$Builder;

    .line 138
    iget-object v4, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_77

    invoke-virtual {v3, v4}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetManifestRequestCode_Request$Builder;->setAppBranch(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetManifestRequestCode_Request$Builder;

    .line 139
    :cond_77
    iget-object v4, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_80

    invoke-virtual {v3, v4}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetManifestRequestCode_Request$Builder;->setBranchPasswordHash(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetManifestRequestCode_Request$Builder;

    .line 140
    :cond_80
    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetManifestRequestCode_Request$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetManifestRequestCode_Request;

    move-result-object v3

    .line 142
    iget-object v4, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;

    invoke-static {v4}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;->access$getContentService(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;)Lin/dragonbra/javasteam/rpc/service/ContentServerDirectory;

    move-result-object v4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Lin/dragonbra/javasteam/rpc/service/ContentServerDirectory;->getManifestRequestCode(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetManifestRequestCode_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object v4

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;->L$0:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;->L$1:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;->L$2:Ljava/lang/Object;

    iput v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getManifestRequestCode$1;->label:I

    invoke-virtual {v4, p0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_ac

    return-object v0

    .line 121
    :cond_ac
    :goto_ac
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    .line 143
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetManifestRequestCode_Response$Builder;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetManifestRequestCode_Response$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetManifestRequestCode_Response;

    move-result-object p0

    .line 145
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetManifestRequestCode_Response;->getManifestRequestCode()J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent.C00291 (in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent$getPeerContentInfo$1)
.class final Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getPeerContentInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SteamContent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;->getPeerContentInfo(JJJLkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Deferred;
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
        "Lin/dragonbra/javasteam/steam/handlers/steamcontent/GetPeerContentInfo;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent$getPeerContentInfo$1"
    f = "SteamContent.kt"
    l = {
        0xec
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $remoteClientId:J

.field final synthetic $serverRemoteClientId:J

.field final synthetic $steamId:J

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;JJJLkotlin/coroutines/Continuation;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;",
            "JJJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getPeerContentInfo$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getPeerContentInfo$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;

    iput-wide p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getPeerContentInfo$1;->$remoteClientId:J

    iput-wide p4, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getPeerContentInfo$1;->$steamId:J

    iput-wide p6, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getPeerContentInfo$1;->$serverRemoteClientId:J

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
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getPeerContentInfo$1;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getPeerContentInfo$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;

    iget-wide v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getPeerContentInfo$1;->$remoteClientId:J

    iget-wide v4, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getPeerContentInfo$1;->$steamId:J

    iget-wide v6, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getPeerContentInfo$1;->$serverRemoteClientId:J

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getPeerContentInfo$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;JJJLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getPeerContentInfo$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lin/dragonbra/javasteam/steam/handlers/steamcontent/GetPeerContentInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getPeerContentInfo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getPeerContentInfo$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getPeerContentInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 229
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getPeerContentInfo$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    if-ne v1, v2, :cond_13

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getPeerContentInfo$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetPeerContentInfo_Request;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_51

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 230
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetPeerContentInfo_Request;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetPeerContentInfo_Request$Builder;

    move-result-object p1

    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getPeerContentInfo$1;->$remoteClientId:J

    iget-wide v5, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getPeerContentInfo$1;->$steamId:J

    iget-wide v7, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getPeerContentInfo$1;->$serverRemoteClientId:J

    .line 231
    invoke-virtual {p1, v3, v4}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetPeerContentInfo_Request$Builder;->setRemoteClientId(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetPeerContentInfo_Request$Builder;

    .line 232
    invoke-virtual {p1, v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetPeerContentInfo_Request$Builder;->setSteamid(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetPeerContentInfo_Request$Builder;

    .line 233
    invoke-virtual {p1, v7, v8}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetPeerContentInfo_Request$Builder;->setServerRemoteClientId(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetPeerContentInfo_Request$Builder;

    .line 234
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetPeerContentInfo_Request$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetPeerContentInfo_Request;

    move-result-object p1

    .line 236
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getPeerContentInfo$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;

    invoke-static {v1}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;->access$getContentService(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;)Lin/dragonbra/javasteam/rpc/service/ContentServerDirectory;

    move-result-object v1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/rpc/service/ContentServerDirectory;->getPeerContentInfo(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetPeerContentInfo_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object v1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getPeerContentInfo$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getPeerContentInfo$1;->label:I

    invoke-virtual {v1, p0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_51

    return-object v0

    .line 229
    :cond_51
    :goto_51
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    .line 237
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetPeerContentInfo_Response$Builder;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetPeerContentInfo_Response$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetPeerContentInfo_Response;

    move-result-object p0

    .line 239
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v0

    sget-object v1, Lin/dragonbra/javasteam/enums/EResult;->OK:Lin/dragonbra/javasteam/enums/EResult;

    if-eq v0, v1, :cond_83

    .line 240
    invoke-static {}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;->access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPeerContentInfo got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lin/dragonbra/javasteam/util/log/Logger;->error$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 243
    :cond_83
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamcontent/GetPeerContentInfo;

    .line 244
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetPeerContentInfo_Response;->getAppidsList()Ljava/util/List;

    move-result-object v0

    const-string v1, "getAppidsList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetPeerContentInfo_Response;->getIpPublic()Ljava/lang/String;

    move-result-object p0

    const-string v1, "getIpPublic(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-direct {p1, v0, p0}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/GetPeerContentInfo;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object p1
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent.C00301 (in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent$getServersForSteamPipe$1)
.class final Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getServersForSteamPipe$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SteamContent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;->getServersForSteamPipe(Ljava/lang/Integer;Ljava/lang/Integer;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Deferred;
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
        "Lin/dragonbra/javasteam/steam/cdn/Server;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSteamContent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SteamContent.kt\nin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getServersForSteamPipe$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,258:1\n1#2:259\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent$getServersForSteamPipe$1"
    f = "SteamContent.kt"
    l = {
        0x39
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $cellId:Ljava/lang/Integer;

.field final synthetic $maxNumServers:Ljava/lang/Integer;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getServersForSteamPipe$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getServersForSteamPipe$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;

    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getServersForSteamPipe$1;->$cellId:Ljava/lang/Integer;

    iput-object p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getServersForSteamPipe$1;->$maxNumServers:Ljava/lang/Integer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
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
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getServersForSteamPipe$1;

    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getServersForSteamPipe$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getServersForSteamPipe$1;->$cellId:Ljava/lang/Integer;

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getServersForSteamPipe$1;->$maxNumServers:Ljava/lang/Integer;

    invoke-direct {p1, v0, v1, p0, p2}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getServersForSteamPipe$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getServersForSteamPipe$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lin/dragonbra/javasteam/steam/cdn/Server;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getServersForSteamPipe$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getServersForSteamPipe$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getServersForSteamPipe$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 51
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getServersForSteamPipe$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    if-ne v1, v2, :cond_13

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getServersForSteamPipe$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetServersForSteamPipe_Request;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_67

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetServersForSteamPipe_Request;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetServersForSteamPipe_Request$Builder;

    move-result-object p1

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getServersForSteamPipe$1;->$cellId:Ljava/lang/Integer;

    iget-object v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getServersForSteamPipe$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;

    iget-object v4, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getServersForSteamPipe$1;->$maxNumServers:Ljava/lang/Integer;

    if-eqz v1, :cond_2f

    .line 53
    :goto_2a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3b

    :cond_2f
    invoke-static {v3}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;->access$getClient(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;)Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/CMClient;->getCellID()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3a

    goto :goto_2a

    :cond_3a
    const/4 v1, 0x0

    :goto_3b
    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetServersForSteamPipe_Request$Builder;->setCellId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetServersForSteamPipe_Request$Builder;

    if-eqz v4, :cond_47

    .line 54
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetServersForSteamPipe_Request$Builder;->setMaxServers(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetServersForSteamPipe_Request$Builder;

    .line 55
    :cond_47
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetServersForSteamPipe_Request$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetServersForSteamPipe_Request;

    move-result-object p1

    .line 57
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getServersForSteamPipe$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;

    invoke-static {v1}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;->access$getContentService(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;)Lin/dragonbra/javasteam/rpc/service/ContentServerDirectory;

    move-result-object v1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/rpc/service/ContentServerDirectory;->getServersForSteamPipe(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetServersForSteamPipe_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object v1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getServersForSteamPipe$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$getServersForSteamPipe$1;->label:I

    invoke-virtual {v1, p0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_67

    return-object v0

    .line 51
    :cond_67
    :goto_67
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    .line 58
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetServersForSteamPipe_Response$Builder;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetServersForSteamPipe_Response$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetServersForSteamPipe_Response;

    move-result-object p0

    .line 60
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Lin/dragonbra/javasteam/steam/webapi/ContentServerDirectoryService;->convertServerList$javasteam(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetServersForSteamPipe_Response;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent.C00311 (in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent$requestPeerContentServer$1)
.class final Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$requestPeerContentServer$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SteamContent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;->requestPeerContentServer(JJJIILkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Deferred;
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
        "Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent$requestPeerContentServer$1"
    f = "SteamContent.kt"
    l = {
        0xc9
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $appId:I

.field final synthetic $currentBuildId:I

.field final synthetic $remoteClientId:J

.field final synthetic $serverRemoteClientId:J

.field final synthetic $steamId:J

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;JJJIILkotlin/coroutines/Continuation;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;",
            "JJJII",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$requestPeerContentServer$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$requestPeerContentServer$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;

    iput-wide p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$requestPeerContentServer$1;->$remoteClientId:J

    iput-wide p4, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$requestPeerContentServer$1;->$steamId:J

    iput-wide p6, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$requestPeerContentServer$1;->$serverRemoteClientId:J

    iput p8, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$requestPeerContentServer$1;->$appId:I

    iput p9, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$requestPeerContentServer$1;->$currentBuildId:I

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
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$requestPeerContentServer$1;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$requestPeerContentServer$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;

    iget-wide v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$requestPeerContentServer$1;->$remoteClientId:J

    iget-wide v4, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$requestPeerContentServer$1;->$steamId:J

    iget-wide v6, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$requestPeerContentServer$1;->$serverRemoteClientId:J

    iget v8, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$requestPeerContentServer$1;->$appId:I

    iget v9, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$requestPeerContentServer$1;->$currentBuildId:I

    move-object v0, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$requestPeerContentServer$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;JJJIILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$requestPeerContentServer$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$requestPeerContentServer$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$requestPeerContentServer$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$requestPeerContentServer$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 192
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$requestPeerContentServer$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    if-ne v1, v2, :cond_13

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$requestPeerContentServer$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_RequestPeerContentServer_Request;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5b

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 193
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_RequestPeerContentServer_Request;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_RequestPeerContentServer_Request$Builder;

    move-result-object p1

    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$requestPeerContentServer$1;->$remoteClientId:J

    iget-wide v5, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$requestPeerContentServer$1;->$steamId:J

    iget-wide v7, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$requestPeerContentServer$1;->$serverRemoteClientId:J

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$requestPeerContentServer$1;->$appId:I

    iget v9, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$requestPeerContentServer$1;->$currentBuildId:I

    .line 194
    invoke-virtual {p1, v3, v4}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_RequestPeerContentServer_Request$Builder;->setRemoteClientId(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_RequestPeerContentServer_Request$Builder;

    .line 195
    invoke-virtual {p1, v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_RequestPeerContentServer_Request$Builder;->setSteamid(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_RequestPeerContentServer_Request$Builder;

    .line 196
    invoke-virtual {p1, v7, v8}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_RequestPeerContentServer_Request$Builder;->setServerRemoteClientId(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_RequestPeerContentServer_Request$Builder;

    .line 197
    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_RequestPeerContentServer_Request$Builder;->setAppId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_RequestPeerContentServer_Request$Builder;

    .line 198
    invoke-virtual {p1, v9}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_RequestPeerContentServer_Request$Builder;->setCurrentBuildId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_RequestPeerContentServer_Request$Builder;

    .line 199
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_RequestPeerContentServer_Request$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_RequestPeerContentServer_Request;

    move-result-object p1

    .line 201
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$requestPeerContentServer$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;

    invoke-static {v1}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;->access$getContentService(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;)Lin/dragonbra/javasteam/rpc/service/ContentServerDirectory;

    move-result-object v1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/rpc/service/ContentServerDirectory;->requestPeerContentServer(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_RequestPeerContentServer_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object v1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$requestPeerContentServer$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$requestPeerContentServer$1;->label:I

    invoke-virtual {v1, p0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5b

    return-object v0

    .line 192
    :cond_5b
    :goto_5b
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    .line 202
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_RequestPeerContentServer_Response$Builder;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_RequestPeerContentServer_Response$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_RequestPeerContentServer_Response;

    move-result-object p0

    .line 204
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v0

    sget-object v1, Lin/dragonbra/javasteam/enums/EResult;->OK:Lin/dragonbra/javasteam/enums/EResult;

    if-eq v0, v1, :cond_8d

    .line 205
    invoke-static {}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;->access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestPeerContentServer got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lin/dragonbra/javasteam/util/log/Logger;->error$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 208
    :cond_8d
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;

    .line 209
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_RequestPeerContentServer_Response;->getServerPort()I

    move-result v0

    .line 210
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_RequestPeerContentServer_Response;->getInstalledDepotsList()Ljava/util/List;

    move-result-object v1

    const-string v2, "getInstalledDepotsList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_RequestPeerContentServer_Response;->getAccessToken()J

    move-result-wide v2

    .line 208
    invoke-direct {p1, v0, v1, v2, v3}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;-><init>(ILjava/util/List;J)V

    return-object p1
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent$$ExternalSyntheticLambda0 (in.dragonbra.javasteam.steam.handlers.steamcontent.SteamContent$$ExternalSyntheticLambda0)
.class public final synthetic Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;


# direct methods
.method public synthetic constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$$ExternalSyntheticLambda0;->f$0:Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent$$ExternalSyntheticLambda0;->f$0:Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;

    invoke-static {p0}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;->$r8$lambda$p5DHTMzUihbwoFezvtQ5L56oiqI(Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;)Lin/dragonbra/javasteam/rpc/service/ContentServerDirectory;

    move-result-object p0

    return-object p0
.end method
