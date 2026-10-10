###### Class in.dragonbra.javasteam.steam.handlers.steamgamecoordinator.callback.MessageCallback (in.dragonbra.javasteam.steam.handlers.steamgamecoordinator.callback.MessageCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamgamecoordinator/callback/MessageCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "MessageCallback.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/handlers/steamgamecoordinator/callback/MessageCallback$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/steam/handlers/steamgamecoordinator/callback/MessageCallback$Companion;


# instance fields
.field private final _eMsg:I

.field private final appID:I

.field private final message:Lin/dragonbra/javasteam/base/gc/IPacketGCMsg;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamgamecoordinator/callback/MessageCallback$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/steam/handlers/steamgamecoordinator/callback/MessageCallback$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamgamecoordinator/callback/MessageCallback;->Companion:Lin/dragonbra/javasteam/steam/handlers/steamgamecoordinator/callback/MessageCallback$Companion;

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 5

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 45
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 46
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgGCClient;

    .line 45
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 49
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgGCClient$Builder;

    .line 51
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgGCClient$Builder;->getMsgtype()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamgamecoordinator/callback/MessageCallback;->_eMsg:I

    .line 52
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgGCClient$Builder;->getAppid()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamgamecoordinator/callback/MessageCallback;->appID:I

    .line 53
    sget-object v0, Lin/dragonbra/javasteam/steam/handlers/steamgamecoordinator/callback/MessageCallback;->Companion:Lin/dragonbra/javasteam/steam/handlers/steamgamecoordinator/callback/MessageCallback$Companion;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgGCClient$Builder;->getMsgtype()I

    move-result v1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgGCClient$Builder;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    const-string v2, "toByteArray(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamgamecoordinator/callback/MessageCallback$Companion;->access$getPacketGCMsg(Lin/dragonbra/javasteam/steam/handlers/steamgamecoordinator/callback/MessageCallback$Companion;I[B)Lin/dragonbra/javasteam/base/gc/IPacketGCMsg;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamgamecoordinator/callback/MessageCallback;->message:Lin/dragonbra/javasteam/base/gc/IPacketGCMsg;

    .line 54
    invoke-interface {p1}, Lin/dragonbra/javasteam/base/gc/IPacketGCMsg;->getTargetJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;->setJobID(Lin/dragonbra/javasteam/types/JobID;)V

    return-void
.end method


# virtual methods
.method public final getAppID()I
    .registers 1

    .line 31
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamgamecoordinator/callback/MessageCallback;->appID:I

    return p0
.end method

.method public final getEMsg()I
    .registers 1

    .line 26
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamgamecoordinator/callback/MessageCallback;->_eMsg:I

    invoke-static {p0}, Lin/dragonbra/javasteam/util/MsgUtil;->getGCMsg(I)I

    move-result p0

    return p0
.end method

.method public final getMessage()Lin/dragonbra/javasteam/base/gc/IPacketGCMsg;
    .registers 1

    .line 42
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamgamecoordinator/callback/MessageCallback;->message:Lin/dragonbra/javasteam/base/gc/IPacketGCMsg;

    return-object p0
.end method

.method public final isProto()Z
    .registers 1

    .line 37
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamgamecoordinator/callback/MessageCallback;->_eMsg:I

    invoke-static {p0}, Lin/dragonbra/javasteam/util/MsgUtil;->isProtoBuf(I)Z

    move-result p0

    return p0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamgamecoordinator.callback.MessageCallback.Companion (in.dragonbra.javasteam.steam.handlers.steamgamecoordinator.callback.MessageCallback$Companion)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamgamecoordinator/callback/MessageCallback$Companion;
.super Ljava/lang/Object;
.source "MessageCallback.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/handlers/steamgamecoordinator/callback/MessageCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/steamgamecoordinator/callback/MessageCallback$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getPacketGCMsg(Lin/dragonbra/javasteam/steam/handlers/steamgamecoordinator/callback/MessageCallback$Companion;I[B)Lin/dragonbra/javasteam/base/gc/IPacketGCMsg;
    .registers 3

    .line 57
    invoke-direct {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamgamecoordinator/callback/MessageCallback$Companion;->getPacketGCMsg(I[B)Lin/dragonbra/javasteam/base/gc/IPacketGCMsg;

    move-result-object p0

    return-object p0
.end method

.method private final getPacketGCMsg(I[B)Lin/dragonbra/javasteam/base/gc/IPacketGCMsg;
    .registers 3

    .line 59
    invoke-static {p1}, Lin/dragonbra/javasteam/util/MsgUtil;->getGCMsg(I)I

    move-result p0

    .line 61
    invoke-static {p1}, Lin/dragonbra/javasteam/util/MsgUtil;->isProtoBuf(I)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 62
    new-instance p1, Lin/dragonbra/javasteam/base/gc/PacketClientGCMsgProtobuf;

    invoke-direct {p1, p0, p2}, Lin/dragonbra/javasteam/base/gc/PacketClientGCMsgProtobuf;-><init>(I[B)V

    goto :goto_15

    .line 64
    :cond_10
    new-instance p1, Lin/dragonbra/javasteam/base/gc/PacketClientGCMsg;

    invoke-direct {p1, p0, p2}, Lin/dragonbra/javasteam/base/gc/PacketClientGCMsg;-><init>(I[B)V

    :goto_15
    return-object p1
.end method
