###### Class io.ktor.utils.io.pool.ByteArrayPoolKt (io.ktor.utils.io.pool.ByteArrayPoolKt)
.class public final Lio/ktor/utils/io/pool/ByteArrayPoolKt;
.super Ljava/lang/Object;
.source "ByteArrayPool.kt"


# static fields
.field public static final ByteArrayPool:Lio/ktor/utils/io/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    new-instance v0, Lio/ktor/utils/io/pool/ByteArrayPoolKt$ByteArrayPool$1;

    invoke-direct {v0}, Lio/ktor/utils/io/pool/ByteArrayPoolKt$ByteArrayPool$1;-><init>()V

    sput-object v0, Lio/ktor/utils/io/pool/ByteArrayPoolKt;->ByteArrayPool:Lio/ktor/utils/io/pool/ObjectPool;

    return-void
.end method

.method public static final getByteArrayPool()Lio/ktor/utils/io/pool/ObjectPool;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "[B>;"
        }
    .end annotation

    .line 10
    sget-object v0, Lio/ktor/utils/io/pool/ByteArrayPoolKt;->ByteArrayPool:Lio/ktor/utils/io/pool/ObjectPool;

    return-object v0
.end method

###### Class io.ktor.utils.io.pool.ByteArrayPoolKt$ByteArrayPool$1 (io.ktor.utils.io.pool.ByteArrayPoolKt$ByteArrayPool$1)
.class public final Lio/ktor/utils/io/pool/ByteArrayPoolKt$ByteArrayPool$1;
.super Lio/ktor/utils/io/pool/DefaultPool;
.source "ByteArrayPool.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/pool/ByteArrayPoolKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/ktor/utils/io/pool/DefaultPool<",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x80

    .line 10
    invoke-direct {p0, v0}, Lio/ktor/utils/io/pool/DefaultPool;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic produceInstance()Ljava/lang/Object;
    .registers 1

    .line 10
    invoke-virtual {p0}, Lio/ktor/utils/io/pool/ByteArrayPoolKt$ByteArrayPool$1;->produceInstance()[B

    move-result-object p0

    return-object p0
.end method

.method public produceInstance()[B
    .registers 1

    const/16 p0, 0x1000

    .line 11
    new-array p0, p0, [B

    return-object p0
.end method
