###### Class in.dragonbra.javasteam.steam.handlers.steamuser.callback.EmailAddrInfoCallback (in.dragonbra.javasteam.steam.handlers.steamuser.callback.EmailAddrInfoCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/EmailAddrInfoCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "EmailAddrInfoCallback.kt"


# instance fields
.field private final emailAddress:Ljava/lang/String;

.field private final isEmailValidated:Z


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 4

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 25
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 26
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientEmailAddrInfo;

    .line 25
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 29
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientEmailAddrInfo$Builder;

    .line 31
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientEmailAddrInfo$Builder;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getEmailAddress(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/EmailAddrInfoCallback;->emailAddress:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientEmailAddrInfo$Builder;->getEmailIsValidated()Z

    move-result p1

    iput-boolean p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/EmailAddrInfoCallback;->isEmailValidated:Z

    return-void
.end method


# virtual methods
.method public final getEmailAddress()Ljava/lang/String;
    .registers 1

    .line 17
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/EmailAddrInfoCallback;->emailAddress:Ljava/lang/String;

    return-object p0
.end method

.method public final isEmailValidated()Z
    .registers 1

    .line 22
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/EmailAddrInfoCallback;->isEmailValidated:Z

    return p0
.end method
