###### Class in.dragonbra.javasteam.steam.handlers.steamgameserver.callback.StatusReplyCallback (in.dragonbra.javasteam.steam.handlers.steamgameserver.callback.StatusReplyCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamgameserver/callback/StatusReplyCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "StatusReplyCallback.kt"


# instance fields
.field private final isSecure:Z


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 4

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 19
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 20
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGSStatusReply;

    .line 19
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 24
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGSStatusReply$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGSStatusReply$Builder;->getIsSecure()Z

    move-result p1

    iput-boolean p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/callback/StatusReplyCallback;->isSecure:Z

    return-void
.end method


# virtual methods
.method public final isSecure()Z
    .registers 1

    .line 16
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/callback/StatusReplyCallback;->isSecure:Z

    return p0
.end method
