###### Class io.ktor.network.sockets.SocketBase (io.ktor.network.sockets.SocketBase)
.class public abstract Lio/ktor/network/sockets/SocketBase;
.super Lio/ktor/network/selector/SelectableBase;
.source "SocketBase.kt"

# interfaces
.implements Ljava/io/Closeable;
.implements Lkotlinx/coroutines/DisposableHandle;
.implements Lio/ktor/network/sockets/AReadable;
.implements Lio/ktor/network/sockets/AWritable;
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSocketBase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SocketBase.kt\nio/ktor/network/sockets/SocketBase\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,125:1\n65#1,25:126\n65#1,25:151\n119#1:176\n122#1,2:178\n122#1,2:181\n1#2:177\n1#2:180\n1#2:183\n1#2:184\n*S KotlinDebug\n*F\n+ 1 SocketBase.kt\nio/ktor/network/sockets/SocketBase\n*L\n49#1:126,25\n53#1:151,25\n95#1:176\n98#1:178,2\n99#1:181,2\n95#1:177\n98#1:180\n99#1:183\n*E\n"
.end annotation


# static fields
.field public static final synthetic actualCloseFlag$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic closeFlag$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic readerJob$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic writerJob$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic actualCloseFlag:I

.field public final channelCompletionHandler:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private volatile synthetic closeFlag:I

.field volatile synthetic readerJob:Ljava/lang/Object;

.field public final socketContext:Lkotlinx/coroutines/CompletableJob;

