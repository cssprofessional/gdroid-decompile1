###### Class okio.internal.DefaultSocket (okio.internal.DefaultSocket)
.class public final Lokio/internal/DefaultSocket;
.super Ljava/lang/Object;
.source "DefaultSocket.kt"

# interfaces
.implements Lokio/Socket;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/internal/DefaultSocket$SocketSink;,
        Lokio/internal/DefaultSocket$SocketSource;
    }
.end annotation


# instance fields
.field public closeBits:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final sink:Lokio/Sink;

.field public final socket:Ljava/net/Socket;

.field public final source:Lokio/Source;


# direct methods
.method public constructor <init>(Ljava/net/Socket;)V
    .registers 3

    const-string v0, "socket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/internal/DefaultSocket;->socket:Ljava/net/Socket;

    .line 39
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lokio/internal/DefaultSocket;->closeBits:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    new-instance p1, Lokio/internal/DefaultSocket$SocketSource;

    invoke-direct {p1, p0}, Lokio/internal/DefaultSocket$SocketSource;-><init>(Lokio/internal/DefaultSocket;)V

    iput-object p1, p0, Lokio/internal/DefaultSocket;->source:Lokio/Source;

    .line 42
    new-instance p1, Lokio/internal/DefaultSocket$SocketSink;

    invoke-direct {p1, p0}, Lokio/internal/DefaultSocket$SocketSink;-><init>(Lokio/internal/DefaultSocket;)V

    iput-object p1, p0, Lokio/internal/DefaultSocket;->sink:Lokio/Sink;

    return-void
.end method

