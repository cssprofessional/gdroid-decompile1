###### Class in.dragonbra.javasteam.steam.steamclient.SteamClient (in.dragonbra.javasteam.steam.steamclient.SteamClient)
.class public final Lin/dragonbra/javasteam/steam/steamclient/SteamClient;
.super Lin/dragonbra/javasteam/steam/CMClient;
.source "SteamClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/steamclient/SteamClient$Companion;,
        Lin/dragonbra/javasteam/steam/steamclient/SteamClient$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSteamClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SteamClient.kt\nin/dragonbra/javasteam/steam/steamclient/SteamClient\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,319:1\n170#1:323\n216#2,2:320\n1#3:322\n*S KotlinDebug\n*F\n+ 1 SteamClient.kt\nin/dragonbra/javasteam/steam/steamclient/SteamClient\n*L\n302#1:323\n261#1:320,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/steam/steamclient/SteamClient$Companion;

.field private static final HANDLERS_COUNT:I = 0x10

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field private final authentication$delegate:Lkotlin/Lazy;

.field private final callbackQueue:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;",
            ">;"
        }
    .end annotation
.end field

.field private final currentJobId:Ljava/util/concurrent/atomic/AtomicLong;

.field private final defaultScope:Lkotlinx/coroutines/CoroutineScope;

.field private final handlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;",
            ">;",
            "Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final jobManager:Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;

.field private final processStartTime:Ljava/util/Date;


