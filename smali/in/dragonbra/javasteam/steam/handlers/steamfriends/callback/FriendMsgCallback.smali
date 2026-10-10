###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.callback.FriendMsgCallback (in.dragonbra.javasteam.steam.handlers.steamfriends.callback.FriendMsgCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendMsgCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "FriendMsgCallback.kt"


# instance fields
.field private final entryType:Lin/dragonbra/javasteam/enums/EChatEntryType;

.field private final isFromLimitedAccount:Z

.field private message:Ljava/lang/String;

.field private final sender:Lin/dragonbra/javasteam/types/SteamID;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 5

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 39
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 40
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendMsgIncoming;

    .line 39
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 43
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendMsgIncoming$Builder;

    .line 45
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendMsgIncoming$Builder;->getSteamidFrom()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendMsgCallback;->sender:Lin/dragonbra/javasteam/types/SteamID;

    .line 46
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendMsgIncoming$Builder;->getChatEntryType()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EChatEntryType;->from(I)Lin/dragonbra/javasteam/enums/EChatEntryType;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendMsgCallback;->entryType:Lin/dragonbra/javasteam/enums/EChatEntryType;

    .line 48
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendMsgIncoming$Builder;->getFromLimitedAccount()Z

    move-result v0

    iput-boolean v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendMsgCallback;->isFromLimitedAccount:Z

    .line 50
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendMsgIncoming$Builder;->hasMessage()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 51
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendMsgIncoming$Builder;->getMessage()Lcom/google/protobuf/ByteString;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/ByteString;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendMsgCallback;->message:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\u0000+$"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendMsgCallback;->message:Ljava/lang/String;

    :cond_54
    return-void
.end method


# virtual methods
.method public final getEntryType()Lin/dragonbra/javasteam/enums/EChatEntryType;
    .registers 1

    .line 25
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendMsgCallback;->entryType:Lin/dragonbra/javasteam/enums/EChatEntryType;

    return-object p0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 1

    .line 35
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendMsgCallback;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final getSender()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 20
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendMsgCallback;->sender:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public final isFromLimitedAccount()Z
    .registers 1

    .line 30
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendMsgCallback;->isFromLimitedAccount:Z

    return p0
.end method
