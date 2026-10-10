###### Class in.dragonbra.javasteam.base.AClientMsgProtobuf (in.dragonbra.javasteam.base.AClientMsgProtobuf)
.class public Lin/dragonbra/javasteam/base/AClientMsgProtobuf;
.super Lin/dragonbra/javasteam/base/MsgBase;
.source "AClientMsgProtobuf.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/base/AClientMsgProtobuf$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lin/dragonbra/javasteam/base/MsgBase<",
        "Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/base/AClientMsgProtobuf$Companion;

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lin/dragonbra/javasteam/base/AClientMsgProtobuf$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->Companion:Lin/dragonbra/javasteam/base/AClientMsgProtobuf$Companion;

    .line 20
    const-class v0, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 95
    const-class v0, Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;

    invoke-direct {p0, v0, p1}, Lin/dragonbra/javasteam/base/MsgBase;-><init>(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 6

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-interface {p1}, Lin/dragonbra/javasteam/base/IPacketMsg;->getMsgType()Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;-><init>(Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 86
    invoke-interface {p1}, Lin/dragonbra/javasteam/base/IPacketMsg;->isProto()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 87
    sget-object v0, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v1, "ClientMsgProtobuf used for non-proto message!"

    invoke-static {v0, v1, v3, v2, v3}, Lin/dragonbra/javasteam/util/log/Logger;->error$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 90
    :cond_1c
    invoke-interface {p1}, Lin/dragonbra/javasteam/base/IPacketMsg;->getData()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->deserialize([B)V

    return-void
.end method

.method private constructor <init>(Lin/dragonbra/javasteam/enums/EMsg;I)V
    .registers 4

    .line 97
    const-class v0, Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;

    invoke-direct {p0, v0, p2}, Lin/dragonbra/javasteam/base/MsgBase;-><init>(Ljava/lang/Class;I)V

    .line 99
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/MsgBase;->getHeader()Lin/dragonbra/javasteam/base/ISteamSerializable;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;->setEMsg(Lin/dragonbra/javasteam/enums/EMsg;)V

    return-void
.end method

.method public synthetic constructor <init>(Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 97
    :cond_5
    invoke-direct {p0, p1, p2}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;-><init>(Lin/dragonbra/javasteam/enums/EMsg;I)V

    return-void
.end method


# virtual methods
.method public deserialize([B)V
    .registers 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    :try_start_5
    new-instance v0, Lin/dragonbra/javasteam/util/stream/MemoryStream;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>([B)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_1a

    .line 115
    :try_start_a
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/MsgBase;->getHeader()Lin/dragonbra/javasteam/base/ISteamSerializable;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;->deserialize(Ljava/io/InputStream;)V

    .line 116
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_1c

    const/4 p0, 0x0

    .line 114
    :try_start_16
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_28

    :catch_1a
    move-exception p0

    goto :goto_23

    :catchall_1c
    move-exception p0

    :try_start_1d
    throw p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception p1

    :try_start_1f
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_23} :catch_1a

    .line 118
    :goto_23
    sget-object p1, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/Throwable;)V

    :goto_28
    return-void
.end method

.method public getMsgType()Lin/dragonbra/javasteam/enums/EMsg;
    .registers 2

    .line 42
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/MsgBase;->getHeader()Lin/dragonbra/javasteam/base/ISteamSerializable;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;->getMsg()Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object p0

    const-string v0, "getMsg(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getProtoHeader()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;
    .registers 2

    .line 27
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/MsgBase;->getHeader()Lin/dragonbra/javasteam/base/ISteamSerializable;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;->getProto()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    move-result-object p0

    const-string v0, "getProto(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getSessionID()I
    .registers 1

    .line 48
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getProtoHeader()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;->getClientSessionid()I

    move-result p0

    return p0
.end method

.method public getSourceJobID()Lin/dragonbra/javasteam/types/JobID;
    .registers 4

    .line 75
    new-instance v0, Lin/dragonbra/javasteam/types/JobID;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getProtoHeader()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;->getJobidSource()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/JobID;-><init>(J)V

    return-object v0
.end method

.method public getSteamID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 4

    .line 57
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getProtoHeader()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;->getSteamid()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    return-object v0
.end method

.method public getTargetJobID()Lin/dragonbra/javasteam/types/JobID;
    .registers 4

    .line 66
    new-instance v0, Lin/dragonbra/javasteam/types/JobID;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getProtoHeader()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;->getJobidTarget()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/JobID;-><init>(J)V

    return-object v0
.end method

.method public isProto()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public serialize()[B
    .registers 2

    .line 106
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "ClientMsgProtobuf is for reading only. Use ClientMsgProtobuf<T> for serializing messages."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSessionID(I)V
    .registers 2

    .line 50
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getProtoHeader()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;->setClientSessionid(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    return-void
.end method

.method public setSourceJobID(Lin/dragonbra/javasteam/types/JobID;)V
    .registers 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getProtoHeader()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/GlobalID;->getValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;->setJobidSource(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    return-void
.end method

.method public setSteamID(Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 4

    .line 59
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getProtoHeader()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    move-result-object p0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;->setSteamid(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    return-void
.end method

.method public setTargetJobID(Lin/dragonbra/javasteam/types/JobID;)V
    .registers 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getProtoHeader()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/GlobalID;->getValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;->setJobidTarget(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    return-void
.end method

###### Class in.dragonbra.javasteam.base.AClientMsgProtobuf.Companion (in.dragonbra.javasteam.base.AClientMsgProtobuf$Companion)
.class public final Lin/dragonbra/javasteam/base/AClientMsgProtobuf$Companion;
.super Ljava/lang/Object;
.source "AClientMsgProtobuf.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/base/AClientMsgProtobuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf$Companion;-><init>()V

    return-void
.end method
