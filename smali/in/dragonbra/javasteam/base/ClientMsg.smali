###### Class in.dragonbra.javasteam.base.ClientMsg (in.dragonbra.javasteam.base.ClientMsg)
.class public final Lin/dragonbra/javasteam/base/ClientMsg;
.super Lin/dragonbra/javasteam/base/MsgBase;
.source "ClientMsg.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/base/ClientMsg$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BodyType::",
        "Lin/dragonbra/javasteam/base/ISteamSerializableMessage;",
        ">",
        "Lin/dragonbra/javasteam/base/MsgBase<",
        "Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/base/ClientMsg$Companion;

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field private body:Lin/dragonbra/javasteam/base/ISteamSerializableMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TBodyType;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsg$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/base/ClientMsg$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/base/ClientMsg;->Companion:Lin/dragonbra/javasteam/base/ClientMsg$Companion;

    .line 27
    const-class v0, Lin/dragonbra/javasteam/base/ClientMsg;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/base/ClientMsg;->logger:Lin/dragonbra/javasteam/util/log/Logger;

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

    invoke-direct {p0, p1, v2, v0, v1}, Lin/dragonbra/javasteam/base/ClientMsg;-><init>(Ljava/lang/Class;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    .line 24
    const-class v0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;

    .line 20
    invoke-direct {p0, v0, p2}, Lin/dragonbra/javasteam/base/MsgBase;-><init>(Ljava/lang/Class;I)V

    const/4 p2, 0x0

    .line 116
    :try_start_b
    new-array v0, p2, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "newInstance(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    iput-object p1, p0, Lin/dragonbra/javasteam/base/ClientMsg;->body:Lin/dragonbra/javasteam/base/ISteamSerializableMessage;
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_20} :catch_27
    .catch Ljava/lang/InstantiationException; {:try_start_b .. :try_end_20} :catch_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_20} :catch_23
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_20} :catch_21

    goto :goto_40

    :catch_21
    move-exception p1

    goto :goto_29

    :catch_23
    move-exception p1

    goto :goto_2f

    :catch_25
    move-exception p1

    goto :goto_35

    :catch_27
    move-exception p1

    goto :goto_3b

    .line 124
    :goto_29
    sget-object p2, Lin/dragonbra/javasteam/base/ClientMsg;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p2, p1}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/Throwable;)V

    goto :goto_40

    .line 122
    :goto_2f
    sget-object p2, Lin/dragonbra/javasteam/base/ClientMsg;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p2, p1}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/Throwable;)V

    goto :goto_40

    .line 120
    :goto_35
    sget-object p2, Lin/dragonbra/javasteam/base/ClientMsg;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p2, p1}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/Throwable;)V

    goto :goto_40

    .line 118
    :goto_3b
    sget-object p2, Lin/dragonbra/javasteam/base/ClientMsg;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p2, p1}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/Throwable;)V

    .line 127
    :goto_40
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/MsgBase;->getHeader()Lin/dragonbra/javasteam/base/ISteamSerializable;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object p0

    invoke-interface {p0}, Lin/dragonbra/javasteam/base/ISteamSerializableMessage;->getEMsg()Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object p0

    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->setEMsg(Lin/dragonbra/javasteam/enums/EMsg;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    const/16 p2, 0x40

    .line 21
    :cond_6
    invoke-direct {p0, p1, p2}, Lin/dragonbra/javasteam/base/ClientMsg;-><init>(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TBodyType;>;",
            "Lin/dragonbra/javasteam/base/IPacketMsg;",
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

    .line 106
    invoke-direct {p0, p1, v0, v1, v2}, Lin/dragonbra/javasteam/base/ClientMsg;-><init>(Ljava/lang/Class;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 107
    invoke-interface {p2}, Lin/dragonbra/javasteam/base/IPacketMsg;->isProto()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 108
    sget-object v0, Lin/dragonbra/javasteam/base/ClientMsg;->logger:Lin/dragonbra/javasteam/util/log/Logger;

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

    invoke-static {v0, p1, v2, v1, v2}, Lin/dragonbra/javasteam/util/log/Logger;->debug$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 111
    :cond_35
    invoke-interface {p2}, Lin/dragonbra/javasteam/base/IPacketMsg;->getData()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/base/ClientMsg;->deserialize([B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/MsgBase;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TBodyType;>;",
            "Lin/dragonbra/javasteam/base/MsgBase<",
            "Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;",
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

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/ClientMsg;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/MsgBase;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/MsgBase;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TBodyType;>;",
            "Lin/dragonbra/javasteam/base/MsgBase<",
            "Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "bodyType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0, p1, p3}, Lin/dragonbra/javasteam/base/ClientMsg;-><init>(Ljava/lang/Class;I)V

    .line 97
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/MsgBase;->getHeader()Lin/dragonbra/javasteam/base/ISteamSerializable;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;

    invoke-virtual {p2}, Lin/dragonbra/javasteam/base/MsgBase;->getHeader()Lin/dragonbra/javasteam/base/ISteamSerializable;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->getSourceJobID()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->setTargetJobID(J)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/MsgBase;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_6

    const/16 p3, 0x40

    .line 94
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lin/dragonbra/javasteam/base/ClientMsg;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/MsgBase;I)V

    return-void
.end method


# virtual methods
.method public deserialize([B)V
    .registers 6

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    new-instance v0, Lin/dragonbra/javasteam/util/stream/MemoryStream;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>([B)V

    .line 157
    :try_start_a
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/MsgBase;->getHeader()Lin/dragonbra/javasteam/base/ISteamSerializable;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;

    invoke-virtual {v1, v0}, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->deserialize(Ljava/io/InputStream;)V

    .line 158
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

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

    .line 160
    :try_start_1e
    sget-object v2, Lin/dragonbra/javasteam/base/ClientMsg;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {v2, v1}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/Throwable;)V

    .line 163
    :goto_23
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/AbstractMsgBase;->getPayload()Lin/dragonbra/javasteam/util/stream/MemoryStream;

    move-result-object v1

    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->getPosition()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->available()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->write([BII)V

    .line 164
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/AbstractMsgBase;->getPayload()Lin/dragonbra/javasteam/util/stream/MemoryStream;

    move-result-object p0

    sget-object p1, Lin/dragonbra/javasteam/util/stream/SeekOrigin;->BEGIN:Lin/dragonbra/javasteam/util/stream/SeekOrigin;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, p1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->seek(JLin/dragonbra/javasteam/util/stream/SeekOrigin;)J
    :try_end_3e
    .catchall {:try_start_1e .. :try_end_3e} :catchall_1b

    const/4 p0, 0x0

    .line 155
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

.method public final getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBodyType;"
        }
    .end annotation

    .line 33
    iget-object p0, p0, Lin/dragonbra/javasteam/base/ClientMsg;->body:Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "body"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMsgType()Lin/dragonbra/javasteam/enums/EMsg;
    .registers 2

    .line 48
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/MsgBase;->getHeader()Lin/dragonbra/javasteam/base/ISteamSerializable;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->getMsg()Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object p0

    const-string v0, "getMsg(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getSessionID()I
    .registers 1

    .line 54
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/MsgBase;->getHeader()Lin/dragonbra/javasteam/base/ISteamSerializable;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->getSessionID()I

    move-result p0

    return p0
.end method

.method public getSourceJobID()Lin/dragonbra/javasteam/types/JobID;
    .registers 4

    .line 81
    new-instance v0, Lin/dragonbra/javasteam/types/JobID;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/MsgBase;->getHeader()Lin/dragonbra/javasteam/base/ISteamSerializable;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->getSourceJobID()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/JobID;-><init>(J)V

    return-object v0
.end method

.method public getSteamID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 63
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/MsgBase;->getHeader()Lin/dragonbra/javasteam/base/ISteamSerializable;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->getSteamID()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object p0

    return-object p0
.end method

.method public getTargetJobID()Lin/dragonbra/javasteam/types/JobID;
    .registers 4

    .line 72
    new-instance v0, Lin/dragonbra/javasteam/types/JobID;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/MsgBase;->getHeader()Lin/dragonbra/javasteam/base/ISteamSerializable;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->getTargetJobID()J

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

    .line 136
    :try_start_0
    new-instance v0, Lin/dragonbra/javasteam/util/stream/MemoryStream;

    invoke-direct {v0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_35

    .line 137
    :try_start_5
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->asOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 138
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/MsgBase;->getHeader()Lin/dragonbra/javasteam/base/ISteamSerializable;

    move-result-object v2

    check-cast v2, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;

    invoke-virtual {v2, v1}, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->serialize(Ljava/io/OutputStream;)V

    .line 139
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object v2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v1}, Lin/dragonbra/javasteam/base/ISteamSerializable;->serialize(Ljava/io/OutputStream;)V

    .line 140
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/AbstractMsgBase;->getPayload()Lin/dragonbra/javasteam/util/stream/MemoryStream;

    move-result-object p0

    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 141
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->toByteArray()[B

    move-result-object p0

    const-string v1, "toByteArray(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_37

    const/4 v1, 0x0

    .line 136
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

    .line 144
    :goto_3e
    sget-object v0, Lin/dragonbra/javasteam/base/ClientMsg;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    .line 147
    new-array p0, p0, [B

    return-object p0
.end method

.method public setSessionID(I)V
    .registers 2

    .line 56
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/MsgBase;->getHeader()Lin/dragonbra/javasteam/base/ISteamSerializable;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->setSessionID(I)V

    return-void
.end method

.method public setSourceJobID(Lin/dragonbra/javasteam/types/JobID;)V
    .registers 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/MsgBase;->getHeader()Lin/dragonbra/javasteam/base/ISteamSerializable;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/GlobalID;->getValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->setSourceJobID(J)V

    return-void
.end method

.method public setSteamID(Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 2

    .line 65
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/MsgBase;->getHeader()Lin/dragonbra/javasteam/base/ISteamSerializable;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;

    if-eqz p1, :cond_c

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->setSteamID(Lin/dragonbra/javasteam/types/SteamID;)V

    return-void

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value was null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTargetJobID(Lin/dragonbra/javasteam/types/JobID;)V
    .registers 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lin/dragonbra/javasteam/base/MsgBase;->getHeader()Lin/dragonbra/javasteam/base/ISteamSerializable;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/GlobalID;->getValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->setTargetJobID(J)V

    return-void
.end method

###### Class in.dragonbra.javasteam.base.ClientMsg.Companion (in.dragonbra.javasteam.base.ClientMsg$Companion)
.class public final Lin/dragonbra/javasteam/base/ClientMsg$Companion;
.super Ljava/lang/Object;
.source "ClientMsg.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/base/ClientMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/base/ClientMsg$Companion;-><init>()V

    return-void
.end method
