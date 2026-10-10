###### Class in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication (in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;
.super Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;
.source "SteamClientCommunication.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSteamClientCommunication.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SteamClientCommunication.kt\nin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication\n+ 2 SteamClient.kt\nin/dragonbra/javasteam/steam/steamclient/SteamClient\n+ 3 SteamUnifiedMessages.kt\nin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages\n*L\n1#1,327:1\n170#2:328\n32#3:329\n*S KotlinDebug\n*F\n+ 1 SteamClientCommunication.kt\nin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication\n*L\n32#1:328\n34#1:329\n*E\n"
.end annotation


# instance fields
.field private final clientComm$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$cTbCiBiUpgrYUfWstgaZVFf3n_A(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;)Lin/dragonbra/javasteam/rpc/service/ClientComm;
    .registers 1

    .line 0
    invoke-static {p0}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;->clientComm_delegate$lambda$0(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;)Lin/dragonbra/javasteam/rpc/service/ClientComm;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;-><init>()V

    .line 31
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$$ExternalSyntheticLambda0;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;->clientComm$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getClientComm(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;)Lin/dragonbra/javasteam/rpc/service/ClientComm;
    .registers 1

    .line 27
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;->getClientComm()Lin/dragonbra/javasteam/rpc/service/ClientComm;

    move-result-object p0

    return-object p0
.end method

.method private static final clientComm_delegate$lambda$0(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;)Lin/dragonbra/javasteam/rpc/service/ClientComm;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    .line 170
    const-class v0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getHandler(Ljava/lang/Class;)Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;

    move-result-object p0

    .line 32
    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    if-eqz p0, :cond_17

    .line 32
    const-class v0, Lin/dragonbra/javasteam/rpc/service/ClientComm;

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->createService(Ljava/lang/Class;)Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/rpc/service/ClientComm;

    return-object p0

    .line 33
    :cond_17
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Unable to get SteamUnifiedMessages handler"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getClientAppList$default(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;JLin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;
    .registers 7

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_6

    .line 74
    sget-object p3, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;->None:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;

    :cond_6
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_c

    .line 75
    const-string p4, "english"

    .line 72
    :cond_c
    invoke-virtual {p0, p1, p2, p3, p4}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;->getClientAppList(JLin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;Ljava/lang/String;)Lkotlinx/coroutines/Deferred;

    move-result-object p0

    return-object p0
.end method

.method private final getClientComm()Lin/dragonbra/javasteam/rpc/service/ClientComm;
    .registers 1

    .line 31
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;->clientComm$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/rpc/service/ClientComm;

    return-object p0
.end method

.method public static synthetic launchClientApp$default(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;JILjava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;
    .registers 7

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_5

    const/4 p4, 0x0

    .line 248
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;->launchClientApp(JILjava/lang/String;)Lkotlinx/coroutines/Deferred;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic setClientAppUpdateState$default(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;JIZILjava/lang/Object;)Lkotlinx/coroutines/Deferred;
    .registers 7

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_5

    const/4 p4, 0x0

    .line 180
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;->setClientAppUpdateState(JIZ)Lkotlinx/coroutines/Deferred;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final enableOrDisableDownloads(JZ)Lkotlinx/coroutines/Deferred;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Lkotlinx/coroutines/Deferred<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 228
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getDefaultScope$javasteam()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$enableOrDisableDownloads$1;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$enableOrDisableDownloads$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;JZLkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p0

    return-object p0
.end method

.method public final getAllClientLogonInfo()Lkotlinx/coroutines/Deferred;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/Deferred<",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfo;",
            ">;"
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getDefaultScope$javasteam()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getAllClientLogonInfo$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getAllClientLogonInfo$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p0

    return-object p0
.end method

.method public final getClientAppList(J)Lkotlinx/coroutines/Deferred;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lkotlinx/coroutines/Deferred<",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v6}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;->getClientAppList$default(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;JLin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p0

    return-object p0
.end method

.method public final getClientAppList(JLin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;)Lkotlinx/coroutines/Deferred;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;",
            ")",
            "Lkotlinx/coroutines/Deferred<",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;",
            ">;"
        }
    .end annotation

    .line 0
    const-string v0, "filters"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;->getClientAppList$default(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;JLin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p0

    return-object p0
.end method

.method public final getClientAppList(JLin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;Ljava/lang/String;)Lkotlinx/coroutines/Deferred;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/Deferred<",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;",
            ">;"
        }
    .end annotation

    const-string v0, "filters"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "language"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getDefaultScope$javasteam()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientAppList$1;

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientAppList$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;JLjava/lang/String;Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p0

    return-object p0
.end method

.method public final getClientInfo(J)Lkotlinx/coroutines/Deferred;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lkotlinx/coroutines/Deferred<",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;",
            ">;"
        }
    .end annotation

    .line 290
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getDefaultScope$javasteam()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientInfo$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientInfo$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;JLkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p0

    return-object p0
.end method

.method public final getClientLogonInfo(J)Lkotlinx/coroutines/Deferred;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lkotlinx/coroutines/Deferred<",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;",
            ">;"
        }
    .end annotation

    .line 270
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getDefaultScope$javasteam()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientLogonInfo$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientLogonInfo$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;JLkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

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

.method public final installClientApp(JI)Lkotlinx/coroutines/Deferred;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Lkotlinx/coroutines/Deferred<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getDefaultScope$javasteam()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$installClientApp$1;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$installClientApp$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;JILkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p0

    return-object p0
.end method

