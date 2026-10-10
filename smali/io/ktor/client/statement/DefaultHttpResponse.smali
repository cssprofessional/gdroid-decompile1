###### Class io.ktor.client.statement.DefaultHttpResponse (io.ktor.client.statement.DefaultHttpResponse)
.class public final Lio/ktor/client/statement/DefaultHttpResponse;
.super Lio/ktor/client/statement/HttpResponse;
.source "DefaultHttpResponse.kt"


# instance fields
.field public final call:Lio/ktor/client/call/HttpClientCall;

.field public final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public final headers:Lio/ktor/http/Headers;

.field public final rawContent:Lio/ktor/utils/io/ByteReadChannel;

.field public final requestTime:Lio/ktor/util/date/GMTDate;

.field public final responseTime:Lio/ktor/util/date/GMTDate;

.field public final status:Lio/ktor/http/HttpStatusCode;

.field public final version:Lio/ktor/http/HttpProtocolVersion;


# direct methods
.method public constructor <init>(Lio/ktor/client/call/HttpClientCall;Lio/ktor/client/request/HttpResponseData;)V
    .registers 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lio/ktor/client/statement/HttpResponse;-><init>()V

    .line 16
    iput-object p1, p0, Lio/ktor/client/statement/DefaultHttpResponse;->call:Lio/ktor/client/call/HttpClientCall;

    .line 19
    invoke-virtual {p2}, Lio/ktor/client/request/HttpResponseData;->getCallContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/statement/DefaultHttpResponse;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 21
    invoke-virtual {p2}, Lio/ktor/client/request/HttpResponseData;->getStatusCode()Lio/ktor/http/HttpStatusCode;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/statement/DefaultHttpResponse;->status:Lio/ktor/http/HttpStatusCode;

    .line 23
    invoke-virtual {p2}, Lio/ktor/client/request/HttpResponseData;->getVersion()Lio/ktor/http/HttpProtocolVersion;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/statement/DefaultHttpResponse;->version:Lio/ktor/http/HttpProtocolVersion;

    .line 25
    invoke-virtual {p2}, Lio/ktor/client/request/HttpResponseData;->getRequestTime()Lio/ktor/util/date/GMTDate;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/statement/DefaultHttpResponse;->requestTime:Lio/ktor/util/date/GMTDate;

    .line 27
    invoke-virtual {p2}, Lio/ktor/client/request/HttpResponseData;->getResponseTime()Lio/ktor/util/date/GMTDate;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/statement/DefaultHttpResponse;->responseTime:Lio/ktor/util/date/GMTDate;

    .line 29
    invoke-virtual {p2}, Lio/ktor/client/request/HttpResponseData;->getBody()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lio/ktor/utils/io/ByteReadChannel;

    if-eqz v0, :cond_38

    check-cast p1, Lio/ktor/utils/io/ByteReadChannel;

    goto :goto_39

    :cond_38
    const/4 p1, 0x0

    :goto_39
    if-nez p1, :cond_41

    .line 30
    sget-object p1, Lio/ktor/utils/io/ByteReadChannel;->Companion:Lio/ktor/utils/io/ByteReadChannel$Companion;

    invoke-virtual {p1}, Lio/ktor/utils/io/ByteReadChannel$Companion;->getEmpty()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object p1

    .line 29
    :cond_41
    iput-object p1, p0, Lio/ktor/client/statement/DefaultHttpResponse;->rawContent:Lio/ktor/utils/io/ByteReadChannel;

    .line 32
    invoke-virtual {p2}, Lio/ktor/client/request/HttpResponseData;->getHeaders()Lio/ktor/http/Headers;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/statement/DefaultHttpResponse;->headers:Lio/ktor/http/Headers;

    return-void
.end method


# virtual methods
.method public getCall()Lio/ktor/client/call/HttpClientCall;
    .registers 1

    .line 16
    iget-object p0, p0, Lio/ktor/client/statement/DefaultHttpResponse;->call:Lio/ktor/client/call/HttpClientCall;

    return-object p0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .registers 1

    .line 19
    iget-object p0, p0, Lio/ktor/client/statement/DefaultHttpResponse;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method public getHeaders()Lio/ktor/http/Headers;
    .registers 1

    .line 32
    iget-object p0, p0, Lio/ktor/client/statement/DefaultHttpResponse;->headers:Lio/ktor/http/Headers;

    return-object p0
.end method

.method public getRawContent()Lio/ktor/utils/io/ByteReadChannel;
    .registers 1

    .line 29
    iget-object p0, p0, Lio/ktor/client/statement/DefaultHttpResponse;->rawContent:Lio/ktor/utils/io/ByteReadChannel;

    return-object p0
.end method

.method public getRequestTime()Lio/ktor/util/date/GMTDate;
    .registers 1

    .line 25
    iget-object p0, p0, Lio/ktor/client/statement/DefaultHttpResponse;->requestTime:Lio/ktor/util/date/GMTDate;

    return-object p0
.end method

.method public getResponseTime()Lio/ktor/util/date/GMTDate;
    .registers 1

    .line 27
    iget-object p0, p0, Lio/ktor/client/statement/DefaultHttpResponse;->responseTime:Lio/ktor/util/date/GMTDate;

    return-object p0
.end method

.method public getStatus()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 21
    iget-object p0, p0, Lio/ktor/client/statement/DefaultHttpResponse;->status:Lio/ktor/http/HttpStatusCode;

    return-object p0
.end method

.method public getVersion()Lio/ktor/http/HttpProtocolVersion;
    .registers 1

    .line 23
    iget-object p0, p0, Lio/ktor/client/statement/DefaultHttpResponse;->version:Lio/ktor/http/HttpProtocolVersion;

    return-object p0
.end method
