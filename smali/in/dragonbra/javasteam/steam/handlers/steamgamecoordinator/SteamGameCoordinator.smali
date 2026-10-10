###### Class in.dragonbra.javasteam.steam.handlers.steamgamecoordinator.SteamGameCoordinator (in.dragonbra.javasteam.steam.handlers.steamgamecoordinator.SteamGameCoordinator)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamgamecoordinator/SteamGameCoordinator;
.super Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;
.source "SteamGameCoordinator.kt"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMsg(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 4

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-interface {p1}, Lin/dragonbra/javasteam/base/IPacketMsg;->getMsgType()Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object v0

    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientFromGC:Lin/dragonbra/javasteam/enums/EMsg;

    if-ne v0, v1, :cond_19

    .line 43
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamgamecoordinator/callback/MessageCallback;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamgamecoordinator/callback/MessageCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 44
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->postCallback(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V

    :cond_19
    return-void
.end method

.method public final send(Lin/dragonbra/javasteam/base/gc/IClientGCMsg;I)V
    .registers 10

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    sget-object v3, Lin/dragonbra/javasteam/enums/EMsg;->ClientToGC:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-class v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgGCClient;

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 26
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getProtoHeader()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;->setRoutingAppid(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    .line 27
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgGCClient$Builder;

    invoke-interface {p1}, Lin/dragonbra/javasteam/base/gc/IClientGCMsg;->getMsgType()I

    move-result v2

    invoke-interface {p1}, Lin/dragonbra/javasteam/base/gc/IClientGCMsg;->isProto()Z

    move-result v3

    invoke-static {v2, v3}, Lin/dragonbra/javasteam/util/MsgUtil;->makeGCMsg(IZ)I

    move-result v2

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgGCClient$Builder;->setMsgtype(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgGCClient$Builder;

    .line 28
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgGCClient$Builder;

    invoke-virtual {v1, p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgGCClient$Builder;->setAppid(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgGCClient$Builder;

    .line 30
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p2

    check-cast p2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgGCClient$Builder;

    invoke-interface {p1}, Lin/dragonbra/javasteam/base/gc/IClientGCMsg;->serialize()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p2, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgGCClient$Builder;->setPayload(Lcom/google/protobuf/ByteString;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgGCClient$Builder;

    .line 33
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    return-void
.end method