.method public static final synthetic access$getCloseBits$p(Lokio/internal/DefaultSocket;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 38
    iget-object p0, p0, Lokio/internal/DefaultSocket;->closeBits:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .registers 1

    .line 45
    iget-object p0, p0, Lokio/internal/DefaultSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->close()V

    return-void
.end method

.method public getSink()Lokio/Sink;
    .registers 1

    .line 42
    iget-object p0, p0, Lokio/internal/DefaultSocket;->sink:Lokio/Sink;

    return-object p0
.end method

.method public final getSocket()Ljava/net/Socket;
    .registers 1

    .line 38
    iget-object p0, p0, Lokio/internal/DefaultSocket;->socket:Ljava/net/Socket;

    return-object p0
.end method

.method public getSource()Lokio/Source;
    .registers 1

    .line 41
    iget-object p0, p0, Lokio/internal/DefaultSocket;->source:Lokio/Source;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object p0, p0, Lokio/internal/DefaultSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

###### Class okio.internal.DefaultSocket.SocketSink (okio.internal.DefaultSocket$SocketSink)
.class public final Lokio/internal/DefaultSocket$SocketSink;
.super Ljava/lang/Object;
.source "DefaultSocket.kt"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/internal/DefaultSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SocketSink"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultSocket.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultSocket.kt\nokio/internal/DefaultSocket$SocketSink\n+ 2 Util.kt\nokio/-SegmentedByteString\n+ 3 AsyncTimeout.kt\nokio/AsyncTimeout\n*L\n1#1,176:1\n85#2:177\n195#3,11:178\n195#3,11:189\n195#3,11:200\n*S KotlinDebug\n*F\n+ 1 DefaultSocket.kt\nokio/internal/DefaultSocket$SocketSink\n*L\n60#1:177\n61#1:178,11\n77#1:189,11\n83#1:200,11\n*E\n"
.end annotation


# instance fields
.field public final outputStream:Ljava/io/OutputStream;

.field public final synthetic this$0:Lokio/internal/DefaultSocket;

.field public final timeout:Lokio/internal/SocketAsyncTimeout;


# direct methods
.method public constructor <init>(Lokio/internal/DefaultSocket;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lokio/internal/DefaultSocket$SocketSink;->this$0:Lokio/internal/DefaultSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lokio/internal/DefaultSocket$SocketSink;->outputStream:Ljava/io/OutputStream;

    .line 52
    new-instance v0, Lokio/internal/SocketAsyncTimeout;

    invoke-virtual {p1}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object p1

    invoke-direct {v0, p1}, Lokio/internal/SocketAsyncTimeout;-><init>(Ljava/net/Socket;)V

    iput-object v0, p0, Lokio/internal/DefaultSocket$SocketSink;->timeout:Lokio/internal/SocketAsyncTimeout;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    .line 83
    iget-object v0, p0, Lokio/internal/DefaultSocket$SocketSink;->timeout:Lokio/internal/SocketAsyncTimeout;

    iget-object v1, p0, Lokio/internal/DefaultSocket$SocketSink;->this$0:Lokio/internal/DefaultSocket;

    .line 196
    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    .line 84
    :try_start_7
    invoke-static {v1}, Lokio/internal/DefaultSocket;->access$getCloseBits$p(Lokio/internal/DefaultSocket;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lokio/internal/_AtomicKt;->setBitsOrZero(Ljava/util/concurrent/atomic/AtomicInteger;I)I

    move-result v2

    if-eqz v2, :cond_5b

    const/4 v3, 0x3

    if-eq v2, v3, :cond_45

    .line 93
    invoke-virtual {v1}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_41

    invoke-virtual {v1}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_41

    .line 94
    :cond_2a
    iget-object v2, p0, Lokio/internal/DefaultSocket$SocketSink;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_2f} :catch_39
    .catchall {:try_start_7 .. :try_end_2f} :catchall_37

    .line 96
    :try_start_2f
    invoke-virtual {v1}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_36
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2f .. :try_end_36} :catch_3b
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_36} :catch_39
    .catchall {:try_start_2f .. :try_end_36} :catchall_37

    goto :goto_4c

    :catchall_37
    move-exception p0

    goto :goto_6b

    :catch_39
    move-exception p0

    goto :goto_5f

    .line 100
    :catch_3b
    :try_start_3b
    iget-object p0, p0, Lokio/internal/DefaultSocket$SocketSink;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_40} :catch_39
    .catchall {:try_start_3b .. :try_end_40} :catchall_37

    goto :goto_4c

    .line 204
    :cond_41
    :goto_41
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    return-void

    .line 89
    :cond_45
    :try_start_45
    invoke-virtual {v1}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/Socket;->close()V

    .line 104
    :goto_4c
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4e} :catch_39
    .catchall {:try_start_45 .. :try_end_4e} :catchall_37

    .line 204
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result p0

    if-nez p0, :cond_55

    return-void

    :cond_55
    const/4 p0, 0x0

    .line 205
    invoke-virtual {v0, p0}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 204
    :cond_5b
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    return-void

    .line 202
    :goto_5f
    :try_start_5f
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v1

    if-nez v1, :cond_66

    goto :goto_6a

    :cond_66
    invoke-virtual {v0, p0}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    :goto_6a
    throw p0
    :try_end_6b
    .catchall {:try_start_5f .. :try_end_6b} :catchall_37

    .line 204
    :goto_6b
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    .line 205
    throw p0
.end method

.method public flush()V
    .registers 3

    .line 77
    iget-object v0, p0, Lokio/internal/DefaultSocket$SocketSink;->timeout:Lokio/internal/SocketAsyncTimeout;

    .line 196
    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    .line 78
    :try_start_5
    iget-object p0, p0, Lokio/internal/DefaultSocket$SocketSink;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 79
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_1b
    .catchall {:try_start_5 .. :try_end_c} :catchall_19

    .line 204
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result p0

    if-nez p0, :cond_13

    return-void

    :cond_13
    const/4 p0, 0x0

    .line 205
    invoke-virtual {v0, p0}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :catchall_19
    move-exception p0

    goto :goto_28

    :catch_1b
    move-exception p0

    .line 202
    :try_start_1c
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v1

    if-nez v1, :cond_23

    goto :goto_27

    :cond_23
    invoke-virtual {v0, p0}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    :goto_27
    throw p0
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_19

    .line 204
    :goto_28
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    .line 205
    throw p0
.end method

