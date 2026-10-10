###### Class in.dragonbra.javasteam.base.gc.ClientGCMsgProtobuf (in.dragonbra.javasteam.base.gc.ClientGCMsgProtobuf)
.class public final Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf;
.super Lin/dragonbra/javasteam/base/gc/GCMsgBase;
.source "ClientGCMsgProtobuf.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BodyType:",
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "TBodyType;>;>",
        "Lin/dragonbra/javasteam/base/gc/GCMsgBase<",
        "Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf$Companion;

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field private body:Lcom/google/protobuf/GeneratedMessage$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TBodyType;"
        }
    .end annotation
.end field

.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/AbstractMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf;->Companion:Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf$Companion;

    .line 31
    const-class v0, Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/AbstractMessage;",
            ">;I)V"
        }
    .end annotation

    .line 0
    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf;-><init>(Ljava/lang/Class;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/AbstractMessage;",
            ">;II)V"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    const-class v0, Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;

    .line 23
    invoke-direct {p0, v0, p3}, Lin/dragonbra/javasteam/base/gc/GCMsgBase;-><init>(Ljava/lang/Class;I)V

    .line 25
    iput-object p1, p0, Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf;->clazz:Ljava/lang/Class;

    .line 114
    :try_start_c
    const-string p3, "newBuilder"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p1, p3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 116
    new-array p3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type BodyType of in.dragonbra.javasteam.base.gc.ClientGCMsgProtobuf"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/google/protobuf/GeneratedMessage$Builder;

    iput-object p1, p0, Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf;->body:Lcom/google/protobuf/GeneratedMessage$Builder;
    :try_end_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_25} :catch_2a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_25} :catch_28
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_25} :catch_26

    goto :goto_3d

    :catch_26
    move-exception p1

    goto :goto_2c

    :catch_28
    move-exception p1

    goto :goto_32

    :catch_2a
    move-exception p1

    goto :goto_38

    .line 122
    :goto_2c
    sget-object p3, Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p3, p1}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/Throwable;)V

    goto :goto_3d

    .line 120
    :goto_32
    sget-object p3, Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p3, p1}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/Throwable;)V

    goto :goto_3d

    .line 118
    :goto_38
    sget-object p3, Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p3, p1}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/Throwable;)V

    .line 125
    :goto_3d
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/gc/GCMsgBase;->getHeader()Lin/dragonbra/javasteam/base/gc/IGCSerializableHeader;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;

    invoke-virtual {p0, p2}, Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;->setEMsg(I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_6

    const/16 p3, 0x40

    .line 24
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf;-><init>(Ljava/lang/Class;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;ILin/dragonbra/javasteam/base/gc/GCMsgBase;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/AbstractMessage;",
            ">;I",
            "Lin/dragonbra/javasteam/base/gc/GCMsgBase<",
            "Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;",
            ">;)V"
        }
    .end annotation

    .line 0
    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf;-><init>(Ljava/lang/Class;ILin/dragonbra/javasteam/base/gc/GCMsgBase;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;ILin/dragonbra/javasteam/base/gc/GCMsgBase;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/AbstractMessage;",
            ">;I",
            "Lin/dragonbra/javasteam/base/gc/GCMsgBase<",
            "Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0, p1, p2, p4}, Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf;-><init>(Ljava/lang/Class;II)V

    .line 109
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/gc/GCMsgBase;->getHeader()Lin/dragonbra/javasteam/base/gc/IGCSerializableHeader;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;->getProto()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    move-result-object p0

    invoke-virtual {p3}, Lin/dragonbra/javasteam/base/gc/GCMsgBase;->getHeader()Lin/dragonbra/javasteam/base/gc/IGCSerializableHeader;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;->getProto()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;->getJobidSource()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;->setJobidTarget(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;ILin/dragonbra/javasteam/base/gc/GCMsgBase;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_6

    const/16 p4, 0x40

    .line 102
    :cond_6
    invoke-direct {p0, p1, p2, p3, p4}, Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf;-><init>(Ljava/lang/Class;ILin/dragonbra/javasteam/base/gc/GCMsgBase;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/gc/IPacketGCMsg;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/AbstractMessage;",
            ">;",
            "Lin/dragonbra/javasteam/base/gc/IPacketGCMsg;",
            ")V"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-interface {p2}, Lin/dragonbra/javasteam/base/gc/IPacketGCMsg;->getMsgType()I

    move-result v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf;-><init>(Ljava/lang/Class;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 86
    invoke-interface {p2}, Lin/dragonbra/javasteam/base/gc/IPacketGCMsg;->isProto()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 87
    sget-object v0, Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientMsgProtobuf<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "> used for non-proto message!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lin/dragonbra/javasteam/util/log/Logger;->debug$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 90
    :cond_3d
    invoke-interface {p2}, Lin/dragonbra/javasteam/base/gc/IPacketGCMsg;->getData()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf;->deserialize([B)V

    return-void
.end method


# virtual methods
.method public deserialize([B)V
    .registers 8

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    :try_start_5
    new-instance v0, Lin/dragonbra/javasteam/util/stream/MemoryStream;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>([B)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_5a
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_a} :catch_58
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_a} :catch_56
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_a} :catch_54

    .line 154
    :try_start_a
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/gc/GCMsgBase;->getHeader()Lin/dragonbra/javasteam/base/gc/IGCSerializableHeader;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;

    invoke-virtual {v1, v0}, Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;->deserialize(Ljava/io/InputStream;)V

    .line 155
    iget-object v1, p0, Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf;->clazz:Ljava/lang/Class;

    const-string v2, "newBuilder"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 157
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type BodyType of in.dragonbra.javasteam.base.gc.ClientGCMsgProtobuf"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/google/protobuf/GeneratedMessage$Builder;

    iput-object v1, p0, Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf;->body:Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 158
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    .line 159
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/AbstractMsgBase;->getPayload()Lin/dragonbra/javasteam/util/stream/MemoryStream;

    move-result-object v1

    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->getPosition()J

    move-result-wide v4

    long-to-int v2, v4

    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->available()I

    move-result v4

    invoke-virtual {v1, p1, v2, v4}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->write([BII)V

    .line 160
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/AbstractMsgBase;->getPayload()Lin/dragonbra/javasteam/util/stream/MemoryStream;

    move-result-object p0

    sget-object p1, Lin/dragonbra/javasteam/util/stream/SeekOrigin;->BEGIN:Lin/dragonbra/javasteam/util/stream/SeekOrigin;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, p1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->seek(JLin/dragonbra/javasteam/util/stream/SeekOrigin;)J
    :try_end_50
    .catchall {:try_start_a .. :try_end_50} :catchall_5c

    .line 153
    :try_start_50
    invoke-static {v0, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_5a
    .catch Ljava/lang/IllegalAccessException; {:try_start_50 .. :try_end_53} :catch_58
    .catch Ljava/lang/NoSuchMethodException; {:try_start_50 .. :try_end_53} :catch_56
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_50 .. :try_end_53} :catch_54

    goto :goto_7a

    :catch_54
    move-exception p0

    goto :goto_63

    :catch_56
    move-exception p0

    goto :goto_69

    :catch_58
    move-exception p0

    goto :goto_6f

    :catch_5a
    move-exception p0

    goto :goto_75

    :catchall_5c
    move-exception p0

    :try_start_5d
    throw p0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5e

    :catchall_5e
    move-exception p1

    :try_start_5f
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_63} :catch_5a
    .catch Ljava/lang/IllegalAccessException; {:try_start_5f .. :try_end_63} :catch_58
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5f .. :try_end_63} :catch_56
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5f .. :try_end_63} :catch_54

    .line 169
    :goto_63
    sget-object p1, Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/Throwable;)V

    goto :goto_7a

    .line 167
    :goto_69
    sget-object p1, Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/Throwable;)V

    goto :goto_7a

    .line 165
    :goto_6f
    sget-object p1, Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/Throwable;)V

    goto :goto_7a

    .line 163
    :goto_75
    sget-object p1, Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/Throwable;)V

    :goto_7a
    return-void
