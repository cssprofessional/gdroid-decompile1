###### Class in.dragonbra.javasteam.steam.handlers.steammatchmaking.callback.UserLeftLobbyCallback (in.dragonbra.javasteam.steam.handlers.steammatchmaking.callback.UserLeftLobbyCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/UserLeftLobbyCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "UserLeftLobbyCallback.kt"


# instance fields
.field private final appID:I

.field private final lobbySteamID:Lin/dragonbra/javasteam/types/SteamID;

.field private final user:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;


# direct methods
.method public constructor <init>(ILin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;)V
    .registers 5

    const-string v0, "lobbySteamID"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "user"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 18
    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/UserLeftLobbyCallback;->appID:I

    .line 19
    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/UserLeftLobbyCallback;->lobbySteamID:Lin/dragonbra/javasteam/types/SteamID;

    .line 20
    iput-object p3, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/UserLeftLobbyCallback;->user:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;

    return-void
.end method


# virtual methods
.method public final getAppID()I
    .registers 1

    .line 18
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/UserLeftLobbyCallback;->appID:I

    return p0
.end method

.method public final getLobbySteamID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 19
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/UserLeftLobbyCallback;->lobbySteamID:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public final getUser()Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;
    .registers 1

    .line 20
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/UserLeftLobbyCallback;->user:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;

    return-object p0
.end method