# direct methods
.method public static synthetic $r8$lambda$QjdS22GpJcTq3gsmXgXUgXZAH6I(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;)Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;
    .registers 1

    .line 0
    invoke-static {p0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->authentication_delegate$lambda$0(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;)Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->Companion:Lin/dragonbra/javasteam/steam/steamclient/SteamClient$Companion;

    .line 314
    const-class v0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;-><init>(Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;)V
    .registers 4

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;-><init>(Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;Lkotlinx/coroutines/CoroutineScope;)V
    .registers 6

    const-string v0, "defaultScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/CMClient;-><init>(Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;)V

    .line 51
    iput-object p2, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->defaultScope:Lkotlinx/coroutines/CoroutineScope;

    .line 54
    new-instance p1, Ljava/util/HashMap;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->handlers:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->currentJobId:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x6

    const v1, 0x7fffffff

    const/4 v2, 0x0

    .line 60
    invoke-static {v1, v2, v2, v0, v2}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->callbackQueue:Lkotlinx/coroutines/channels/Channel;

    .line 67
    new-instance v0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$$ExternalSyntheticLambda0;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->authentication$delegate:Lkotlin/Lazy;

    .line 72
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;

    invoke-direct {v0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;-><init>()V

    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->addHandlerCore(Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;)V

    .line 73
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser;

    invoke-direct {v0}, Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser;-><init>()V

    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->addHandlerCore(Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;)V

    .line 74
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;

    invoke-direct {v0}, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;-><init>()V

    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->addHandlerCore(Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;)V

    .line 75
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamgamecoordinator/SteamGameCoordinator;

    invoke-direct {v0}, Lin/dragonbra/javasteam/steam/handlers/steamgamecoordinator/SteamGameCoordinator;-><init>()V

    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->addHandlerCore(Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;)V

    .line 76
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/SteamGameServer;

    invoke-direct {v0}, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/SteamGameServer;-><init>()V

    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->addHandlerCore(Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;)V

    .line 77
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/SteamUserStats;

    invoke-direct {v0}, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/SteamUserStats;-><init>()V

    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->addHandlerCore(Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;)V

    .line 78
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/SteamMasterServer;

    invoke-direct {v0}, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/SteamMasterServer;-><init>()V

    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->addHandlerCore(Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;)V

    .line 79
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;

    invoke-direct {v0}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/SteamCloud;-><init>()V

    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->addHandlerCore(Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;)V

    .line 80
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/SteamWorkshop;

    invoke-direct {v0}, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/SteamWorkshop;-><init>()V

    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->addHandlerCore(Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;)V

    .line 81
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    invoke-direct {v0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;-><init>()V

    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->addHandlerCore(Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;)V

    .line 82
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamscreenshots/SteamScreenshots;

    invoke-direct {v0}, Lin/dragonbra/javasteam/steam/handlers/steamscreenshots/SteamScreenshots;-><init>()V

    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->addHandlerCore(Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;)V

    .line 83
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;

    invoke-direct {v0}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;-><init>()V

    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->addHandlerCore(Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;)V

    .line 84
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamnetworking/SteamNetworking;

    invoke-direct {v0}, Lin/dragonbra/javasteam/steam/handlers/steamnetworking/SteamNetworking;-><init>()V

    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->addHandlerCore(Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;)V

    .line 85
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;

    invoke-direct {v0}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/SteamContent;-><init>()V

    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->addHandlerCore(Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;)V

    .line 86
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;

    invoke-direct {v0}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;-><init>()V

    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->addHandlerCore(Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;)V

    .line 87
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/SteamNotifications;

    invoke-direct {v0}, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/SteamNotifications;-><init>()V

    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->addHandlerCore(Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;)V

    .line 90
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eq v0, p2, :cond_d8

    .line 91
    sget-object p2, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handlers size didnt match handlers count ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") when initializing"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p2, p1, v2, v0, v2}, Lin/dragonbra/javasteam/util/log/Logger;->error$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 94
    :cond_d8
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->processStartTime:Ljava/util/Date;

    .line 96
    new-instance p1, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;

    invoke-direct {p1}, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->jobManager:Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;

    return-void
.end method

.method public synthetic constructor <init>(Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_a

    .line 50
    sget-object p1, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->Companion:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration$Companion;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration$Companion;->createDefault()Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;

    move-result-object p1

    :cond_a
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_20

    .line 51
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-static {p3, p4, p3}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p3

    invoke-virtual {p2, p3}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p2

    .line 49
    :cond_20
    invoke-direct {p0, p1, p2}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;-><init>(Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method

.method public static final synthetic access$getCallbackQueue$p(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;)Lkotlinx/coroutines/channels/Channel;
    .registers 1

    .line 48
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->callbackQueue:Lkotlinx/coroutines/channels/Channel;

    return-object p0
.end method

.method private final addHandlerCore(Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;)V
    .registers 3

    .line 124
    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->setup(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;)V

    .line 125
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->handlers:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final authentication_delegate$lambda$0(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;)Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;
    .registers 2

    .line 67
    new-instance v0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;

    invoke-direct {v0, p0}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;)V

    return-object v0
.end method

.method private final handleJobFailed(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 5

    .line 310
    new-instance v0, Lin/dragonbra/javasteam/types/JobID;

    invoke-interface {p1}, Lin/dragonbra/javasteam/base/IPacketMsg;->getTargetJobID()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/JobID;-><init>(J)V

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->jobManager:Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;->failJob(Lin/dragonbra/javasteam/types/JobID;)V

    return-void
.end method

.method private final handleJobHeartbeat(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 5

    .line 306
    new-instance v0, Lin/dragonbra/javasteam/types/JobID;

    invoke-interface {p1}, Lin/dragonbra/javasteam/base/IPacketMsg;->getTargetJobID()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/JobID;-><init>(J)V

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->jobManager:Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;->heartbeatJob(Lin/dragonbra/javasteam/types/JobID;)V

    return-void
.end method


# virtual methods
.method public final synthetic addHandler()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;",
            ">()V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 119
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;

    .line 120
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->addHandler(Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;)V

    return-void
.end method

.method public final addHandler(Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;)V
    .registers 4

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->handlers:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 110
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->addHandlerCore(Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;)V

    return-void

    .line 107
    :cond_15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "A handler of type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is already registered."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 106
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final clearHandlerCaches()V
    .registers 2

    .line 170
    const-class v0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getHandler(Ljava/lang/Class;)Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;

    move-result-object p0

    .line 302
    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->clearLobbyCache$javasteam()V

    :cond_d
    return-void
.end method

.method public final getAuthentication()Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;
    .registers 1

    .line 67
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->authentication$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;

    return-object p0
.end method

.method public final getCallback()Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
    .registers 1

    .line 179
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->callbackQueue:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->tryReceive-PtdJZtk()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/channels/ChannelResult;->getOrNull-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;

    return-object p0
.end method

.method public final getDefaultScope$javasteam()Lkotlinx/coroutines/CoroutineScope;
    .registers 1

    .line 51
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->defaultScope:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public final synthetic getHandler()Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;",
            ">()TT;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 170
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getHandler(Ljava/lang/Class;)Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;

    move-result-object p0

    return-object p0
.end method

.method public final getHandler(Ljava/lang/Class;)Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->handlers:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;

    return-object p0
.end method

.method public final getJobManager$javasteam()Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;
    .registers 1

    .line 62
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->jobManager:Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;

    return-object p0
.end method

.method public final getNextJobID()Lin/dragonbra/javasteam/types/JobID;
    .registers 4

    .line 226
    new-instance v0, Lin/dragonbra/javasteam/types/JobID;

    invoke-direct {v0}, Lin/dragonbra/javasteam/types/JobID;-><init>()V

    const-wide/16 v1, 0x0

    .line 227
    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/types/GlobalID;->setBoxID(J)V

    .line 228
    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/types/GlobalID;->setProcessID(J)V

    .line 229
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->currentJobId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/types/GlobalID;->setSequentialCount(J)V

    .line 230
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->processStartTime:Ljava/util/Date;

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/types/GlobalID;->setStartTime(Ljava/util/Date;)V

    return-object v0
.end method

.method public onClientConnected()V
    .registers 3

    .line 278
    invoke-super {p0}, Lin/dragonbra/javasteam/steam/CMClient;->onClientConnected()V

    .line 280
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->jobManager:Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;->setTimeoutsEnabled(Z)V

    .line 282
    new-instance v0, Lin/dragonbra/javasteam/steam/steamclient/callbacks/ConnectedCallback;

    invoke-direct {v0}, Lin/dragonbra/javasteam/steam/steamclient/callbacks/ConnectedCallback;-><init>()V

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->postCallback(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V

    return-void
.end method

.method public onClientDisconnected(Z)V
    .registers 3

    .line 289
    invoke-super {p0, p1}, Lin/dragonbra/javasteam/steam/CMClient;->onClientDisconnected(Z)V

    .line 291
    new-instance v0, Lin/dragonbra/javasteam/steam/steamclient/callbacks/DisconnectedCallback;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/steam/steamclient/callbacks/DisconnectedCallback;-><init>(Z)V

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->postCallback(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V

    .line 294
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->jobManager:Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;->cancelPendingJobs()V

    .line 296
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->jobManager:Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;->setTimeoutsEnabled(Z)V

    .line 298
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->clearHandlerCaches()V

    return-void
.end method

.method public onClientMsgReceived(Lin/dragonbra/javasteam/base/IPacketMsg;)Z
    .registers 7

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    invoke-super {p0, p1}, Lin/dragonbra/javasteam/steam/CMClient;->onClientMsgReceived(Lin/dragonbra/javasteam/base/IPacketMsg;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return v1

    .line 254
    :cond_d
    invoke-interface {p1}, Lin/dragonbra/javasteam/base/IPacketMsg;->getMsgType()Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object v0

    sget-object v2, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_24

    const/4 v3, 0x2

    if-eq v0, v3, :cond_20

    goto :goto_27

    .line 256
    :cond_20
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->handleJobFailed(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_27

    .line 255
    :cond_24
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->handleJobHeartbeat(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 261
    :goto_27
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->handlers:Ljava/util/HashMap;

    .line 216
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;

    .line 263
    :try_start_49
    invoke-virtual {v3, p1}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->handleMsg(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_31

    :catch_4d
    move-exception p1

    .line 265
    sget-object v0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled exception from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " handlers"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/CMClient;->disconnect()V

    return v1

    :cond_71
    return v2
.end method

.method public final postCallback(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 215
    :cond_3
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->callbackQueue:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->jobManager:Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;->getJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;->tryCompleteJob(Lin/dragonbra/javasteam/types/JobID;Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V

    return-void
.end method

.method public final synthetic removeHandler()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;",
            ">()V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 142
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->removeHandler(Ljava/lang/Class;)V

    return-void
.end method

.method public final removeHandler(Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;)V
    .registers 3

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->removeHandler(Ljava/lang/Class;)V

    return-void
.end method

.method public final removeHandler(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;",
            ">;)V"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->handlers:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final startJob(Lin/dragonbra/javasteam/types/AsyncJob;)V
    .registers 3

    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/CMClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 p0, 0x1

    .line 235
    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/types/AsyncJob;->setFailed(Z)V

    return-void

    .line 239
    :cond_10
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->jobManager:Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;->startJob(Lin/dragonbra/javasteam/types/AsyncJob;)V

    return-void
.end method

.method public final waitForCallback()Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
    .registers 4

    .line 185
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$1;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;

    return-object p0
.end method

.method public final waitForCallback(J)Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
    .registers 5

    .line 200
    new-instance v0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$2;-><init>(JLin/dragonbra/javasteam/steam/steamclient/SteamClient;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x1

    invoke-static {v1, v0, p0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;

    return-object p0
.end method

.method public final waitForCallbackAsync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 193
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->callbackQueue:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/ReceiveChannel;->receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.steamclient.SteamClient.Companion (in.dragonbra.javasteam.steam.steamclient.SteamClient$Companion)
.class public final Lin/dragonbra/javasteam/steam/steamclient/SteamClient$Companion;
.super Ljava/lang/Object;
.source "SteamClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/steamclient/SteamClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$Companion;-><init>()V

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.steamclient.SteamClient.WhenMappings (in.dragonbra.javasteam.steam.steamclient.SteamClient$WhenMappings)
.class public final synthetic Lin/dragonbra/javasteam/steam/steamclient/SteamClient$WhenMappings;
.super Ljava/lang/Object;
.source "SteamClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/steamclient/SteamClient;
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
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->JobHeartbeat:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->DestJobFailed:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    sput-object v0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.steamclient.SteamClient.AnonymousClass1 (in.dragonbra.javasteam.steam.steamclient.SteamClient$waitForCallback$1)
.class final Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SteamClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->waitForCallback()Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
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
        "Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.steam.steamclient.SteamClient$waitForCallback$1"
    f = "SteamClient.kt"
    l = {
        0xba
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/steamclient/SteamClient;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$1;->this$0:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

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
    new-instance p1, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$1;

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$1;->this$0:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    invoke-direct {p1, p0, p2}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$1;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 185
    iget v1, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_29

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 186
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$1;->this$0:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    invoke-static {p1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->access$getCallbackQueue$p(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    iput v2, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$1;->label:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_29

    return-object v0

    :cond_29
    :goto_29
    return-object p1
.end method

###### Class in.dragonbra.javasteam.steam.steamclient.SteamClient.AnonymousClass2 (in.dragonbra.javasteam.steam.steamclient.SteamClient$waitForCallback$2)
.class final Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SteamClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->waitForCallback(J)Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
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
        "Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.steam.steamclient.SteamClient$waitForCallback$2"
    f = "SteamClient.kt"
    l = {
        0xc9
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $timeout:J

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;


# direct methods
.method public constructor <init>(JLin/dragonbra/javasteam/steam/steamclient/SteamClient;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lin/dragonbra/javasteam/steam/steamclient/SteamClient;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-wide p1, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$2;->$timeout:J

    iput-object p3, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$2;->this$0:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

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
    new-instance p1, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$2;

    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$2;->$timeout:J

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$2;->this$0:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    invoke-direct {p1, v0, v1, p0, p2}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$2;-><init>(JLin/dragonbra/javasteam/steam/steamclient/SteamClient;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 200
    iget v1, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2d

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 201
    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$2;->$timeout:J

    new-instance p1, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$2$1;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$2;->this$0:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    const/4 v5, 0x0

    invoke-direct {p1, v1, v5}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$2$1;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$2;->label:I

    invoke-static {v3, v4, p1, p0}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2d

    return-object v0

    :cond_2d
    :goto_2d
    return-object p1
.end method

###### Class in.dragonbra.javasteam.steam.steamclient.SteamClient.AnonymousClass2.AnonymousClass1 (in.dragonbra.javasteam.steam.steamclient.SteamClient$waitForCallback$2$1)
.class final Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SteamClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.steam.steamclient.SteamClient$waitForCallback$2$1"
    f = "SteamClient.kt"
    l = {
        0xca
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/steamclient/SteamClient;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$2$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$2$1;->this$0:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

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
    new-instance p1, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$2$1;

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$2$1;->this$0:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    invoke-direct {p1, p0, p2}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$2$1;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 201
    iget v1, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$2$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_29

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 202
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$2$1;->this$0:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    invoke-static {p1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->access$getCallbackQueue$p(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    iput v2, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$waitForCallback$2$1;->label:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_29

    return-object v0

    :cond_29
    :goto_29
    return-object p1
.end method

###### Class in.dragonbra.javasteam.steam.steamclient.SteamClient$$ExternalSyntheticLambda0 (in.dragonbra.javasteam.steam.steamclient.SteamClient$$ExternalSyntheticLambda0)
.class public final synthetic Lin/dragonbra/javasteam/steam/steamclient/SteamClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;


# direct methods
.method public synthetic constructor <init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$$ExternalSyntheticLambda0;->f$0:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient$$ExternalSyntheticLambda0;->f$0:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    invoke-static {p0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->$r8$lambda$QjdS22GpJcTq3gsmXgXUgXZAH6I(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;)Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;

    move-result-object p0

    return-object p0
.end method
