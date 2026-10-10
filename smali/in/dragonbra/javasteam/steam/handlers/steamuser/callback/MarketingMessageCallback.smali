###### Class in.dragonbra.javasteam.steam.handlers.steamuser.callback.MarketingMessageCallback (in.dragonbra.javasteam.steam.handlers.steamuser.callback.MarketingMessageCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "MarketingMessageCallback.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback$Companion;,
        Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback$Message;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMarketingMessageCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MarketingMessageCallback.kt\nin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback\n+ 2 LogManager.kt\nin/dragonbra/javasteam/util/log/LogManager\n*L\n1#1,96:1\n53#2:97\n*S KotlinDebug\n*F\n+ 1 MarketingMessageCallback.kt\nin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback\n*L\n22#1:97\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback$Companion;

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field private final messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback$Message;",
            ">;"
        }
    .end annotation
.end field

.field private final updateTime:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback;->Companion:Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback$Companion;

    .line 53
    const-class v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    .line 22
    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 8

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 36
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsg;

    const-class v1, Lin/dragonbra/javasteam/generated/MsgClientMarketingMessageUpdate2;

    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsg;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 37
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/generated/MsgClientMarketingMessageUpdate2;

    .line 39
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientMarketingMessageUpdate2;->getMarketingMessageUpdateTime()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback;->updateTime:Ljava/util/Date;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    :try_start_29
    new-instance v2, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AbstractMsgBase;->getPayload()Lin/dragonbra/javasteam/util/stream/MemoryStream;

    move-result-object v0

    invoke-direct {v2, v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_32} :catch_57

    .line 45
    :try_start_32
    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientMarketingMessageUpdate2;->getCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_37
    if-ge v0, p1, :cond_50

    .line 46
    invoke-virtual {v2}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    .line 47
    invoke-virtual {v2, v3}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readBytes(I)[B

    move-result-object v3

    .line 49
    new-instance v4, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback$Message;

    invoke-direct {v4, v3}, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback$Message;-><init>([B)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :catchall_4e
    move-exception p1

    goto :goto_59

    .line 51
    :cond_50
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_52
    .catchall {:try_start_32 .. :try_end_52} :catchall_4e

    const/4 p1, 0x0

    .line 44
    :try_start_53
    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_66

    :catch_57
    move-exception p1

    goto :goto_5f

    :goto_59
    :try_start_59
    throw p1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception v0

    :try_start_5b
    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5f} :catch_57

    .line 53
    :goto_5f
    sget-object v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v2, "Failed to get marketing messages"

    invoke-virtual {v0, v2, p1}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    :goto_66
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback;->messages:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;
    .registers 1

    .line 19
    sget-object v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-object v0
.end method


# virtual methods
.method public final getMessages()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback$Message;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback;->messages:Ljava/util/List;

    return-object p0
.end method

.method public final getUpdateTime()Ljava/util/Date;
    .registers 1

    .line 28
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback;->updateTime:Ljava/util/Date;

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamuser.callback.MarketingMessageCallback.Companion (in.dragonbra.javasteam.steam.handlers.steamuser.callback.MarketingMessageCallback$Companion)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback$Companion;
.super Ljava/lang/Object;
.source "MarketingMessageCallback.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback$Companion;-><init>()V

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamuser.callback.MarketingMessageCallback.Message (in.dragonbra.javasteam.steam.handlers.steamuser.callback.MarketingMessageCallback$Message)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback$Message;
.super Ljava/lang/Object;
.source "MarketingMessageCallback.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation


# instance fields
.field private flags:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EMarketingMessageFlags;",
            ">;"
        }
    .end annotation
.end field

.field private id:Lin/dragonbra/javasteam/types/GlobalID;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .registers 5

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    :try_start_3
    new-instance v0, Lin/dragonbra/javasteam/util/stream/MemoryStream;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>([B)V

    .line 85
    new-instance p1, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {p1, v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_31

    .line 86
    :try_start_d
    new-instance v0, Lin/dragonbra/javasteam/types/GlobalID;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/GlobalID;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback$Message;->id:Lin/dragonbra/javasteam/types/GlobalID;

    .line 87
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readNullTermString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback$Message;->url:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EMarketingMessageFlags;->from(I)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback$Message;->flags:Ljava/util/EnumSet;

    .line 89
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_33

    const/4 p0, 0x0

    .line 85
    :try_start_2d
    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_43

    :catch_31
    move-exception p0

    goto :goto_3a

    :catchall_33
    move-exception p0

    :try_start_34
    throw p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_35

    :catchall_35
    move-exception v0

    :try_start_36
    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3a} :catch_31

    .line 91
    :goto_3a
    invoke-static {}, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback;->access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object p1

    const-string v0, "Failed to parse marketing messages"

    invoke-virtual {p1, v0, p0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_43
    return-void
.end method


# virtual methods
.method public final getFlags()Ljava/util/EnumSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EMarketingMessageFlags;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback$Message;->flags:Ljava/util/EnumSet;

    return-object p0
.end method

.method public final getId()Lin/dragonbra/javasteam/types/GlobalID;
    .registers 1

    .line 67
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback$Message;->id:Lin/dragonbra/javasteam/types/GlobalID;

    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 1

    .line 73
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/MarketingMessageCallback$Message;->url:Ljava/lang/String;

    return-object p0
.end method