.end method

.method public final getBody()Lcom/google/protobuf/GeneratedMessage$Builder;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBodyType;"
        }
    .end annotation

    .line 37
    iget-object p0, p0, Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf;->body:Lcom/google/protobuf/GeneratedMessage$Builder;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "body"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMsgType()I
    .registers 1

    .line 59
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/gc/GCMsgBase;->getHeader()Lin/dragonbra/javasteam/base/gc/IGCSerializableHeader;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;->getMsg()I

    move-result p0

    return p0
.end method

.method public final getProtoHeader()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;
    .registers 2

    .line 44
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/gc/GCMsgBase;->getHeader()Lin/dragonbra/javasteam/base/gc/IGCSerializableHeader;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;->getProto()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    move-result-object p0

    const-string v0, "getProto(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getSourceJobID()Lin/dragonbra/javasteam/types/JobID;
    .registers 4

    .line 74
    new-instance v0, Lin/dragonbra/javasteam/types/JobID;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf;->getProtoHeader()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;->getJobidSource()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/JobID;-><init>(J)V

    return-object v0
.end method

.method public getTargetJobID()Lin/dragonbra/javasteam/types/JobID;
    .registers 4

    .line 65
    new-instance v0, Lin/dragonbra/javasteam/types/JobID;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf;->getProtoHeader()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

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
    .registers 4

    .line 134
    :try_start_0
    new-instance v0, Lin/dragonbra/javasteam/util/stream/MemoryStream;

    invoke-direct {v0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_3f

    .line 135
    :try_start_5
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->asOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 136
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/gc/GCMsgBase;->getHeader()Lin/dragonbra/javasteam/base/gc/IGCSerializableHeader;

    move-result-object v2

    check-cast v2, Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;

    invoke-virtual {v2, v1}, Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;->serialize(Ljava/io/OutputStream;)V

    .line 137
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/protobuf/Message$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Message;

    invoke-interface {v2, v1}, Lcom/google/protobuf/MessageLite;->writeTo(Ljava/io/OutputStream;)V

    .line 138
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/AbstractMsgBase;->getPayload()Lin/dragonbra/javasteam/util/stream/MemoryStream;

    move-result-object p0

    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 139
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->toByteArray()[B

    move-result-object p0

    const-string v1, "toByteArray(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_38

    const/4 v1, 0x0

    .line 134
    :try_start_34
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_3f

    return-object p0

    :catchall_38
    move-exception p0

    :try_start_39
    throw p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception v1

    :try_start_3b
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3f} :catch_3f

    :catch_3f
    const/4 p0, 0x0

    .line 144
    new-array p0, p0, [B

    return-object p0
.end method

.method public setSourceJobID(Lin/dragonbra/javasteam/types/JobID;)V
    .registers 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf;->getProtoHeader()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/GlobalID;->getValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;->setJobidSource(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    return-void
.end method

.method public setTargetJobID(Lin/dragonbra/javasteam/types/JobID;)V
    .registers 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf;->getProtoHeader()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/GlobalID;->getValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;->setJobidTarget(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    return-void
.end method

###### Class in.dragonbra.javasteam.base.gc.ClientGCMsgProtobuf.Companion (in.dragonbra.javasteam.base.gc.ClientGCMsgProtobuf$Companion)
.class public final Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf$Companion;
.super Ljava/lang/Object;
.source "ClientGCMsgProtobuf.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/base/gc/ClientGCMsgProtobuf$Companion;-><init>()V

    return-void
.end method
