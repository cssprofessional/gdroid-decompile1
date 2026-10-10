###### Class in.dragonbra.javasteam.steam.authentication.AuthSession (in.dragonbra.javasteam.steam.authentication.AuthSession)
.class public Lin/dragonbra/javasteam/steam/authentication/AuthSession;
.super Ljava/lang/Object;
.source "AuthSession.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/authentication/AuthSession$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthSession.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthSession.kt\nin/dragonbra/javasteam/steam/authentication/AuthSession\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 LogManager.kt\nin/dragonbra/javasteam/util/log/LogManager\n*L\n1#1,239:1\n1#2:240\n1193#3,2:241\n1267#3,4:243\n1056#3:247\n53#4:248\n*S KotlinDebug\n*F\n+ 1 AuthSession.kt\nin/dragonbra/javasteam/steam/authentication/AuthSession\n*L\n232#1:241,2\n232#1:243,4\n234#1:247\n42#1:248\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/steam/authentication/AuthSession$Companion;

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field private allowedConfirmations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;",
            ">;"
        }
    .end annotation
.end field

.field private final authentication:Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;

.field private final authenticator:Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;

.field private clientID:J

.field private final defaultScope:Lkotlinx/coroutines/CoroutineScope;

.field private final pollingInterval:F

.field private final requestID:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/steam/authentication/AuthSession$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->Companion:Lin/dragonbra/javasteam/steam/authentication/AuthSession$Companion;

    .line 53
    const-class v0, Lin/dragonbra/javasteam/steam/authentication/AuthSession;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    .line 42
    sput-object v0, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;J[BLjava/util/List;FLkotlinx/coroutines/CoroutineScope;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;",
            "Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;",
            "J[B",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;",
            ">;F",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    const-string v0, "authentication"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestID"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allowedConfirmations"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultScope"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->authentication:Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;

    .line 33
    iput-object p2, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->authenticator:Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;

    .line 34
    iput-wide p3, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->clientID:J

    .line 35
    iput-object p5, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->requestID:[B

    .line 36
    iput-object p6, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->allowedConfirmations:Ljava/util/List;

    .line 37
    iput p7, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->pollingInterval:F

    .line 38
    iput-object p8, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->defaultScope:Lkotlinx/coroutines/CoroutineScope;

    .line 46
    invoke-direct {p0, p6}, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->sortConfirmations(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->allowedConfirmations:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;
    .registers 1

    .line 30
    sget-object v0, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-object v0
.end method

.method public static final synthetic access$handleCodeAuth(Lin/dragonbra/javasteam/steam/authentication/AuthSession;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->handleCodeAuth(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$pollDeviceConfirmation(Lin/dragonbra/javasteam/steam/authentication/AuthSession;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 30
    invoke-direct {p0, p1, p2}, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->pollDeviceConfirmation(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final handleCodeAuth(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;
        }
    .end annotation

    .line 119
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;-><init>(Lin/dragonbra/javasteam/steam/authentication/AuthSession;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_15

    return-object p0

    :cond_15
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic pollAuthSessionStatus$default(Lin/dragonbra/javasteam/steam/authentication/AuthSession;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;
        }
    .end annotation

    if-nez p3, :cond_d

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_8

    .line 187
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->defaultScope:Lkotlinx/coroutines/CoroutineScope;

    :cond_8
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->pollAuthSessionStatus(Lkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: pollAuthSessionStatus"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final pollDeviceConfirmation(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/authentication/AuthPollResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;
        }
    .end annotation

    instance-of v0, p2, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollDeviceConfirmation$1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollDeviceConfirmation$1;

    iget v1, v0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollDeviceConfirmation$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollDeviceConfirmation$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollDeviceConfirmation$1;

    invoke-direct {v0, p0, p2}, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollDeviceConfirmation$1;-><init>(Lin/dragonbra/javasteam/steam/authentication/AuthSession;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollDeviceConfirmation$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 173
    iget v2, v0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollDeviceConfirmation$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3d

    if-eq v2, v4, :cond_35

    if-ne v2, v3, :cond_2d

    iget-object p1, v0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollDeviceConfirmation$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    goto :goto_3d

    :cond_2d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_35
    iget-object p1, v0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollDeviceConfirmation$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4f

    :cond_3d
    :goto_3d
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 175
    :cond_40
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->pollAuthSessionStatus(Lkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p2

    iput-object p1, v0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollDeviceConfirmation$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollDeviceConfirmation$1;->label:I

    invoke-static {p2, v0}, Lkotlinx/coroutines/future/FutureKt;->await(Ljava/util/concurrent/CompletionStage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4f

    return-object v1

    :cond_4f
    :goto_4f
    check-cast p2, Lin/dragonbra/javasteam/steam/authentication/AuthPollResult;

    if-eqz p2, :cond_54

    return-object p2

    .line 176
    :cond_54
    iget p2, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->pollingInterval:F

    float-to-long v5, p2

    iput-object p1, v0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollDeviceConfirmation$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollDeviceConfirmation$1;->label:I

    invoke-static {v5, v6, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_40

    return-object v1
.end method

.method public static synthetic pollingWaitForResult$default(Lin/dragonbra/javasteam/steam/authentication/AuthSession;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;
        }
    .end annotation

    if-nez p3, :cond_d

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_8

    .line 55
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->defaultScope:Lkotlinx/coroutines/CoroutineScope;

    :cond_8
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->pollingWaitForResult(Lkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: pollingWaitForResult"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final sortConfirmations(Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;",
            ">;)",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;",
            ">;"
        }
    .end annotation

    .line 223
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;->k_EAuthSessionGuardType_None:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    .line 224
    sget-object v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;->k_EAuthSessionGuardType_DeviceConfirmation:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    .line 225
    sget-object v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;->k_EAuthSessionGuardType_DeviceCode:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    .line 226
    sget-object v3, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;->k_EAuthSessionGuardType_EmailCode:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    .line 227
    sget-object v4, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;->k_EAuthSessionGuardType_EmailConfirmation:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    .line 228
    sget-object v5, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;->k_EAuthSessionGuardType_MachineToken:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    .line 229
    sget-object v6, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;->k_EAuthSessionGuardType_Unknown:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    filled-new-array/range {v0 .. v6}, [Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    move-result-object p0

    .line 232
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->withIndex([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p0

    const/16 v0, 0xa

    .line 1193
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 1194
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1267
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1268
    check-cast v0, Lkotlin/collections/IndexedValue;

    invoke-virtual {v0}, Lkotlin/collections/IndexedValue;->component1()I

    move-result v2

    invoke-virtual {v0}, Lkotlin/collections/IndexedValue;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    .line 232
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 1268
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 1056
    :cond_59
    new-instance p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$sortConfirmations$$inlined$sortedBy$1;

    invoke-direct {p0, v1}, Lin/dragonbra/javasteam/steam/authentication/AuthSession$sortConfirmations$$inlined$sortedBy$1;-><init>(Ljava/util/Map;)V

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAllowedConfirmations()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->allowedConfirmations:Ljava/util/List;

    return-object p0
.end method

.method public final getAuthentication()Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;
    .registers 1

    .line 32
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->authentication:Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;

    return-object p0
.end method

.method public final getAuthenticator()Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;
    .registers 1

    .line 33
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->authenticator:Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;

    return-object p0
.end method

.method public final getClientID()J
    .registers 3

    .line 34
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->clientID:J

    return-wide v0
.end method

.method public final getDefaultScope()Lkotlinx/coroutines/CoroutineScope;
    .registers 1

    .line 38
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->defaultScope:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public final getPollingInterval()F
    .registers 1

    .line 37
    iget p0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->pollingInterval:F

    return p0
.end method

.method public final getRequestID()[B
    .registers 1

    .line 35
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->requestID:[B

    return-object p0
.end method

.method public handlePollAuthSessionStatusResponse$javasteam(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_PollAuthSessionStatus_Response$Builder;)V
    .registers 6

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_PollAuthSessionStatus_Response$Builder;->getNewClientId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    .line 212
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_PollAuthSessionStatus_Response$Builder;->getNewClientId()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->clientID:J

    :cond_15
    return-void
.end method

.method public final pollAuthSessionStatus()Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/steam/authentication/AuthPollResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->pollAuthSessionStatus$default(Lin/dragonbra/javasteam/steam/authentication/AuthSession;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final pollAuthSessionStatus(Lkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/steam/authentication/AuthPollResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;
        }
    .end annotation

    const-string v0, "parentScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    new-instance v4, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollAuthSessionStatus$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollAuthSessionStatus$1;-><init>(Lin/dragonbra/javasteam/steam/authentication/AuthSession;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/future/FutureKt;->future$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final pollingWaitForResult()Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/steam/authentication/AuthPollResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->pollingWaitForResult$default(Lin/dragonbra/javasteam/steam/authentication/AuthSession;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final pollingWaitForResult(Lkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/steam/authentication/AuthPollResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;
        }
    .end annotation

    const-string v0, "parentScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v4, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;-><init>(Lin/dragonbra/javasteam/steam/authentication/AuthSession;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/future/FutureKt;->future$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final setAllowedConfirmations(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->allowedConfirmations:Ljava/util/List;

    return-void
.end method

.method public final setClientID(J)V
    .registers 3

    .line 34
    iput-wide p1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->clientID:J

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.authentication.AuthSession.Companion (in.dragonbra.javasteam.steam.authentication.AuthSession$Companion)
.class public final Lin/dragonbra/javasteam/steam/authentication/AuthSession$Companion;
.super Ljava/lang/Object;
.source "AuthSession.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/authentication/AuthSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/authentication/AuthSession$Companion;-><init>()V

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.authentication.AuthSession.AnonymousClass2 (in.dragonbra.javasteam.steam.authentication.AuthSession$handleCodeAuth$2)
.class final Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AuthSession.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/authentication/AuthSession;->handleCodeAuth(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2$WhenMappings;
    }
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
    c = "in.dragonbra.javasteam.steam.authentication.AuthSession$handleCodeAuth$2"
    f = "AuthSession.kt"
    l = {
        0x92,
        0x96,
        0xa0
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $parentScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $preferredConfirmation:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;

.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/authentication/AuthSession;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/authentication/AuthSession;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/authentication/AuthSession;",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->this$0:Lin/dragonbra/javasteam/steam/authentication/AuthSession;

    iput-object p2, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->$preferredConfirmation:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;

    iput-object p3, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->$parentScope:Lkotlinx/coroutines/CoroutineScope;

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
    new-instance p1, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;

    iget-object v0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->this$0:Lin/dragonbra/javasteam/steam/authentication/AuthSession;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->$preferredConfirmation:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->$parentScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-direct {p1, v0, v1, p0, p2}, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;-><init>(Lin/dragonbra/javasteam/steam/authentication/AuthSession;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 119
    iget v1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->label:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v1, :cond_5a

    if-eq v1, v7, :cond_45

    if-eq v1, v6, :cond_34

    if-ne v1, v4, :cond_2c

    iget v1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->I$1:I

    iget v8, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->I$0:I

    iget-object v9, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->L$2:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v9, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->L$1:Ljava/lang/Object;

    check-cast v9, Lin/dragonbra/javasteam/enums/EResult;

    iget-object v10, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->L$0:Ljava/lang/Object;

    check-cast v10, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;

    :try_start_24
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_27
    .catch Lin/dragonbra/javasteam/steam/authentication/AuthenticationException; {:try_start_24 .. :try_end_27} :catch_29

    goto/16 :goto_164

    :catch_29
    move-exception p1

    goto/16 :goto_16f

    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    iget v1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->I$1:I

    iget v8, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->I$0:I

    iget-object v9, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->L$1:Ljava/lang/Object;

    check-cast v9, Lin/dragonbra/javasteam/enums/EResult;

    iget-object v10, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->L$0:Ljava/lang/Object;

    check-cast v10, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;

    :try_start_40
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_43
    .catch Lin/dragonbra/javasteam/steam/authentication/AuthenticationException; {:try_start_40 .. :try_end_43} :catch_29

    goto/16 :goto_eb

    :cond_45
    iget v1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->I$1:I

    iget v8, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->I$0:I

    iget-object v9, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->L$2:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v9, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->L$1:Ljava/lang/Object;

    check-cast v9, Lin/dragonbra/javasteam/enums/EResult;

    iget-object v10, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->L$0:Ljava/lang/Object;

    check-cast v10, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;

    :try_start_55
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_58
    .catch Lin/dragonbra/javasteam/steam/authentication/AuthenticationException; {:try_start_55 .. :try_end_58} :catch_29

    goto/16 :goto_137

    :cond_5a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 120
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->this$0:Lin/dragonbra/javasteam/steam/authentication/AuthSession;

    instance-of v1, p1, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;

    if-eqz v1, :cond_67

    move-object v1, p1

    check-cast v1, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;

    goto :goto_68

    :cond_67
    move-object v1, v3

    :goto_68
    if-eqz v1, :cond_18a

    .line 126
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->getAuthenticator()Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;

    move-result-object p1

    if-eqz p1, :cond_182

    .line 132
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->$preferredConfirmation:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;->getConfirmationType()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    move-result-object p1

    if-nez p1, :cond_7a

    move p1, v2

    goto :goto_82

    :cond_7a
    sget-object v8, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v8, p1

    :goto_82
    if-eq p1, v7, :cond_ab

    if-ne p1, v6, :cond_89

    .line 134
    sget-object p1, Lin/dragonbra/javasteam/enums/EResult;->TwoFactorCodeMismatch:Lin/dragonbra/javasteam/enums/EResult;

    goto :goto_ad

    .line 135
    :cond_89
    new-instance p1, Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->$preferredConfirmation:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;->getConfirmationType()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' not implemented"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 133
    :cond_ab
    sget-object p1, Lin/dragonbra/javasteam/enums/EResult;->InvalidLoginAuthCode:Lin/dragonbra/javasteam/enums/EResult;

    :goto_ad
    move-object v9, p1

    move-object v10, v1

    move v8, v5

    move v1, v7

    :cond_b1
    :goto_b1
    if-eqz v1, :cond_17f

    .line 143
    :try_start_b3
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->$preferredConfirmation:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;->getConfirmationType()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    move-result-object p1

    if-nez p1, :cond_bd

    move p1, v2

    goto :goto_c5

    :cond_bd
    sget-object v11, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v11, p1

    :goto_c5
    if-eq p1, v7, :cond_10b

    if-ne p1, v6, :cond_ee

    .line 150
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->this$0:Lin/dragonbra/javasteam/steam/authentication/AuthSession;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->getAuthenticator()Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;

    move-result-object p1

    if-eqz v8, :cond_d3

    move v11, v7

    goto :goto_d4

    :cond_d3
    move v11, v5

    :goto_d4
    invoke-interface {p1, v11}, Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;->getDeviceCode(Z)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    iput-object v10, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->L$0:Ljava/lang/Object;

    iput-object v9, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->L$1:Ljava/lang/Object;

    iput-object v3, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->L$2:Ljava/lang/Object;

    iput v8, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->I$0:I

    iput v1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->I$1:I

    iput v6, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->label:I

    invoke-static {p1, p0}, Lkotlinx/coroutines/future/FutureKt;->await(Ljava/util/concurrent/CompletionStage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_eb

    return-object v0

    :cond_eb
    :goto_eb
    check-cast p1, Ljava/lang/String;

    goto :goto_139

    .line 153
    :cond_ee
    new-instance p1, Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;

    iget-object v11, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->$preferredConfirmation:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;

    invoke-virtual {v11}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;->getConfirmationType()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unsupported confirmation type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p1, v11}, Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :cond_10b
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->$preferredConfirmation:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;->getAssociatedMessage()Ljava/lang/String;

    move-result-object p1

    .line 146
    iget-object v11, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->this$0:Lin/dragonbra/javasteam/steam/authentication/AuthSession;

    invoke-virtual {v11}, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->getAuthenticator()Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;

    move-result-object v11

    if-eqz v8, :cond_11b

    move v12, v7

    goto :goto_11c

    :cond_11b
    move v12, v5

    :goto_11c
    invoke-interface {v11, p1, v12}, Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;->getEmailCode(Ljava/lang/String;Z)Ljava/util/concurrent/CompletableFuture;

    move-result-object v11

    iput-object v10, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->L$0:Ljava/lang/Object;

    iput-object v9, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->L$1:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->L$2:Ljava/lang/Object;

    iput v8, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->I$0:I

    iput v1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->I$1:I

    iput v7, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->label:I

    invoke-static {v11, p0}, Lkotlinx/coroutines/future/FutureKt;->await(Ljava/util/concurrent/CompletionStage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_137

    return-object v0

    :cond_137
    :goto_137
    check-cast p1, Ljava/lang/String;

    :goto_139
    if-eqz p1, :cond_167

    .line 156
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-eqz v11, :cond_167

    .line 160
    iget-object v11, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->$preferredConfirmation:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;

    invoke-virtual {v11}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;->getConfirmationType()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    move-result-object v11

    iget-object v12, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->$parentScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {v10, p1, v11, v12}, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;->sendSteamGuardCode(Ljava/lang/String;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;Lkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v11

    iput-object v10, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->L$0:Ljava/lang/Object;

    iput-object v9, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->L$1:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->L$2:Ljava/lang/Object;

    iput v8, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->I$0:I

    iput v1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->I$1:I

    iput v4, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->label:I

    invoke-static {v11, p0}, Lkotlinx/coroutines/future/FutureKt;->await(Ljava/util/concurrent/CompletionStage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_164

    return-object v0

    :cond_164
    :goto_164
    move v1, v5

    goto/16 :goto_b1

    .line 157
    :cond_167
    new-instance p1, Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;

    const-string v11, "No code was provided by the authenticator."

    invoke-direct {p1, v11}, Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_16f
    .catch Lin/dragonbra/javasteam/steam/authentication/AuthenticationException; {:try_start_b3 .. :try_end_16f} :catch_29

    .line 164
    :goto_16f
    invoke-static {}, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v11

    invoke-virtual {v11, p1}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/Throwable;)V

    .line 165
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p1

    if-ne p1, v9, :cond_b1

    move v8, v7

    goto/16 :goto_b1

    .line 170
    :cond_17f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 127
    :cond_182
    new-instance p0, Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;

    .line 128
    const-string p1, "This account requires an authenticator for login, but none was provided in \'AuthSessionDetails\'."

    .line 127
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 121
    :cond_18a
    new-instance p1, Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;

    .line 122
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;->$preferredConfirmation:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;->getConfirmationType()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " confirmation type in a session that is not CredentialsAuthSession."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 121
    invoke-direct {p1, p0}, Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class in.dragonbra.javasteam.steam.authentication.AuthSession.AnonymousClass2.WhenMappings (in.dragonbra.javasteam.steam.authentication.AuthSession$handleCodeAuth$2$WhenMappings)
.class public final synthetic Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2$WhenMappings;
.super Ljava/lang/Object;
.source "AuthSession.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2;
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
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;->values()[Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;->k_EAuthSessionGuardType_EmailCode:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;->k_EAuthSessionGuardType_DeviceCode:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    sput-object v0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$handleCodeAuth$2$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.authentication.AuthSession.AnonymousClass1 (in.dragonbra.javasteam.steam.authentication.AuthSession$pollAuthSessionStatus$1)
.class final Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollAuthSessionStatus$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AuthSession.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/authentication/AuthSession;->pollAuthSessionStatus(Lkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;
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
        "Lin/dragonbra/javasteam/steam/authentication/AuthPollResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.steam.authentication.AuthSession$pollAuthSessionStatus$1"
    f = "AuthSession.kt"
    l = {
        0xc2
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/authentication/AuthSession;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/authentication/AuthSession;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/authentication/AuthSession;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollAuthSessionStatus$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollAuthSessionStatus$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/AuthSession;

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
    new-instance p1, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollAuthSessionStatus$1;

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollAuthSessionStatus$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/AuthSession;

    invoke-direct {p1, p0, p2}, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollAuthSessionStatus$1;-><init>(Lin/dragonbra/javasteam/steam/authentication/AuthSession;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollAuthSessionStatus$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lin/dragonbra/javasteam/steam/authentication/AuthPollResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollAuthSessionStatus$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollAuthSessionStatus$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollAuthSessionStatus$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 188
    iget v1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollAuthSessionStatus$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    if-ne v1, v2, :cond_13

    iget-object v0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollAuthSessionStatus$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_PollAuthSessionStatus_Request;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5a

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 189
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_PollAuthSessionStatus_Request;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_PollAuthSessionStatus_Request$Builder;

    move-result-object p1

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollAuthSessionStatus$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/AuthSession;

    .line 190
    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->getClientID()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_PollAuthSessionStatus_Request$Builder;->setClientId(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_PollAuthSessionStatus_Request$Builder;

    .line 191
    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->getRequestID()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_PollAuthSessionStatus_Request$Builder;->setRequestId(Lcom/google/protobuf/ByteString;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_PollAuthSessionStatus_Request$Builder;

    .line 192
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_PollAuthSessionStatus_Request$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_PollAuthSessionStatus_Request;

    move-result-object p1

    .line 194
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollAuthSessionStatus$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/AuthSession;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->getAuthentication()Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;->getAuthenticationService$javasteam()Lin/dragonbra/javasteam/rpc/service/Authentication;

    move-result-object v1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/rpc/service/Authentication;->pollAuthSessionStatus(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_PollAuthSessionStatus_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object v1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollAuthSessionStatus$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollAuthSessionStatus$1;->label:I

    invoke-virtual {v1, p0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5a

    return-object v0

    .line 188
    :cond_5a
    :goto_5a
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    .line 197
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v0

    sget-object v1, Lin/dragonbra/javasteam/enums/EResult;->OK:Lin/dragonbra/javasteam/enums/EResult;

    if-ne v0, v1, :cond_92

    .line 201
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollAuthSessionStatus$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/AuthSession;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_PollAuthSessionStatus_Response$Builder;

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->handlePollAuthSessionStatusResponse$javasteam(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_PollAuthSessionStatus_Response$Builder;)V

    .line 203
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_PollAuthSessionStatus_Response$Builder;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_PollAuthSessionStatus_Response$Builder;->getRefreshToken()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getRefreshToken(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_90

    .line 204
    new-instance p0, Lin/dragonbra/javasteam/steam/authentication/AuthPollResult;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_PollAuthSessionStatus_Response$Builder;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/authentication/AuthPollResult;-><init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_PollAuthSessionStatus_Response$Builder;)V

    return-object p0

    :cond_90
    const/4 p0, 0x0

    return-object p0

    .line 198
    :cond_92
    new-instance p0, Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;

    const-string v0, "Failed to poll status"

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;-><init>(Ljava/lang/String;Lin/dragonbra/javasteam/enums/EResult;)V

    throw p0
.end method

###### Class in.dragonbra.javasteam.steam.authentication.AuthSession.C00061 (in.dragonbra.javasteam.steam.authentication.AuthSession$pollDeviceConfirmation$1)
.class final Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollDeviceConfirmation$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "AuthSession.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/authentication/AuthSession;->pollDeviceConfirmation(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.steam.authentication.AuthSession"
    f = "AuthSession.kt"
    l = {
        0xaf,
        0xb0
    }
    m = "pollDeviceConfirmation"
    v = 0x1
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/authentication/AuthSession;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/authentication/AuthSession;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/authentication/AuthSession;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollDeviceConfirmation$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollDeviceConfirmation$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/AuthSession;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollDeviceConfirmation$1;->result:Ljava/lang/Object;

    iget p1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollDeviceConfirmation$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollDeviceConfirmation$1;->label:I

    iget-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollDeviceConfirmation$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/AuthSession;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->access$pollDeviceConfirmation(Lin/dragonbra/javasteam/steam/authentication/AuthSession;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.authentication.AuthSession.C00071 (in.dragonbra.javasteam.steam.authentication.AuthSession$pollingWaitForResult$1)
.class final Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AuthSession.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/authentication/AuthSession;->pollingWaitForResult(Lkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lin/dragonbra/javasteam/steam/authentication/AuthPollResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.steam.authentication.AuthSession$pollingWaitForResult$1"
    f = "AuthSession.kt"
    l = {
        0x44,
        0x5c,
        0x6c,
        0x6f
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $parentScope:Lkotlinx/coroutines/CoroutineScope;

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/authentication/AuthSession;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/authentication/AuthSession;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/authentication/AuthSession;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/AuthSession;

    iput-object p2, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->$parentScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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
    new-instance v0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/AuthSession;

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->$parentScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-direct {v0, v1, p0, p2}, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;-><init>(Lin/dragonbra/javasteam/steam/authentication/AuthSession;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lin/dragonbra/javasteam/steam/authentication/AuthPollResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    iget-object v0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 56
    iget v2, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_4f

    if-eq v2, v8, :cond_3f

    if-eq v2, v6, :cond_34

    if-eq v2, v5, :cond_2b

    if-ne v2, v4, :cond_23

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_178

    :cond_23
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_14c

    :cond_34
    iget v3, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->I$0:I

    iget-object v2, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_129

    :cond_3f
    iget-object v2, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;

    iget-object v2, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lin/dragonbra/javasteam/steam/authentication/AuthSession;

    iget-object v9, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_a2

    :cond_4f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/AuthSession;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->getAllowedConfirmations()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;

    const-string v2, "There are no allowed confirmations"

    if-eqz p1, :cond_181

    iput-object p1, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 60
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;->getConfirmationType()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    move-result-object p1

    sget-object v10, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;->k_EAuthSessionGuardType_Unknown:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    if-eq p1, v10, :cond_17b

    .line 66
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/AuthSession;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->getAuthenticator()Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;

    move-result-object p1

    if-eqz p1, :cond_c7

    iget-object v2, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/AuthSession;

    .line 67
    iget-object v10, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v10, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;

    invoke-virtual {v10}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;->getConfirmationType()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    move-result-object v10

    sget-object v11, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;->k_EAuthSessionGuardType_DeviceConfirmation:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    if-ne v10, v11, :cond_c7

    .line 68
    invoke-interface {p1}, Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;->acceptDeviceConfirmation()Ljava/util/concurrent/CompletableFuture;

    move-result-object v10

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->L$0:Ljava/lang/Object;

    iput-object v9, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->L$1:Ljava/lang/Object;

    iput-object v2, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->L$2:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->L$3:Ljava/lang/Object;

    iput v3, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->I$0:I

    iput v8, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->label:I

    invoke-static {v10, p0}, Lkotlinx/coroutines/future/FutureKt;->await(Ljava/util/concurrent/CompletionStage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a2

    return-object v1

    .line 56
    :cond_a2
    :goto_a2
    check-cast p1, Ljava/lang/Boolean;

    .line 70
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_c7

    .line 71
    invoke-virtual {v2}, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->getAllowedConfirmations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v8, :cond_bf

    .line 78
    invoke-virtual {v2}, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->getAllowedConfirmations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_c7

    .line 72
    :cond_bf
    new-instance p0, Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;

    .line 73
    const-string p1, "AcceptDeviceConfirmation returned false which indicates a fallback to another confirmation type, but there are no other confirmation types available."

    .line 72
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c7
    :goto_c7
    move-object v2, v9

    .line 84
    iget-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;->getConfirmationType()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    move-result-object p1

    if-nez p1, :cond_d4

    const/4 p1, -0x1

    goto :goto_dc

    :cond_d4
    sget-object v9, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v9, p1

    :goto_dc
    if-eq p1, v8, :cond_129

    if-eq p1, v6, :cond_10a

    if-eq p1, v5, :cond_10a

    if-ne p1, v4, :cond_e6

    move v3, v8

    goto :goto_129

    .line 102
    :cond_e6
    new-instance p0, Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;

    .line 103
    iget-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;->getConfirmationType()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported confirmation type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 92
    :cond_10a
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/AuthSession;

    iget-object v8, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;

    iget-object v9, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->$parentScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->L$1:Ljava/lang/Object;

    iput-object v7, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->L$2:Ljava/lang/Object;

    iput-object v7, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->L$3:Ljava/lang/Object;

    iput v3, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->I$0:I

    iput v6, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->label:I

    invoke-static {p1, v8, v9, p0}, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->access$handleCodeAuth(Lin/dragonbra/javasteam/steam/authentication/AuthSession;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_129

    return-object v1

    :cond_129
    :goto_129
    if-nez v3, :cond_15b

    .line 108
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/AuthSession;

    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->pollAuthSessionStatus(Lkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->L$1:Ljava/lang/Object;

    iput-object v7, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->L$2:Ljava/lang/Object;

    iput-object v7, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->L$3:Ljava/lang/Object;

    iput v3, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->I$0:I

    iput v5, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->label:I

    invoke-static {p1, p0}, Lkotlinx/coroutines/future/FutureKt;->await(Ljava/util/concurrent/CompletionStage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_14c

    return-object v1

    :cond_14c
    :goto_14c
    check-cast p1, Lin/dragonbra/javasteam/steam/authentication/AuthPollResult;

    if-eqz p1, :cond_151

    goto :goto_17a

    .line 109
    :cond_151
    new-instance p0, Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;

    const-string p1, "Authentication failed while polling"

    sget-object v0, Lin/dragonbra/javasteam/enums/EResult;->Fail:Lin/dragonbra/javasteam/enums/EResult;

    invoke-direct {p0, p1, v0}, Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;-><init>(Ljava/lang/String;Lin/dragonbra/javasteam/enums/EResult;)V

    throw p0

    .line 111
    :cond_15b
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/AuthSession;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->L$1:Ljava/lang/Object;

    iput-object v7, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->L$2:Ljava/lang/Object;

    iput-object v7, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->L$3:Ljava/lang/Object;

    iput v3, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->I$0:I

    iput v4, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;->label:I

    invoke-static {p1, v0, p0}, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->access$pollDeviceConfirmation(Lin/dragonbra/javasteam/steam/authentication/AuthSession;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_178

    return-object v1

    .line 56
    :cond_178
    :goto_178
    check-cast p1, Lin/dragonbra/javasteam/steam/authentication/AuthPollResult;

    :goto_17a
    return-object p1

    .line 61
    :cond_17b
    new-instance p0, Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;

    invoke-direct {p0, v2}, Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :cond_181
    new-instance p0, Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;

    invoke-direct {p0, v2}, Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class in.dragonbra.javasteam.steam.authentication.AuthSession.C00071.WhenMappings (in.dragonbra.javasteam.steam.authentication.AuthSession$pollingWaitForResult$1$WhenMappings)
.class public final synthetic Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1$WhenMappings;
.super Ljava/lang/Object;
.source "AuthSession.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1;
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
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;->values()[Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;->k_EAuthSessionGuardType_None:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;->k_EAuthSessionGuardType_EmailCode:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;->k_EAuthSessionGuardType_DeviceCode:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;->k_EAuthSessionGuardType_DeviceConfirmation:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    sput-object v0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$pollingWaitForResult$1$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.authentication.AuthSession$sortConfirmations$$inlined$sortedBy$1 (in.dragonbra.javasteam.steam.authentication.AuthSession$sortConfirmations$$inlined$sortedBy$1)
.class public final Lin/dragonbra/javasteam/steam/authentication/AuthSession$sortConfirmations$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/authentication/AuthSession;->sortConfirmations(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 AuthSession.kt\nin/dragonbra/javasteam/steam/authentication/AuthSession\n*L\n1#1,328:1\n235#2:329\n*E\n"
.end annotation


# instance fields
.field final synthetic $sortOrder$inlined:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$sortConfirmations$$inlined$sortedBy$1;->$sortOrder$inlined:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 102
    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;

    .line 329
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$sortConfirmations$$inlined$sortedBy$1;->$sortOrder$inlined:Ljava/util/Map;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;->getConfirmationType()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const v0, 0x7fffffff

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_19

    :cond_18
    move p1, v0

    :goto_19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 102
    check-cast p2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;

    .line 329
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSession$sortConfirmations$$inlined$sortedBy$1;->$sortOrder$inlined:Ljava/util/Map;

    invoke-virtual {p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AllowedConfirmation;->getConfirmationType()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_31

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 102
    invoke-static {p1, p0}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method
