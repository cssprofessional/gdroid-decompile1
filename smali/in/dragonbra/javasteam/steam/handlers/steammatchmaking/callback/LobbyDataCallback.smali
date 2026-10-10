###### Class in.dragonbra.javasteam.steam.handlers.steammatchmaking.callback.LobbyDataCallback (in.dragonbra.javasteam.steam.handlers.steammatchmaking.callback.LobbyDataCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/LobbyDataCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "LobbyDataCallback.kt"


# instance fields
.field private final appID:I

.field private final lobby:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/types/JobID;ILin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;)V
    .registers 5

    const-string v0, "jobID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lobby"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 20
    iput p2, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/LobbyDataCallback;->appID:I

    .line 21
    iput-object p3, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/LobbyDataCallback;->lobby:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;

    .line 24
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;->setJobID(Lin/dragonbra/javasteam/types/JobID;)V

    return-void
.end method


# virtual methods
.method public final getAppID()I
    .registers 1

    .line 20
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/LobbyDataCallback;->appID:I

    return p0
.end method

.method public final getLobby()Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;
    .registers 1

    .line 21
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/LobbyDataCallback;->lobby:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;

    return-object p0
.end method
