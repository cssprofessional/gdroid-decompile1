###### Class in.dragonbra.javasteam.steam.handlers.steammatchmaking.callback.JoinLobbyCallback (in.dragonbra.javasteam.steam.handlers.steammatchmaking.callback.JoinLobbyCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/JoinLobbyCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "JoinLobbyCallback.kt"


# instance fields
.field private final appID:I

.field private final chatRoomEnterResponse:Lin/dragonbra/javasteam/enums/EChatRoomEnterResponse;

.field private final lobby:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/types/JobID;ILin/dragonbra/javasteam/enums/EChatRoomEnterResponse;Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;)V
    .registers 6

    const-string v0, "jobID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatRoomEnterResponse"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 21
    iput p2, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/JoinLobbyCallback;->appID:I

    .line 22
    iput-object p3, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/JoinLobbyCallback;->chatRoomEnterResponse:Lin/dragonbra/javasteam/enums/EChatRoomEnterResponse;

    .line 23
    iput-object p4, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/JoinLobbyCallback;->lobby:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;

    .line 26
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;->setJobID(Lin/dragonbra/javasteam/types/JobID;)V

    return-void
.end method


# virtual methods
.method public final getAppID()I
    .registers 1

    .line 21
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/JoinLobbyCallback;->appID:I

    return p0
.end method

.method public final getChatRoomEnterResponse()Lin/dragonbra/javasteam/enums/EChatRoomEnterResponse;
    .registers 1

    .line 22
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/JoinLobbyCallback;->chatRoomEnterResponse:Lin/dragonbra/javasteam/enums/EChatRoomEnterResponse;

    return-object p0
.end method

.method public final getLobby()Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;
    .registers 1

    .line 23
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/JoinLobbyCallback;->lobby:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;

    return-object p0
.end method
