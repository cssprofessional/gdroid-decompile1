###### Class in.dragonbra.javasteam.steam.handlers.steamuser.callback.VanityURLChangedCallback (in.dragonbra.javasteam.steam.handlers.steamuser.callback.VanityURLChangedCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/VanityURLChangedCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "VanityURLChangedCallback.kt"


# instance fields
.field private final vanityUrl:Ljava/lang/String;


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
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientVanityURLChangedNotification;

    .line 19
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 24
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getTargetJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;->setJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 26
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientVanityURLChangedNotification$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientVanityURLChangedNotification$Builder;->getVanityUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getVanityUrl(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/VanityURLChangedCallback;->vanityUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getVanityUrl()Ljava/lang/String;
    .registers 1

    .line 16
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/VanityURLChangedCallback;->vanityUrl:Ljava/lang/String;

    return-object p0
.end method
