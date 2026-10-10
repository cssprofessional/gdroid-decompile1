###### Class in.dragonbra.javasteam.steam.authentication.SteamAuthentication (in.dragonbra.javasteam.steam.authentication.SteamAuthentication)
.class public final Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;
.super Ljava/lang/Object;
.source "SteamAuthentication.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSteamAuthentication.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SteamAuthentication.kt\nin/dragonbra/javasteam/steam/authentication/SteamAuthentication\n+ 2 SteamUnifiedMessages.kt\nin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages\n*L\n1#1,218:1\n32#2:219\n*S KotlinDebug\n*F\n+ 1 SteamAuthentication.kt\nin/dragonbra/javasteam/steam/authentication/SteamAuthentication\n*L\n42#1:219\n*E\n"
.end annotation


# instance fields
.field private final authenticationService:Lin/dragonbra/javasteam/rpc/service/Authentication;

.field private final steamClient:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;)V
    .registers 3

    const-string v0, "steamClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;->steamClient:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    .line 39
    const-class v0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getHandler(Ljava/lang/Class;)Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    if-eqz p1, :cond_1f

    .line 32
    const-class v0, Lin/dragonbra/javasteam/rpc/service/Authentication;

    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->createService(Ljava/lang/Class;)Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/rpc/service/Authentication;

    .line 42
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;->authenticationService:Lin/dragonbra/javasteam/rpc/service/Authentication;

    return-void

    .line 40
    :cond_1f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Unable to get SteamUnifiedMessages handler"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic access$getPasswordRSAPublicKey(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 34
    invoke-direct {p0, p1, p2}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;->getPasswordRSAPublicKey(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSteamClient$p(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;)Lin/dragonbra/javasteam/steam/steamclient/SteamClient;
    .registers 1

    .line 34
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;->steamClient:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    return-object p0
.end method

.method public static synthetic beginAuthSessionViaCredentials$default(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;
        }
    .end annotation

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_a

    .line 149
    iget-object p2, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;->steamClient:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getDefaultScope$javasteam()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p2

    .line 147
    :cond_a
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;->beginAuthSessionViaCredentials(Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;Lkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic beginAuthSessionViaQR$default(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;,
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_a

    .line 109
    iget-object p2, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;->steamClient:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getDefaultScope$javasteam()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p2

    .line 107
    :cond_a
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;->beginAuthSessionViaQR(Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;Lkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic generateAccessTokenForApp$default(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Lin/dragonbra/javasteam/types/SteamID;Ljava/lang/String;ZLkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_5

    const/4 p3, 0x0

    :cond_5
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_f

    .line 79
    iget-object p4, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;->steamClient:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    invoke-virtual {p4}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getDefaultScope$javasteam()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p4

    .line 75
    :cond_f
    invoke-virtual {p0, p1, p2, p3, p4}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;->generateAccessTokenForApp(Lin/dragonbra/javasteam/types/SteamID;Ljava/lang/String;ZLkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method private final getPasswordRSAPublicKey(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_GetPasswordRSAPublicKey_Response$Builder;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;
        }
    .end annotation

    instance-of v0, p2, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$getPasswordRSAPublicKey$1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$getPasswordRSAPublicKey$1;

    iget v1, v0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$getPasswordRSAPublicKey$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$getPasswordRSAPublicKey$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$getPasswordRSAPublicKey$1;

    invoke-direct {v0, p0, p2}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$getPasswordRSAPublicKey$1;-><init>(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$getPasswordRSAPublicKey$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 52
    iget v2, v0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$getPasswordRSAPublicKey$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_39

    if-ne v2, v3, :cond_31

    iget-object p0, v0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$getPasswordRSAPublicKey$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_GetPasswordRSAPublicKey_Request$Builder;

    iget-object p0, v0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$getPasswordRSAPublicKey$1;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_67

    :cond_31
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_39
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_GetPasswordRSAPublicKey_Request;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_GetPasswordRSAPublicKey_Request$Builder;

    move-result-object p2

    .line 54
    invoke-virtual {p2, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_GetPasswordRSAPublicKey_Request$Builder;->setAccountName(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_GetPasswordRSAPublicKey_Request$Builder;

    .line 57
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;->authenticationService:Lin/dragonbra/javasteam/rpc/service/Authentication;

    invoke-virtual {p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_GetPasswordRSAPublicKey_Request$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_GetPasswordRSAPublicKey_Request;

    move-result-object v2

    const-string v4, "build(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lin/dragonbra/javasteam/rpc/service/Authentication;->getPasswordRSAPublicKey(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_GetPasswordRSAPublicKey_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$getPasswordRSAPublicKey$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$getPasswordRSAPublicKey$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$getPasswordRSAPublicKey$1;->label:I

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_67

    return-object v1

    .line 52
    :cond_67
    :goto_67
    check-cast p2, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    .line 59
    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p0

    sget-object p1, Lin/dragonbra/javasteam/enums/EResult;->OK:Lin/dragonbra/javasteam/enums/EResult;

    if-ne p0, p1, :cond_76

    .line 63
    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    return-object p0

    .line 60
    :cond_76
    new-instance p0, Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;

    const-string p1, "Failed to get password public key"

    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;-><init>(Ljava/lang/String;Lin/dragonbra/javasteam/enums/EResult;)V

    throw p0
.end method


# virtual methods
.method public final beginAuthSessionViaCredentials(Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;
        }
    .end annotation

    .line 0
    const-string v0, "authSessionDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;->beginAuthSessionViaCredentials$default(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final beginAuthSessionViaCredentials(Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;Lkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;
        }
    .end annotation

    const-string v0, "authSessionDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    new-instance v4, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, p2, v0}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;-><init>(Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/future/FutureKt;->future$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final beginAuthSessionViaQR(Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/steam/authentication/QrAuthSession;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;,
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    .line 0
    const-string v0, "authSessionDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;->beginAuthSessionViaQR$default(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final beginAuthSessionViaQR(Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;Lkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/steam/authentication/QrAuthSession;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;,
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    const-string v0, "authSessionDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    new-instance v4, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaQR$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaQR$1;-><init>(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/future/FutureKt;->future$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final generateAccessTokenForApp(Lin/dragonbra/javasteam/types/SteamID;Ljava/lang/String;)Ljava/util/concurrent/CompletableFuture;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/types/SteamID;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/steam/authentication/AccessTokenGenerateResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 0
    const-string v0, "steamID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refreshToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;->generateAccessTokenForApp$default(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Lin/dragonbra/javasteam/types/SteamID;Ljava/lang/String;ZLkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final generateAccessTokenForApp(Lin/dragonbra/javasteam/types/SteamID;Ljava/lang/String;Z)Ljava/util/concurrent/CompletableFuture;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/types/SteamID;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/steam/authentication/AccessTokenGenerateResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 0
    const-string v0, "steamID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refreshToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v1 .. v7}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;->generateAccessTokenForApp$default(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Lin/dragonbra/javasteam/types/SteamID;Ljava/lang/String;ZLkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final generateAccessTokenForApp(Lin/dragonbra/javasteam/types/SteamID;Ljava/lang/String;ZLkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/types/SteamID;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/steam/authentication/AccessTokenGenerateResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "steamID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refreshToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$generateAccessTokenForApp$1;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$generateAccessTokenForApp$1;-><init>(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Ljava/lang/String;Lin/dragonbra/javasteam/types/SteamID;ZLkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p4

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/future/FutureKt;->future$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final getAuthenticationService$javasteam()Lin/dragonbra/javasteam/rpc/service/Authentication;
    .registers 1

    .line 36
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;->authenticationService:Lin/dragonbra/javasteam/rpc/service/Authentication;

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.authentication.SteamAuthentication.AnonymousClass1 (in.dragonbra.javasteam.steam.authentication.SteamAuthentication$beginAuthSessionViaCredentials$1)
.class final Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SteamAuthentication.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;->beginAuthSessionViaCredentials(Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;Lkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;
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
        "Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.steam.authentication.SteamAuthentication$beginAuthSessionViaCredentials$1"
    f = "SteamAuthentication.kt"
    l = {
        0xa2,
        0xcc
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $authSessionDetails:Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;

.field final synthetic $parentScope:Lkotlinx/coroutines/CoroutineScope;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field L$9:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;",
            "Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->$authSessionDetails:Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;

    iput-object p2, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;

    iput-object p3, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->$parentScope:Lkotlinx/coroutines/CoroutineScope;

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
    new-instance p1, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;

    iget-object v0, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->$authSessionDetails:Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->$parentScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-direct {p1, v0, v1, p0, p2}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;-><init>(Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 150
    iget v1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_47

    if-eq v1, v3, :cond_43

    if-ne v1, v2, :cond_3b

    iget-object v0, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->L$9:Ljava/lang/Object;

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaCredentials_Request$Builder;

    iget-object v0, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->L$8:Ljava/lang/Object;

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_DeviceDetails$Builder;

    iget-object v0, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->L$7:Ljava/lang/Object;

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;

    iget-object v0, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->L$6:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->L$5:Ljava/lang/Object;

    check-cast v0, Ljavax/crypto/Cipher;

    iget-object v0, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/security/PublicKey;

    iget-object v0, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/security/spec/RSAPublicKeySpec;

    iget-object v0, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/math/BigInteger;

    iget-object v0, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/math/BigInteger;

    iget-object v0, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_GetPasswordRSAPublicKey_Response$Builder;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_191

    :cond_3b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_43
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_80

    :cond_47
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 151
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->$authSessionDetails:Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;

    iget-object p1, p1, Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;->username:Ljava/lang/String;

    if-eqz p1, :cond_1c3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eqz p1, :cond_1c3

    iget-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->$authSessionDetails:Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;

    iget-object p1, p1, Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;->password:Ljava/lang/String;

    if-eqz p1, :cond_1c3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eqz p1, :cond_1c3

    .line 157
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;

    invoke-static {p1}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;->access$getSteamClient$p(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;)Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/CMClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_1bb

    .line 162
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->$authSessionDetails:Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;

    iget-object v1, v1, Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;->username:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput v3, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->label:I

    invoke-static {p1, v1, p0}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;->access$getPasswordRSAPublicKey(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_80

    return-object v0

    .line 150
    :cond_80
    :goto_80
    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_GetPasswordRSAPublicKey_Response$Builder;

    .line 164
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_GetPasswordRSAPublicKey_Response$Builder;->getPublickeyMod()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-direct {v1, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 165
    new-instance v4, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_GetPasswordRSAPublicKey_Response$Builder;->getPublickeyExp()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 167
    new-instance v5, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v5, v1, v4}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 168
    const-string v6, "RSA"

    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v6

    .line 170
    const-string v7, "RSA/None/PKCS1Padding"

    sget-object v8, Lin/dragonbra/javasteam/util/crypto/CryptoHelper;->SEC_PROV:Ljava/lang/String;

    invoke-static {v7, v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 171
    invoke-virtual {v7, v3, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 174
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v8

    .line 175
    iget-object v9, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->$authSessionDetails:Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;

    iget-object v9, v9, Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;->password:Ljava/lang/String;

    if-eqz v9, :cond_cb

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v11, "UTF_8"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    const-string v10, "getBytes(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_cc

    :cond_cb
    const/4 v9, 0x0

    :goto_cc
    invoke-virtual {v7, v9}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v9

    .line 174
    invoke-virtual {v8, v9}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v8

    .line 175
    const-string v9, "encodeToString(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-static {v8, v3}, Lkotlin/text/StringsKt___StringsKt;->dropLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 178
    iget-object v8, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->$authSessionDetails:Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;

    iget-boolean v8, v8, Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;->persistentSession:Z

    if-eqz v8, :cond_e6

    .line 179
    sget-object v8, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;->k_ESessionPersistence_Persistent:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;

    goto :goto_e8

    .line 181
    :cond_e6
    sget-object v8, Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;->k_ESessionPersistence_Ephemeral:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;

    .line 185
    :goto_e8
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_DeviceDetails;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_DeviceDetails$Builder;

    move-result-object v9

    iget-object v10, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->$authSessionDetails:Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;

    .line 186
    iget-object v11, v10, Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;->deviceFriendlyName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_DeviceDetails$Builder;->setDeviceFriendlyName(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_DeviceDetails$Builder;

    .line 187
    iget-object v11, v10, Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;->clientOSType:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-virtual {v11}, Lin/dragonbra/javasteam/enums/EOSType;->code()I

    move-result v11

    invoke-virtual {v9, v11}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_DeviceDetails$Builder;->setOsType(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_DeviceDetails$Builder;

    .line 188
    iget-object v10, v10, Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;->platformType:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthTokenPlatformType;

    invoke-virtual {v9, v10}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_DeviceDetails$Builder;->setPlatformType(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthTokenPlatformType;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_DeviceDetails$Builder;

    .line 191
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaCredentials_Request;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaCredentials_Request$Builder;

    move-result-object v10

    iget-object v11, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->$authSessionDetails:Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;

    .line 192
    iget-object v12, v11, Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;->username:Ljava/lang/String;

    invoke-virtual {v10, v12}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaCredentials_Request$Builder;->setAccountName(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaCredentials_Request$Builder;

    .line 193
    invoke-virtual {v9}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_DeviceDetails$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_DeviceDetails;

    move-result-object v12

    invoke-virtual {v10, v12}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaCredentials_Request$Builder;->setDeviceDetails(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_DeviceDetails;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaCredentials_Request$Builder;

    .line 194
    invoke-virtual {v10, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaCredentials_Request$Builder;->setEncryptedPassword(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaCredentials_Request$Builder;

    .line 195
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_GetPasswordRSAPublicKey_Response$Builder;->getTimestamp()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaCredentials_Request$Builder;->setEncryptionTimestamp(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaCredentials_Request$Builder;

    .line 196
    invoke-virtual {v10, v8}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaCredentials_Request$Builder;->setPersistence(Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ESessionPersistence;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaCredentials_Request$Builder;

    .line 197
    iget-object v11, v11, Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;->websiteID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaCredentials_Request$Builder;->setWebsiteId(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaCredentials_Request$Builder;

    .line 200
    iget-object v11, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->$authSessionDetails:Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;

    iget-object v11, v11, Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;->guardData:Ljava/lang/String;

    if-eqz v11, :cond_139

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_132

    goto :goto_139

    .line 201
    :cond_132
    iget-object v11, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->$authSessionDetails:Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;

    iget-object v11, v11, Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;->guardData:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaCredentials_Request$Builder;->setGuardData(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaCredentials_Request$Builder;

    .line 204
    :cond_139
    :goto_139
    iget-object v11, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;

    invoke-virtual {v11}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;->getAuthenticationService$javasteam()Lin/dragonbra/javasteam/rpc/service/Authentication;

    move-result-object v11

    invoke-virtual {v10}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaCredentials_Request$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaCredentials_Request;

    move-result-object v12

    const-string v13, "build(...)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lin/dragonbra/javasteam/rpc/service/Authentication;->beginAuthSessionViaCredentials(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaCredentials_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object v11

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->L$0:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->L$1:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->L$2:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->L$3:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->L$4:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->L$5:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->L$6:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->L$7:Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->L$8:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->L$9:Ljava/lang/Object;

    iput v2, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->label:I

    invoke-virtual {v11, p0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_191

    return-object v0

    .line 150
    :cond_191
    :goto_191
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    .line 206
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v0

    sget-object v1, Lin/dragonbra/javasteam/enums/EResult;->OK:Lin/dragonbra/javasteam/enums/EResult;

    if-ne v0, v1, :cond_1af

    .line 210
    new-instance v0, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;

    .line 211
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;

    .line 212
    iget-object v2, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->$authSessionDetails:Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;

    iget-object v2, v2, Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;->authenticator:Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;

    .line 213
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaCredentials_Response$Builder;

    .line 214
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaCredentials$1;->$parentScope:Lkotlinx/coroutines/CoroutineScope;

    .line 210
    invoke-direct {v0, v1, v2, p1, p0}, Lin/dragonbra/javasteam/steam/authentication/CredentialsAuthSession;-><init>(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaCredentials_Response$Builder;Lkotlinx/coroutines/CoroutineScope;)V

    return-object v0

    .line 207
    :cond_1af
    new-instance p0, Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;

    const-string v0, "Authentication failed via credentials"

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;-><init>(Ljava/lang/String;Lin/dragonbra/javasteam/enums/EResult;)V

    throw p0

    .line 158
    :cond_1bb
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The SteamClient instance must be connected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 152
    :cond_1c3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 153
    const-string p1, "BeginAuthSessionViaCredentials requires a username and password to be set in authSessionDetails."

    .line 152
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class in.dragonbra.javasteam.steam.authentication.SteamAuthentication.C00081 (in.dragonbra.javasteam.steam.authentication.SteamAuthentication$beginAuthSessionViaQR$1)
.class final Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaQR$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SteamAuthentication.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;->beginAuthSessionViaQR(Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;Lkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;
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
        "Lin/dragonbra/javasteam/steam/authentication/QrAuthSession;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.steam.authentication.SteamAuthentication$beginAuthSessionViaQR$1"
    f = "SteamAuthentication.kt"
    l = {
        0x7e
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $authSessionDetails:Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;

.field final synthetic $parentScope:Lkotlinx/coroutines/CoroutineScope;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;",
            "Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaQR$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaQR$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;

    iput-object p2, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaQR$1;->$authSessionDetails:Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;

    iput-object p3, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaQR$1;->$parentScope:Lkotlinx/coroutines/CoroutineScope;

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
    new-instance p1, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaQR$1;

    iget-object v0, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaQR$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaQR$1;->$authSessionDetails:Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaQR$1;->$parentScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-direct {p1, v0, v1, p0, p2}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaQR$1;-><init>(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaQR$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lin/dragonbra/javasteam/steam/authentication/QrAuthSession;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaQR$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaQR$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaQR$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 110
    iget v1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaQR$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1f

    if-ne v1, v2, :cond_17

    iget-object v0, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaQR$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaQR_Request$Builder;

    iget-object v0, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaQR$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_DeviceDetails$Builder;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_81

    :cond_17
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 111
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaQR$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;

    invoke-static {p1}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;->access$getSteamClient$p(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;)Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/CMClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_ab

    .line 115
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_DeviceDetails;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_DeviceDetails$Builder;

    move-result-object p1

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaQR$1;->$authSessionDetails:Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;

    .line 116
    iget-object v3, v1, Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;->deviceFriendlyName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_DeviceDetails$Builder;->setDeviceFriendlyName(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_DeviceDetails$Builder;

    .line 117
    iget-object v3, v1, Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;->platformType:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthTokenPlatformType;

    invoke-virtual {p1, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_DeviceDetails$Builder;->setPlatformType(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthTokenPlatformType;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_DeviceDetails$Builder;

    .line 118
    iget-object v1, v1, Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;->clientOSType:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/enums/EOSType;->code()I

    move-result v1

    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_DeviceDetails$Builder;->setOsType(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_DeviceDetails$Builder;

    .line 121
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaQR_Request;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaQR_Request$Builder;

    move-result-object v1

    iget-object v3, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaQR$1;->$authSessionDetails:Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;

    .line 122
    iget-object v3, v3, Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;->websiteID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaQR_Request$Builder;->setWebsiteId(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaQR_Request$Builder;

    .line 123
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_DeviceDetails$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_DeviceDetails;

    move-result-object v3

    invoke-virtual {v1, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaQR_Request$Builder;->setDeviceDetails(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_DeviceDetails;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaQR_Request$Builder;

    .line 126
    iget-object v3, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaQR$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;

    invoke-virtual {v3}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;->getAuthenticationService$javasteam()Lin/dragonbra/javasteam/rpc/service/Authentication;

    move-result-object v3

    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaQR_Request$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaQR_Request;

    move-result-object v4

    const-string v5, "build(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lin/dragonbra/javasteam/rpc/service/Authentication;->beginAuthSessionViaQR(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaQR_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object v3

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaQR$1;->L$0:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaQR$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaQR$1;->label:I

    invoke-virtual {v3, p0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_81

    return-object v0

    .line 110
    :cond_81
    :goto_81
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    .line 128
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v0

    sget-object v1, Lin/dragonbra/javasteam/enums/EResult;->OK:Lin/dragonbra/javasteam/enums/EResult;

    if-ne v0, v1, :cond_9f

    .line 132
    new-instance v0, Lin/dragonbra/javasteam/steam/authentication/QrAuthSession;

    .line 133
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaQR$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;

    .line 134
    iget-object v2, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaQR$1;->$authSessionDetails:Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;

    iget-object v2, v2, Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;->authenticator:Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;

    .line 135
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaQR_Response$Builder;

    .line 136
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$beginAuthSessionViaQR$1;->$parentScope:Lkotlinx/coroutines/CoroutineScope;

    .line 132
    invoke-direct {v0, v1, v2, p1, p0}, Lin/dragonbra/javasteam/steam/authentication/QrAuthSession;-><init>(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaQR_Response$Builder;Lkotlinx/coroutines/CoroutineScope;)V

    return-object v0

    .line 129
    :cond_9f
    new-instance p0, Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;

    const-string v0, "Failed to begin QR auth session"

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lin/dragonbra/javasteam/steam/authentication/AuthenticationException;-><init>(Ljava/lang/String;Lin/dragonbra/javasteam/enums/EResult;)V

    throw p0

    .line 112
    :cond_ab
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The SteamClient instance must be connected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class in.dragonbra.javasteam.steam.authentication.SteamAuthentication.C00091 (in.dragonbra.javasteam.steam.authentication.SteamAuthentication$generateAccessTokenForApp$1)
.class final Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$generateAccessTokenForApp$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SteamAuthentication.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;->generateAccessTokenForApp(Lin/dragonbra/javasteam/types/SteamID;Ljava/lang/String;ZLkotlinx/coroutines/CoroutineScope;)Ljava/util/concurrent/CompletableFuture;
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
        "Lin/dragonbra/javasteam/steam/authentication/AccessTokenGenerateResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.steam.authentication.SteamAuthentication$generateAccessTokenForApp$1"
    f = "SteamAuthentication.kt"
    l = {
        0x5a
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $allowRenewal:Z

.field final synthetic $refreshToken:Ljava/lang/String;

.field final synthetic $steamID:Lin/dragonbra/javasteam/types/SteamID;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Ljava/lang/String;Lin/dragonbra/javasteam/types/SteamID;ZLkotlin/coroutines/Continuation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;",
            "Ljava/lang/String;",
            "Lin/dragonbra/javasteam/types/SteamID;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$generateAccessTokenForApp$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$generateAccessTokenForApp$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;

    iput-object p2, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$generateAccessTokenForApp$1;->$refreshToken:Ljava/lang/String;

    iput-object p3, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$generateAccessTokenForApp$1;->$steamID:Lin/dragonbra/javasteam/types/SteamID;

    iput-boolean p4, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$generateAccessTokenForApp$1;->$allowRenewal:Z

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
    new-instance p1, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$generateAccessTokenForApp$1;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$generateAccessTokenForApp$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;

    iget-object v2, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$generateAccessTokenForApp$1;->$refreshToken:Ljava/lang/String;

    iget-object v3, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$generateAccessTokenForApp$1;->$steamID:Lin/dragonbra/javasteam/types/SteamID;

    iget-boolean v4, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$generateAccessTokenForApp$1;->$allowRenewal:Z

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$generateAccessTokenForApp$1;-><init>(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Ljava/lang/String;Lin/dragonbra/javasteam/types/SteamID;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$generateAccessTokenForApp$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lin/dragonbra/javasteam/steam/authentication/AccessTokenGenerateResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$generateAccessTokenForApp$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$generateAccessTokenForApp$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$generateAccessTokenForApp$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 80
    iget v1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$generateAccessTokenForApp$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    if-ne v1, v2, :cond_13

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$generateAccessTokenForApp$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AccessToken_GenerateForApp_Request$Builder;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5b

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 81
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AccessToken_GenerateForApp_Request;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AccessToken_GenerateForApp_Request$Builder;

    move-result-object p1

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$generateAccessTokenForApp$1;->$refreshToken:Ljava/lang/String;

    iget-object v3, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$generateAccessTokenForApp$1;->$steamID:Lin/dragonbra/javasteam/types/SteamID;

    iget-boolean v4, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$generateAccessTokenForApp$1;->$allowRenewal:Z

    .line 82
    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AccessToken_GenerateForApp_Request$Builder;->setRefreshToken(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AccessToken_GenerateForApp_Request$Builder;

    .line 83
    invoke-virtual {v3}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AccessToken_GenerateForApp_Request$Builder;->setSteamid(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AccessToken_GenerateForApp_Request$Builder;

    if-eqz v4, :cond_39

    .line 86
    sget-object v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$ETokenRenewalType;->k_ETokenRenewalType_Allow:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$ETokenRenewalType;

    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AccessToken_GenerateForApp_Request$Builder;->setRenewalType(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$ETokenRenewalType;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AccessToken_GenerateForApp_Request$Builder;

    .line 90
    :cond_39
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$generateAccessTokenForApp$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;->getAuthenticationService$javasteam()Lin/dragonbra/javasteam/rpc/service/Authentication;

    move-result-object v1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AccessToken_GenerateForApp_Request$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AccessToken_GenerateForApp_Request;

    move-result-object v3

    const-string v4, "build(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lin/dragonbra/javasteam/rpc/service/Authentication;->generateAccessTokenForApp(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AccessToken_GenerateForApp_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object v1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$generateAccessTokenForApp$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$generateAccessTokenForApp$1;->label:I

    invoke-virtual {v1, p0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5b

    return-object v0

    .line 80
    :cond_5b
    :goto_5b
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    .line 92
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p0

    sget-object v0, Lin/dragonbra/javasteam/enums/EResult;->OK:Lin/dragonbra/javasteam/enums/EResult;

    if-ne p0, v0, :cond_71

    .line 96
    new-instance p0, Lin/dragonbra/javasteam/steam/authentication/AccessTokenGenerateResult;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AccessToken_GenerateForApp_Response$Builder;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/authentication/AccessTokenGenerateResult;-><init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_AccessToken_GenerateForApp_Response$Builder;)V

    return-object p0

    .line 93
    :cond_71
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to generate token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class in.dragonbra.javasteam.steam.authentication.SteamAuthentication.C00101 (in.dragonbra.javasteam.steam.authentication.SteamAuthentication$getPasswordRSAPublicKey$1)
.class final Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$getPasswordRSAPublicKey$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SteamAuthentication.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;->getPasswordRSAPublicKey(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.steam.authentication.SteamAuthentication"
    f = "SteamAuthentication.kt"
    l = {
        0x39
    }
    m = "getPasswordRSAPublicKey"
    v = 0x1
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$getPasswordRSAPublicKey$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$getPasswordRSAPublicKey$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$getPasswordRSAPublicKey$1;->result:Ljava/lang/Object;

    iget p1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$getPasswordRSAPublicKey$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$getPasswordRSAPublicKey$1;->label:I

    iget-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication$getPasswordRSAPublicKey$1;->this$0:Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;->access$getPasswordRSAPublicKey(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
