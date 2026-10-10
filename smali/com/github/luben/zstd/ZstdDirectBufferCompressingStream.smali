###### Class com.github.luben.zstd.ZstdDirectBufferCompressingStream (com.github.luben.zstd.ZstdDirectBufferCompressingStream)
.class public Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;
.super Ljava/lang/Object;
.source "ZstdDirectBufferCompressingStream.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field private finalize:Z

.field inner:Lcom/github/luben/zstd/ZstdDirectBufferCompressingStreamNoFinalizer;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 13
    invoke-static {}, Lcom/github/luben/zstd/util/Native;->load()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream$1;-><init>(Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;Ljava/nio/ByteBuffer;I)V

    iput-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;->inner:Lcom/github/luben/zstd/ZstdDirectBufferCompressingStreamNoFinalizer;

    return-void
.end method

.method public static recommendedOutputBufferSize()I
    .registers 1

    .line 38
    invoke-static {}, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStreamNoFinalizer;->recommendedOutputBufferSize()I

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

    .line 72
    :try_start_1
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;->inner:Lcom/github/luben/zstd/ZstdDirectBufferCompressingStreamNoFinalizer;

    invoke-virtual {v0}, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStreamNoFinalizer;->close()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 73
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

.method public declared-synchronized compress(Ljava/nio/ByteBuffer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 62
    :try_start_1
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;->inner:Lcom/github/luben/zstd/ZstdDirectBufferCompressingStreamNoFinalizer;

    invoke-virtual {v0, p1}, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStreamNoFinalizer;->compress(Ljava/nio/ByteBuffer;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 63
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 77
    iget-boolean v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;->finalize:Z

    if-eqz v0, :cond_7

    .line 78
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;->close()V

    :cond_7
    return-void
.end method

.method public declared-synchronized flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 67
    :try_start_1
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;->inner:Lcom/github/luben/zstd/ZstdDirectBufferCompressingStreamNoFinalizer;

    invoke-virtual {v0}, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStreamNoFinalizer;->flush()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 68
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

.method public flushBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    return-object p1
.end method

.method public declared-synchronized setDict(Lcom/github/luben/zstd/ZstdDictCompress;)Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 46
    :try_start_1
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;->inner:Lcom/github/luben/zstd/ZstdDirectBufferCompressingStreamNoFinalizer;

    invoke-virtual {v0, p1}, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStreamNoFinalizer;->setDict(Lcom/github/luben/zstd/ZstdDictCompress;)Lcom/github/luben/zstd/ZstdDirectBufferCompressingStreamNoFinalizer;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 47
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

.method public declared-synchronized setDict([B)Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 41
    :try_start_1
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;->inner:Lcom/github/luben/zstd/ZstdDirectBufferCompressingStreamNoFinalizer;

    invoke-virtual {v0, p1}, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStreamNoFinalizer;->setDict([B)Lcom/github/luben/zstd/ZstdDirectBufferCompressingStreamNoFinalizer;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 42
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

    .line 58
    iput-boolean p1, p0, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;->finalize:Z

    return-void
.end method

###### Class com.github.luben.zstd.ZstdDirectBufferCompressingStream.AnonymousClass1 (com.github.luben.zstd.ZstdDirectBufferCompressingStream$1)
.class Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream$1;
.super Lcom/github/luben/zstd/ZstdDirectBufferCompressingStreamNoFinalizer;
.source "ZstdDirectBufferCompressingStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;-><init>(Ljava/nio/ByteBuffer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;


# direct methods
.method public constructor <init>(Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;Ljava/nio/ByteBuffer;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream$1;->this$0:Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;

    invoke-direct {p0, p2, p3}, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStreamNoFinalizer;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method


# virtual methods
.method public flushBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    iget-object p0, p0, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream$1;->this$0:Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;

    invoke-virtual {p0, p1}, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;->flushBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method
