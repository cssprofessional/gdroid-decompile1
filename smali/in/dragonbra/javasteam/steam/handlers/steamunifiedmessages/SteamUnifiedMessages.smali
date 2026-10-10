###### Class in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages (in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;
.super Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;
.source "SteamUnifiedMessages.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSteamUnifiedMessages.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SteamUnifiedMessages.kt\nin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages\n+ 2 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,176:1\n72#2,2:177\n1#3:179\n*S KotlinDebug\n*F\n+ 1 SteamUnifiedMessages.kt\nin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages\n*L\n46#1:177,2\n46#1:179\n*E\n"
.end annotation


# instance fields
.field private final handlers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->handlers:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final synthetic createService()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TService:",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;",
            ">()TTService;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 32
    const-string v1, "TService"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->createService(Ljava/lang/Class;)Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;

    move-result-object p0

    return-object p0
.end method

.method public final createService(Ljava/lang/Class;)Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TService:",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;",
            ">(",
            "Ljava/lang/Class<",
            "TTService;>;)TTService;"
        }
    .end annotation

    const-string v0, "serviceClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    const-class v0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 44
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 45
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;

    .line 46
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->handlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getServiceName()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2e

    .line 73
    invoke-interface {p0, v0, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2c

    goto :goto_2d

    :cond_2c
    move-object p1, p0

    :goto_2d
    move-object v1, p1

    .line 46
    :cond_2e
    const-string p0, "null cannot be cast to non-null type TService of in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages.createService"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;

    return-object v1
.end method

.method public final getHandlers$javasteam()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->handlers:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public handleMsg(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 10

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    instance-of v0, p1, Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;

    if-eqz v0, :cond_d

    move-object v0, p1

    check-cast v0, Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-nez v0, :cond_11

    return-void

    .line 137
    :cond_11
    check-cast p1, Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;->getMsgType()Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object v1

    sget-object v2, Lin/dragonbra/javasteam/enums/EMsg;->ServiceMethod:Lin/dragonbra/javasteam/enums/EMsg;

    if-eq v1, v2, :cond_24

    invoke-virtual {p1}, Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;->getMsgType()Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object p1

    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ServiceMethodResponse:Lin/dragonbra/javasteam/enums/EMsg;

    if-eq p1, v1, :cond_24

    return-void

    .line 141
    :cond_24
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;->getHeader$javasteam()Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;->getProto()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;->getTargetJobName()Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3a

    return-void

    :cond_3a
    const/4 v5, 0x6

    const/4 v6, 0x0

    const/16 v2, 0x2e

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    .line 145
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v7

    const/16 v2, 0x23

    .line 146
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt__StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    if-ltz v7, :cond_83

    if-gez v1, :cond_50

    goto :goto_83

    .line 149
    :cond_50
    invoke-static {p1, v7}, Lkotlin/text/StringsKt___StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 150
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->handlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;

    if-nez p0, :cond_5f

    return-void

    :cond_5f
    const/4 v2, 0x1

    add-int/2addr v7, v2

    .line 151
    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v1, "substring(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;->getMsgType()Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object v1

    sget-object v3, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    if-eq v1, v2, :cond_80

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7c

    goto :goto_83

    .line 155
    :cond_7c
    invoke-virtual {p0, p1, v0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->handleNotificationMsg(Ljava/lang/String;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto :goto_83

    .line 154
    :cond_80
    invoke-virtual {p0, p1, v0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->handleResponseMsg(Ljava/lang/String;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    :cond_83
    :goto_83
    return-void
.end method

.method public final handleNotificationMsg$javasteam(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V
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

    .line 172
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodNotification;

    invoke-direct {v0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodNotification;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    .line 173
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->postCallback(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V

    return-void
.end method

.method public final handleResponseMsg$javasteam(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V
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

    .line 164
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    invoke-direct {v0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    .line 165
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->postCallback(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V

    return-void
.end method

.method public final synthetic removeService()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TService:",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;",
            ">()V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 57
    const-string v1, "TService"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->removeService(Ljava/lang/Class;)V

    return-void
.end method

.method public final removeService(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TService:",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;",
            ">(",
            "Ljava/lang/Class<",
            "TTService;>;)V"
        }
    .end annotation

    const-string v0, "serviceClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    const-class v0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    const/4 v0, 0x0

    .line 67
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;

    .line 68
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getServiceName()Ljava/lang/String;

    move-result-object p1

    .line 69
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->handlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRequest:",
            "Lcom/google/protobuf/GeneratedMessage$Builder<",
            "TTRequest;>;TResult:",
            "Lcom/google/protobuf/GeneratedMessage$Builder<",
            "TTResult;>;>(",
            "Ljava/lang/Class<",
            "+TTResult;>;",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/GeneratedMessage;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "TTResult;>;>;"
        }
    .end annotation

    const-string v0, "responseClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "name"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/CMClient;->getSteamID()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object p1

    if-nez p1, :cond_1d

    .line 89
    sget-object p1, Lin/dragonbra/javasteam/enums/EMsg;->ServiceMethodCallFromClientNonAuthed:Lin/dragonbra/javasteam/enums/EMsg;

    :goto_1b
    move-object v2, p1

    goto :goto_20

    .line 91
    :cond_1d
    sget-object p1, Lin/dragonbra/javasteam/enums/EMsg;->ServiceMethodCallFromClient:Lin/dragonbra/javasteam/enums/EMsg;

    goto :goto_1b

    .line 94
    :goto_20
    new-instance p1, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 95
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getNextJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->setSourceJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 96
    invoke-virtual {p1}, Lin/dragonbra/javasteam/base/MsgBase;->getHeader()Lin/dragonbra/javasteam/base/ISteamSerializable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;->getProto()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;->setTargetJobName(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    .line 97
    invoke-virtual {p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    .line 100
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p2

    invoke-virtual {p2, p1}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    .line 102
    new-instance p2, Lin/dragonbra/javasteam/types/AsyncJobSingle;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p1}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getSourceJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lin/dragonbra/javasteam/types/AsyncJobSingle;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lin/dragonbra/javasteam/types/JobID;)V

    return-object p2
.end method

.method public final sendNotification(Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRequest:",
            "Lcom/google/protobuf/GeneratedMessage$Builder<",
            "TTRequest;>;>(",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/GeneratedMessage;",
            ")V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/CMClient;->getSteamID()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object v0

    if-nez v0, :cond_18

    .line 118
    sget-object v0, Lin/dragonbra/javasteam/enums/EMsg;->ServiceMethodCallFromClientNonAuthed:Lin/dragonbra/javasteam/enums/EMsg;

    :goto_16
    move-object v3, v0

    goto :goto_1b

    .line 120
    :cond_18
    sget-object v0, Lin/dragonbra/javasteam/enums/EMsg;->ServiceMethodCallFromClient:Lin/dragonbra/javasteam/enums/EMsg;

    goto :goto_16

    .line 122
    :goto_1b
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 123
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/MsgBase;->getHeader()Lin/dragonbra/javasteam/base/ISteamSerializable;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;->getProto()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;->setTargetJobName(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    .line 124
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    .line 127
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages.WhenMappings (in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages$WhenMappings)
.class public final synthetic Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages$WhenMappings;
.super Ljava/lang/Object;
.source "SteamUnifiedMessages.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;
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
    invoke-static {}, Lin/dragonbra/javasteam/enums/EMsg;->values()[Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ServiceMethodResponse:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ServiceMethod:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