.method public bridge synthetic timeout()Lokio/Timeout;
    .registers 1

    .line 50
    invoke-virtual {p0}, Lokio/internal/DefaultSocket$SocketSink;->timeout()Lokio/internal/SocketAsyncTimeout;

    move-result-object p0

    return-object p0
.end method

.method public timeout()Lokio/internal/SocketAsyncTimeout;
    .registers 1

    .line 107
    iget-object p0, p0, Lokio/internal/DefaultSocket$SocketSink;->timeout:Lokio/internal/SocketAsyncTimeout;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lokio/internal/DefaultSocket$SocketSink;->this$0:Lokio/internal/DefaultSocket;

    invoke-virtual {p0}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 11

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    :cond_f
    :goto_f
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_78

    .line 58
    iget-object v0, p0, Lokio/internal/DefaultSocket$SocketSink;->timeout:Lokio/internal/SocketAsyncTimeout;

    invoke-virtual {v0}, Lokio/Timeout;->throwIfReached()V

    .line 59
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 60
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 85
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 61
    iget-object v2, p0, Lokio/internal/DefaultSocket$SocketSink;->timeout:Lokio/internal/SocketAsyncTimeout;

    .line 196
    invoke-virtual {v2}, Lokio/AsyncTimeout;->enter()V

    .line 62
    :try_start_2f
    iget-object v3, p0, Lokio/internal/DefaultSocket$SocketSink;->outputStream:Ljava/io/OutputStream;

    iget-object v4, v0, Lokio/Segment;->data:[B

    iget v5, v0, Lokio/Segment;->pos:I

    invoke-virtual {v3, v4, v5, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 63
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_3a} :catch_67
    .catchall {:try_start_2f .. :try_end_3a} :catchall_65

    .line 204
    invoke-virtual {v2}, Lokio/AsyncTimeout;->exit()Z

    move-result v3

    if-nez v3, :cond_5f

    .line 65
    iget v2, v0, Lokio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/Segment;->pos:I

    int-to-long v1, v1

    sub-long/2addr p2, v1

    .line 67
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p1, v3, v4}, Lokio/Buffer;->setSize$okio(J)V

    .line 69
    iget v1, v0, Lokio/Segment;->pos:I

    iget v2, v0, Lokio/Segment;->limit:I

    if-ne v1, v2, :cond_f

    .line 70
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 71
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_f

    :cond_5f
    const/4 p0, 0x0

    .line 205
    invoke-virtual {v2, p0}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :catchall_65
    move-exception p0

    goto :goto_74

    :catch_67
    move-exception p0

    .line 202
    :try_start_68
    invoke-virtual {v2}, Lokio/AsyncTimeout;->exit()Z

    move-result p1

    if-nez p1, :cond_6f

    goto :goto_73

    :cond_6f
    invoke-virtual {v2, p0}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    :goto_73
    throw p0
    :try_end_74
    .catchall {:try_start_68 .. :try_end_74} :catchall_65

    .line 204
    :goto_74
    invoke-virtual {v2}, Lokio/AsyncTimeout;->exit()Z

    .line 205
    throw p0

    :cond_78
    return-void
.end method

###### Class okio.internal.DefaultSocket.SocketSource (okio.internal.DefaultSocket$SocketSource)
.class public final Lokio/internal/DefaultSocket$SocketSource;
.super Ljava/lang/Object;
.source "DefaultSocket.kt"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/internal/DefaultSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SocketSource"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultSocket.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultSocket.kt\nokio/internal/DefaultSocket$SocketSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokio/-SegmentedByteString\n+ 4 AsyncTimeout.kt\nokio/AsyncTimeout\n*L\n1#1,176:1\n1#2:177\n85#3:178\n195#4,11:179\n195#4,11:190\n*S KotlinDebug\n*F\n+ 1 DefaultSocket.kt\nokio/internal/DefaultSocket$SocketSource\n*L\n121#1:178\n123#1:179,11\n144#1:190,11\n*E\n"
.end annotation


# instance fields
.field public final inputStream:Ljava/io/InputStream;

