###### Class in.dragonbra.javasteam.steam.authentication.AuthPollResult (in.dragonbra.javasteam.steam.authentication.AuthPollResult)
.class public final Lin/dragonbra/javasteam/steam/authentication/AuthPollResult;
.super Ljava/lang/Object;
.source "AuthPollResult.kt"


# instance fields
.field private final accessToken:Ljava/lang/String;

.field private final accountName:Ljava/lang/String;

.field private final newGuardData:Ljava/lang/String;

.field private final refreshToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_PollAuthSessionStatus_Response$Builder;)V
    .registers 4

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_PollAuthSessionStatus_Response$Builder;->getAccountName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAccountName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthPollResult;->accountName:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_PollAuthSessionStatus_Response$Builder;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getRefreshToken(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthPollResult;->refreshToken:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_PollAuthSessionStatus_Response$Builder;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAccessToken(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthPollResult;->accessToken:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$CAuthentication_PollAuthSessionStatus_Response$Builder;->getNewGuardData()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/authentication/AuthPollResult;->newGuardData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAccessToken()Ljava/lang/String;
    .registers 1

    .line 23
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthPollResult;->accessToken:Ljava/lang/String;

    return-object p0
.end method

.method public final getAccountName()Ljava/lang/String;
    .registers 1

    .line 13
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthPollResult;->accountName:Ljava/lang/String;

    return-object p0
.end method

.method public final getNewGuardData()Ljava/lang/String;
    .registers 1

    .line 30
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthPollResult;->newGuardData:Ljava/lang/String;

    return-object p0
.end method

.method public final getRefreshToken()Ljava/lang/String;
    .registers 1

    .line 18
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthPollResult;->refreshToken:Ljava/lang/String;

    return-object p0
.end method
