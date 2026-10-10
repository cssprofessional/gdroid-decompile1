###### Class in.dragonbra.javasteam.steam.handlers.steamcloud.callback.UGCDetailsCallback (in.dragonbra.javasteam.steam.handlers.steamcloud.callback.UGCDetailsCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/UGCDetailsCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "UGCDetailsCallback.kt"


# instance fields
.field private final appID:I

.field private final creator:Lin/dragonbra/javasteam/types/SteamID;

.field private final fileName:Ljava/lang/String;

.field private final fileSize:I

.field private final result:Lin/dragonbra/javasteam/enums/EResult;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 5

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 48
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 49
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSGetUGCDetailsResponse;

    .line 48
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 52
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSGetUGCDetailsResponse$Builder;

    .line 54
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getTargetJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;->setJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 56
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSGetUGCDetailsResponse$Builder;->getEresult()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v0

    const-string v1, "from(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/UGCDetailsCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    .line 58
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSGetUGCDetailsResponse$Builder;->getAppId()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/UGCDetailsCallback;->appID:I

    .line 59
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSGetUGCDetailsResponse$Builder;->getSteamidCreator()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/UGCDetailsCallback;->creator:Lin/dragonbra/javasteam/types/SteamID;

    .line 61
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSGetUGCDetailsResponse$Builder;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getUrl(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/UGCDetailsCallback;->url:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSGetUGCDetailsResponse$Builder;->getFilename()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getFilename(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/UGCDetailsCallback;->fileName:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSGetUGCDetailsResponse$Builder;->getFileSize()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/UGCDetailsCallback;->fileSize:I

    return-void
.end method


# virtual methods
.method public final getAppID()I
    .registers 1

    .line 25
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/UGCDetailsCallback;->appID:I

    return p0
.end method

.method public final getCreator()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 30
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/UGCDetailsCallback;->creator:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public final getFileName()Ljava/lang/String;
    .registers 1

    .line 40
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/UGCDetailsCallback;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public final getFileSize()I
    .registers 1

    .line 45
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/UGCDetailsCallback;->fileSize:I

    return p0
.end method

.method public final getResult()Lin/dragonbra/javasteam/enums/EResult;
    .registers 1

    .line 20
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/UGCDetailsCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 1

    .line 35
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/UGCDetailsCallback;->url:Ljava/lang/String;

    return-object p0
.end method
