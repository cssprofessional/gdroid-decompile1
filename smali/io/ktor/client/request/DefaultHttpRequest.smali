###### Class io.ktor.client.request.DefaultHttpRequest (io.ktor.client.request.DefaultHttpRequest)
.class public Lio/ktor/client/request/DefaultHttpRequest;
.super Ljava/lang/Object;
.source "DefaultHttpRequest.kt"

# interfaces
.implements Lio/ktor/client/request/HttpRequest;


# instance fields
.field public final attributes:Lio/ktor/util/Attributes;

.field public final call:Lio/ktor/client/call/HttpClientCall;

.field public final content:Lio/ktor/http/content/OutgoingContent;

.field public final headers:Lio/ktor/http/Headers;

.field public final method:Lio/ktor/http/HttpMethod;

.field public final url:Lio/ktor/http/Url;


# direct methods
.method public constructor <init>(Lio/ktor/client/call/HttpClientCall;Lio/ktor/client/request/HttpRequestData;)V
    .registers 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lio/ktor/client/request/DefaultHttpRequest;->call:Lio/ktor/client/call/HttpClientCall;

    .line 23
    invoke-virtual {p2}, Lio/ktor/client/request/HttpRequestData;->getMethod()Lio/ktor/http/HttpMethod;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/request/DefaultHttpRequest;->method:Lio/ktor/http/HttpMethod;

    .line 25
    invoke-virtual {p2}, Lio/ktor/client/request/HttpRequestData;->getUrl()Lio/ktor/http/Url;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/request/DefaultHttpRequest;->url:Lio/ktor/http/Url;

    .line 27
    invoke-virtual {p2}, Lio/ktor/client/request/HttpRequestData;->getBody()Lio/ktor/http/content/OutgoingContent;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/request/DefaultHttpRequest;->content:Lio/ktor/http/content/OutgoingContent;

    .line 29
    invoke-virtual {p2}, Lio/ktor/client/request/HttpRequestData;->getHeaders()Lio/ktor/http/Headers;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/request/DefaultHttpRequest;->headers:Lio/ktor/http/Headers;

    .line 31
    invoke-virtual {p2}, Lio/ktor/client/request/HttpRequestData;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/request/DefaultHttpRequest;->attributes:Lio/ktor/util/Attributes;

    return-void
.end method


# virtual methods
.method public getAttributes()Lio/ktor/util/Attributes;
    .registers 1

    .line 31
    iget-object p0, p0, Lio/ktor/client/request/DefaultHttpRequest;->attributes:Lio/ktor/util/Attributes;

    return-object p0
.end method

.method public getCall()Lio/ktor/client/call/HttpClientCall;
    .registers 1

    .line 20
    iget-object p0, p0, Lio/ktor/client/request/DefaultHttpRequest;->call:Lio/ktor/client/call/HttpClientCall;

    return-object p0
.end method

.method public getContent()Lio/ktor/http/content/OutgoingContent;
    .registers 1

    .line 27
    iget-object p0, p0, Lio/ktor/client/request/DefaultHttpRequest;->content:Lio/ktor/http/content/OutgoingContent;

    return-object p0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .registers 1

    .line 21
    invoke-virtual {p0}, Lio/ktor/client/request/DefaultHttpRequest;->getCall()Lio/ktor/client/call/HttpClientCall;

    move-result-object p0

    invoke-virtual {p0}, Lio/ktor/client/call/HttpClientCall;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0
.end method

.method public getHeaders()Lio/ktor/http/Headers;
    .registers 1

    .line 29
    iget-object p0, p0, Lio/ktor/client/request/DefaultHttpRequest;->headers:Lio/ktor/http/Headers;

    return-object p0
.end method

.method public getMethod()Lio/ktor/http/HttpMethod;
    .registers 1

    .line 23
    iget-object p0, p0, Lio/ktor/client/request/DefaultHttpRequest;->method:Lio/ktor/http/HttpMethod;

    return-object p0
.end method

.method public getUrl()Lio/ktor/http/Url;
    .registers 1

    .line 25
    iget-object p0, p0, Lio/ktor/client/request/DefaultHttpRequest;->url:Lio/ktor/http/Url;

    return-object p0
.end method
