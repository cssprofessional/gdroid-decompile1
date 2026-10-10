###### Class io.ktor.network.util.PoolsKt (io.ktor.network.util.PoolsKt)
.class public final Lio/ktor/network/util/PoolsKt;
.super Ljava/lang/Object;
.source "Pools.kt"


# static fields
.field public static final DefaultByteBufferPool:Lio/ktor/utils/io/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DefaultDatagramByteBufferPool:Lio/ktor/utils/io/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 21
    new-instance v0, Lio/ktor/utils/io/pool/DirectByteBufferPool;

    const/16 v1, 0x1000

    invoke-direct {v0, v1, v1}, Lio/ktor/utils/io/pool/DirectByteBufferPool;-><init>(II)V

    sput-object v0, Lio/ktor/network/util/PoolsKt;->DefaultByteBufferPool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 29
    new-instance v0, Lio/ktor/utils/io/pool/DirectByteBufferPool;

    const/16 v1, 0x800

    const v2, 0xffff

    invoke-direct {v0, v1, v2}, Lio/ktor/utils/io/pool/DirectByteBufferPool;-><init>(II)V

    sput-object v0, Lio/ktor/network/util/PoolsKt;->DefaultDatagramByteBufferPool:Lio/ktor/utils/io/pool/ObjectPool;

    return-void
.end method

.method public static final getDefaultByteBufferPool()Lio/ktor/utils/io/pool/ObjectPool;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 20
    sget-object v0, Lio/ktor/network/util/PoolsKt;->DefaultByteBufferPool:Lio/ktor/utils/io/pool/ObjectPool;

    return-object v0
.end method
