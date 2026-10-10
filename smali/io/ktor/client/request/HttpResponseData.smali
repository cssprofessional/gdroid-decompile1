###### Class io.ktor.client.request.HttpResponseData (io.ktor.client.request.HttpResponseData)
.class public final Lio/ktor/client/request/HttpResponseData;
.super Ljava/lang/Object;
.source "HttpRequest.kt"


# instance fields
.field public final body:Ljava/lang/Object;

.field public final callContext:Lkotlin/coroutines/CoroutineContext;

.field public final headers:Lio/ktor/http/Headers;

.field public final requestTime:Lio/ktor/util/date/GMTDate;

.field public final responseTime:Lio/ktor/util/date/GMTDate;

.field public final statusCode:Lio/ktor/http/HttpStatusCode;

.field public final version:Lio/ktor/http/HttpProtocolVersion;


# direct methods
.method public constructor <init>(Lio/ktor/http/HttpStatusCode;Lio/ktor/util/date/GMTDate;Lio/ktor/http/Headers;Lio/ktor/http/HttpProtocolVersion;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V
    .registers 8

    const-string v0, "statusCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestTime"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callContext"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput-object p1, p0, Lio/ktor/client/request/HttpResponseData;->statusCode:Lio/ktor/http/HttpStatusCode;

    .line 278
    iput-object p2, p0, Lio/ktor/client/request/HttpResponseData;->requestTime:Lio/ktor/util/date/GMTDate;

    .line 279
    iput-object p3, p0, Lio/ktor/client/request/HttpResponseData;->headers:Lio/ktor/http/Headers;

    .line 280
    iput-object p4, p0, Lio/ktor/client/request/HttpResponseData;->version:Lio/ktor/http/HttpProtocolVersion;

    .line 281
    iput-object p5, p0, Lio/ktor/client/request/HttpResponseData;->body:Ljava/lang/Object;

    .line 282
    iput-object p6, p0, Lio/ktor/client/request/HttpResponseData;->callContext:Lkotlin/coroutines/CoroutineContext;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 284
    invoke-static {p1, p2, p1}, Lio/ktor/util/date/DateJvmKt;->GMTDate$default(Ljava/lang/Long;ILjava/lang/Object;)Lio/ktor/util/date/GMTDate;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/request/HttpResponseData;->responseTime:Lio/ktor/util/date/GMTDate;

    return-void
.end method


# virtual methods
.method public final getBody()Ljava/lang/Object;
    .registers 1

    .line 281
    iget-object p0, p0, Lio/ktor/client/request/HttpResponseData;->body:Ljava/lang/Object;

    return-object p0
.end method

.method public final getCallContext()Lkotlin/coroutines/CoroutineContext;
    .registers 1

    .line 282
    iget-object p0, p0, Lio/ktor/client/request/HttpResponseData;->callContext:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method public final getHeaders()Lio/ktor/http/Headers;
    .registers 1

    .line 279
    iget-object p0, p0, Lio/ktor/client/request/HttpResponseData;->headers:Lio/ktor/http/Headers;

    return-object p0
.end method

.method public final getRequestTime()Lio/ktor/util/date/GMTDate;
    .registers 1

    .line 278
    iget-object p0, p0, Lio/ktor/client/request/HttpResponseData;->requestTime:Lio/ktor/util/date/GMTDate;

    return-object p0
.end method

.method public final getResponseTime()Lio/ktor/util/date/GMTDate;
    .registers 1

    .line 284
    iget-object p0, p0, Lio/ktor/client/request/HttpResponseData;->responseTime:Lio/ktor/util/date/GMTDate;

    return-object p0
.end method

.method public final getStatusCode()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 277
    iget-object p0, p0, Lio/ktor/client/request/HttpResponseData;->statusCode:Lio/ktor/http/HttpStatusCode;

    return-object p0
.end method

.method public final getVersion()Lio/ktor/http/HttpProtocolVersion;
    .registers 1

    .line 280
    iget-object p0, p0, Lio/ktor/client/request/HttpResponseData;->version:Lio/ktor/http/HttpProtocolVersion;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpResponseData=(statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/ktor/client/request/HttpResponseData;->statusCode:Lio/ktor/http/HttpStatusCode;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
