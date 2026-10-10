###### Class okhttp3.internal.connection.BufferedSocketKt (okhttp3.internal.connection.BufferedSocketKt)
.class public final Lokhttp3/internal/connection/BufferedSocketKt;
.super Ljava/lang/Object;
.source "BufferedSocket.kt"


# direct methods
.method public static final asBufferedSocket(Ljava/net/Socket;)Lokhttp3/internal/connection/BufferedSocket;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {p0}, Lokio/Okio;->socket(Ljava/net/Socket;)Lokio/Socket;

    move-result-object p0

    invoke-static {p0}, Lokhttp3/internal/connection/BufferedSocketKt;->asBufferedSocket(Lokio/Socket;)Lokhttp3/internal/connection/BufferedSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final asBufferedSocket(Lokio/Socket;)Lokhttp3/internal/connection/BufferedSocket;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;

    invoke-direct {v0, p0}, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;-><init>(Lokio/Socket;)V

    return-object v0
.end method

###### Class okhttp3.internal.connection.BufferedSocketKt.AnonymousClass1 (okhttp3.internal.connection.BufferedSocketKt$asBufferedSocket$1)
.class public final Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;
.super Ljava/lang/Object;
.source "BufferedSocket.kt"

# interfaces
.implements Lokhttp3/internal/connection/BufferedSocket;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/connection/BufferedSocketKt;->asBufferedSocket(Lokio/Socket;)Lokhttp3/internal/connection/BufferedSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final delegate:Lokio/Socket;

.field public final sink:Lokio/BufferedSink;

.field public final source:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokio/Socket;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->delegate:Lokio/Socket;

    .line 35
    invoke-interface {p1}, Lokio/Socket;->getSource()Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->source:Lokio/BufferedSource;

    .line 36
    invoke-interface {p1}, Lokio/Socket;->getSink()Lokio/Sink;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->sink:Lokio/BufferedSink;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    .line 39
    iget-object p0, p0, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->delegate:Lokio/Socket;

    invoke-interface {p0}, Lokio/Socket;->cancel()V

    return-void
.end method

.method public getSink()Lokio/BufferedSink;
    .registers 1

    .line 36
    iget-object p0, p0, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->sink:Lokio/BufferedSink;

    return-object p0
.end method

.method public bridge synthetic getSink()Lokio/Sink;
    .registers 1

    .line 33
    invoke-virtual {p0}, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->getSink()Lokio/BufferedSink;

    move-result-object p0

    return-object p0
.end method

.method public getSource()Lokio/BufferedSource;
    .registers 1

    .line 35
    iget-object p0, p0, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->source:Lokio/BufferedSource;

    return-object p0
.end method

.method public bridge synthetic getSource()Lokio/Source;
    .registers 1

    .line 33
    invoke-virtual {p0}, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->getSource()Lokio/BufferedSource;

    move-result-object p0

    return-object p0
.end method
