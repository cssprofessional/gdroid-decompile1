###### Class in.dragonbra.javasteam.steam.handlers.steamapps.callback.DepotKeyCallback (in.dragonbra.javasteam.steam.handlers.steamapps.callback.DepotKeyCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/DepotKeyCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "DepotKeyCallback.kt"


# instance fields
.field private final depotID:I

.field private final depotKey:[B

.field private final result:Lin/dragonbra/javasteam/enums/EResult;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 4

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 31
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 32
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientGetDepotDecryptionKeyResponse;

    .line 31
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 35
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientGetDepotDecryptionKeyResponse$Builder;

    .line 37
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getTargetJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;->setJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 39
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientGetDepotDecryptionKeyResponse$Builder;->getEresult()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v0

    const-string v1, "from(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/DepotKeyCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    .line 40
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientGetDepotDecryptionKeyResponse$Builder;->getDepotId()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/DepotKeyCallback;->depotID:I

    .line 41
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientGetDepotDecryptionKeyResponse$Builder;->getDepotEncryptionKey()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    const-string v0, "toByteArray(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/DepotKeyCallback;->depotKey:[B

    return-void
.end method


# virtual methods
.method public final getDepotID()I
    .registers 1

    .line 23
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/DepotKeyCallback;->depotID:I

    return p0
.end method

.method public final getDepotKey()[B
    .registers 1

    .line 28
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/DepotKeyCallback;->depotKey:[B

    return-object p0
.end method

.method public final getResult()Lin/dragonbra/javasteam/enums/EResult;
    .registers 1

    .line 18
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/DepotKeyCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-object p0
.end method