.field public final synthetic this$0:Lokio/internal/DefaultSocket;

.field public final timeout:Lokio/internal/SocketAsyncTimeout;


# direct methods
.method public constructor <init>(Lokio/internal/DefaultSocket;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lokio/internal/DefaultSocket$SocketSource;->this$0:Lokio/internal/DefaultSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-virtual {p1}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lokio/internal/DefaultSocket$SocketSource;->inputStream:Ljava/io/InputStream;

    .line 114
    new-instance v0, Lokio/internal/SocketAsyncTimeout;

    invoke-virtual {p1}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object p1

    invoke-direct {v0, p1}, Lokio/internal/SocketAsyncTimeout;-><init>(Ljava/net/Socket;)V

    iput-object v0, p0, Lokio/internal/DefaultSocket$SocketSource;->timeout:Lokio/internal/SocketAsyncTimeout;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    .line 144
    iget-object v0, p0, Lokio/internal/DefaultSocket$SocketSource;->timeout:Lokio/internal/SocketAsyncTimeout;

    iget-object v1, p0, Lokio/internal/DefaultSocket$SocketSource;->this$0:Lokio/internal/DefaultSocket;

    .line 196
    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    .line 145
    :try_start_7
    invoke-static {v1}, Lokio/internal/DefaultSocket;->access$getCloseBits$p(Lokio/internal/DefaultSocket;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lokio/internal/_AtomicKt;->setBitsOrZero(Ljava/util/concurrent/atomic/AtomicInteger;I)I

    move-result v2

    if-eqz v2, :cond_56

    const/4 v3, 0x3

    if-eq v2, v3, :cond_40

    .line 154
    invoke-virtual {v1}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-virtual {v1}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_27} :catch_34
    .catchall {:try_start_7 .. :try_end_27} :catchall_32

    if-eqz v2, :cond_2a

    goto :goto_3c

    .line 156
    :cond_2a
    :try_start_2a
    invoke-virtual {v1}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownInput()V
    :try_end_31
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2a .. :try_end_31} :catch_36
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_31} :catch_34
    .catchall {:try_start_2a .. :try_end_31} :catchall_32

    goto :goto_47

    :catchall_32
    move-exception p0

    goto :goto_66

    :catch_34
    move-exception p0

    goto :goto_5a

    .line 160
    :catch_36
    :try_start_36
    iget-object p0, p0, Lokio/internal/DefaultSocket$SocketSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3b} :catch_34
    .catchall {:try_start_36 .. :try_end_3b} :catchall_32

    goto :goto_47

    .line 204
    :cond_3c
    :goto_3c
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    return-void

    .line 150
    :cond_40
    :try_start_40
    invoke-virtual {v1}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/Socket;->close()V

    .line 164
    :goto_47
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_49} :catch_34
    .catchall {:try_start_40 .. :try_end_49} :catchall_32

    .line 204
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result p0

    if-nez p0, :cond_50

    return-void

    :cond_50
    const/4 p0, 0x0

    .line 205
    invoke-virtual {v0, p0}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 204
    :cond_56
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    return-void

    .line 202
    :goto_5a
    :try_start_5a
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v1

    if-nez v1, :cond_61

    goto :goto_65

    :cond_61
    invoke-virtual {v0, p0}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    :goto_65
    throw p0
    :try_end_66
    .catchall {:try_start_5a .. :try_end_66} :catchall_32

    .line 204
    :goto_66
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    .line 205
    throw p0
.end method

