###### Class io.ktor.client.call.SavedHttpRequest (io.ktor.client.call.SavedHttpRequest)
.class public final Lio/ktor/client/call/SavedHttpRequest;
.super Ljava/lang/Object;
.source "SavedCall.kt"

# interfaces
.implements Lio/ktor/client/request/HttpRequest;


# instance fields
.field public final synthetic $$delegate_0:Lio/ktor/client/request/HttpRequest;

.field public final call:Lio/ktor/client/call/SavedHttpCall;


# direct methods
.method public constructor <init>(Lio/ktor/client/call/SavedHttpCall;Lio/ktor/client/request/HttpRequest;)V
    .registers 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "origin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p2, p0, Lio/ktor/client/call/SavedHttpRequest;->$$delegate_0:Lio/ktor/client/request/HttpRequest;

    .line 60
    iput-object p1, p0, Lio/ktor/client/call/SavedHttpRequest;->call:Lio/ktor/client/call/SavedHttpCall;

    return-void
.end method


# virtual methods
.method public getAttributes()Lio/ktor/util/Attributes;
    .registers 1

    .line 0
    iget-object p0, p0, Lio/ktor/client/call/SavedHttpRequest;->$$delegate_0:Lio/ktor/client/request/HttpRequest;

    invoke-interface {p0}, Lio/ktor/client/request/HttpRequest;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getCall()Lio/ktor/client/call/HttpClientCall;
    .registers 1

    .line 59
    invoke-virtual {p0}, Lio/ktor/client/call/SavedHttpRequest;->getCall()Lio/ktor/client/call/SavedHttpCall;

    move-result-object p0

    return-object p0
.end method

.method public getCall()Lio/ktor/client/call/SavedHttpCall;
    .registers 1

    .line 60
    iget-object p0, p0, Lio/ktor/client/call/SavedHttpRequest;->call:Lio/ktor/client/call/SavedHttpCall;

    return-object p0
.end method

.method public getContent()Lio/ktor/http/content/OutgoingContent;
    .registers 1

    .line 0
    iget-object p0, p0, Lio/ktor/client/call/SavedHttpRequest;->$$delegate_0:Lio/ktor/client/request/HttpRequest;

    invoke-interface {p0}, Lio/ktor/client/request/HttpRequest;->getContent()Lio/ktor/http/content/OutgoingContent;

    move-result-object p0

    return-object p0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .registers 1

    .line 0
    iget-object p0, p0, Lio/ktor/client/call/SavedHttpRequest;->$$delegate_0:Lio/ktor/client/request/HttpRequest;

    invoke-interface {p0}, Lio/ktor/client/request/HttpRequest;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0
.end method

.method public getHeaders()Lio/ktor/http/Headers;
    .registers 1

    .line 0
    iget-object p0, p0, Lio/ktor/client/call/SavedHttpRequest;->$$delegate_0:Lio/ktor/client/request/HttpRequest;

    invoke-interface {p0}, Lio/ktor/http/HttpMessage;->getHeaders()Lio/ktor/http/Headers;

    move-result-object p0

    return-object p0
.end method

.method public getMethod()Lio/ktor/http/HttpMethod;
    .registers 1

    .line 0
    iget-object p0, p0, Lio/ktor/client/call/SavedHttpRequest;->$$delegate_0:Lio/ktor/client/request/HttpRequest;

    invoke-interface {p0}, Lio/ktor/client/request/HttpRequest;->getMethod()Lio/ktor/http/HttpMethod;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Lio/ktor/http/Url;
    .registers 1

    .line 0
    iget-object p0, p0, Lio/ktor/client/call/SavedHttpRequest;->$$delegate_0:Lio/ktor/client/request/HttpRequest;

    invoke-interface {p0}, Lio/ktor/client/request/HttpRequest;->getUrl()Lio/ktor/http/Url;

    move-result-object p0

    return-object p0
.end method
