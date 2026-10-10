###### Class io.ktor.util.cio.ByteBufferPoolKt (io.ktor.util.cio.ByteBufferPoolKt)
.class public final Lio/ktor/util/cio/ByteBufferPoolKt;
.super Ljava/lang/Object;
.source "ByteBufferPool.kt"


# static fields
.field public static final KtorDefaultPool:Lio/ktor/utils/io/pool/ObjectPool;
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

    .line 18
    new-instance v0, Lio/ktor/utils/io/pool/ByteBufferPool;

    const/16 v1, 0x800

    const/16 v2, 0x1002

    invoke-direct {v0, v1, v2}, Lio/ktor/utils/io/pool/ByteBufferPool;-><init>(II)V

    sput-object v0, Lio/ktor/util/cio/ByteBufferPoolKt;->KtorDefaultPool:Lio/ktor/utils/io/pool/ObjectPool;

    return-void
.end method

.method public static final getKtorDefaultPool()Lio/ktor/utils/io/pool/ObjectPool;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 18
    sget-object v0, Lio/ktor/util/cio/ByteBufferPoolKt;->KtorDefaultPool:Lio/ktor/utils/io/pool/ObjectPool;

    return-object v0
.end method
