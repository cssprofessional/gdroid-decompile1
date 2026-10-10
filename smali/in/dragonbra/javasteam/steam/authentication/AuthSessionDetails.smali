###### Class in.dragonbra.javasteam.steam.authentication.AuthSessionDetails (in.dragonbra.javasteam.steam.authentication.AuthSessionDetails)
.class public final Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;
.super Ljava/lang/Object;
.source "AuthSessionDetails.kt"


# instance fields
.field public authenticator:Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;

.field public clientOSType:Lin/dragonbra/javasteam/enums/EOSType;

.field public deviceFriendlyName:Ljava/lang/String;

.field public guardData:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public persistentSession:Z

.field public platformType:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthTokenPlatformType;

.field public username:Ljava/lang/String;

.field public websiteID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 28
    invoke-static {v0}, Lin/dragonbra/javasteam/util/HardwareUtils;->getMachineName(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;->deviceFriendlyName:Ljava/lang/String;

    .line 34
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthTokenPlatformType;->k_EAuthTokenPlatformType_SteamClient:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthTokenPlatformType;

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;->platformType:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesAuthSteamclient$EAuthTokenPlatformType;

    .line 40
    invoke-static {}, Lin/dragonbra/javasteam/util/Utils;->getOSType()Lin/dragonbra/javasteam/enums/EOSType;

    move-result-object v0

    const-string v1, "getOSType(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;->clientOSType:Lin/dragonbra/javasteam/enums/EOSType;

    .line 53
    const-string v0, "Client"

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/authentication/AuthSessionDetails;->websiteID:Ljava/lang/String;

    return-void
.end method
