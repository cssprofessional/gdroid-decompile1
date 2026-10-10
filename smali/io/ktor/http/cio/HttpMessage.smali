###### Class io.ktor.http.cio.HttpMessage (io.ktor.http.cio.HttpMessage)
.class public abstract Lio/ktor/http/cio/HttpMessage;
.super Ljava/lang/Object;
.source "RequestResponse.kt"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final builder:Lio/ktor/http/cio/internals/CharArrayBuilder;

.field public final headers:Lio/ktor/http/cio/HttpHeadersMap;


# direct methods
.method public constructor <init>(Lio/ktor/http/cio/HttpHeadersMap;Lio/ktor/http/cio/internals/CharArrayBuilder;)V
    .registers 4

    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lio/ktor/http/cio/HttpMessage;->headers:Lio/ktor/http/cio/HttpHeadersMap;

    .line 20
    iput-object p2, p0, Lio/ktor/http/cio/HttpMessage;->builder:Lio/ktor/http/cio/internals/CharArrayBuilder;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 39
    invoke-virtual {p0}, Lio/ktor/http/cio/HttpMessage;->release()V

    return-void
.end method

.method public final getHeaders()Lio/ktor/http/cio/HttpHeadersMap;
    .registers 1

    .line 19
    iget-object p0, p0, Lio/ktor/http/cio/HttpMessage;->headers:Lio/ktor/http/cio/HttpHeadersMap;

    return-object p0
.end method

.method public final release()V
    .registers 2

    .line 29
    iget-object v0, p0, Lio/ktor/http/cio/HttpMessage;->builder:Lio/ktor/http/cio/internals/CharArrayBuilder;

    invoke-virtual {v0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->release()V

    .line 30
    iget-object p0, p0, Lio/ktor/http/cio/HttpMessage;->headers:Lio/ktor/http/cio/HttpHeadersMap;

    invoke-virtual {p0}, Lio/ktor/http/cio/HttpHeadersMap;->release()V

    return-void
.end method
