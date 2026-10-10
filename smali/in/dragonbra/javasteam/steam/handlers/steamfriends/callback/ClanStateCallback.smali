###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.callback.ClanStateCallback (in.dragonbra.javasteam.steam.handlers.steamfriends.callback.ClanStateCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ClanStateCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "ClanStateCallback.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClanStateCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClanStateCallback.kt\nin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ClanStateCallback\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,104:1\n1563#2:105\n1634#2,3:106\n1563#2:109\n1634#2,3:110\n*S KotlinDebug\n*F\n+ 1 ClanStateCallback.kt\nin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ClanStateCallback\n*L\n99#1:105\n99#1:106,3\n101#1:109\n101#1:110,3\n*E\n"
.end annotation


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

.field private final announcements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/Event;",
            ">;"
        }
    .end annotation
.end field

.field private avatarHash:[B

.field private final clanID:Lin/dragonbra/javasteam/types/SteamID;

.field private clanName:Ljava/lang/String;

.field private final events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/Event;",
            ">;"
        }
    .end annotation
.end field

.field private final isChatRoomPrivate:Z

.field private memberChattingCount:I

.field private memberInGameCount:I

.field private memberOnlineCount:I

.field private memberTotalCount:I


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 7

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    const/4 v0, 0x0

    .line 41
    new-array v0, v0, [B

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ClanStateCallback;->avatarHash:[B

    .line 79
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState;

    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 80
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$Builder;

    .line 82
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$Builder;->getSteamidClan()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ClanStateCallback;->clanID:Lin/dragonbra/javasteam/types/SteamID;

    .line 84
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$Builder;->getClanAccountFlags()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EAccountFlags;->from(I)Ljava/util/EnumSet;

    move-result-object v0

    const-string v1, "from(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ClanStateCallback;->accountFlags:Ljava/util/EnumSet;

    .line 85
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$Builder;->getChatRoomPrivate()Z

    move-result v0

    iput-boolean v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ClanStateCallback;->isChatRoomPrivate:Z

    .line 87
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$Builder;->hasNameInfo()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 88
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$Builder;->getNameInfo()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$NameInfo;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$NameInfo;->getClanName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ClanStateCallback;->clanName:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$Builder;->getNameInfo()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$NameInfo;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$NameInfo;->getShaAvatar()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    const-string v1, "toByteArray(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ClanStateCallback;->avatarHash:[B

    .line 92
    :cond_5d
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$Builder;->hasUserCounts()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 93
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$Builder;->getUserCounts()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$UserCounts;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$UserCounts;->getMembers()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ClanStateCallback;->memberTotalCount:I

    .line 94
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$Builder;->getUserCounts()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$UserCounts;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$UserCounts;->getOnline()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ClanStateCallback;->memberOnlineCount:I

    .line 95
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$Builder;->getUserCounts()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$UserCounts;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$UserCounts;->getChatting()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ClanStateCallback;->memberChattingCount:I

    .line 96
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$Builder;->getUserCounts()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$UserCounts;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$UserCounts;->getInGame()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ClanStateCallback;->memberInGameCount:I

    .line 99
    :cond_8b
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$Builder;->getEventsList()Ljava/util/List;

    move-result-object v0

    const-string v1, "getEventsList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1563
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1635
    check-cast v3, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$Event;

    .line 99
    new-instance v4, Lin/dragonbra/javasteam/steam/handlers/steamfriends/Event;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v4, v3}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/Event;-><init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$Event;)V

    .line 1635
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a3

    .line 99
    :cond_bb
    iput-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ClanStateCallback;->events:Ljava/util/List;

    .line 101
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$Builder;->getAnnouncementsList()Ljava/util/List;

    move-result-object p1

    const-string v0, "getAnnouncementsList(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1563
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_eb

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1635
    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$Event;

    .line 101
    new-instance v2, Lin/dragonbra/javasteam/steam/handlers/steamfriends/Event;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, v1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/Event;-><init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$Event;)V

    .line 1635
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_d3

    .line 101
    :cond_eb
    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ClanStateCallback;->announcements:Ljava/util/List;

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

    .line 25
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ClanStateCallback;->accountFlags:Ljava/util/EnumSet;

    return-object p0
.end method

.method public final getAnnouncements()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/Event;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ClanStateCallback;->announcements:Ljava/util/List;

    return-object p0
.end method

.method public final getAvatarHash()[B
    .registers 1

    .line 41
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ClanStateCallback;->avatarHash:[B

    return-object p0
.end method

.method public final getClanID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 20
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ClanStateCallback;->clanID:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public final getClanName()Ljava/lang/String;
    .registers 1

    .line 35
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ClanStateCallback;->clanName:Ljava/lang/String;

    return-object p0
.end method

.method public final getEvents()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/Event;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ClanStateCallback;->events:Ljava/util/List;

    return-object p0
.end method

.method public final getMemberChattingCount()I
    .registers 1

    .line 59
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ClanStateCallback;->memberChattingCount:I

    return p0
.end method

.method public final getMemberInGameCount()I
    .registers 1

    .line 65
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ClanStateCallback;->memberInGameCount:I

    return p0
.end method

.method public final getMemberOnlineCount()I
    .registers 1

    .line 53
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ClanStateCallback;->memberOnlineCount:I

    return p0
.end method

.method public final getMemberTotalCount()I
    .registers 1

    .line 47
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ClanStateCallback;->memberTotalCount:I

    return p0
.end method

.method public final isChatRoomPrivate()Z
    .registers 1

    .line 30
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ClanStateCallback;->isChatRoomPrivate:Z

    return p0
.end method
