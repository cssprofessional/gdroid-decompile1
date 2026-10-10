###### Class in.dragonbra.javasteam.steam.handlers.steamuser.callback.WebAPIUserNonceCallback (in.dragonbra.javasteam.steam.handlers.steamuser.callback.WebAPIUserNonceCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/WebAPIUserNonceCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "WebAPIUserNonceCallback.kt"


# instance fields
.field private final nonce:Ljava/lang/String;

.field private final result:Lin/dragonbra/javasteam/enums/EResult;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 4

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 25
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 26
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientRequestWebAPIAuthenticateUserNonceResponse;

    .line 25
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 29
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientRequestWebAPIAuthenticateUserNonceResponse$Builder;

    .line 31
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getTargetJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;->setJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 33
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientRequestWebAPIAuthenticateUserNonceResponse$Builder;->getEresult()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v0

    const-string v1, "from(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/WebAPIUserNonceCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    .line 34
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientRequestWebAPIAuthenticateUserNonceResponse$Builder;->getWebapiAuthenticateUserNonce()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getWebapiAuthenticateUserNonce(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/WebAPIUserNonceCallback;->nonce:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getNonce()Ljava/lang/String;
    .registers 1

    .line 22
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/WebAPIUserNonceCallback;->nonce:Ljava/lang/String;

    return-object p0
.end method

.method public final getResult()Lin/dragonbra/javasteam/enums/EResult;
    .registers 1

    .line 17
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/WebAPIUserNonceCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-object p0
.end method
