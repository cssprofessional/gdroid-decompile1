###### Class in.dragonbra.javasteam.steam.handlers.steamapps.callback.LegacyGameKeyCallback (in.dragonbra.javasteam.steam.handlers.steamapps.callback.LegacyGameKeyCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/LegacyGameKeyCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "LegacyGameKeyCallback.kt"


# instance fields
.field private final appID:I

.field private key:Ljava/lang/String;

.field private final result:Lin/dragonbra/javasteam/enums/EResult;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 6

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 32
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsg;

    const-class v1, Lin/dragonbra/javasteam/generated/MsgClientGetLegacyGameKeyResponse;

    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsg;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 33
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/generated/MsgClientGetLegacyGameKeyResponse;

    .line 35
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getTargetJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v1

    invoke-virtual {p0, v1}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;->setJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 36
    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientGetLegacyGameKeyResponse;->getAppId()I

    move-result v1

    iput v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/LegacyGameKeyCallback;->appID:I

    .line 37
    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientGetLegacyGameKeyResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v1

    const-string v2, "getResult(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/LegacyGameKeyCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    .line 39
    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientGetLegacyGameKeyResponse;->getLength()I

    move-result v1

    if-lez v1, :cond_53

    .line 40
    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientGetLegacyGameKeyResponse;->getLength()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 41
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AbstractMsgBase;->getPayload()Lin/dragonbra/javasteam/util/stream/MemoryStream;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->toByteArray()[B

    move-result-object v0

    .line 42
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    const-string v2, "US_ASCII"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/LegacyGameKeyCallback;->key:Ljava/lang/String;

    :cond_53
    return-void
.end method


# virtual methods
.method public final getAppID()I
    .registers 1

    .line 24
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/LegacyGameKeyCallback;->appID:I

    return p0
.end method

.method public final getKey()Ljava/lang/String;
    .registers 1

    .line 29
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/LegacyGameKeyCallback;->key:Ljava/lang/String;

    return-object p0
.end method

.method public final getResult()Lin/dragonbra/javasteam/enums/EResult;
    .registers 1

    .line 19
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/LegacyGameKeyCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-object p0
.end method

.method public final setKey(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/LegacyGameKeyCallback;->key:Ljava/lang/String;

    return-void
.end method
