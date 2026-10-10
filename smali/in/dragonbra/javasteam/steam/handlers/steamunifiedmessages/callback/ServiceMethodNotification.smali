###### Class in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodNotification (in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodNotification)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodNotification;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "ServiceMethodNotification.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "TT;>;>",
        "Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;"
    }
.end annotation


# instance fields
.field private final body:Lcom/google/protobuf/GeneratedMessage$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final jobName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/AbstractMessage;",
            ">;",
            "Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;",
            ")V"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packetMsg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 34
    sget-object v0, Lin/dragonbra/javasteam/types/JobID;->INVALID:Lin/dragonbra/javasteam/types/JobID;

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;->setJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 35
    invoke-virtual {p2}, Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;->getHeader$javasteam()Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;->getProto()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;->getTargetJobName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getTargetJobName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodNotification;->jobName:Ljava/lang/String;

    .line 36
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    invoke-direct {v0, p1, p2}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodNotification;->body:Lcom/google/protobuf/GeneratedMessage$Builder;

    return-void
.end method


# virtual methods
.method public final getBody()Lcom/google/protobuf/GeneratedMessage$Builder;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 31
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodNotification;->body:Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public final getJobName()Ljava/lang/String;
    .registers 1

    .line 26
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodNotification;->jobName:Ljava/lang/String;

    return-object p0
.end method
