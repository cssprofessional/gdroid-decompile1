###### Class in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService (in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService)
.class public abstract Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;
.super Ljava/lang/Object;
.source "UnifiedService.kt"


# instance fields
.field private final unifiedMessages:Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;)V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->unifiedMessages:Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    return-void
.end method

.method public synthetic constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 15
    :cond_5
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;)V

    return-void
.end method


# virtual methods
.method public abstract getServiceName()Ljava/lang/String;
.end method

.method public final getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;
    .registers 1

    .line 15
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->unifiedMessages:Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    return-object p0
.end method

.method public abstract handleNotificationMsg(Ljava/lang/String;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V
.end method

.method public abstract handleResponseMsg(Ljava/lang/String;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V
.end method

.method public final postNotificationMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TNotification:",
            "Lcom/google/protobuf/GeneratedMessage$Builder<",
            "TTNotification;>;>(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/AbstractMessage;",
            ">;",
            "Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;",
            ")V"
        }
    .end annotation

    const-string v0, "serviceClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packetMsg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->unifiedMessages:Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    if-eqz p0, :cond_11

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->handleNotificationMsg$javasteam(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    :cond_11
    return-void
.end method

.method public final postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResponse:",
            "Lcom/google/protobuf/GeneratedMessage$Builder<",
            "TTResponse;>;>(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/AbstractMessage;",
            ">;",
            "Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;",
            ")V"
        }
    .end annotation

    const-string v0, "serviceClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packetMsg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->unifiedMessages:Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    if-eqz p0, :cond_11

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->handleResponseMsg$javasteam(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    :cond_11
    return-void
.end method
