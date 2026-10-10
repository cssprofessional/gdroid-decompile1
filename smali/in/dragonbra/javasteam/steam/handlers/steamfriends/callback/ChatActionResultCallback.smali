###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.callback.ChatActionResultCallback (in.dragonbra.javasteam.steam.handlers.steamfriends.callback.ChatActionResultCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatActionResultCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "ChatActionResultCallback.kt"


# instance fields
.field private final action:Lin/dragonbra/javasteam/enums/EChatAction;

.field private final chatRoomID:Lin/dragonbra/javasteam/types/SteamID;

.field private final chatterID:Lin/dragonbra/javasteam/types/SteamID;

.field private final result:Lin/dragonbra/javasteam/enums/EChatActionResult;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 4

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 38
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsg;

    const-class v1, Lin/dragonbra/javasteam/generated/MsgClientChatActionResult;

    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsg;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 39
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/generated/MsgClientChatActionResult;

    .line 41
    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientChatActionResult;->getSteamIdChat()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object v0

    const-string v1, "getSteamIdChat(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatActionResultCallback;->chatRoomID:Lin/dragonbra/javasteam/types/SteamID;

    .line 42
    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientChatActionResult;->getSteamIdUserActedOn()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object v0

    const-string v1, "getSteamIdUserActedOn(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatActionResultCallback;->chatterID:Lin/dragonbra/javasteam/types/SteamID;

    .line 43
    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientChatActionResult;->getChatAction()Lin/dragonbra/javasteam/enums/EChatAction;

    move-result-object v0

    const-string v1, "getChatAction(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatActionResultCallback;->action:Lin/dragonbra/javasteam/enums/EChatAction;

    .line 44
    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientChatActionResult;->getActionResult()Lin/dragonbra/javasteam/enums/EChatActionResult;

    move-result-object p1

    const-string v0, "getActionResult(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatActionResultCallback;->result:Lin/dragonbra/javasteam/enums/EChatActionResult;

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/enums/EChatAction;Lin/dragonbra/javasteam/enums/EChatActionResult;)V
    .registers 6

    const-string v0, "chatRoomID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatterID"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 48
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatActionResultCallback;->chatRoomID:Lin/dragonbra/javasteam/types/SteamID;

    .line 49
    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatActionResultCallback;->chatterID:Lin/dragonbra/javasteam/types/SteamID;

    .line 50
    iput-object p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatActionResultCallback;->action:Lin/dragonbra/javasteam/enums/EChatAction;

    .line 51
    iput-object p4, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatActionResultCallback;->result:Lin/dragonbra/javasteam/enums/EChatActionResult;

    return-void
.end method


# virtual methods
.method public final getAction()Lin/dragonbra/javasteam/enums/EChatAction;
    .registers 1

    .line 30
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatActionResultCallback;->action:Lin/dragonbra/javasteam/enums/EChatAction;

    return-object p0
.end method

.method public final getChatRoomID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 20
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatActionResultCallback;->chatRoomID:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public final getChatterID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 25
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatActionResultCallback;->chatterID:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public final getResult()Lin/dragonbra/javasteam/enums/EChatActionResult;
    .registers 1

    .line 35
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatActionResultCallback;->result:Lin/dragonbra/javasteam/enums/EChatActionResult;

    return-object p0
.end method
