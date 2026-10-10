###### Class in.dragonbra.javasteam.steam.authentication.CredentialsAuthSession (in.dragonbra.javasteam.steam.authentication.CredentialsAuthSession)
.class public final Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;
.super Lin/dragonbra/javasteam/steam/authentication/AuthSession;
.source "CredentialsAuthSession.kt"


# instance fields
.field private final steamID:Lin/dragonbra/javasteam/types/SteamID;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaCredentials_Response$Builder;)V
    .registers 12

    .line 0
    const-string v0, "authentication"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;-><init>(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaCredentials_Response$Builder;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaCredentials_Response$Builder;Lkotlinx/coroutines/CoroutineScope;)V
    .registers 15

    const-string v0, "authentication"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaCredentials_Response$Builder;->getClientId()J

    move-result-wide v4

    .line 27
    invoke-virtual {p3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaCredentials_Response$Builder;->getRequestId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v6

    const-string v0, "toByteArray(...)"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaCredentials_Response$Builder;->getAllowedConfirmationsList()Ljava/util/List;

    move-result-object v7

    const-string v0, "getAllowedConfirmationsList(...)"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaCredentials_Response$Builder;->getInterval()F

    move-result v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v9, p4

    .line 17
    invoke-direct/range {v1 .. v9}, Lin/dragonbra/javasteam/steam/authentication/AuthSession;-><init>(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;J[BLjava/util/List;FLkotlinx/coroutines/CoroutineScope;)V

    .line 34
    new-instance p1, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaCredentials_Response$Builder;->getSteamid()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    return-void
.end method

.method public synthetic constructor <init>(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaCredentials_Response$Builder;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_16

    .line 22
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p4

    const/4 p5, 0x1

    const/4 p6, 0x0

    invoke-static {p6, p5, p6}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p5

    invoke-virtual {p4, p5}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p4

    invoke-static {p4}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p4

    .line 18
    :cond_16
    invoke-direct {p0, p1, p2, p3, p4}, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;-><init>(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaCredentials_Response$Builder;Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method

.method public static final synthetic access$getSteamID$p(Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;)Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 17
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public static synthetic sendSteamGuardCode$default(Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;Ljava/lang/String;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;
        }
    .end annotation

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_8

    .line 47
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->getDefaultScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p3

    .line 44
    :cond_8
    invoke-virtual {p0, p1, p2, p3}, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;->sendSteamGuardCode(Ljava/lang/String;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;Lkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final sendSteamGuardCode(Ljava/lang/String;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;)Ljava/util/concurrent/CompletableFuture;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;
        }
    .end annotation

    .line 0
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;->sendSteamGuardCode$default(Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;Ljava/lang/String;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final sendSteamGuardCode(Ljava/lang/String;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;Lkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;
        }
    .end annotation

    const-string v0, "parentScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v4, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession$sendSteamGuardCode$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession$sendSteamGuardCode$1;-><init>(Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;Ljava/lang/String;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p3

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/future/FutureKt;->future$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.authentication.CredentialsAuthSession.AnonymousClass1 (in.dragonbra.javasteam.steam.authentication.CredentialsAuthSession$sendSteamGuardCode$1)
.class final Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession$sendSteamGuardCode$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CredentialsAuthSession.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;->sendSteamGuardCode(Ljava/lang/String;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;Lkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;
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
    c = "in.dragonbra.javasteam.steam.authentication.CredentialsAuthSession$sendSteamGuardCode$1"
    f = "CredentialsAuthSession.kt"
    l = {
        0x3a
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $code:Ljava/lang/String;

.field final synthetic $codeType:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;Ljava/lang/String;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;",
            "Ljava/lang/String;",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession$sendSteamGuardCode$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession$sendSteamGuardCode$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;

    iput-object p2, p0, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession$sendSteamGuardCode$1;->$code:Ljava/lang/String;

    iput-object p3, p0, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession$sendSteamGuardCode$1;->$codeType:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

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
    new-instance p1, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession$sendSteamGuardCode$1;

    iget-object v0, p0, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession$sendSteamGuardCode$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession$sendSteamGuardCode$1;->$code:Ljava/lang/String;

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession$sendSteamGuardCode$1;->$codeType:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    invoke-direct {p1, v0, v1, p0, p2}, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession$sendSteamGuardCode$1;-><init>(Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;Ljava/lang/String;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession$sendSteamGuardCode$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession$sendSteamGuardCode$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession$sendSteamGuardCode$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession$sendSteamGuardCode$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 48
    iget v1, p0, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession$sendSteamGuardCode$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    if-ne v1, v2, :cond_13

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession$sendSteamGuardCode$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_UpdateAuthSessionWithSteamGuardCode_Request;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_64

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_UpdateAuthSessionWithSteamGuardCode_Request;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_UpdateAuthSessionWithSteamGuardCode_Request$Builder;

    move-result-object p1

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession$sendSteamGuardCode$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;

    iget-object v3, p0, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession$sendSteamGuardCode$1;->$code:Ljava/lang/String;

    iget-object v4, p0, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession$sendSteamGuardCode$1;->$codeType:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;

    .line 50
    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->getClientID()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_UpdateAuthSessionWithSteamGuardCode_Request$Builder;->setClientId(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_UpdateAuthSessionWithSteamGuardCode_Request$Builder;

    .line 51
    invoke-static {v1}, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;->access$getSteamID$p(Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;)Lin/dragonbra/javasteam/types/SteamID;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_UpdateAuthSessionWithSteamGuardCode_Request$Builder;->setSteamid(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_UpdateAuthSessionWithSteamGuardCode_Request$Builder;

    .line 52
    invoke-virtual {p1, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_UpdateAuthSessionWithSteamGuardCode_Request$Builder;->setCode(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_UpdateAuthSessionWithSteamGuardCode_Request$Builder;

    .line 53
    invoke-virtual {p1, v4}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_UpdateAuthSessionWithSteamGuardCode_Request$Builder;->setCodeType(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthSessionGuardType;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_UpdateAuthSessionWithSteamGuardCode_Request$Builder;

    .line 54
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_UpdateAuthSessionWithSteamGuardCode_Request$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_UpdateAuthSessionWithSteamGuardCode_Request;

    move-result-object p1

    .line 56
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession$sendSteamGuardCode$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->getAuthentication()Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;->getAuthenticationService$javasteam()Lin/dragonbra/javasteam/rpc/service/Authentication;

    move-result-object v1

    .line 57
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/rpc/service/Authentication;->updateAuthSessionWithSteamGuardCode(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_UpdateAuthSessionWithSteamGuardCode_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object v1

    .line 58
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession$sendSteamGuardCode$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession$sendSteamGuardCode$1;->label:I

    invoke-virtual {v1, p0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_64

    return-object v0

    .line 48
    :cond_64
    :goto_64
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    .line 63
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p0

    sget-object v0, Lin/dragonbra/javasteam/enums/EResult;->OK:Lin/dragonbra/javasteam/enums/EResult;

    if-eq p0, v0, :cond_83

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p0

    sget-object v0, Lin/dragonbra/javasteam/enums/EResult;->DuplicateRequest:Lin/dragonbra/javasteam/enums/EResult;

    if-ne p0, v0, :cond_77

    goto :goto_83

    .line 64
    :cond_77
    new-instance p0, Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;

    const-string v0, "Failed to send steam guard code"

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;-><init>(Ljava/lang/String;Lin/dragonbra/javasteam/enums/EResult;)V

    throw p0

    .line 68
    :cond_83
    :goto_83
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
