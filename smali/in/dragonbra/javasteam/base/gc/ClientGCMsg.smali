###### Class in.dragonbra.javasteam.base.gc.ClientGCMsg (in.dragonbra.javasteam.base.gc.ClientGCMsg)
.class public final Lin/dragonbra/javasteam/base/gc/ClientGCMsg;
.super Lin/dragonbra/javasteam/base/gc/GCMsgBase;
.source "ClientGCMsg.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/base/gc/ClientGCMsg$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BodyType::",
        "Lin/dragonbra/javasteam/base/gc/IGCSerializableMessage;",
        ">",
        "Lin/dragonbra/javasteam/base/gc/GCMsgBase<",
        "Lin/dragonbra/javasteam/generated/MsgGCHdr;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/base/gc/ClientGCMsg$Companion;

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field public body:Lin/dragonbra/javasteam/base/gc/IGCSerializableMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TBodyType;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lin/dragonbra/javasteam/base/gc/ClientGCMsg$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/base/gc/ClientGCMsg$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/base/gc/ClientGCMsg;->Companion:Lin/dragonbra/javasteam/base/gc/ClientGCMsg$Companion;

    .line 26
    const-class v0, Lin/dragonbra/javasteam/base/gc/ClientGCMsg;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/base/gc/ClientGCMsg;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TBodyType;>;)V"
        }
    .end annotation

    .line 0
    const-string v0, "bodyType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lin/dragonbra/javasteam/base/gc/ClientGCMsg;-><init>(Ljava/lang/Class;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TBodyType;>;I)V"
        }
    .end annotation

    const-string v0, "bodyType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    const-class v0, Lin/dragonbra/javasteam/generated/MsgGCHdr;

    .line 19
    invoke-direct {p0, v0, p2}, Lin/dragonbra/javasteam/base/gc/GCMsgBase;-><init>(Ljava/lang/Class;I)V

    const/4 p2, 0x0

    .line 96
    :try_start_b
    new-array v0, p2, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "newInstance(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lin/dragonbra/javasteam/base/gc/IGCSerializableMessage;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/base/gc/ClientGCMsg;->setBody(Lin/dragonbra/javasteam/base/gc/IGCSerializableMessage;)V
    :try_end_21
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_21} :catch_28
    .catch Ljava/lang/InstantiationException; {:try_start_b .. :try_end_21} :catch_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_21} :catch_24
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_21} :catch_22

    goto :goto_41

    :catch_22
    move-exception p0

    goto :goto_2a

    :catch_24
    move-exception p0

    goto :goto_30

    :catch_26
    move-exception p0

    goto :goto_36

    :catch_28
    move-exception p0

    goto :goto_3c

    .line 104
    :goto_2a
    sget-object p1, Lin/dragonbra/javasteam/base/gc/ClientGCMsg;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/Throwable;)V

    goto :goto_41

    .line 102
    :goto_30
    sget-object p1, Lin/dragonbra/javasteam/base/gc/ClientGCMsg;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/Throwable;)V

    goto :goto_41

    .line 100
    :goto_36
    sget-object p1, Lin/dragonbra/javasteam/base/gc/ClientGCMsg;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/Throwable;)V

    goto :goto_41

    .line 98
    :goto_3c
    sget-object p1, Lin/dragonbra/javasteam/base/gc/ClientGCMsg;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/Throwable;)V

    :goto_41
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    const/16 p2, 0x40

    .line 20
    :cond_6
    invoke-direct {p0, p1, p2}, Lin/dragonbra/javasteam/base/gc/ClientGCMsg;-><init>(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/gc/GCMsgBase;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TBodyType;>;",
            "Lin/dragonbra/javasteam/base/gc/GCMsgBase<",
            "Lin/dragonbra/javasteam/generated/MsgGCHdr;",
            ">;)V"
        }
    .end annotation

    .line 0
    const-string v0, "bodyType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/gc/ClientGCMsg;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/gc/GCMsgBase;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/gc/GCMsgBase;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TBodyType;>;",
            "Lin/dragonbra/javasteam/base/gc/GCMsgBase<",
            "Lin/dragonbra/javasteam/generated/MsgGCHdr;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "bodyType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0, p1, p3}, Lin/dragonbra/javasteam/base/gc/ClientGCMsg;-><init>(Ljava/lang/Class;I)V

    .line 77
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/gc/GCMsgBase;->getHeader()Lin/dragonbra/javasteam/base/gc/IGCSerializableHeader;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/generated/MsgGCHdr;

    invoke-virtual {p2}, Lin/dragonbra/javasteam/base/gc/GCMsgBase;->getHeader()Lin/dragonbra/javasteam/base/gc/IGCSerializableHeader;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/generated/MsgGCHdr;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgGCHdr;->getSourceJobID()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/generated/MsgGCHdr;->setTargetJobID(J)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/gc/GCMsgBase;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_6

    const/16 p3, 0x40

    .line 74
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lin/dragonbra/javasteam/base/gc/ClientGCMsg;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/gc/GCMsgBase;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/gc/IPacketGCMsg;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TBodyType;>;",
            "Lin/dragonbra/javasteam/base/gc/IPacketGCMsg;",
            ")V"
        }
    .end annotation

    const-string v0, "bodyType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 86
    invoke-direct {p0, p1, v0, v1, v2}, Lin/dragonbra/javasteam/base/gc/ClientGCMsg;-><init>(Ljava/lang/Class;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 87
    invoke-interface {p2}, Lin/dragonbra/javasteam/base/gc/IPacketGCMsg;->isProto()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 88
    sget-object v0, Lin/dragonbra/javasteam/base/gc/ClientGCMsg;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClientMsg<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "> used for proto message!"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2, v1, v2}, Lin/dragonbra/javasteam/util/log/Logger;->error$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 91
    :cond_35
    invoke-interface {p2}, Lin/dragonbra/javasteam/base/gc/IPacketGCMsg;->getData()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/base/gc/ClientGCMsg;->deserialize([B)V

    return-void
.end method


# virtual methods
.method public deserialize([B)V
    .registers 6

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    new-instance v0, Lin/dragonbra/javasteam/util/stream/MemoryStream;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>([B)V

    .line 135
    :try_start_a
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/gc/GCMsgBase;->getHeader()Lin/dragonbra/javasteam/base/gc/IGCSerializableHeader;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/generated/MsgGCHdr;

    invoke-virtual {v1, v0}, Lin/dragonbra/javasteam/generated/MsgGCHdr;->deserialize(Ljava/io/InputStream;)V

    .line 136
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/gc/ClientGCMsg;->getBody()Lin/dragonbra/javasteam/base/gc/IGCSerializableMessage;

    move-result-object v1

    invoke-interface {v1, v0}, Lin/dragonbra/javasteam/base/ISteamSerializable;->deserialize(Ljava/io/InputStream;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1a} :catch_1d
    .catchall {:try_start_a .. :try_end_1a} :catchall_1b

    goto :goto_23

    :catchall_1b
    move-exception p0

    goto :goto_43

    :catch_1d
    move-exception v1

    .line 138
    :try_start_1e
    sget-object v2, Lin/dragonbra/javasteam/base/gc/ClientGCMsg;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {v2, v1}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/Throwable;)V

    .line 141
    :goto_23
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/AbstractMsgBase;->getPayload()Lin/dragonbra/javasteam/util/stream/MemoryStream;

    move-result-object v1

    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->getPosition()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->available()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->write([BII)V

    .line 142
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/AbstractMsgBase;->getPayload()Lin/dragonbra/javasteam/util/stream/MemoryStream;

    move-result-object p0

    sget-object p1, Lin/dragonbra/javasteam/util/stream/SeekOrigin;->BEGIN:Lin/dragonbra/javasteam/util/stream/SeekOrigin;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, p1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->seek(JLin/dragonbra/javasteam/util/stream/SeekOrigin;)J
    :try_end_3e
    .catchall {:try_start_1e .. :try_end_3e} :catchall_1b

    const/4 p0, 0x0

    .line 133
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :goto_43
    :try_start_43
    throw p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_44

    :catchall_44
    move-exception p1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final getBody()Lin/dragonbra/javasteam/base/gc/IGCSerializableMessage;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBodyType;"
        }
    .end annotation

    .line 32
    iget-object p0, p0, Lin/dragonbra/javasteam/base/gc/ClientGCMsg;->body:Lin/dragonbra/javasteam/base/gc/IGCSerializableMessage;

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

    .line 46
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/gc/ClientGCMsg;->getBody()Lin/dragonbra/javasteam/base/gc/IGCSerializableMessage;

    move-result-object p0

    invoke-interface {p0}, Lin/dragonbra/javasteam/base/gc/IGCSerializableMessage;->getEMsg()I

    move-result p0

    return p0
.end method

.method public getSourceJobID()Lin/dragonbra/javasteam/types/JobID;
    .registers 4

    .line 61
    new-instance v0, Lin/dragonbra/javasteam/types/JobID;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/gc/GCMsgBase;->getHeader()Lin/dragonbra/javasteam/base/gc/IGCSerializableHeader;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/generated/MsgGCHdr;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/generated/MsgGCHdr;->getSourceJobID()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/JobID;-><init>(J)V

    return-object v0
.end method

.method public getTargetJobID()Lin/dragonbra/javasteam/types/JobID;
    .registers 4

    .line 52
    new-instance v0, Lin/dragonbra/javasteam/types/JobID;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/gc/GCMsgBase;->getHeader()Lin/dragonbra/javasteam/base/gc/IGCSerializableHeader;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/generated/MsgGCHdr;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/generated/MsgGCHdr;->getTargetJobID()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/JobID;-><init>(J)V

    return-object v0
.end method

.method public isProto()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public serialize()[B
    .registers 4

    .line 114
    :try_start_0
    new-instance v0, Lin/dragonbra/javasteam/util/stream/MemoryStream;

    invoke-direct {v0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_35

    .line 115
    :try_start_5
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->asOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 116
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/gc/GCMsgBase;->getHeader()Lin/dragonbra/javasteam/base/gc/IGCSerializableHeader;

    move-result-object v2

    check-cast v2, Lin/dragonbra/javasteam/generated/MsgGCHdr;

    invoke-virtual {v2, v1}, Lin/dragonbra/javasteam/generated/MsgGCHdr;->serialize(Ljava/io/OutputStream;)V

    .line 117
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/gc/ClientGCMsg;->getBody()Lin/dragonbra/javasteam/base/gc/IGCSerializableMessage;

    move-result-object v2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v1}, Lin/dragonbra/javasteam/base/ISteamSerializable;->serialize(Ljava/io/OutputStream;)V

    .line 118
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/AbstractMsgBase;->getPayload()Lin/dragonbra/javasteam/util/stream/MemoryStream;

    move-result-object p0

    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 119
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->toByteArray()[B

    move-result-object p0

    const-string v1, "toByteArray(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_37

    const/4 v1, 0x0

    .line 114
    :try_start_31
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    return-object p0

    :catch_35
    move-exception p0

    goto :goto_3e

    :catchall_37
    move-exception p0

    :try_start_38
    throw p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception v1

    :try_start_3a
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3e} :catch_35

    .line 122
    :goto_3e
    sget-object v0, Lin/dragonbra/javasteam/base/gc/ClientGCMsg;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    .line 125
    new-array p0, p0, [B

    return-object p0
.end method

.method public final setBody(Lin/dragonbra/javasteam/base/gc/IGCSerializableMessage;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBodyType;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lin/dragonbra/javasteam/base/gc/ClientGCMsg;->body:Lin/dragonbra/javasteam/base/gc/IGCSerializableMessage;

    return-void
.end method

.method public setSourceJobID(Lin/dragonbra/javasteam/types/JobID;)V
    .registers 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/gc/GCMsgBase;->getHeader()Lin/dragonbra/javasteam/base/gc/IGCSerializableHeader;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/generated/MsgGCHdr;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/GlobalID;->getValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lin/dragonbra/javasteam/generated/MsgGCHdr;->setSourceJobID(J)V

    return-void
.end method

.method public setTargetJobID(Lin/dragonbra/javasteam/types/JobID;)V
    .registers 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/gc/GCMsgBase;->getHeader()Lin/dragonbra/javasteam/base/gc/IGCSerializableHeader;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/generated/MsgGCHdr;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/GlobalID;->getValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lin/dragonbra/javasteam/generated/MsgGCHdr;->setTargetJobID(J)V

    return-void
.end method

###### Class in.dragonbra.javasteam.base.gc.ClientGCMsg.Companion (in.dragonbra.javasteam.base.gc.ClientGCMsg$Companion)
.class public final Lin/dragonbra/javasteam/base/gc/ClientGCMsg$Companion;
.super Ljava/lang/Object;
.source "ClientGCMsg.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/base/gc/ClientGCMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/base/gc/ClientGCMsg$Companion;-><init>()V

    return-void
.end method
