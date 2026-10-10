###### Class in.dragonbra.javasteam.steam.handlers.steamuser.callback.AccountInfoCallback (in.dragonbra.javasteam.steam.handlers.steamuser.callback.AccountInfoCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/AccountInfoCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "AccountInfoCallback.kt"


# instance fields
.field private final accountFlags:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EAccountFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final countAuthedComputers:I

.field private final country:Ljava/lang/String;

.field private final facebookID:J

.field private final facebookName:Ljava/lang/String;

.field private final personaName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 4

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 48
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientAccountInfo;

    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 49
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientAccountInfo$Builder;

    .line 51
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientAccountInfo$Builder;->getPersonaName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getPersonaName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/AccountInfoCallback;->personaName:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientAccountInfo$Builder;->getIpCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getIpCountry(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/AccountInfoCallback;->country:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientAccountInfo$Builder;->getCountAuthedComputers()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/AccountInfoCallback;->countAuthedComputers:I

    .line 56
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientAccountInfo$Builder;->getAccountFlags()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EAccountFlags;->from(I)Ljava/util/EnumSet;

    move-result-object v0

    const-string v1, "from(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/AccountInfoCallback;->accountFlags:Ljava/util/EnumSet;

    .line 58
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientAccountInfo$Builder;->getFacebookId()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/AccountInfoCallback;->facebookID:J

    .line 59
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLogin$CMsgClientAccountInfo$Builder;->getFacebookName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getFacebookName(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/AccountInfoCallback;->facebookName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAccountFlags()Ljava/util/EnumSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EAccountFlags;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/AccountInfoCallback;->accountFlags:Ljava/util/EnumSet;

    return-object p0
.end method

.method public final getCountAuthedComputers()I
    .registers 1

    .line 30
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/AccountInfoCallback;->countAuthedComputers:I

    return p0
.end method

.method public final getCountry()Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/AccountInfoCallback;->country:Ljava/lang/String;

    return-object p0
.end method

.method public final getFacebookID()J
    .registers 3

    .line 40
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/AccountInfoCallback;->facebookID:J

    return-wide v0
.end method

.method public final getFacebookName()Ljava/lang/String;
    .registers 1

    .line 45
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/AccountInfoCallback;->facebookName:Ljava/lang/String;

    return-object p0
.end method

.method public final getPersonaName()Ljava/lang/String;
    .registers 1

    .line 20
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/AccountInfoCallback;->personaName:Ljava/lang/String;

    return-object p0
.end method
