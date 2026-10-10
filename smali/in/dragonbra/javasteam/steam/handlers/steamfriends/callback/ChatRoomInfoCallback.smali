###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.callback.ChatRoomInfoCallback (in.dragonbra.javasteam.steam.handlers.steamfriends.callback.ChatRoomInfoCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatRoomInfoCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "ChatRoomInfoCallback.kt"


# instance fields
.field private final chatRoomID:Lin/dragonbra/javasteam/types/SteamID;

.field private final type:Lin/dragonbra/javasteam/enums/EChatInfoType;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 4

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 26
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsg;

    const-class v1, Lin/dragonbra/javasteam/generated/MsgClientChatRoomInfo;

    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsg;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 27
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/generated/MsgClientChatRoomInfo;

    .line 29
    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientChatRoomInfo;->getSteamIdChat()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object v0

    const-string v1, "getSteamIdChat(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatRoomInfoCallback;->chatRoomID:Lin/dragonbra/javasteam/types/SteamID;

    .line 30
    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientChatRoomInfo;->getType()Lin/dragonbra/javasteam/enums/EChatInfoType;

    move-result-object p1

    const-string v0, "getType(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatRoomInfoCallback;->type:Lin/dragonbra/javasteam/enums/EChatInfoType;

    return-void
.end method


# virtual methods
.method public final getChatRoomID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 18
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatRoomInfoCallback;->chatRoomID:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public final getType()Lin/dragonbra/javasteam/enums/EChatInfoType;
    .registers 1

    .line 23
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatRoomInfoCallback;->type:Lin/dragonbra/javasteam/enums/EChatInfoType;

    return-object p0
.end method
