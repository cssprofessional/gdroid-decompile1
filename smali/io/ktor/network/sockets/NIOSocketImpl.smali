###### Class io.ktor.network.sockets.NIOSocketImpl (io.ktor.network.sockets.NIOSocketImpl)
.class public abstract Lio/ktor/network/sockets/NIOSocketImpl;
.super Lio/ktor/network/sockets/SocketBase;
.source "NIOSocketImpl.kt"

# interfaces
.implements Ljava/io/Closeable;
.implements Lkotlinx/coroutines/DisposableHandle;
.implements Lio/ktor/network/sockets/AReadable;
.implements Lio/ktor/network/sockets/AWritable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/nio/channels/SelectableChannel;",
        ":",
        "Ljava/nio/channels/ByteChannel;",
        ">",
        "Lio/ktor/network/sockets/SocketBase;",
        "Ljava/io/Closeable;",
        "Lkotlinx/coroutines/DisposableHandle;",
        "Lio/ktor/network/sockets/AReadable;",
        "Lio/ktor/network/sockets/AWritable;"
    }
.end annotation


# instance fields
.field public final channel:Ljava/nio/channels/SelectableChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field public final pool:Lio/ktor/utils/io/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public final selector:Lio/ktor/network/selector/SelectorManager;

.field public final socketOptions:Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;


# direct methods
.method public constructor <init>(Ljava/nio/channels/SelectableChannel;Lio/ktor/network/selector/SelectorManager;Lio/ktor/utils/io/pool/ObjectPool;Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lio/ktor/network/selector/SelectorManager;",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;",
            ")V"
        }
    .end annotation

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selector"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 15
    invoke-direct {p0, v0}, Lio/ktor/network/sockets/SocketBase;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    .line 16
    iput-object p1, p0, Lio/ktor/network/sockets/NIOSocketImpl;->channel:Ljava/nio/channels/SelectableChannel;

    .line 17
    iput-object p2, p0, Lio/ktor/network/sockets/NIOSocketImpl;->selector:Lio/ktor/network/selector/SelectorManager;

    .line 18
    iput-object p3, p0, Lio/ktor/network/sockets/NIOSocketImpl;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 19
    iput-object p4, p0, Lio/ktor/network/sockets/NIOSocketImpl;->socketOptions:Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    return-void
.end method


# virtual methods
.method public actualClose$ktor_network()Ljava/lang/Throwable;
    .registers 3

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lio/ktor/network/sockets/NIOSocketImpl;->getChannel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/channels/Channel;->close()V

    .line 44
    invoke-super {p0}, Lio/ktor/network/sockets/SocketBase;->close()V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_11

    .line 49
    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->selector:Lio/ktor/network/selector/SelectorManager;

    invoke-interface {v0, p0}, Lio/ktor/network/selector/SelectorManager;->notifyClosed(Lio/ktor/network/selector/Selectable;)V

    const/4 p0, 0x0

    goto :goto_18

    :catchall_11
    move-exception v0

    iget-object v1, p0, Lio/ktor/network/sockets/NIOSocketImpl;->selector:Lio/ktor/network/selector/SelectorManager;

    invoke-interface {v1, p0}, Lio/ktor/network/selector/SelectorManager;->notifyClosed(Lio/ktor/network/selector/Selectable;)V

    move-object p0, v0

    :goto_18
    return-object p0
.end method

.method public final attachForReadingImpl(Lio/ktor/utils/io/ByteChannel;)Lio/ktor/utils/io/WriterJob;
    .registers 10

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    if-eqz v0, :cond_1e

    .line 31
    invoke-virtual {p0}, Lio/ktor/network/sockets/NIOSocketImpl;->getChannel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/nio/channels/ReadableByteChannel;

    iget-object v5, p0, Lio/ktor/network/sockets/NIOSocketImpl;->selector:Lio/ktor/network/selector/SelectorManager;

    iget-object v6, p0, Lio/ktor/network/sockets/NIOSocketImpl;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    iget-object v7, p0, Lio/ktor/network/sockets/NIOSocketImpl;->socketOptions:Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Lio/ktor/network/sockets/CIOReaderKt;->attachForReadingImpl(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/utils/io/ByteChannel;Ljava/nio/channels/ReadableByteChannel;Lio/ktor/network/selector/Selectable;Lio/ktor/network/selector/SelectorManager;Lio/ktor/utils/io/pool/ObjectPool;Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;)Lio/ktor/utils/io/WriterJob;

    move-result-object p0

    goto :goto_30

    .line 33
    :cond_1e
    invoke-virtual {p0}, Lio/ktor/network/sockets/NIOSocketImpl;->getChannel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/nio/channels/ReadableByteChannel;

    iget-object v5, p0, Lio/ktor/network/sockets/NIOSocketImpl;->selector:Lio/ktor/network/selector/SelectorManager;

    iget-object v6, p0, Lio/ktor/network/sockets/NIOSocketImpl;->socketOptions:Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Lio/ktor/network/sockets/CIOReaderKt;->attachForReadingDirectImpl(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/utils/io/ByteChannel;Ljava/nio/channels/ReadableByteChannel;Lio/ktor/network/selector/Selectable;Lio/ktor/network/selector/SelectorManager;Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;)Lio/ktor/utils/io/WriterJob;

    move-result-object p0

    :goto_30
    return-object p0
.end method

.method public final attachForWritingImpl(Lio/ktor/utils/io/ByteChannel;)Lio/ktor/utils/io/ReaderJob;
    .registers 9

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lio/ktor/network/sockets/NIOSocketImpl;->getChannel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/nio/channels/WritableByteChannel;

    iget-object v5, p0, Lio/ktor/network/sockets/NIOSocketImpl;->selector:Lio/ktor/network/selector/SelectorManager;

    iget-object v6, p0, Lio/ktor/network/sockets/NIOSocketImpl;->socketOptions:Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Lio/ktor/network/sockets/CIOWriterKt;->attachForWritingDirectImpl(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/utils/io/ByteChannel;Ljava/nio/channels/WritableByteChannel;Lio/ktor/network/selector/Selectable;Lio/ktor/network/selector/SelectorManager;Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;)Lio/ktor/utils/io/ReaderJob;

    move-result-object p0

    return-object p0
.end method

.method public getChannel()Ljava/nio/channels/SelectableChannel;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 16
    iget-object p0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->channel:Ljava/nio/channels/SelectableChannel;

    return-object p0
.end method

.method public final getSelector()Lio/ktor/network/selector/SelectorManager;
    .registers 1

    .line 17
    iget-object p0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->selector:Lio/ktor/network/selector/SelectorManager;

    return-object p0
.end method
