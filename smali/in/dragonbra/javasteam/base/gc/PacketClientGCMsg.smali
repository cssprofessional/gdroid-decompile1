###### Class in.dragonbra.javasteam.base.gc.PacketClientGCMsg (in.dragonbra.javasteam.base.gc.PacketClientGCMsg)
.class public final Lin/dragonbra/javasteam/base/gc/PacketClientGCMsg;
.super Ljava/lang/Object;
.source "PacketClientGCMsg.kt"

# interfaces
.implements Lin/dragonbra/javasteam/base/gc/IPacketGCMsg;


# instance fields
.field private final eMsg:I

.field private final gcHdr:Lin/dragonbra/javasteam/generated/MsgGCHdr;

.field private final payload:[B


# direct methods
.method public constructor <init>(I[B)V
    .registers 4

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lin/dragonbra/javasteam/base/gc/PacketClientGCMsg;->eMsg:I

    .line 16
    new-instance p1, Lin/dragonbra/javasteam/generated/MsgGCHdr;

    invoke-direct {p1}, Lin/dragonbra/javasteam/generated/MsgGCHdr;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/base/gc/PacketClientGCMsg;->gcHdr:Lin/dragonbra/javasteam/generated/MsgGCHdr;

    .line 18
    iput-object p2, p0, Lin/dragonbra/javasteam/base/gc/PacketClientGCMsg;->payload:[B

    .line 54
    :try_start_13
    new-instance p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;

    invoke-direct {p0, p2}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>([B)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_29

    .line 55
    :try_start_18
    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/generated/MsgGCHdr;->deserialize(Ljava/io/InputStream;)V

    .line 56
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_22

    const/4 p1, 0x0

    .line 54
    :try_start_1e
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_29

    goto :goto_29

    :catchall_22
    move-exception p1

    :try_start_23
    throw p1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p2

    :try_start_25
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_29} :catch_29

    :catch_29
    :goto_29
    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 1

    .line 49
    iget-object p0, p0, Lin/dragonbra/javasteam/base/gc/PacketClientGCMsg;->payload:[B

    return-object p0
.end method

.method public getMsgType()I
    .registers 1

    .line 31
    iget p0, p0, Lin/dragonbra/javasteam/base/gc/PacketClientGCMsg;->eMsg:I

    return p0
.end method

.method public getSourceJobID()Lin/dragonbra/javasteam/types/JobID;
    .registers 4

    .line 43
    new-instance v0, Lin/dragonbra/javasteam/types/JobID;

    iget-object p0, p0, Lin/dragonbra/javasteam/base/gc/PacketClientGCMsg;->gcHdr:Lin/dragonbra/javasteam/generated/MsgGCHdr;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/generated/MsgGCHdr;->getSourceJobID()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/JobID;-><init>(J)V

    return-object v0
.end method

.method public getTargetJobID()Lin/dragonbra/javasteam/types/JobID;
    .registers 4

    .line 37
    new-instance v0, Lin/dragonbra/javasteam/types/JobID;

    iget-object p0, p0, Lin/dragonbra/javasteam/base/gc/PacketClientGCMsg;->gcHdr:Lin/dragonbra/javasteam/generated/MsgGCHdr;

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