.method public final launchClientApp(JI)Lkotlinx/coroutines/Deferred;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Lkotlinx/coroutines/Deferred<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    invoke-static/range {v0 .. v6}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;->launchClientApp$default(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;JILjava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p0

    return-object p0
.end method

.method public final launchClientApp(JILjava/lang/String;)Lkotlinx/coroutines/Deferred;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/Deferred<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 252
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getDefaultScope$javasteam()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$launchClientApp$1;

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v8}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$launchClientApp$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;JILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p0

    return-object p0
.end method

.method public final setClientAppUpdateState(JI)Lkotlinx/coroutines/Deferred;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Lkotlinx/coroutines/Deferred<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    invoke-static/range {v0 .. v6}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;->setClientAppUpdateState$default(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;JIZILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p0

    return-object p0
.end method

.method public final setClientAppUpdateState(JIZ)Lkotlinx/coroutines/Deferred;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZ)",
            "Lkotlinx/coroutines/Deferred<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getDefaultScope$javasteam()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$setClientAppUpdateState$1;

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v8}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$setClientAppUpdateState$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;JIZLkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p0

    return-object p0
.end method

.method public final uninstallClientApp(JI)Lkotlinx/coroutines/Deferred;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Lkotlinx/coroutines/Deferred<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getDefaultScope$javasteam()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$uninstallClientApp$1;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$uninstallClientApp$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;JILkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication.AnonymousClass1 (in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$enableOrDisableDownloads$1)
.class final Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$enableOrDisableDownloads$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SteamClientCommunication.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;->enableOrDisableDownloads(JZ)Lkotlinx/coroutines/Deferred;
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
    c = "in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$enableOrDisableDownloads$1"
    f = "SteamClientCommunication.kt"
    l = {
        0xea
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $enable:Z

.field final synthetic $remoteId:J

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;JZLkotlin/coroutines/Continuation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;",
            "JZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$enableOrDisableDownloads$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$enableOrDisableDownloads$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;

    iput-wide p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$enableOrDisableDownloads$1;->$remoteId:J

    iput-boolean p4, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$enableOrDisableDownloads$1;->$enable:Z

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
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$enableOrDisableDownloads$1;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$enableOrDisableDownloads$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;

    iget-wide v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$enableOrDisableDownloads$1;->$remoteId:J

    iget-boolean v4, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$enableOrDisableDownloads$1;->$enable:Z

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$enableOrDisableDownloads$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;JZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$enableOrDisableDownloads$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$enableOrDisableDownloads$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$enableOrDisableDownloads$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$enableOrDisableDownloads$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 228
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$enableOrDisableDownloads$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    if-ne v1, v2, :cond_13

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$enableOrDisableDownloads$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_EnableOrDisableDownloads_Request;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4c

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 229
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_EnableOrDisableDownloads_Request;->newBuilder()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_EnableOrDisableDownloads_Request$Builder;

    move-result-object p1

    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$enableOrDisableDownloads$1;->$remoteId:J

    iget-boolean v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$enableOrDisableDownloads$1;->$enable:Z

    .line 230
    invoke-virtual {p1, v3, v4}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_EnableOrDisableDownloads_Request$Builder;->setClientInstanceid(J)Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_EnableOrDisableDownloads_Request$Builder;

    .line 231
    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_EnableOrDisableDownloads_Request$Builder;->setEnable(Z)Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_EnableOrDisableDownloads_Request$Builder;

    .line 232
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_EnableOrDisableDownloads_Request$Builder;->build()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_EnableOrDisableDownloads_Request;

    move-result-object p1

    .line 234
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$enableOrDisableDownloads$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;

    invoke-static {v1}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;->access$getClientComm(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;)Lin/dragonbra/javasteam/rpc/service/ClientComm;

    move-result-object v1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/rpc/service/ClientComm;->enableOrDisableDownloads(Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_EnableOrDisableDownloads_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object v1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$enableOrDisableDownloads$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$enableOrDisableDownloads$1;->label:I

    invoke-virtual {v1, p0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4c

    return-object v0

    .line 228
    :cond_4c
    :goto_4c
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    .line 237
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p0

    sget-object p1, Lin/dragonbra/javasteam/enums/EResult;->OK:Lin/dragonbra/javasteam/enums/EResult;

    if-ne p0, p1, :cond_57

    goto :goto_58

    :cond_57
    const/4 v2, 0x0

    :goto_58
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication.C00131 (in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$getAllClientLogonInfo$1)
.class final Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getAllClientLogonInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SteamClientCommunication.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;->getAllClientLogonInfo()Lkotlinx/coroutines/Deferred;
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
        "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfo;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSteamClientCommunication.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SteamClientCommunication.kt\nin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getAllClientLogonInfo$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,327:1\n1563#2:328\n1634#2,3:329\n*S KotlinDebug\n*F\n+ 1 SteamClientCommunication.kt\nin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getAllClientLogonInfo$1\n*L\n49#1:328\n49#1:329,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$getAllClientLogonInfo$1"
    f = "SteamClientCommunication.kt"
    l = {
        0x2d
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getAllClientLogonInfo$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getAllClientLogonInfo$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 3
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
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getAllClientLogonInfo$1;

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getAllClientLogonInfo$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;

    invoke-direct {p1, p0, p2}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getAllClientLogonInfo$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getAllClientLogonInfo$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getAllClientLogonInfo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getAllClientLogonInfo$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getAllClientLogonInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 42
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getAllClientLogonInfo$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    if-ne v1, v2, :cond_13

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getAllClientLogonInfo$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetAllClientLogonInfo_Request;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_42

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetAllClientLogonInfo_Request;->newBuilder()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetAllClientLogonInfo_Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetAllClientLogonInfo_Request$Builder;->build()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetAllClientLogonInfo_Request;

    move-result-object p1

    .line 45
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getAllClientLogonInfo$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;

    invoke-static {v1}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;->access$getClientComm(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;)Lin/dragonbra/javasteam/rpc/service/ClientComm;

    move-result-object v1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/rpc/service/ClientComm;->getAllClientLogonInfo(Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetAllClientLogonInfo_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object v1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getAllClientLogonInfo$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getAllClientLogonInfo$1;->label:I

    invoke-virtual {v1, p0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_42

    return-object v0

    .line 42
    :cond_42
    :goto_42
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    .line 46
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetAllClientLogonInfo_Response$Builder;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetAllClientLogonInfo_Response$Builder;->build()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetAllClientLogonInfo_Response;

    move-result-object p0

    .line 49
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetAllClientLogonInfo_Response;->getSessionsList()Ljava/util/List;

    move-result-object p1

    const-string v0, "getSessionsList(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1563
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_66
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1635
    check-cast v1, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetAllClientLogonInfo_Response_Session;

    .line 50
    new-instance v11, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;

    .line 51
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetAllClientLogonInfo_Response_Session;->getClientInstanceid()J

    move-result-wide v3

    .line 52
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetAllClientLogonInfo_Response_Session;->getProtocolVersion()I

    move-result v5

    .line 53
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetAllClientLogonInfo_Response_Session;->getOsName()Ljava/lang/String;

    move-result-object v6

    const-string v2, "getOsName(...)"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetAllClientLogonInfo_Response_Session;->getMachineName()Ljava/lang/String;

    move-result-object v7

    const-string v2, "getMachineName(...)"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetAllClientLogonInfo_Response_Session;->getOsType()I

    move-result v2

    invoke-static {v2}, Lin/dragonbra/javasteam/enums/EOSType;->from(I)Lin/dragonbra/javasteam/enums/EOSType;

    move-result-object v8

    const-string v2, "from(...)"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetAllClientLogonInfo_Response_Session;->getDeviceType()I

    move-result v9

    invoke-static {v9}, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->from(I)Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    move-result-object v9

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetAllClientLogonInfo_Response_Session;->getRealm()I

    move-result v1

    invoke-static {v1}, Lin/dragonbra/javasteam/enums/ESteamRealm;->from(I)Lin/dragonbra/javasteam/enums/ESteamRealm;

    move-result-object v10

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v11

    .line 50
    invoke-direct/range {v2 .. v10}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;-><init>(JILjava/lang/String;Ljava/lang/String;Lin/dragonbra/javasteam/enums/EOSType;Lin/dragonbra/javasteam/enums/EGamingDeviceType;Lin/dragonbra/javasteam/enums/ESteamRealm;)V

    .line 1635
    invoke-interface {v0, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 60
    :cond_b9
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetAllClientLogonInfo_Response;->getRefetchIntervalSec()I

    move-result p0

    .line 48
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfo;

    invoke-direct {p1, v0, p0}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfo;-><init>(Ljava/util/List;I)V

    return-object p1
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication.C00141 (in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$getClientAppList$1)
.class final Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientAppList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SteamClientCommunication.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;->getClientAppList(JLin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;Ljava/lang/String;)Lkotlinx/coroutines/Deferred;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientAppList$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSteamClientCommunication.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SteamClientCommunication.kt\nin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientAppList$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,327:1\n1563#2:328\n1634#2,2:329\n1563#2:331\n1634#2,3:332\n1636#2:335\n1563#2:336\n1634#2,3:337\n*S KotlinDebug\n*F\n+ 1 SteamClientCommunication.kt\nin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientAppList$1\n*L\n93#1:328\n93#1:329,2\n103#1:331\n103#1:332,3\n93#1:335\n136#1:336\n136#1:337,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$getClientAppList$1"
    f = "SteamClientCommunication.kt"
    l = {
        0x58
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $filters:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;

.field final synthetic $language:Ljava/lang/String;

.field final synthetic $remoteId:J

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;JLjava/lang/String;Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;Lkotlin/coroutines/Continuation;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;",
            "J",
            "Ljava/lang/String;",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientAppList$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientAppList$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;

    iput-wide p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientAppList$1;->$remoteId:J

    iput-object p4, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientAppList$1;->$language:Ljava/lang/String;

    iput-object p5, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientAppList$1;->$filters:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;

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
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientAppList$1;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientAppList$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;

    iget-wide v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientAppList$1;->$remoteId:J

    iget-object v4, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientAppList$1;->$language:Ljava/lang/String;

    iget-object v5, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientAppList$1;->$filters:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientAppList$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;JLjava/lang/String;Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientAppList$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientAppList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientAppList$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientAppList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 44

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 76
    iget v2, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientAppList$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1f

    if-ne v2, v3, :cond_17

    iget-object v0, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientAppList$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Request;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto :goto_75

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 77
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Request;->newBuilder()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Request$Builder;

    move-result-object v2

    iget-wide v4, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientAppList$1;->$remoteId:J

    iget-object v6, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientAppList$1;->$language:Ljava/lang/String;

    iget-object v7, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientAppList$1;->$filters:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;

    .line 78
    invoke-virtual {v2, v4, v5}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Request$Builder;->setClientInstanceid(J)Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Request$Builder;

    .line 79
    invoke-virtual {v2, v6}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Request$Builder;->setLanguage(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Request$Builder;

    .line 80
    invoke-virtual {v2, v3}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Request$Builder;->setIncludeClientInfo(Z)Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Request$Builder;

    .line 81
    const-string v4, "games"

    invoke-virtual {v2, v4}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Request$Builder;->setFields(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Request$Builder;

    .line 82
    sget-object v4, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientAppList$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v3, :cond_50

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4a

    .line 84
    const-string v4, "changing"

    goto :goto_52

    .line 82
    :cond_4a
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 83
    :cond_50
    const-string v4, "none"

    .line 82
    :goto_52
    invoke-virtual {v2, v4}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Request$Builder;->setFilters(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Request$Builder;

    .line 86
    invoke-virtual {v2}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Request$Builder;->build()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Request;

    move-result-object v2

    .line 88
    iget-object v4, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientAppList$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;

    invoke-static {v4}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;->access$getClientComm(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;)Lin/dragonbra/javasteam/rpc/service/ClientComm;

    move-result-object v4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Lin/dragonbra/javasteam/rpc/service/ClientComm;->getClientAppList(Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object v4

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientAppList$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientAppList$1;->label:I

    invoke-virtual {v4, v0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_75

    return-object v1

    .line 76
    :cond_75
    :goto_75
    check-cast v0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    .line 89
    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response$Builder;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response$Builder;->build()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response;->getBytesAvailable()J

    move-result-wide v2

    .line 93
    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response;->getAppsList()Ljava/util/List;

    move-result-object v1

    const-string v4, "getAppsList(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1563
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1635
    check-cast v6, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response_AppData;

    .line 95
    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response_AppData;->getAppid()I

    move-result v8

    .line 96
    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response_AppData;->getApp()Ljava/lang/String;

    move-result-object v9

    const-string v7, "getApp(...)"

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response_AppData;->getCategory()Ljava/lang/String;

    move-result-object v10

    const-string v11, "getCategory(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response_AppData;->getAppType()Ljava/lang/String;

    move-result-object v11

    const-string v12, "getAppType(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response_AppData;->getNumDownloading()I

    move-result v12

    .line 100
    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response_AppData;->getBytesDownloadRate()I

    move-result v13

    .line 101
    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response_AppData;->getBytesDownloaded()J

    move-result-wide v14

    .line 102
    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response_AppData;->getBytesToDownload()J

    move-result-wide v16

    .line 103
    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response_AppData;->getDlcsList()Ljava/util/List;

    move-result-object v5

    move-object/from16 p1, v1

    const-string v1, "getDlcsList(...)"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1563
    new-instance v1, Ljava/util/ArrayList;

    move-wide/from16 v39, v2

    const/16 v2, 0xa

    invoke-static {v5, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_120

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1635
    check-cast v3, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response_AppData_DLCData;

    .line 104
    new-instance v5, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListDlcData;

    move-object/from16 v18, v2

    .line 105
    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response_AppData_DLCData;->getAppid()I

    move-result v2

    move-object/from16 v41, v0

    .line 106
    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response_AppData_DLCData;->getApp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response_AppData_DLCData;->getInstalled()I

    move-result v3

    .line 104
    invoke-direct {v5, v2, v0, v3}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListDlcData;-><init>(ILjava/lang/String;I)V

    .line 1635
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v18

    move-object/from16 v0, v41

    goto :goto_f4

    :cond_120
    move-object/from16 v41, v0

    .line 110
    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response_AppData;->getFavorite()Z

    move-result v19

    .line 111
    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response_AppData;->getAutoUpdate()Z

    move-result v20

    .line 112
    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response_AppData;->getInstalled()Z

    move-result v21

    .line 113
    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response_AppData;->getDownloadPaused()Z

    move-result v22

    .line 114
    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response_AppData;->getChanging()Z

    move-result v23

    .line 115
    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response_AppData;->getAvailableOnPlatform()Z

    move-result v24

    .line 116
    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response_AppData;->getBytesStaged()J

    move-result-wide v25

    .line 117
    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response_AppData;->getBytesToStage()J

    move-result-wide v27

    .line 118
    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response_AppData;->getBytesRequired()J

    move-result-wide v29

    .line 119
    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response_AppData;->getSourceBuildid()I

    move-result v31

    .line 120
    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response_AppData;->getTargetBuildid()I

    move-result v32

    .line 121
    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response_AppData;->getEstimatedSecondsRemaining()I

    move-result v33

    .line 122
    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response_AppData;->getQueuePosition()I

    move-result v34

    .line 123
    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response_AppData;->getUninstalling()Z

    move-result v35

    .line 124
    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response_AppData;->getRtTimeScheduled()I

    move-result v36

    .line 125
    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response_AppData;->getRunning()Z

    move-result v37

    .line 126
    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response_AppData;->getUpdatePercentage()I

    move-result v38

    .line 94
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;

    move-object v7, v0

    move-object/from16 v18, v1

    invoke-direct/range {v7 .. v38}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/util/List;ZZZZZZJJJIIIIZIZI)V

    .line 1635
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p1

    move-wide/from16 v2, v39

    move-object/from16 v0, v41

    const/16 v5, 0xa

    goto/16 :goto_9d

    :cond_17b
    move-object/from16 v41, v0

    move-wide/from16 v39, v2

    .line 130
    invoke-virtual/range {v41 .. v41}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response;->getClientInfo()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;->getPackageVersion()I

    move-result v6

    .line 131
    invoke-virtual/range {v41 .. v41}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response;->getClientInfo()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;->getOs()Ljava/lang/String;

    move-result-object v7

    const-string v0, "getOs(...)"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {v41 .. v41}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response;->getClientInfo()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;->getMachineName()Ljava/lang/String;

    move-result-object v8

    const-string v0, "getMachineName(...)"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {v41 .. v41}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response;->getClientInfo()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;->getIpPublic()Ljava/lang/String;

    move-result-object v9

    const-string v0, "getIpPublic(...)"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {v41 .. v41}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response;->getClientInfo()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;->getIpPrivate()Ljava/lang/String;

    move-result-object v10

    const-string v0, "getIpPrivate(...)"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {v41 .. v41}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response;->getClientInfo()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;->getBytesAvailable()J

    move-result-wide v11

    .line 136
    invoke-virtual/range {v41 .. v41}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response;->getClientInfo()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;->getRunningGamesList()Ljava/util/List;

    move-result-object v0

    const-string v1, "getRunningGamesList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1563
    new-instance v13, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v13, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1df
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_205

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1635
    check-cast v1, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData_RunningGames;

    .line 137
    new-instance v2, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;

    .line 138
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData_RunningGames;->getAppid()I

    move-result v3

    .line 139
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData_RunningGames;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    const-string v14, "getExtraInfo(...)"

    invoke-static {v5, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData_RunningGames;->getTimeRunningSec()I

    move-result v1

    .line 137
    invoke-direct {v2, v3, v5, v1}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;-><init>(ILjava/lang/String;I)V

    .line 1635
    invoke-interface {v13, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1df

    .line 143
    :cond_205
    invoke-virtual/range {v41 .. v41}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response;->getClientInfo()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;->getProtocolVersion()I

    move-result v14

    .line 144
    invoke-virtual/range {v41 .. v41}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response;->getClientInfo()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;->getClientcommVersion()I

    move-result v15

    .line 145
    invoke-virtual/range {v41 .. v41}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response;->getClientInfo()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;->getLocalUsersList()Ljava/util/List;

    move-result-object v0

    const-string v1, "getLocalUsersList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    new-instance v17, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;

    move-object/from16 v5, v17

    move-object/from16 v16, v0

    invoke-direct/range {v5 .. v16}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;IILjava/util/List;)V

    .line 147
    invoke-virtual/range {v41 .. v41}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response;->getRefetchIntervalSecFull()I

    move-result v6

    .line 148
    invoke-virtual/range {v41 .. v41}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response;->getRefetchIntervalSecChanging()I

    move-result v7

    .line 149
    invoke-virtual/range {v41 .. v41}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientAppList_Response;->getRefetchIntervalSecUpdating()I

    move-result v8

    .line 91
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;

    move-object v1, v0

    move-wide/from16 v2, v39

    invoke-direct/range {v1 .. v8}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;-><init>(JLjava/util/List;Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;III)V

    return-object v0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication.C00141.WhenMappings (in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$getClientAppList$1$WhenMappings)
.class public final synthetic Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientAppList$1$WhenMappings;
.super Ljava/lang/Object;
.source "SteamClientCommunication.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientAppList$1;
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
    invoke-static {}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;->values()[Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;->None:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;->Changing:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientAppList$1$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication.C00151 (in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$getClientInfo$1)
.class final Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SteamClientCommunication.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;->getClientInfo(J)Lkotlinx/coroutines/Deferred;
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
        "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSteamClientCommunication.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SteamClientCommunication.kt\nin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientInfo$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,327:1\n1563#2:328\n1634#2,3:329\n*S KotlinDebug\n*F\n+ 1 SteamClientCommunication.kt\nin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientInfo$1\n*L\n305#1:328\n305#1:329,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$getClientInfo$1"
    f = "SteamClientCommunication.kt"
    l = {
        0x127
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $remoteId:J

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;JLkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientInfo$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientInfo$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;

    iput-wide p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientInfo$1;->$remoteId:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
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
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientInfo$1;

    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientInfo$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;

    iget-wide v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientInfo$1;->$remoteId:J

    invoke-direct {p1, v0, v1, v2, p2}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientInfo$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;JLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientInfo$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientInfo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientInfo$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 290
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientInfo$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    if-ne v1, v2, :cond_13

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientInfo$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientInfo_Request;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_47

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 291
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientInfo_Request;->newBuilder()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientInfo_Request$Builder;

    move-result-object p1

    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientInfo$1;->$remoteId:J

    .line 292
    invoke-virtual {p1, v3, v4}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientInfo_Request$Builder;->setClientInstanceid(J)Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientInfo_Request$Builder;

    .line 293
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientInfo_Request$Builder;->build()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientInfo_Request;

    move-result-object p1

    .line 295
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientInfo$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;

    invoke-static {v1}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;->access$getClientComm(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;)Lin/dragonbra/javasteam/rpc/service/ClientComm;

    move-result-object v1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/rpc/service/ClientComm;->getClientInfo(Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientInfo_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object v1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientInfo$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientInfo$1;->label:I

    invoke-virtual {v1, p0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_47

    return-object v0

    .line 290
    :cond_47
    :goto_47
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    .line 296
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientInfo_Response$Builder;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientInfo_Response$Builder;->build()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientInfo_Response;

    move-result-object p0

    .line 299
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientInfo_Response;->getClientInfo()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;->getPackageVersion()I

    move-result v1

    .line 300
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientInfo_Response;->getClientInfo()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;->getOs()Ljava/lang/String;

    move-result-object v2

    const-string p1, "getOs(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientInfo_Response;->getClientInfo()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;->getMachineName()Ljava/lang/String;

    move-result-object v3

    const-string p1, "getMachineName(...)"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientInfo_Response;->getClientInfo()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;->getIpPublic()Ljava/lang/String;

    move-result-object v4

    const-string p1, "getIpPublic(...)"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientInfo_Response;->getClientInfo()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;->getIpPrivate()Ljava/lang/String;

    move-result-object v5

    const-string p1, "getIpPrivate(...)"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientInfo_Response;->getClientInfo()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;->getBytesAvailable()J

    move-result-wide v6

    .line 305
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientInfo_Response;->getClientInfo()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;->getRunningGamesList()Ljava/util/List;

    move-result-object p1

    const-string v0, "getRunningGamesList(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1563
    new-instance v8, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1635
    check-cast v0, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData_RunningGames;

    .line 306
    new-instance v9, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;

    .line 307
    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData_RunningGames;->getAppid()I

    move-result v10

    .line 308
    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData_RunningGames;->getExtraInfo()Ljava/lang/String;

    move-result-object v11

    const-string v12, "getExtraInfo(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData_RunningGames;->getTimeRunningSec()I

    move-result v0

    .line 306
    invoke-direct {v9, v10, v11, v0}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;-><init>(ILjava/lang/String;I)V

    .line 1635
    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b3

    .line 312
    :cond_d9
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientInfo_Response;->getClientInfo()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;->getProtocolVersion()I

    move-result v9

    .line 313
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientInfo_Response;->getClientInfo()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;->getClientcommVersion()I

    move-result v10

    .line 314
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientInfo_Response;->getClientInfo()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;

    move-result-object p0

    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_ClientData;->getLocalUsersList()Ljava/util/List;

    move-result-object v11

    const-string p0, "getLocalUsersList(...)"

    invoke-static {v11, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;IILjava/util/List;)V

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication.C00161 (in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$getClientLogonInfo$1)
.class final Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientLogonInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SteamClientCommunication.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;->getClientLogonInfo(J)Lkotlinx/coroutines/Deferred;
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
        "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$getClientLogonInfo$1"
    f = "SteamClientCommunication.kt"
    l = {
        0x113
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $remoteId:J

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;JLkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientLogonInfo$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientLogonInfo$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;

    iput-wide p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientLogonInfo$1;->$remoteId:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
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
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientLogonInfo$1;

    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientLogonInfo$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;

    iget-wide v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientLogonInfo$1;->$remoteId:J

    invoke-direct {p1, v0, v1, v2, p2}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientLogonInfo$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;JLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientLogonInfo$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientLogonInfo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientLogonInfo$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientLogonInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 270
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientLogonInfo$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    if-ne v1, v2, :cond_13

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientLogonInfo$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientLogonInfo_Request;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_47

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 271
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientLogonInfo_Request;->newBuilder()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientLogonInfo_Request$Builder;

    move-result-object p1

    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientLogonInfo$1;->$remoteId:J

    .line 272
    invoke-virtual {p1, v3, v4}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientLogonInfo_Request$Builder;->setClientInstanceid(J)Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientLogonInfo_Request$Builder;

    .line 273
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientLogonInfo_Request$Builder;->build()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientLogonInfo_Request;

    move-result-object p1

    .line 275
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientLogonInfo$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;

    invoke-static {v1}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;->access$getClientComm(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;)Lin/dragonbra/javasteam/rpc/service/ClientComm;

    move-result-object v1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/rpc/service/ClientComm;->getClientLogonInfo(Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientLogonInfo_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object v1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientLogonInfo$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$getClientLogonInfo$1;->label:I

    invoke-virtual {v1, p0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_47

    return-object v0

    .line 270
    :cond_47
    :goto_47
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    .line 276
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientLogonInfo_Response$Builder;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientLogonInfo_Response$Builder;->build()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientLogonInfo_Response;

    move-result-object p0

    .line 278
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;

    .line 279
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientLogonInfo_Response;->getProtocolVersion()I

    move-result v0

    .line 280
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientLogonInfo_Response;->getOs()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getOs(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_GetClientLogonInfo_Response;->getMachineName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "getMachineName(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    invoke-direct {p1, v0, v1, p0}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication.C00171 (in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$installClientApp$1)
.class final Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$installClientApp$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SteamClientCommunication.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;->installClientApp(JI)Lkotlinx/coroutines/Deferred;
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
    c = "in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$installClientApp$1"
    f = "SteamClientCommunication.kt"
    l = {
        0xa5
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $appId:I

.field final synthetic $remoteId:J

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;JILkotlin/coroutines/Continuation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;",
            "JI",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$installClientApp$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$installClientApp$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;

    iput-wide p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$installClientApp$1;->$remoteId:J

    iput p4, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$installClientApp$1;->$appId:I

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
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$installClientApp$1;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$installClientApp$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;

    iget-wide v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$installClientApp$1;->$remoteId:J

    iget v4, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$installClientApp$1;->$appId:I

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$installClientApp$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;JILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$installClientApp$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$installClientApp$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$installClientApp$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$installClientApp$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 159
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$installClientApp$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    if-ne v1, v2, :cond_13

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$installClientApp$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_InstallClientApp_Request;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4c

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 160
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_InstallClientApp_Request;->newBuilder()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_InstallClientApp_Request$Builder;

    move-result-object p1

    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$installClientApp$1;->$remoteId:J

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$installClientApp$1;->$appId:I

    .line 161
    invoke-virtual {p1, v3, v4}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_InstallClientApp_Request$Builder;->setClientInstanceid(J)Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_InstallClientApp_Request$Builder;

    .line 162
    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_InstallClientApp_Request$Builder;->setAppid(I)Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_InstallClientApp_Request$Builder;

    .line 163
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_InstallClientApp_Request$Builder;->build()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_InstallClientApp_Request;

    move-result-object p1

    .line 165
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$installClientApp$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;

    invoke-static {v1}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;->access$getClientComm(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;)Lin/dragonbra/javasteam/rpc/service/ClientComm;

    move-result-object v1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/rpc/service/ClientComm;->installClientApp(Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_InstallClientApp_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object v1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$installClientApp$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$installClientApp$1;->label:I

    invoke-virtual {v1, p0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4c

    return-object v0

    .line 159
    :cond_4c
    :goto_4c
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    .line 168
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p0

    sget-object p1, Lin/dragonbra/javasteam/enums/EResult;->OK:Lin/dragonbra/javasteam/enums/EResult;

    if-ne p0, p1, :cond_57

    goto :goto_58

    :cond_57
    const/4 v2, 0x0

    :goto_58
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication.C00181 (in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$launchClientApp$1)
.class final Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$launchClientApp$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SteamClientCommunication.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;->launchClientApp(JILjava/lang/String;)Lkotlinx/coroutines/Deferred;
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
    c = "in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$launchClientApp$1"
    f = "SteamClientCommunication.kt"
    l = {
        0x103
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $appId:I

.field final synthetic $parameters:Ljava/lang/String;

.field final synthetic $remoteId:J

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;JILjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;",
            "JI",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$launchClientApp$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$launchClientApp$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;

    iput-wide p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$launchClientApp$1;->$remoteId:J

    iput p4, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$launchClientApp$1;->$appId:I

    iput-object p5, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$launchClientApp$1;->$parameters:Ljava/lang/String;

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
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$launchClientApp$1;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$launchClientApp$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;

    iget-wide v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$launchClientApp$1;->$remoteId:J

    iget v4, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$launchClientApp$1;->$appId:I

    iget-object v5, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$launchClientApp$1;->$parameters:Ljava/lang/String;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$launchClientApp$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;JILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$launchClientApp$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$launchClientApp$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$launchClientApp$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$launchClientApp$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 252
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$launchClientApp$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    if-ne v1, v2, :cond_13

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$launchClientApp$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_LaunchClientApp_Request;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_55

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 253
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_LaunchClientApp_Request;->newBuilder()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_LaunchClientApp_Request$Builder;

    move-result-object p1

    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$launchClientApp$1;->$remoteId:J

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$launchClientApp$1;->$appId:I

    iget-object v5, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$launchClientApp$1;->$parameters:Ljava/lang/String;

    .line 254
    invoke-virtual {p1, v3, v4}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_LaunchClientApp_Request$Builder;->setClientInstanceid(J)Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_LaunchClientApp_Request$Builder;

    .line 255
    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_LaunchClientApp_Request$Builder;->setAppid(I)Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_LaunchClientApp_Request$Builder;

    if-nez v5, :cond_32

    .line 256
    const-string v5, ""

    :cond_32
    invoke-virtual {p1, v5}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_LaunchClientApp_Request$Builder;->setQueryParams(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_LaunchClientApp_Request$Builder;

    .line 257
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_LaunchClientApp_Request$Builder;->build()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_LaunchClientApp_Request;

    move-result-object p1

    .line 259
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$launchClientApp$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;

    invoke-static {v1}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;->access$getClientComm(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;)Lin/dragonbra/javasteam/rpc/service/ClientComm;

    move-result-object v1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/rpc/service/ClientComm;->launchClientApp(Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_LaunchClientApp_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object v1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$launchClientApp$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$launchClientApp$1;->label:I

    invoke-virtual {v1, p0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_55

    return-object v0

    .line 252
    :cond_55
    :goto_55
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    .line 262
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p0

    sget-object p1, Lin/dragonbra/javasteam/enums/EResult;->OK:Lin/dragonbra/javasteam/enums/EResult;

    if-ne p0, p1, :cond_60

    goto :goto_61

    :cond_60
    const/4 v2, 0x0

    :goto_61
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication.C00191 (in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$setClientAppUpdateState$1)
.class final Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$setClientAppUpdateState$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SteamClientCommunication.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;->setClientAppUpdateState(JIZ)Lkotlinx/coroutines/Deferred;
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
    c = "in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$setClientAppUpdateState$1"
    f = "SteamClientCommunication.kt"
    l = {
        0xc0
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $action:Z

.field final synthetic $appId:I

.field final synthetic $remoteId:J

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;JIZLkotlin/coroutines/Continuation;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;",
            "JIZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$setClientAppUpdateState$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$setClientAppUpdateState$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;

    iput-wide p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$setClientAppUpdateState$1;->$remoteId:J

    iput p4, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$setClientAppUpdateState$1;->$appId:I

    iput-boolean p5, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$setClientAppUpdateState$1;->$action:Z

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
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$setClientAppUpdateState$1;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$setClientAppUpdateState$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;

    iget-wide v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$setClientAppUpdateState$1;->$remoteId:J

    iget v4, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$setClientAppUpdateState$1;->$appId:I

    iget-boolean v5, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$setClientAppUpdateState$1;->$action:Z

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$setClientAppUpdateState$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;JIZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$setClientAppUpdateState$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$setClientAppUpdateState$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$setClientAppUpdateState$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$setClientAppUpdateState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 185
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$setClientAppUpdateState$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    if-ne v1, v2, :cond_13

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$setClientAppUpdateState$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_SetClientAppUpdateState_Request;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_51

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 186
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_SetClientAppUpdateState_Request;->newBuilder()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_SetClientAppUpdateState_Request$Builder;

    move-result-object p1

    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$setClientAppUpdateState$1;->$remoteId:J

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$setClientAppUpdateState$1;->$appId:I

    iget-boolean v5, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$setClientAppUpdateState$1;->$action:Z

    .line 187
    invoke-virtual {p1, v3, v4}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_SetClientAppUpdateState_Request$Builder;->setClientInstanceid(J)Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_SetClientAppUpdateState_Request$Builder;

    .line 188
    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_SetClientAppUpdateState_Request$Builder;->setAppid(I)Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_SetClientAppUpdateState_Request$Builder;

    .line 189
    invoke-virtual {p1, v5}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_SetClientAppUpdateState_Request$Builder;->setAction(I)Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_SetClientAppUpdateState_Request$Builder;

    .line 190
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_SetClientAppUpdateState_Request$Builder;->build()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_SetClientAppUpdateState_Request;

    move-result-object p1

    .line 192
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$setClientAppUpdateState$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;

    invoke-static {v1}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;->access$getClientComm(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;)Lin/dragonbra/javasteam/rpc/service/ClientComm;

    move-result-object v1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/rpc/service/ClientComm;->setClientAppUpdateState(Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_SetClientAppUpdateState_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object v1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$setClientAppUpdateState$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$setClientAppUpdateState$1;->label:I

    invoke-virtual {v1, p0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_51

    return-object v0

    .line 185
    :cond_51
    :goto_51
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    .line 195
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p0

    sget-object p1, Lin/dragonbra/javasteam/enums/EResult;->OK:Lin/dragonbra/javasteam/enums/EResult;

    if-ne p0, p1, :cond_5c

    goto :goto_5d

    :cond_5c
    const/4 v2, 0x0

    :goto_5d
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication.C00201 (in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$uninstallClientApp$1)
.class final Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$uninstallClientApp$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SteamClientCommunication.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;->uninstallClientApp(JI)Lkotlinx/coroutines/Deferred;
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
    c = "in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$uninstallClientApp$1"
    f = "SteamClientCommunication.kt"
    l = {
        0xd5
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $appId:I

.field final synthetic $remoteId:J

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;JILkotlin/coroutines/Continuation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;",
            "JI",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$uninstallClientApp$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$uninstallClientApp$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;

    iput-wide p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$uninstallClientApp$1;->$remoteId:J

    iput p4, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$uninstallClientApp$1;->$appId:I

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
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$uninstallClientApp$1;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$uninstallClientApp$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;

    iget-wide v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$uninstallClientApp$1;->$remoteId:J

    iget v4, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$uninstallClientApp$1;->$appId:I

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$uninstallClientApp$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;JILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$uninstallClientApp$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$uninstallClientApp$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$uninstallClientApp$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$uninstallClientApp$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 207
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$uninstallClientApp$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    if-ne v1, v2, :cond_13

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$uninstallClientApp$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_UninstallClientApp_Request;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4c

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 208
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_UninstallClientApp_Request;->newBuilder()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_UninstallClientApp_Request$Builder;

    move-result-object p1

    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$uninstallClientApp$1;->$remoteId:J

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$uninstallClientApp$1;->$appId:I

    .line 209
    invoke-virtual {p1, v3, v4}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_UninstallClientApp_Request$Builder;->setClientInstanceid(J)Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_UninstallClientApp_Request$Builder;

    .line 210
    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_UninstallClientApp_Request$Builder;->setAppid(I)Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_UninstallClientApp_Request$Builder;

    .line 211
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_UninstallClientApp_Request$Builder;->build()Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_UninstallClientApp_Request;

    move-result-object p1

    .line 213
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$uninstallClientApp$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;

    invoke-static {v1}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;->access$getClientComm(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;)Lin/dragonbra/javasteam/rpc/service/ClientComm;

    move-result-object v1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/rpc/service/ClientComm;->uninstallClientApp(Lin/dragonbra/javasteam/protobufs/webui/ServiceClientcomm$CClientComm_UninstallClientApp_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object v1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$uninstallClientApp$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$uninstallClientApp$1;->label:I

    invoke-virtual {v1, p0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4c

    return-object v0

    .line 207
    :cond_4c
    :goto_4c
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    .line 216
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p0

    sget-object p1, Lin/dragonbra/javasteam/enums/EResult;->OK:Lin/dragonbra/javasteam/enums/EResult;

    if-ne p0, p1, :cond_57

    goto :goto_58

    :cond_57
    const/4 v2, 0x0

    :goto_58
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$$ExternalSyntheticLambda0 (in.dragonbra.javasteam.steam.handlers.steamclientcommunication.SteamClientCommunication$$ExternalSyntheticLambda0)
.class public final synthetic Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;


# direct methods
.method public synthetic constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$$ExternalSyntheticLambda0;->f$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication$$ExternalSyntheticLambda0;->f$0:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;

    invoke-static {p0}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;->$r8$lambda$cTbCiBiUpgrYUfWstgaZVFf3n_A(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/SteamClientCommunication;)Lin/dragonbra/javasteam/rpc/service/ClientComm;

    move-result-object p0

    return-object p0
.end method