.method public read(Lokio/Buffer;J)J
    .registers 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_c

    return-wide v0

    :cond_c
    if-ltz v2, :cond_83

    .line 119
    iget-object v0, p0, Lokio/internal/DefaultSocket$SocketSource;->timeout:Lokio/internal/SocketAsyncTimeout;

    invoke-virtual {v0}, Lokio/Timeout;->throwIfReached()V

    const/4 v0, 0x1

    .line 120
    invoke-virtual {p1, v0}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v0

    .line 121
    iget v1, v0, Lokio/Segment;->limit:I

    rsub-int v1, v1, 0x2000

    int-to-long v1, v1

    .line 85
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    long-to-int p2, p2

    .line 123
    :try_start_22
    iget-object p3, p0, Lokio/internal/DefaultSocket$SocketSource;->timeout:Lokio/internal/SocketAsyncTimeout;

    .line 196
    invoke-virtual {p3}, Lokio/AsyncTimeout;->enter()V
    :try_end_27
    .catch Ljava/lang/AssertionError; {:try_start_22 .. :try_end_27} :catch_61

    .line 124
    :try_start_27
    iget-object p0, p0, Lokio/internal/DefaultSocket$SocketSource;->inputStream:Ljava/io/InputStream;

    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->limit:I

    invoke-virtual {p0, v1, v2, p2}, Ljava/io/InputStream;->read([BII)I

    move-result p0
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_31} :catch_65
    .catchall {:try_start_27 .. :try_end_31} :catchall_63

    .line 204
    :try_start_31
    invoke-virtual {p3}, Lokio/AsyncTimeout;->exit()Z

    move-result p2
    :try_end_35
    .catch Ljava/lang/AssertionError; {:try_start_31 .. :try_end_35} :catch_61

    if-nez p2, :cond_5b

    const/4 p2, -0x1

    if-ne p0, p2, :cond_4c

    .line 131
    iget p0, v0, Lokio/Segment;->pos:I

    iget p2, v0, Lokio/Segment;->limit:I

    if-ne p0, p2, :cond_49

    .line 133
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object p0

    iput-object p0, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 134
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :cond_49
    const-wide/16 p0, -0x1

    return-wide p0

    .line 138
    :cond_4c
    iget p2, v0, Lokio/Segment;->limit:I

    add-int/2addr p2, p0

    iput p2, v0, Lokio/Segment;->limit:I

    .line 139
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide p2

    int-to-long v0, p0

    add-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lokio/Buffer;->setSize$okio(J)V

    return-wide v0

    :cond_5b
    const/4 p0, 0x0

    .line 205
    :try_start_5c
    invoke-virtual {p3, p0}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0
    :try_end_61
    .catch Ljava/lang/AssertionError; {:try_start_5c .. :try_end_61} :catch_61

    :catch_61
    move-exception p0

    goto :goto_76

    :catchall_63
    move-exception p0

    goto :goto_72

    :catch_65
    move-exception p0

    .line 202
    :try_start_66
    invoke-virtual {p3}, Lokio/AsyncTimeout;->exit()Z

    move-result p1

    if-nez p1, :cond_6d

    goto :goto_71

    :cond_6d
    invoke-virtual {p3, p0}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    :goto_71
    throw p0
    :try_end_72
    .catchall {:try_start_66 .. :try_end_72} :catchall_63

    .line 204
    :goto_72
    :try_start_72
    invoke-virtual {p3}, Lokio/AsyncTimeout;->exit()Z

    .line 205
    throw p0
    :try_end_76
    .catch Ljava/lang/AssertionError; {:try_start_72 .. :try_end_76} :catch_61

    .line 127
    :goto_76
    invoke-static {p0}, Lokio/internal/_JavaIoKt;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result p1

    if-eqz p1, :cond_82

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 128
    :cond_82
    throw p0

    .line 118
    :cond_83
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "byteCount < 0: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic timeout()Lokio/Timeout;
    .registers 1

    .line 112
    invoke-virtual {p0}, Lokio/internal/DefaultSocket$SocketSource;->timeout()Lokio/internal/SocketAsyncTimeout;

    move-result-object p0

    return-object p0
.end method

.method public timeout()Lokio/internal/SocketAsyncTimeout;
    .registers 1

    .line 167
    iget-object p0, p0, Lokio/internal/DefaultSocket$SocketSource;->timeout:Lokio/internal/SocketAsyncTimeout;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lokio/internal/DefaultSocket$SocketSource;->this$0:Lokio/internal/DefaultSocket;

    invoke-virtual {p0}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
