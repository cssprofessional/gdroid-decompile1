###### Class in.dragonbra.javasteam.steam.handlers.steammatchmaking.callback.CreateLobbyCallback (in.dragonbra.javasteam.steam.handlers.steammatchmaking.callback.CreateLobbyCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/CreateLobbyCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "CreateLobbyCallback.kt"


# instance fields
.field private final appID:I

.field private final lobbySteamID:Lin/dragonbra/javasteam/types/SteamID;

.field private final result:Lin/dragonbra/javasteam/enums/EResult;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/types/JobID;ILin/dragonbra/javasteam/enums/EResult;Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 6

    const-string v0, "jobID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lobbySteamID"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 21
    iput p2, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/CreateLobbyCallback;->appID:I

    .line 22
    iput-object p3, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/CreateLobbyCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    .line 23
    iput-object p4, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/CreateLobbyCallback;->lobbySteamID:Lin/dragonbra/javasteam/types/SteamID;

    .line 26
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;->setJobID(Lin/dragonbra/javasteam/types/JobID;)V

    return-void
.end method


# virtual methods
.method public final getAppID()I
    .registers 1

    .line 21
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/CreateLobbyCallback;->appID:I

    return p0
.end method

.method public final getLobbySteamID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 23
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/CreateLobbyCallback;->lobbySteamID:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public final getResult()Lin/dragonbra/javasteam/enums/EResult;
    .registers 1

    .line 22
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/CreateLobbyCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-object p0
.end method
