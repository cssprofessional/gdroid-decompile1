###### Class io.ktor.utils.io.pool.ObjectPool (io.ktor.utils.io.pool.ObjectPool)
.class public interface abstract Lio/ktor/utils/io/pool/ObjectPool;
.super Ljava/lang/Object;
.source "Pool.kt"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation


# virtual methods
.method public abstract borrow()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public close()V
    .registers 1

    .line 45
    invoke-interface {p0}, Lio/ktor/utils/io/pool/ObjectPool;->dispose()V

    return-void
.end method

.method public abstract dispose()V
.end method

.method public abstract recycle(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
