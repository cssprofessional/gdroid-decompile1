###### Class com.github.luben.zstd.ZstdDirectBufferDecompressingStream (com.github.luben.zstd.ZstdDirectBufferDecompressingStream)
.class public Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;
.super Ljava/lang/Object;
.source "ZstdDirectBufferDecompressingStream.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private finalize:Z

.field private inner:Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 12
    invoke-static {}, Lcom/github/luben/zstd/util/Native;->load()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;->finalize:Z

    .line 28
    new-instance v0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream$1;

    invoke-direct {v0, p0, p1}, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream$1;-><init>(Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;->inner:Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;

    return-void
.end method

.method public static recommendedTargetBufferSize()I
    .registers 1

    .line 52
    invoke-static {}, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->recommendedTargetBufferSize()I

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 77
    :try_start_1
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;->inner:Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;

    invoke-virtual {v0}, Lcom/github/luben/zstd/BaseZstdBufferDecompressingStreamNoFinalizer;->close()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 78
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 82
    iget-boolean v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;->finalize:Z

    if-eqz v0, :cond_7

    .line 83
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;->close()V

    :cond_7
    return-void
.end method

.method public declared-synchronized hasRemaining()Z
    .registers 2

    monitor-enter p0

    .line 48
    :try_start_1
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;->inner:Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;

    invoke-virtual {v0}, Lcom/github/luben/zstd/BaseZstdBufferDecompressingStreamNoFinalizer;->hasRemaining()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized read(Ljava/nio/ByteBuffer;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 72
    :try_start_1
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;->inner:Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;

    invoke-virtual {v0, p1}, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->read(Ljava/nio/ByteBuffer;)I

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public refill(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 2

    .line 0
    return-object p1
.end method

.method public declared-synchronized setDict(Lcom/github/luben/zstd/ZstdDictDecompress;)Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 61
    :try_start_1
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;->inner:Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;

    invoke-virtual {v0, p1}, Lcom/github/luben/zstd/BaseZstdBufferDecompressingStreamNoFinalizer;->setDict(Lcom/github/luben/zstd/ZstdDictDecompress;)Lcom/github/luben/zstd/BaseZstdBufferDecompressingStreamNoFinalizer;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 62
    monitor-exit p0

    return-object p0

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized setDict([B)Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 56
    :try_start_1
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;->inner:Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;

    invoke-virtual {v0, p1}, Lcom/github/luben/zstd/BaseZstdBufferDecompressingStreamNoFinalizer;->setDict([B)Lcom/github/luben/zstd/BaseZstdBufferDecompressingStreamNoFinalizer;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 57
    monitor-exit p0

    return-object p0

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public setFinalize(Z)V
    .registers 2

    .line 44
    iput-boolean p1, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;->finalize:Z

    return-void
.end method

.method public setLongMax(I)Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;->inner:Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;

    invoke-virtual {v0, p1}, Lcom/github/luben/zstd/BaseZstdBufferDecompressingStreamNoFinalizer;->setLongMax(I)Lcom/github/luben/zstd/BaseZstdBufferDecompressingStreamNoFinalizer;

    return-object p0
.end method

###### Class com.github.luben.zstd.ZstdDirectBufferDecompressingStream.AnonymousClass1 (com.github.luben.zstd.ZstdDirectBufferDecompressingStream$1)
.class Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream$1;
.super Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;
.source "ZstdDirectBufferDecompressingStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;-><init>(Ljava/nio/ByteBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;


# direct methods
.method public constructor <init>(Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 28
    iput-object p1, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream$1;->this$0:Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;

    invoke-direct {p0, p2}, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public refill(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 2

    .line 31
    iget-object p0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream$1;->this$0:Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;

    invoke-virtual {p0, p1}, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;->refill(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method
