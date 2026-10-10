###### Class in.dragonbra.javasteam.steam.handlers.steamcloud.callback.SingleFileInfoCallback (in.dragonbra.javasteam.steam.handlers.steamcloud.callback.SingleFileInfoCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/SingleFileInfoCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "SingleFileInfoCallback.kt"


# instance fields
.field private final appID:I

.field private final fileName:Ljava/lang/String;

.field private final fileSize:I

.field private final isExplicitDelete:Z

.field private final result:Lin/dragonbra/javasteam/enums/EResult;

.field private final shaHash:[B

.field private final timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 7

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 53
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 54
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSGetSingleFileInfoResponse;

    .line 53
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 57
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSGetSingleFileInfoResponse$Builder;

    .line 59
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getTargetJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;->setJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 61
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSGetSingleFileInfoResponse$Builder;->getEresult()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v0

    const-string v1, "from(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/SingleFileInfoCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    .line 63
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSGetSingleFileInfoResponse$Builder;->getAppId()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/SingleFileInfoCallback;->appID:I

    .line 64
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSGetSingleFileInfoResponse$Builder;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getFileName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/SingleFileInfoCallback;->fileName:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSGetSingleFileInfoResponse$Builder;->getShaFile()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    const-string v1, "toByteArray(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/SingleFileInfoCallback;->shaHash:[B

    .line 66
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSGetSingleFileInfoResponse$Builder;->getTimeStamp()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/SingleFileInfoCallback;->timestamp:Ljava/util/Date;

    .line 67
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSGetSingleFileInfoResponse$Builder;->getRawFileSize()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/SingleFileInfoCallback;->fileSize:I

    .line 68
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUfs$CMsgClientUFSGetSingleFileInfoResponse$Builder;->getIsExplicitDelete()Z

    move-result p1

    iput-boolean p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/SingleFileInfoCallback;->isExplicitDelete:Z

    return-void
.end method


# virtual methods
.method public final getAppID()I
    .registers 1

    .line 25
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/SingleFileInfoCallback;->appID:I

    return p0
.end method

.method public final getFileName()Ljava/lang/String;
    .registers 1

    .line 30
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/SingleFileInfoCallback;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public final getFileSize()I
    .registers 1

    .line 45
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/SingleFileInfoCallback;->fileSize:I

    return p0
.end method

.method public final getResult()Lin/dragonbra/javasteam/enums/EResult;
    .registers 1

    .line 20
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/SingleFileInfoCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-object p0
.end method

.method public final getShaHash()[B
    .registers 1

    .line 35
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/SingleFileInfoCallback;->shaHash:[B

    return-object p0
.end method

.method public final getTimestamp()Ljava/util/Date;
    .registers 1

    .line 40
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/SingleFileInfoCallback;->timestamp:Ljava/util/Date;

    return-object p0
.end method

.method public final isExplicitDelete()Z
    .registers 1

    .line 50
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/callback/SingleFileInfoCallback;->isExplicitDelete:Z

    return p0
.end method
