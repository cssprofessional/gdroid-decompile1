###### Class in.dragonbra.javasteam.base.PacketClientMsg (in.dragonbra.javasteam.base.PacketClientMsg)
.class public final Lin/dragonbra/javasteam/base/PacketClientMsg;
.super Ljava/lang/Object;
.source "PacketClientMsg.kt"

# interfaces
.implements Lin/dragonbra/javasteam/base/IPacketMsg;


# instance fields
.field private final bodyOffset:J

.field private final eMsg:Lin/dragonbra/javasteam/enums/EMsg;

.field private final header:Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;

.field private final payload:[B


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/enums/EMsg;[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "eMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lin/dragonbra/javasteam/base/PacketClientMsg;->eMsg:Lin/dragonbra/javasteam/enums/EMsg;

    .line 22
    iput-object p2, p0, Lin/dragonbra/javasteam/base/PacketClientMsg;->payload:[B

    .line 27
    new-instance p1, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;

    invoke-direct {p1}, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/base/PacketClientMsg;->header:Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;

    .line 67
    new-instance v0, Lin/dragonbra/javasteam/util/stream/MemoryStream;

    invoke-direct {v0, p2}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>([B)V

    .line 68
    :try_start_1d
    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->deserialize(Ljava/io/InputStream;)V

    .line 69
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->getPosition()J

    move-result-wide p1

    iput-wide p1, p0, Lin/dragonbra/javasteam/base/PacketClientMsg;->bodyOffset:J

    .line 70
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_2d

    const/4 p0, 0x0

    .line 67
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_2d
    move-exception p0

    :try_start_2e
    throw p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception p1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final getBodyOffset$javasteam()J
    .registers 3

    .line 32
    iget-wide v0, p0, Lin/dragonbra/javasteam/base/PacketClientMsg;->bodyOffset:J

    return-wide v0
.end method

.method public getData()[B
    .registers 1

    .line 63
    iget-object p0, p0, Lin/dragonbra/javasteam/base/PacketClientMsg;->payload:[B

    return-object p0
.end method

.method public final getHeader$javasteam()Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;
    .registers 1

    .line 27
    iget-object p0, p0, Lin/dragonbra/javasteam/base/PacketClientMsg;->header:Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;

    return-object p0
.end method

.method public getMsgType()Lin/dragonbra/javasteam/enums/EMsg;
    .registers 1

    .line 45
    iget-object p0, p0, Lin/dragonbra/javasteam/base/PacketClientMsg;->eMsg:Lin/dragonbra/javasteam/enums/EMsg;

    return-object p0
.end method

.method public getSourceJobID()J
    .registers 3

    .line 57
    iget-object p0, p0, Lin/dragonbra/javasteam/base/PacketClientMsg;->header:Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->getSourceJobID()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTargetJobID()J
    .registers 3

    .line 51
    iget-object p0, p0, Lin/dragonbra/javasteam/base/PacketClientMsg;->header:Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/generated/ExtendedClientMsgHdr;->getTargetJobID()J

    move-result-wide v0

    return-wide v0
.end method

.method public isProto()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method
