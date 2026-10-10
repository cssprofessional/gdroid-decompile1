###### Class in.dragonbra.javasteam.steam.handlers.steamuser.callback.SessionTokenCallback (in.dragonbra.javasteam.steam.handlers.steamuser.callback.SessionTokenCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/SessionTokenCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "SessionTokenCallback.kt"


# instance fields
.field private final sessionToken:J


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 4

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 20
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientSessionToken;

    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 22
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientSessionToken$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientSessionToken$Builder;->getToken()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/SessionTokenCallback;->sessionToken:J

    return-void
.end method


# virtual methods
.method public final getSessionToken()J
    .registers 3

    .line 17
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/SessionTokenCallback;->sessionToken:J

    return-wide v0
.end method
