###### Class io.ktor.network.tls.Digest (io.ktor.network.tls.Digest)
.class public final Lio/ktor/network/tls/Digest;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final state:Lkotlinx/io/Sink;


# direct methods
.method public static synthetic $r8$lambda$89iYzKOe4hgMxnsgy0kJ5Jpz5wU(Ljava/lang/String;Lkotlinx/io/Source;)[B
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/ktor/network/tls/Digest;->doHash_impl$lambda$0$0(Ljava/lang/String;Lkotlinx/io/Source;)[B

    move-result-object p0

    return-object p0
.end method

.method public synthetic constructor <init>(Lkotlinx/io/Sink;)V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/network/tls/Digest;->state:Lkotlinx/io/Sink;

    return-void
.end method

.method public static final synthetic box-impl(Lkotlinx/io/Sink;)Lio/ktor/network/tls/Digest;
    .registers 2

    .line 0
    new-instance v0, Lio/ktor/network/tls/Digest;

    invoke-direct {v0, p0}, Lio/ktor/network/tls/Digest;-><init>(Lkotlinx/io/Sink;)V

    return-object v0
.end method

.method public static close-impl(Lkotlinx/io/Sink;)V
    .registers 1

    .line 45
    invoke-interface {p0}, Lkotlinx/io/RawSink;->close()V

    return-void
.end method

.method public static constructor-impl(Lkotlinx/io/Sink;)Lkotlinx/io/Sink;
    .registers 2

    .line 0
    const-string v0, "state"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final doHash-impl(Lkotlinx/io/Sink;Ljava/lang/String;)[B
    .registers 3

    const-string v0, "hashName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    monitor-enter p0

    .line 24
    :try_start_6
    new-instance v0, Lio/ktor/network/tls/Digest$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lio/ktor/network/tls/Digest$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lio/ktor/utils/io/core/ByteReadPacketKt;->preview(Lkotlinx/io/Sink;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_18

    .line 23
    monitor-exit p0

    const-string p0, "synchronized(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static final doHash_impl$lambda$0$0(Ljava/lang/String;Lkotlinx/io/Source;)[B
    .registers 5

    const-string v0, "handshakes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    invoke-static {}, Lio/ktor/network/util/PoolsKt;->getDefaultByteBufferPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 29
    :goto_16
    :try_start_16
    invoke-interface {p1}, Lkotlinx/io/Source;->exhausted()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 30
    invoke-static {p1, v0}, Lio/ktor/utils/io/core/ByteReadPacketExtensions_jvmKt;->readAvailable(Lkotlinx/io/Source;Ljava/nio/ByteBuffer;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2f

    .line 32
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 33
    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 34
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_16

    :catchall_2d
    move-exception p0

    goto :goto_3b

    .line 37
    :cond_2f
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_33
    .catchall {:try_start_16 .. :try_end_33} :catchall_2d

    .line 39
    invoke-static {}, Lio/ktor/network/util/PoolsKt;->getDefaultByteBufferPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object p1

    invoke-interface {p1, v0}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    return-object p0

    :goto_3b
    invoke-static {}, Lio/ktor/network/util/PoolsKt;->getDefaultByteBufferPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object p1

    invoke-interface {p1, v0}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    throw p0
.end method

.method public static equals-impl(Lkotlinx/io/Sink;Ljava/lang/Object;)Z
    .registers 4

    .line 0
    instance-of v0, p1, Lio/ktor/network/tls/Digest;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lio/ktor/network/tls/Digest;

    invoke-virtual {p1}, Lio/ktor/network/tls/Digest;->unbox-impl()Lkotlinx/io/Sink;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    return v1

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method public static hashCode-impl(Lkotlinx/io/Sink;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public static toString-impl(Lkotlinx/io/Sink;)Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Digest(state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final update-impl(Lkotlinx/io/Sink;Lkotlinx/io/Source;)V
    .registers 3

    const-string v0, "packet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    monitor-enter p0

    .line 19
    :try_start_6
    invoke-interface {p1}, Lkotlinx/io/Source;->exhausted()Z

    move-result v0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_19

    if-eqz v0, :cond_e

    .line 18
    monitor-exit p0

    return-void

    .line 20
    :cond_e
    :try_start_e
    invoke-static {p1}, Lio/ktor/utils/io/core/ByteReadPacketKt;->copy(Lkotlinx/io/Source;)Lkotlinx/io/Source;

    move-result-object p1

    invoke-static {p0, p1}, Lio/ktor/utils/io/core/BytePacketBuilderKt;->writePacket(Lkotlinx/io/Sink;Lkotlinx/io/Source;)V

    .line 21
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_19

    .line 18
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 44
    iget-object p0, p0, Lio/ktor/network/tls/Digest;->state:Lkotlinx/io/Sink;

    invoke-static {p0}, Lio/ktor/network/tls/Digest;->close-impl(Lkotlinx/io/Sink;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lio/ktor/network/tls/Digest;->state:Lkotlinx/io/Sink;

    invoke-static {p0, p1}, Lio/ktor/network/tls/Digest;->equals-impl(Lkotlinx/io/Sink;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .registers 1

    .line 0
    iget-object p0, p0, Lio/ktor/network/tls/Digest;->state:Lkotlinx/io/Sink;

    invoke-static {p0}, Lio/ktor/network/tls/Digest;->hashCode-impl(Lkotlinx/io/Sink;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lio/ktor/network/tls/Digest;->state:Lkotlinx/io/Sink;

    invoke-static {p0}, Lio/ktor/network/tls/Digest;->toString-impl(Lkotlinx/io/Sink;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()Lkotlinx/io/Sink;
    .registers 1

    .line 0
    iget-object p0, p0, Lio/ktor/network/tls/Digest;->state:Lkotlinx/io/Sink;

    return-object p0
.end method

###### Class io.ktor.network.tls.Digest$$ExternalSyntheticLambda0 (io.ktor.network.tls.Digest$$ExternalSyntheticLambda0)
.class public final synthetic Lio/ktor/network/tls/Digest$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/network/tls/Digest$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lio/ktor/network/tls/Digest$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    check-cast p1, Lkotlinx/io/Source;

    invoke-static {p0, p1}, Lio/ktor/network/tls/Digest;->$r8$lambda$89iYzKOe4hgMxnsgy0kJ5Jpz5wU(Ljava/lang/String;Lkotlinx/io/Source;)[B

    move-result-object p0

    return-object p0
.end method
