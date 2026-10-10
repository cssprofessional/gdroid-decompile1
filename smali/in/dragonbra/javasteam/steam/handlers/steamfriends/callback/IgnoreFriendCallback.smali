###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.callback.IgnoreFriendCallback (in.dragonbra.javasteam.steam.handlers.steamfriends.callback.IgnoreFriendCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/IgnoreFriendCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "IgnoreFriendCallback.kt"


# instance fields
.field private final result:Lin/dragonbra/javasteam/enums/EResult;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 4

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 20
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsg;

    const-class v1, Lin/dragonbra/javasteam/generated/MsgClientSetIgnoreFriendResponse;

    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsg;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 22
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getTargetJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;->setJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 23
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/generated/MsgClientSetIgnoreFriendResponse;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientSetIgnoreFriendResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p1

    const-string v0, "getResult(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/IgnoreFriendCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-void
.end method


# virtual methods
.method public final getResult()Lin/dragonbra/javasteam/enums/EResult;
    .registers 1

    .line 17
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/IgnoreFriendCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-object p0
.end method