.field volatile synthetic writerJob:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$To-MJqY8OI1emn8e4pfhxM6KfEM(Lio/ktor/network/sockets/SocketBase;Ljava/lang/Throwable;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/ktor/network/sockets/SocketBase;->channelCompletionHandler$lambda$0(Lio/ktor/network/sockets/SocketBase;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 0
    const-string v0, "closeFlag"

    const-class v1, Lio/ktor/network/sockets/SocketBase;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/network/sockets/SocketBase;->closeFlag$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "actualCloseFlag"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/network/sockets/SocketBase;->actualCloseFlag$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "readerJob"

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/network/sockets/SocketBase;->readerJob$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "writerJob"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/network/sockets/SocketBase;->writerJob$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;)V
    .registers 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lio/ktor/network/selector/SelectableBase;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lio/ktor/network/sockets/SocketBase;->closeFlag:I

    .line 20
    iput v0, p0, Lio/ktor/network/sockets/SocketBase;->actualCloseFlag:I

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lio/ktor/network/sockets/SocketBase;->readerJob:Ljava/lang/Object;

    .line 23
    iput-object v0, p0, Lio/ktor/network/sockets/SocketBase;->writerJob:Ljava/lang/Object;

    .line 26
    new-instance v0, Lio/ktor/network/sockets/SocketBase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/ktor/network/sockets/SocketBase$$ExternalSyntheticLambda0;-><init>(Lio/ktor/network/sockets/SocketBase;)V

    iput-object v0, p0, Lio/ktor/network/sockets/SocketBase;->channelCompletionHandler:Lkotlin/jvm/functions/Function1;

    .line 28
    sget-object v0, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/Job;

    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->Job(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/network/sockets/SocketBase;->socketContext:Lkotlinx/coroutines/CompletableJob;

    return-void
.end method

.method public static final synthetic access$checkChannels(Lio/ktor/network/sockets/SocketBase;)V
    .registers 1

    .line 15
    invoke-virtual {p0}, Lio/ktor/network/sockets/SocketBase;->checkChannels()V

    return-void
.end method

.method public static final channelCompletionHandler$lambda$0(Lio/ktor/network/sockets/SocketBase;Ljava/lang/Throwable;)Lkotlin/Unit;
    .registers 2

    .line 26
    invoke-virtual {p0}, Lio/ktor/network/sockets/SocketBase;->checkChannels()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public abstract actualClose$ktor_network()Ljava/lang/Throwable;
.end method

.method public final attachForReading(Lio/ktor/utils/io/ByteChannel;)Lio/ktor/utils/io/WriterJob;
    .registers 6

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget v0, p0, Lio/ktor/network/sockets/SocketBase;->closeFlag:I

    const-string v1, "Socket closed"

    if-nez v0, :cond_4d

    .line 49
    invoke-virtual {p0, p1}, Lio/ktor/network/sockets/SocketBase;->attachForReadingImpl(Lio/ktor/utils/io/ByteChannel;)Lio/ktor/utils/io/WriterJob;

    move-result-object v0

    .line 134
    sget-object v2, Lio/ktor/network/sockets/SocketBase;->writerJob$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v3, 0x0

    invoke-static {v2, p0, v3, v0}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 139
    iget v2, p0, Lio/ktor/network/sockets/SocketBase;->closeFlag:I

    if-nez v2, :cond_25

    .line 146
    invoke-static {p1, v0}, Lio/ktor/utils/io/ByteChannelUtilsKt;->attachJob(Lio/ktor/utils/io/ByteChannel;Lio/ktor/utils/io/ChannelJob;)V

    .line 148
    iget-object p0, p0, Lio/ktor/network/sockets/SocketBase;->channelCompletionHandler:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p0}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->invokeOnCompletion(Lio/ktor/utils/io/ChannelJob;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    return-object v0

    .line 140
    :cond_25
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-static {v0}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->cancel(Lio/ktor/utils/io/ChannelJob;)V

    .line 142
    invoke-static {p1, p0}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->close(Lio/ktor/utils/io/ByteWriteChannel;Ljava/lang/Throwable;)V

    .line 143
    throw p0

    .line 135
    :cond_31
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reading"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " channel has already been set"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-static {v0}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->cancel(Lio/ktor/utils/io/ChannelJob;)V

    .line 137
    throw p0

    .line 127
    :cond_4d
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-static {p1, p0}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->close(Lio/ktor/utils/io/ByteWriteChannel;Ljava/lang/Throwable;)V

    .line 129
    throw p0
.end method

.method public abstract attachForReadingImpl(Lio/ktor/utils/io/ByteChannel;)Lio/ktor/utils/io/WriterJob;
.end method

.method public final attachForWriting(Lio/ktor/utils/io/ByteChannel;)Lio/ktor/utils/io/ReaderJob;
    .registers 6

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget v0, p0, Lio/ktor/network/sockets/SocketBase;->closeFlag:I

    const-string v1, "Socket closed"

    if-nez v0, :cond_4d

    .line 53
    invoke-virtual {p0, p1}, Lio/ktor/network/sockets/SocketBase;->attachForWritingImpl(Lio/ktor/utils/io/ByteChannel;)Lio/ktor/utils/io/ReaderJob;

    move-result-object v0

    .line 159
    sget-object v2, Lio/ktor/network/sockets/SocketBase;->readerJob$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v3, 0x0

    invoke-static {v2, p0, v3, v0}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 164
    iget v2, p0, Lio/ktor/network/sockets/SocketBase;->closeFlag:I

    if-nez v2, :cond_25

    .line 171
    invoke-static {p1, v0}, Lio/ktor/utils/io/ByteChannelUtilsKt;->attachJob(Lio/ktor/utils/io/ByteChannel;Lio/ktor/utils/io/ChannelJob;)V

    .line 173
    iget-object p0, p0, Lio/ktor/network/sockets/SocketBase;->channelCompletionHandler:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p0}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->invokeOnCompletion(Lio/ktor/utils/io/ChannelJob;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    return-object v0

    .line 165
    :cond_25
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-static {v0}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->cancel(Lio/ktor/utils/io/ChannelJob;)V

    .line 167
    invoke-static {p1, p0}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->close(Lio/ktor/utils/io/ByteWriteChannel;Ljava/lang/Throwable;)V

    .line 168
    throw p0

    .line 160
    :cond_31
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writing"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " channel has already been set"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-static {v0}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->cancel(Lio/ktor/utils/io/ChannelJob;)V

    .line 162
    throw p0

    .line 152
    :cond_4d
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-static {p1, p0}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->close(Lio/ktor/utils/io/ByteWriteChannel;Ljava/lang/Throwable;)V

    .line 154
    throw p0
.end method

.method public abstract attachForWritingImpl(Lio/ktor/utils/io/ByteChannel;)Lio/ktor/utils/io/ReaderJob;
.end method

.method public final checkChannels()V
    .registers 5

    .line 95
    iget v0, p0, Lio/ktor/network/sockets/SocketBase;->closeFlag:I

    if-eqz v0, :cond_77

    .line 176
    iget-object v0, p0, Lio/ktor/network/sockets/SocketBase;->readerJob:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/ChannelJob;

    if-eqz v0, :cond_10

    invoke-static {v0}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->isCompleted(Lio/ktor/utils/io/ChannelJob;)Z

    move-result v0

    if-eqz v0, :cond_77

    :cond_10
    iget-object v0, p0, Lio/ktor/network/sockets/SocketBase;->writerJob:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/ChannelJob;

    if-eqz v0, :cond_1c

    invoke-static {v0}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->isCompleted(Lio/ktor/utils/io/ChannelJob;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 96
    :cond_1c
    sget-object v0, Lio/ktor/network/sockets/SocketBase;->actualCloseFlag$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_27

    return-void

    .line 178
    :cond_27
    iget-object v0, p0, Lio/ktor/network/sockets/SocketBase;->readerJob:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/ChannelJob;

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    invoke-static {v0}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->isCancelled(Lio/ktor/utils/io/ChannelJob;)Z

    move-result v2

    if-eqz v2, :cond_35

    goto :goto_36

    :cond_35
    move-object v0, v1

    :goto_36
    if-eqz v0, :cond_43

    .line 179
    invoke-static {v0}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->getCancellationException(Lio/ktor/utils/io/ChannelJob;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_44

    :cond_43
    move-object v0, v1

    .line 181
    :goto_44
    iget-object v2, p0, Lio/ktor/network/sockets/SocketBase;->writerJob:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ChannelJob;

    if-eqz v2, :cond_5e

    invoke-static {v2}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->isCancelled(Lio/ktor/utils/io/ChannelJob;)Z

    move-result v3

    if-eqz v3, :cond_51

    goto :goto_52

    :cond_51
    move-object v2, v1

    :goto_52
    if-eqz v2, :cond_5e

    .line 182
    invoke-static {v2}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->getCancellationException(Lio/ktor/utils/io/ChannelJob;)Ljava/util/concurrent/CancellationException;

    move-result-object v2

    if-eqz v2, :cond_5e

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 100
    :cond_5e
    invoke-virtual {p0}, Lio/ktor/network/sockets/SocketBase;->actualClose$ktor_network()Ljava/lang/Throwable;

    move-result-object v2

    .line 102
    invoke-virtual {p0, v0, v1}, Lio/ktor/network/sockets/SocketBase;->combine(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lio/ktor/network/sockets/SocketBase;->combine(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lio/ktor/network/sockets/SocketBase;->getSocketContext()Lkotlinx/coroutines/CompletableJob;

    move-result-object p0

    if-nez v0, :cond_74

    invoke-interface {p0}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    goto :goto_77

    :cond_74
    invoke-interface {p0, v0}, Lkotlinx/coroutines/CompletableJob;->completeExceptionally(Ljava/lang/Throwable;)Z

    :cond_77
    :goto_77
    return-void
.end method

.method public close()V
    .registers 8

    .line 39
    sget-object v0, Lio/ktor/network/sockets/SocketBase;->closeFlag$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 41
    :cond_b
    new-instance v2, Lkotlinx/coroutines/CoroutineName;

    const-string v0, "socket-close"

    invoke-direct {v2, v0}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    new-instance v4, Lio/ktor/network/sockets/SocketBase$close$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lio/ktor/network/sockets/SocketBase$close$1;-><init>(Lio/ktor/network/sockets/SocketBase;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final combine(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 3

    if-nez p1, :cond_4

    move-object p1, p2

    goto :goto_d

    :cond_4
    if-nez p2, :cond_7

    goto :goto_d

    :cond_7
    if-ne p1, p2, :cond_a

    goto :goto_d

    .line 113
    :cond_a
    invoke-static {p1, p2}, Lkotlin/ExceptionsKt__ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_d
    return-object p1
.end method

.method public dispose()V
    .registers 1

    .line 34
    invoke-virtual {p0}, Lio/ktor/network/sockets/SocketBase;->close()V

    return-void
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .registers 1

    .line 31
    invoke-virtual {p0}, Lio/ktor/network/sockets/SocketBase;->getSocketContext()Lkotlinx/coroutines/CompletableJob;

    move-result-object p0

    return-object p0
.end method

.method public getSocketContext()Lkotlinx/coroutines/CompletableJob;
    .registers 1

    .line 28
    iget-object p0, p0, Lio/ktor/network/sockets/SocketBase;->socketContext:Lkotlinx/coroutines/CompletableJob;

    return-object p0
.end method

###### Class io.ktor.network.sockets.SocketBase.AnonymousClass1 (io.ktor.network.sockets.SocketBase$close$1)
.class public final Lio/ktor/network/sockets/SocketBase$close$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SocketBase.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/sockets/SocketBase;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.network.sockets.SocketBase$close$1"
    f = "SocketBase.kt"
    l = {
        0x2a
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public label:I

.field public final synthetic this$0:Lio/ktor/network/sockets/SocketBase;


# direct methods
.method public constructor <init>(Lio/ktor/network/sockets/SocketBase;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/sockets/SocketBase;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/sockets/SocketBase$close$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/network/sockets/SocketBase$close$1;->this$0:Lio/ktor/network/sockets/SocketBase;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance p1, Lio/ktor/network/sockets/SocketBase$close$1;

    iget-object p0, p0, Lio/ktor/network/sockets/SocketBase$close$1;->this$0:Lio/ktor/network/sockets/SocketBase;

    invoke-direct {p1, p0, p2}, Lio/ktor/network/sockets/SocketBase$close$1;-><init>(Lio/ktor/network/sockets/SocketBase;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/network/sockets/SocketBase$close$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/ktor/network/sockets/SocketBase$close$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/ktor/network/sockets/SocketBase$close$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/ktor/network/sockets/SocketBase$close$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 41
    iget v1, p0, Lio/ktor/network/sockets/SocketBase$close$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2b

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    iget-object p1, p0, Lio/ktor/network/sockets/SocketBase$close$1;->this$0:Lio/ktor/network/sockets/SocketBase;

    iget-object p1, p1, Lio/ktor/network/sockets/SocketBase;->readerJob:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/ReaderJob;

    if-eqz p1, :cond_2b

    iput v2, p0, Lio/ktor/network/sockets/SocketBase$close$1;->label:I

    invoke-virtual {p1, p0}, Lio/ktor/utils/io/ReaderJob;->flushAndClose(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2b

    return-object v0

    .line 43
    :cond_2b
    :goto_2b
    iget-object p1, p0, Lio/ktor/network/sockets/SocketBase$close$1;->this$0:Lio/ktor/network/sockets/SocketBase;

    iget-object p1, p1, Lio/ktor/network/sockets/SocketBase;->writerJob:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/WriterJob;

    if-eqz p1, :cond_36

    invoke-static {p1}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->cancel(Lio/ktor/utils/io/ChannelJob;)V

    .line 44
    :cond_36
    iget-object p0, p0, Lio/ktor/network/sockets/SocketBase$close$1;->this$0:Lio/ktor/network/sockets/SocketBase;

    invoke-static {p0}, Lio/ktor/network/sockets/SocketBase;->access$checkChannels(Lio/ktor/network/sockets/SocketBase;)V

    .line 45
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

###### Class io.ktor.network.sockets.SocketBase$$ExternalSyntheticLambda0 (io.ktor.network.sockets.SocketBase$$ExternalSyntheticLambda0)
.class public final synthetic Lio/ktor/network/sockets/SocketBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lio/ktor/network/sockets/SocketBase;


# direct methods
.method public synthetic constructor <init>(Lio/ktor/network/sockets/SocketBase;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/network/sockets/SocketBase$$ExternalSyntheticLambda0;->f$0:Lio/ktor/network/sockets/SocketBase;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lio/ktor/network/sockets/SocketBase$$ExternalSyntheticLambda0;->f$0:Lio/ktor/network/sockets/SocketBase;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p0, p1}, Lio/ktor/network/sockets/SocketBase;->$r8$lambda$To-MJqY8OI1emn8e4pfhxM6KfEM(Lio/ktor/network/sockets/SocketBase;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
