###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.callback.ChatEnterCallback (in.dragonbra.javasteam.steam.handlers.steamfriends.callback.ChatEnterCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "ChatEnterCallback.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatEnterCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatEnterCallback.kt\nin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback\n+ 2 LogManager.kt\nin/dragonbra/javasteam/util/log/LogManager\n*L\n1#1,121:1\n53#2:122\n*S KotlinDebug\n*F\n+ 1 ChatEnterCallback.kt\nin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback\n*L\n21#1:122\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback$Companion;

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field private final chatFlags:B

.field private final chatID:Lin/dragonbra/javasteam/types/SteamID;

.field private chatMembers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/ChatMemberInfo;",
            ">;"
        }
    .end annotation
.end field

.field private chatRoomName:Ljava/lang/String;

.field private final chatRoomType:Lin/dragonbra/javasteam/enums/EChatRoomType;

.field private final clanID:Lin/dragonbra/javasteam/types/SteamID;

.field private final enterResponse:Lin/dragonbra/javasteam/enums/EChatRoomEnterResponse;

.field private final friendID:Lin/dragonbra/javasteam/types/SteamID;

.field private final numChatMembers:I

.field private final ownerID:Lin/dragonbra/javasteam/types/SteamID;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback;->Companion:Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback$Companion;

    .line 53
    const-class v0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    .line 21
    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 6

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback;->chatRoomName:Ljava/lang/String;

    .line 73
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback;->chatMembers:Ljava/util/List;

    .line 77
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsg;

    const-class v1, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;

    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsg;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 78
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;

    .line 80
    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->getSteamIdChat()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object v1

    const-string v2, "getSteamIdChat(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback;->chatID:Lin/dragonbra/javasteam/types/SteamID;

    .line 81
    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->getSteamIdFriend()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object v1

    const-string v2, "getSteamIdFriend(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback;->friendID:Lin/dragonbra/javasteam/types/SteamID;

    .line 83
    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->getChatRoomType()Lin/dragonbra/javasteam/enums/EChatRoomType;

    move-result-object v1

    const-string v2, "getChatRoomType(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback;->chatRoomType:Lin/dragonbra/javasteam/enums/EChatRoomType;

    .line 85
    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->getSteamIdOwner()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object v1

    const-string v2, "getSteamIdOwner(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback;->ownerID:Lin/dragonbra/javasteam/types/SteamID;

    .line 86
    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->getSteamIdClan()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object v1

    const-string v2, "getSteamIdClan(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback;->clanID:Lin/dragonbra/javasteam/types/SteamID;

    .line 88
    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->getChatFlags()B

    move-result v1

    iput-byte v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback;->chatFlags:B

    .line 90
    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->getEnterResponse()Lin/dragonbra/javasteam/enums/EChatRoomEnterResponse;

    move-result-object v1

    const-string v2, "getEnterResponse(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback;->enterResponse:Lin/dragonbra/javasteam/enums/EChatRoomEnterResponse;

    .line 92
    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->getNumMembers()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback;->numChatMembers:I

    .line 94
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AbstractMsgBase;->getPayload()Lin/dragonbra/javasteam/util/stream/MemoryStream;

    move-result-object v0

    .line 96
    :try_start_71
    new-instance v2, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v2, v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_76} :catch_ab

    .line 98
    :try_start_76
    invoke-virtual {v2}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readNullTermString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "readNullTermString(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback;->chatRoomName:Ljava/lang/String;

    .line 100
    sget-object v0, Lin/dragonbra/javasteam/enums/EChatRoomEnterResponse;->Success:Lin/dragonbra/javasteam/enums/EChatRoomEnterResponse;

    if-eq v1, v0, :cond_86

    goto :goto_a4

    .line 105
    :cond_86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_8c
    if-ge v1, p1, :cond_9e

    .line 108
    new-instance v3, Lin/dragonbra/javasteam/steam/handlers/steamfriends/ChatMemberInfo;

    invoke-direct {v3}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/ChatMemberInfo;-><init>()V

    .line 109
    invoke-virtual {v3, v2}, Lin/dragonbra/javasteam/types/MessageObject;->readFromStream(Ljava/io/InputStream;)Z

    .line 111
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_8c

    :catchall_9c
    move-exception p0

    goto :goto_ad

    .line 114
    :cond_9e
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback;->chatMembers:Ljava/util/List;

    .line 115
    :goto_a4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a6
    .catchall {:try_start_76 .. :try_end_a6} :catchall_9c

    const/4 p0, 0x0

    .line 96
    :try_start_a7
    invoke-static {v2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_aa} :catch_ab

    goto :goto_ba

    :catch_ab
    move-exception p0

    goto :goto_b3

    :goto_ad
    :try_start_ad
    throw p0
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ae

    :catchall_ae
    move-exception p1

    :try_start_af
    invoke-static {v2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b3} :catch_ab

    .line 117
    :goto_b3
    sget-object p1, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v0, "Failed to read chat enter info."

    invoke-virtual {p1, v0, p0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_ba
    return-void
.end method


# virtual methods
.method public final getChatFlags()B
    .registers 1

    .line 52
    iget-byte p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback;->chatFlags:B

    return p0
.end method

.method public final getChatID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 27
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback;->chatID:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public final getChatMembers()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/ChatMemberInfo;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback;->chatMembers:Ljava/util/List;

    return-object p0
.end method

.method public final getChatRoomName()Ljava/lang/String;
    .registers 1

    .line 67
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback;->chatRoomName:Ljava/lang/String;

    return-object p0
.end method

.method public final getChatRoomType()Lin/dragonbra/javasteam/enums/EChatRoomType;
    .registers 1

    .line 37
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback;->chatRoomType:Lin/dragonbra/javasteam/enums/EChatRoomType;

    return-object p0
.end method

.method public final getClanID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 47
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback;->clanID:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public final getEnterResponse()Lin/dragonbra/javasteam/enums/EChatRoomEnterResponse;
    .registers 1

    .line 57
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback;->enterResponse:Lin/dragonbra/javasteam/enums/EChatRoomEnterResponse;

    return-object p0
.end method

.method public final getFriendID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 32
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback;->friendID:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public final getNumChatMembers()I
    .registers 1

    .line 62
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback;->numChatMembers:I

    return p0
.end method

.method public final getOwnerID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 42
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback;->ownerID:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.callback.ChatEnterCallback.Companion (in.dragonbra.javasteam.steam.handlers.steamfriends.callback.ChatEnterCallback$Companion)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback$Companion;
.super Ljava/lang/Object;
.source "ChatEnterCallback.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatEnterCallback$Companion;-><init>()V

    return-void
.end method
