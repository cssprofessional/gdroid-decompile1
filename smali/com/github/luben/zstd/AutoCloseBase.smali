###### Class com.github.luben.zstd.AutoCloseBase (com.github.luben.zstd.AutoCloseBase)
.class abstract Lcom/github/luben/zstd/AutoCloseBase;
.super Ljava/lang/Object;
.source "AutoCloseBase.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final SHARED_LOCK_CLOSED:I = -0x1

.field private static final SHARED_LOCK_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lcom/github/luben/zstd/AutoCloseBase;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile sharedLock:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 8
    const-class v0, Lcom/github/luben/zstd/AutoCloseBase;

    const-string v1, "sharedLock"

    .line 9
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/github/luben/zstd/AutoCloseBase;->SHARED_LOCK_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireSharedLock()V
    .registers 4

    .line 26
    :cond_0
    iget v0, p0, Lcom/github/luben/zstd/AutoCloseBase;->sharedLock:I

    if-ltz v0, :cond_1c

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_14

    .line 33
    sget-object v1, Lcom/github/luben/zstd/AutoCloseBase;->SHARED_LOCK_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 31
    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Shared lock overflow"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_1c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .registers 4

    .line 61
    monitor-enter p0

    .line 62
    :try_start_1
    iget v0, p0, Lcom/github/luben/zstd/AutoCloseBase;->sharedLock:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 63
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    goto :goto_20

    .line 65
    :cond_a
    sget-object v0, Lcom/github/luben/zstd/AutoCloseBase;->SHARED_LOCK_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 68
    invoke-virtual {p0}, Lcom/github/luben/zstd/AutoCloseBase;->doClose()V

    .line 69
    monitor-exit p0

    return-void

    .line 66
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to close while in use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :goto_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_8

    throw v0
.end method

.method public abstract doClose()V
.end method

.method public releaseSharedLock()V
    .registers 4

    .line 41
    :cond_0
    iget v0, p0, Lcom/github/luben/zstd/AutoCloseBase;->sharedLock:I

    if-ltz v0, :cond_19

    if-eqz v0, :cond_11

    .line 48
    sget-object v1, Lcom/github/luben/zstd/AutoCloseBase;->SHARED_LOCK_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 46
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Shared lock underflow"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_19
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public storeFence()V
    .registers 2

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/github/luben/zstd/AutoCloseBase;->sharedLock:I

    return-void
.end method
