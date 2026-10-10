###### Class in.dragonbra.javasteam.steam.handlers.steamapps.callback.EncryptedAppTicketCallback (in.dragonbra.javasteam.steam.handlers.steamapps.callback.EncryptedAppTicketCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/EncryptedAppTicketCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "EncryptedAppTicketCallback.kt"


# instance fields
.field private final appID:I

.field private final encryptedAppTicket:Lin/dragonbra/javasteam/protobufs/steamclient/EncryptedAppTicketOuterClass$EncryptedAppTicket;

.field private final result:Lin/dragonbra/javasteam/enums/EResult;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 4

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 34
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 35
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientRequestEncryptedAppTicketResponse;

    .line 34
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 38
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientRequestEncryptedAppTicketResponse$Builder;

    .line 40
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getTargetJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;->setJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 42
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientRequestEncryptedAppTicketResponse$Builder;->getEresult()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v0

    const-string v1, "from(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/EncryptedAppTicketCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    .line 43
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientRequestEncryptedAppTicketResponse$Builder;->getAppId()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/EncryptedAppTicketCallback;->appID:I

    .line 44
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientRequestEncryptedAppTicketResponse$Builder;->hasEncryptedAppTicket()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 45
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientRequestEncryptedAppTicketResponse$Builder;->getEncryptedAppTicket()Lin/dragonbra/javasteam/protobufs/steamclient/EncryptedAppTicketOuterClass$EncryptedAppTicket;

    move-result-object p1

    goto :goto_3d

    :cond_3c
    const/4 p1, 0x0

    .line 44
    :goto_3d
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/EncryptedAppTicketCallback;->encryptedAppTicket:Lin/dragonbra/javasteam/protobufs/steamclient/EncryptedAppTicketOuterClass$EncryptedAppTicket;

    return-void
.end method


# virtual methods
.method public final getAppID()I
    .registers 1

    .line 26
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/EncryptedAppTicketCallback;->appID:I

    return p0
.end method

.method public final getEncryptedAppTicket()Lin/dragonbra/javasteam/protobufs/steamclient/EncryptedAppTicketOuterClass$EncryptedAppTicket;
    .registers 1

    .line 31
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/EncryptedAppTicketCallback;->encryptedAppTicket:Lin/dragonbra/javasteam/protobufs/steamclient/EncryptedAppTicketOuterClass$EncryptedAppTicket;

    return-object p0
.end method

.method public final getResult()Lin/dragonbra/javasteam/enums/EResult;
    .registers 1

    .line 21
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/EncryptedAppTicketCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-object p0
.end method
