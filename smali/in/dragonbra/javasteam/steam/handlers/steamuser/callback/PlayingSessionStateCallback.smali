###### Class in.dragonbra.javasteam.steam.handlers.steamuser.callback.PlayingSessionStateCallback (in.dragonbra.javasteam.steam.handlers.steamuser.callback.PlayingSessionStateCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/PlayingSessionStateCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "PlayingSessionStateCallback.kt"


# instance fields
.field private final isPlayingBlocked:Z

.field private final playingAppID:I


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 4

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 26
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 27
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientPlayingSessionState;

    .line 26
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 30
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientPlayingSessionState$Builder;

    .line 32
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getTargetJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;->setJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 34
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientPlayingSessionState$Builder;->getPlayingBlocked()Z

    move-result v0

    iput-boolean v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/PlayingSessionStateCallback;->isPlayingBlocked:Z

    .line 35
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientPlayingSessionState$Builder;->getPlayingApp()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/PlayingSessionStateCallback;->playingAppID:I

    return-void
.end method


# virtual methods
.method public final getPlayingAppID()I
    .registers 1

    .line 23
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/PlayingSessionStateCallback;->playingAppID:I

    return p0
.end method

.method public final isPlayingBlocked()Z
    .registers 1

    .line 18
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/PlayingSessionStateCallback;->isPlayingBlocked:Z

    return p0
.end method
