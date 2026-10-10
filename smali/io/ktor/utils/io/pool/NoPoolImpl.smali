###### Class io.ktor.utils.io.pool.NoPoolImpl (io.ktor.utils.io.pool.NoPoolImpl)
.class public abstract Lio/ktor/utils/io/pool/NoPoolImpl;
.super Ljava/lang/Object;
.source "Pool.kt"

# interfaces
.implements Lio/ktor/utils/io/pool/ObjectPool;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/ktor/utils/io/pool/ObjectPool<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge close()V
    .registers 1

    .line 54
    invoke-super {p0}, Lio/ktor/utils/io/pool/ObjectPool;->close()V

    return-void
.end method

.method public dispose()V
    .registers 1

    .line 0
    return-void
.end method

.method public recycle(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 0
    const-string p0, "instance"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
