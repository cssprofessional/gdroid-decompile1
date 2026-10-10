###### Class okio.Okio (okio.Okio)
.class public final Lokio/Okio;
.super Ljava/lang/Object;


# direct methods
.method public static final buffer(Lokio/Sink;)Lokio/BufferedSink;
    .registers 1

    .line 1
    invoke-static {p0}, Lokio/Okio__OkioKt;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p0

    return-object p0
.end method

.method public static final buffer(Lokio/Source;)Lokio/BufferedSource;
    .registers 1

    .line 1
    invoke-static {p0}, Lokio/Okio__OkioKt;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p0

    return-object p0
.end method

.method public static final socket(Ljava/net/Socket;)Lokio/Socket;
    .registers 1

    .line 1
    invoke-static {p0}, Lokio/Okio__JvmOkioKt;->socket(Ljava/net/Socket;)Lokio/Socket;

    move-result-object p0

    return-object p0
.end method

.method public static final source(Ljava/io/InputStream;)Lokio/Source;
    .registers 1

    .line 1
    invoke-static {p0}, Lokio/Okio__JvmOkioKt;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object p0

    return-object p0
.end method
