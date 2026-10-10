###### Class in.dragonbra.javasteam.steam.handlers.steammatchmaking.callback.GetLobbyListCallback (in.dragonbra.javasteam.steam.handlers.steammatchmaking.callback.GetLobbyListCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/GetLobbyListCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "GetLobbyListCallback.kt"


# instance fields
.field private final appID:I

.field private final lobbies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;",
            ">;"
        }
    .end annotation
.end field

.field private final result:Lin/dragonbra/javasteam/enums/EResult;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/types/JobID;ILin/dragonbra/javasteam/enums/EResult;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/types/JobID;",
            "I",
            "Lin/dragonbra/javasteam/enums/EResult;",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;",
            ">;)V"
        }
    .end annotation

    const-string v0, "jobID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lobbies"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 21
    iput p2, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/GetLobbyListCallback;->appID:I

    .line 22
    iput-object p3, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/GetLobbyListCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    .line 23
    iput-object p4, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/GetLobbyListCallback;->lobbies:Ljava/util/List;

    .line 26
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;->setJobID(Lin/dragonbra/javasteam/types/JobID;)V

    return-void
.end method


# virtual methods
.method public final getAppID()I
    .registers 1

    .line 21
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/GetLobbyListCallback;->appID:I

    return p0
.end method

.method public final getLobbies()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/GetLobbyListCallback;->lobbies:Ljava/util/List;

    return-object p0
.end method

.method public final getResult()Lin/dragonbra/javasteam/enums/EResult;
    .registers 1

    .line 22
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/GetLobbyListCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-object p0
.end method
