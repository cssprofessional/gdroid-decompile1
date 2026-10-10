###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.callback.ChatMemberInfoCallback (in.dragonbra.javasteam.steam.handlers.steamfriends.callback.ChatMemberInfoCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "ChatMemberInfoCallback.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback$Companion;,
        Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback$StateChangeDetails;,
        Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatMemberInfoCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatMemberInfoCallback.kt\nin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback\n+ 2 LogManager.kt\nin/dragonbra/javasteam/util/log/LogManager\n*L\n1#1,103:1\n53#2:104\n*S KotlinDebug\n*F\n+ 1 ChatMemberInfoCallback.kt\nin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback\n*L\n24#1:104\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback$Companion;

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field private final chatRoomID:Lin/dragonbra/javasteam/types/SteamID;

.field private stateChangeInfo:Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback$StateChangeDetails;

.field private final type:Lin/dragonbra/javasteam/enums/EChatInfoType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback;->Companion:Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback$Companion;

    .line 53
    const-class v0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    .line 24
    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 5

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 43
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsg;

    const-class v1, Lin/dragonbra/javasteam/generated/MsgClientChatMemberInfo;

    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsg;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 44
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/generated/MsgClientChatMemberInfo;

    .line 46
    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientChatMemberInfo;->getSteamIdChat()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object v1

    const-string v2, "getSteamIdChat(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback;->chatRoomID:Lin/dragonbra/javasteam/types/SteamID;

    .line 47
    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientChatMemberInfo;->getType()Lin/dragonbra/javasteam/enums/EChatInfoType;

    move-result-object p1

    const-string v1, "getType(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback;->type:Lin/dragonbra/javasteam/enums/EChatInfoType;

    .line 49
    sget-object v1, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_41

    .line 50
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback$StateChangeDetails;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AbstractMsgBase;->getPayload()Lin/dragonbra/javasteam/util/stream/MemoryStream;

    move-result-object v0

    invoke-direct {p1, v0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback$StateChangeDetails;-><init>(Lin/dragonbra/javasteam/util/stream/MemoryStream;)V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback;->stateChangeInfo:Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback$StateChangeDetails;

    :cond_41
    return-void
.end method

.method public static final synthetic access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;
    .registers 1

    .line 20
    sget-object v0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-object v0
.end method


# virtual methods
.method public final getChatRoomID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 30
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback;->chatRoomID:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public final getStateChangeInfo()Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback$StateChangeDetails;
    .registers 1

    .line 40
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback;->stateChangeInfo:Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback$StateChangeDetails;

    return-object p0
.end method

.method public final getType()Lin/dragonbra/javasteam/enums/EChatInfoType;
    .registers 1

    .line 35
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback;->type:Lin/dragonbra/javasteam/enums/EChatInfoType;

    return-object p0
.end method

.method public final setStateChangeInfo(Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback$StateChangeDetails;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback;->stateChangeInfo:Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback$StateChangeDetails;

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.callback.ChatMemberInfoCallback.Companion (in.dragonbra.javasteam.steam.handlers.steamfriends.callback.ChatMemberInfoCallback$Companion)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback$Companion;
.super Ljava/lang/Object;
.source "ChatMemberInfoCallback.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback$Companion;-><init>()V

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.callback.ChatMemberInfoCallback.StateChangeDetails (in.dragonbra.javasteam.steam.handlers.steamfriends.callback.ChatMemberInfoCallback$StateChangeDetails)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback$StateChangeDetails;
.super Ljava/lang/Object;
.source "ChatMemberInfoCallback.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateChangeDetails"
.end annotation


# instance fields
.field private chatterActedBy:Lin/dragonbra/javasteam/types/SteamID;

.field private chatterActedOn:Lin/dragonbra/javasteam/types/SteamID;

.field private memberInfo:Lin/dragonbra/javasteam/steam/handlers/steamfriends/ChatMemberInfo;

.field private stateChange:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EChatMemberStateChange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/util/stream/MemoryStream;)V
    .registers 5

    const-string v0, "ms"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    :try_start_8
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_51

    .line 89
    :try_start_d
    new-instance p1, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    invoke-direct {p1, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback$StateChangeDetails;->chatterActedOn:Lin/dragonbra/javasteam/types/SteamID;

    .line 90
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    invoke-static {p1}, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;->from(I)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback$StateChangeDetails;->stateChange:Ljava/util/EnumSet;

    .line 91
    new-instance p1, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    invoke-direct {p1, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback$StateChangeDetails;->chatterActedBy:Lin/dragonbra/javasteam/types/SteamID;

    .line 92
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback$StateChangeDetails;->stateChange:Ljava/util/EnumSet;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;->Entered:Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 93
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamfriends/ChatMemberInfo;

    invoke-direct {p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/ChatMemberInfo;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback$StateChangeDetails;->memberInfo:Lin/dragonbra/javasteam/steam/handlers/steamfriends/ChatMemberInfo;

    .line 94
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/types/MessageObject;->readFromStream(Ljava/io/InputStream;)Z

    goto :goto_4a

    :catchall_48
    move-exception p0

    goto :goto_53

    .line 96
    :cond_4a
    :goto_4a
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4c
    .catchall {:try_start_d .. :try_end_4c} :catchall_48

    const/4 p0, 0x0

    .line 88
    :try_start_4d
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_62

    :catch_51
    move-exception p0

    goto :goto_59

    :goto_53
    :try_start_53
    throw p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_54

    :catchall_54
    move-exception p1

    :try_start_55
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_59} :catch_51

    .line 98
    :goto_59
    invoke-static {}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback;->access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object p1

    const-string v0, "Failed to read chat member info"

    invoke-virtual {p1, v0, p0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_62
    return-void
.end method


# virtual methods
.method public final getChatterActedBy()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 78
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback$StateChangeDetails;->chatterActedBy:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public final getChatterActedOn()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 68
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback$StateChangeDetails;->chatterActedOn:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public final getMemberInfo()Lin/dragonbra/javasteam/steam/handlers/steamfriends/ChatMemberInfo;
    .registers 1

    .line 84
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback$StateChangeDetails;->memberInfo:Lin/dragonbra/javasteam/steam/handlers/steamfriends/ChatMemberInfo;

    return-object p0
.end method

.method public final getStateChange()Ljava/util/EnumSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EChatMemberStateChange;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback$StateChangeDetails;->stateChange:Ljava/util/EnumSet;

    return-object p0
.end method

.method public final setChatterActedBy(Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback$StateChangeDetails;->chatterActedBy:Lin/dragonbra/javasteam/types/SteamID;

    return-void
.end method

.method public final setChatterActedOn(Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback$StateChangeDetails;->chatterActedOn:Lin/dragonbra/javasteam/types/SteamID;

    return-void
.end method

.method public final setMemberInfo(Lin/dragonbra/javasteam/steam/handlers/steamfriends/ChatMemberInfo;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback$StateChangeDetails;->memberInfo:Lin/dragonbra/javasteam/steam/handlers/steamfriends/ChatMemberInfo;

    return-void
.end method

.method public final setStateChange(Ljava/util/EnumSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EChatMemberStateChange;",
            ">;)V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback$StateChangeDetails;->stateChange:Ljava/util/EnumSet;

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.callback.ChatMemberInfoCallback.WhenMappings (in.dragonbra.javasteam.steam.handlers.steamfriends.callback.ChatMemberInfoCallback$WhenMappings)
.class public final synthetic Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback$WhenMappings;
.super Ljava/lang/Object;
.source "ChatMemberInfoCallback.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lin/dragonbra/javasteam/enums/EChatInfoType;->values()[Lin/dragonbra/javasteam/enums/EChatInfoType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lin/dragonbra/javasteam/enums/EChatInfoType;->StateChange:Lin/dragonbra/javasteam/enums/EChatInfoType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/ChatMemberInfoCallback$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
