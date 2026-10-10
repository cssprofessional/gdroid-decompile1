###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.callback.FriendMsgEchoCallback (in.dragonbra.javasteam.steam.handlers.steamfriends.callback.FriendMsgEchoCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendMsgEchoCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "FriendMsgEchoCallback.kt"


# instance fields
.field private final entryType:Lin/dragonbra/javasteam/enums/EChatEntryType;

.field private final fromLimitedAccount:Z

.field private message:Ljava/lang/String;

.field private final rTime32ServerTimestamp:I

.field private final recipient:Lin/dragonbra/javasteam/types/SteamID;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 5

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 43
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 44
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendMsgIncoming;

    .line 43
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 47
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendMsgIncoming$Builder;

    .line 49
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendMsgIncoming$Builder;->getSteamidFrom()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendMsgEchoCallback;->recipient:Lin/dragonbra/javasteam/types/SteamID;

    .line 50
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendMsgIncoming$Builder;->getChatEntryType()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EChatEntryType;->from(I)Lin/dragonbra/javasteam/enums/EChatEntryType;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendMsgEchoCallback;->entryType:Lin/dragonbra/javasteam/enums/EChatEntryType;

    .line 52
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendMsgIncoming$Builder;->getFromLimitedAccount()Z

    move-result v0

    iput-boolean v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendMsgEchoCallback;->fromLimitedAccount:Z

    .line 54
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendMsgIncoming$Builder;->hasMessage()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 55
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendMsgIncoming$Builder;->getMessage()Lcom/google/protobuf/ByteString;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendMsgEchoCallback;->message:Ljava/lang/String;

    .line 56
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "\u0000+$"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendMsgEchoCallback;->message:Ljava/lang/String;

    .line 59
    :cond_54
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendMsgIncoming$Builder;->getRtime32ServerTimestamp()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendMsgEchoCallback;->rTime32ServerTimestamp:I

    return-void
.end method


# virtual methods
.method public final getEntryType()Lin/dragonbra/javasteam/enums/EChatEntryType;
    .registers 1

    .line 24
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendMsgEchoCallback;->entryType:Lin/dragonbra/javasteam/enums/EChatEntryType;

    return-object p0
.end method

.method public final getFromLimitedAccount()Z
    .registers 1

    .line 29
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendMsgEchoCallback;->fromLimitedAccount:Z

    return p0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 1

    .line 34
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendMsgEchoCallback;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final getRTime32ServerTimestamp()I
    .registers 1

    .line 40
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendMsgEchoCallback;->rTime32ServerTimestamp:I

    return p0
.end method

.method public final getRecipient()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 19
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendMsgEchoCallback;->recipient:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method
