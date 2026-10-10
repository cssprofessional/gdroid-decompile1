###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.callback.ChatInviteCallback (in.dragonbra.javasteam.steam.handlers.steamfriends.callback.ChatInviteCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatInviteCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "ChatInviteCallback.kt"


# instance fields
.field private final chatRoomID:Lin/dragonbra/javasteam/types/SteamID;

.field private final chatRoomName:Ljava/lang/String;

.field private final chatRoomType:Lin/dragonbra/javasteam/enums/EChatRoomType;

.field private final friendChatID:Lin/dragonbra/javasteam/types/SteamID;

.field private final gameID:Lin/dragonbra/javasteam/types/GameID;

.field private final invitedID:Lin/dragonbra/javasteam/types/SteamID;

.field private final patronID:Lin/dragonbra/javasteam/types/SteamID;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 5

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 53
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 54
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientChatInvite;

    .line 53
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 57
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientChatInvite$Builder;

    .line 59
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientChatInvite$Builder;->getSteamIdInvited()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatInviteCallback;->invitedID:Lin/dragonbra/javasteam/types/SteamID;

    .line 60
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientChatInvite$Builder;->getSteamIdChat()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatInviteCallback;->chatRoomID:Lin/dragonbra/javasteam/types/SteamID;

    .line 62
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientChatInvite$Builder;->getSteamIdPatron()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatInviteCallback;->patronID:Lin/dragonbra/javasteam/types/SteamID;

    .line 64
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientChatInvite$Builder;->getChatroomType()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EChatRoomType;->from(I)Lin/dragonbra/javasteam/enums/EChatRoomType;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatInviteCallback;->chatRoomType:Lin/dragonbra/javasteam/enums/EChatRoomType;

    .line 66
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientChatInvite$Builder;->getSteamIdFriendChat()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatInviteCallback;->friendChatID:Lin/dragonbra/javasteam/types/SteamID;

    .line 68
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientChatInvite$Builder;->getChatName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getChatName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatInviteCallback;->chatRoomName:Ljava/lang/String;

    .line 69
    new-instance v0, Lin/dragonbra/javasteam/types/GameID;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientChatInvite$Builder;->getGameId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/GameID;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatInviteCallback;->gameID:Lin/dragonbra/javasteam/types/GameID;

    return-void
.end method


# virtual methods
.method public final getChatRoomID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 25
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatInviteCallback;->chatRoomID:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public final getChatRoomName()Ljava/lang/String;
    .registers 1

    .line 45
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatInviteCallback;->chatRoomName:Ljava/lang/String;

    return-object p0
.end method

.method public final getChatRoomType()Lin/dragonbra/javasteam/enums/EChatRoomType;
    .registers 1

    .line 35
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatInviteCallback;->chatRoomType:Lin/dragonbra/javasteam/enums/EChatRoomType;

    return-object p0
.end method

.method public final getFriendChatID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 40
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatInviteCallback;->friendChatID:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public final getGameID()Lin/dragonbra/javasteam/types/GameID;
    .registers 1

    .line 50
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatInviteCallback;->gameID:Lin/dragonbra/javasteam/types/GameID;

    return-object p0
.end method

.method public final getInvitedID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 20
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatInviteCallback;->invitedID:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public final getPatronID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 30
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatInviteCallback;->patronID:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method
