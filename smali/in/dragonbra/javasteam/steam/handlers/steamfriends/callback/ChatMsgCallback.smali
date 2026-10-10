###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.callback.ChatMsgCallback (in.dragonbra.javasteam.steam.handlers.steamfriends.callback.ChatMsgCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMsgCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "ChatMsgCallback.kt"


# instance fields
.field private final chatMsgType:Lin/dragonbra/javasteam/enums/EChatEntryType;

.field private final chatRoomID:Lin/dragonbra/javasteam/types/SteamID;

.field private final chatterID:Lin/dragonbra/javasteam/types/SteamID;

.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 5

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 38
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsg;

    const-class v1, Lin/dragonbra/javasteam/generated/MsgClientChatMsg;

    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsg;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 39
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/generated/MsgClientChatMsg;

    .line 41
    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientChatMsg;->getSteamIdChatter()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object v1

    const-string v2, "getSteamIdChatter(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMsgCallback;->chatterID:Lin/dragonbra/javasteam/types/SteamID;

    .line 42
    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientChatMsg;->getSteamIdChatRoom()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object v1

    const-string v2, "getSteamIdChatRoom(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMsgCallback;->chatRoomID:Lin/dragonbra/javasteam/types/SteamID;

    .line 44
    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientChatMsg;->getChatMsgType()Lin/dragonbra/javasteam/enums/EChatEntryType;

    move-result-object p1

    const-string v1, "getChatMsgType(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMsgCallback;->chatMsgType:Lin/dragonbra/javasteam/enums/EChatEntryType;

    .line 47
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AbstractMsgBase;->getPayload()Lin/dragonbra/javasteam/util/stream/MemoryStream;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->toByteArray()[B

    move-result-object p1

    const-string v0, "toByteArray(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "UTF_8"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance p1, Lkotlin/text/Regex;

    const-string v0, "\u0000+$"

    invoke-direct {p1, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p1, v1, v0}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMsgCallback;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getChatMsgType()Lin/dragonbra/javasteam/enums/EChatEntryType;
    .registers 1

    .line 30
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMsgCallback;->chatMsgType:Lin/dragonbra/javasteam/enums/EChatEntryType;

    return-object p0
.end method

.method public final getChatRoomID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 25
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMsgCallback;->chatRoomID:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public final getChatterID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 20
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMsgCallback;->chatterID:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 1

    .line 35
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMsgCallback;->message:Ljava/lang/String;

    return-object p0
.end method
