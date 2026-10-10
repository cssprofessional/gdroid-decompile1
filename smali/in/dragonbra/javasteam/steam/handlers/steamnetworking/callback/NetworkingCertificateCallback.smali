###### Class in.dragonbra.javasteam.steam.handlers.steamnetworking.callback.NetworkingCertificateCallback (in.dragonbra.javasteam.steam.handlers.steamnetworking.callback.NetworkingCertificateCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamnetworking/callback/NetworkingCertificateCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "NetworkingCertificateCallback.kt"


# instance fields
.field private final caKeyID:J

.field private final caSignature:[B

.field private final certificate:[B


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 6

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 33
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 34
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientNetworkingCertReply;

    .line 33
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 37
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientNetworkingCertReply$Builder;

    .line 39
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getTargetJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;->setJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 41
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientNetworkingCertReply$Builder;->getCert()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    const-string v1, "toByteArray(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamnetworking/callback/NetworkingCertificateCallback;->certificate:[B

    .line 42
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientNetworkingCertReply$Builder;->getCaKeyId()J

    move-result-wide v2

    iput-wide v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamnetworking/callback/NetworkingCertificateCallback;->caKeyID:J

    .line 43
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientNetworkingCertReply$Builder;->getCaSignature()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamnetworking/callback/NetworkingCertificateCallback;->caSignature:[B

    return-void
.end method


# virtual methods
.method public final getCaKeyID()J
    .registers 3

    .line 25
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamnetworking/callback/NetworkingCertificateCallback;->caKeyID:J

    return-wide v0
.end method

.method public final getCaSignature()[B
    .registers 1

    .line 30
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamnetworking/callback/NetworkingCertificateCallback;->caSignature:[B

    return-object p0
.end method

.method public final getCertificate()[B
    .registers 1

    .line 20
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamnetworking/callback/NetworkingCertificateCallback;->certificate:[B

    return-object p0
.end method
