###### Class in.dragonbra.javasteam.steam.authentication.QrAuthSession (in.dragonbra.javasteam.steam.authentication.QrAuthSession)
.class public final Lin/dragonbra/javasteam/steam/authentication/QrAuthSession;
.super Lin/dragonbra/javasteam/steam/authentication/AuthSession;
.source "QrAuthSession.kt"


# instance fields
.field private challengeUrl:Ljava/lang/String;

.field private challengeUrlChanged:Lin/dragonbra/javasteam/steam/authentication/IChallengeUrlChanged;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaQR_Response$Builder;)V
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

    invoke-direct/range {v1 .. v7}, Lin/dragonbra/javasteam/steam/authentication/QrAuthSession;-><init>(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaQR_Response$Builder;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaQR_Response$Builder;Lkotlinx/coroutines/CoroutineScope;)V
    .registers 15

    const-string v0, "authentication"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaQR_Response$Builder;->getClientId()J

    move-result-wide v4

    .line 21
    invoke-virtual {p3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaQR_Response$Builder;->getRequestId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v6

    const-string v0, "toByteArray(...)"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaQR_Response$Builder;->getAllowedConfirmationsList()Ljava/util/List;

    move-result-object v7

    const-string v0, "getAllowedConfirmationsList(...)"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaQR_Response$Builder;->getInterval()F

    move-result v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v9, p4

    .line 12
    invoke-direct/range {v1 .. v9}, Lin/dragonbra/javasteam/steam/authentication/AuthSession;-><init>(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;J[BLjava/util/List;FLkotlinx/coroutines/CoroutineScope;)V

    .line 30
    invoke-virtual {p3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaQR_Response$Builder;->getChallengeUrl()Ljava/lang/String;

    move-result-object p1

    const-string p2, "getChallengeUrl(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/QrAuthSession;->challengeUrl:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaQR_Response$Builder;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_16

    .line 16
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

    .line 12
    :cond_16
    invoke-direct {p0, p1, p2, p3, p4}, Lin/dragonbra/javasteam/steam/authentication/QrAuthSession;-><init>(Lin/dragonbra/javasteam/steam/authentication/SteamAuthentication;Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_BeginAuthSessionViaQR_Response$Builder;Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method


# virtual methods
.method public final getChallengeUrl()Ljava/lang/String;
    .registers 1

    .line 30
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/authentication/QrAuthSession;->challengeUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final getChallengeUrlChanged()Lin/dragonbra/javasteam/steam/authentication/IChallengeUrlChanged;
    .registers 1

    .line 36
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/authentication/QrAuthSession;->challengeUrlChanged:Lin/dragonbra/javasteam/steam/authentication/IChallengeUrlChanged;

    return-object p0
.end method

.method public handlePollAuthSessionStatusResponse$javasteam(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_PollAuthSessionStatus_Response$Builder;)V
    .registers 4

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-super {p0, p1}, Lin/dragonbra/javasteam/steam/authentication/AuthSession;->handlePollAuthSessionStatusResponse$javasteam(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_PollAuthSessionStatus_Response$Builder;)V

    .line 41
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_PollAuthSessionStatus_Response$Builder;->getNewChallengeUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getNewChallengeUrl(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_27

    .line 42
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_PollAuthSessionStatus_Response$Builder;->getNewChallengeUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/QrAuthSession;->challengeUrl:Ljava/lang/String;

    .line 43
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/QrAuthSession;->challengeUrlChanged:Lin/dragonbra/javasteam/steam/authentication/IChallengeUrlChanged;

    if-eqz p1, :cond_27

    invoke-interface {p1, p0}, Lin/dragonbra/javasteam/steam/authentication/IChallengeUrlChanged;->onChanged(Lin/dragonbra/javasteam/steam/authentication/QrAuthSession;)V

    :cond_27
    return-void
.end method

.method public final setChallengeUrlChanged(Lin/dragonbra/javasteam/steam/authentication/IChallengeUrlChanged;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/QrAuthSession;->challengeUrlChanged:Lin/dragonbra/javasteam/steam/authentication/IChallengeUrlChanged;

    return-void
.end method
