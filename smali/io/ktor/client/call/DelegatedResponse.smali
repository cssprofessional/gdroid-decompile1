###### Class io.ktor.client.call.DelegatedResponse (io.ktor.client.call.DelegatedResponse)
.class public final Lio/ktor/client/call/DelegatedResponse;
.super Lio/ktor/client/statement/HttpResponse;
.source "DelegatedCall.kt"


# instance fields
.field public final call:Lio/ktor/client/call/HttpClientCall;

.field public final content:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lio/ktor/client/statement/HttpResponse;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            ">;"
        }
    .end annotation
.end field

.field public final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public final headers:Lio/ktor/http/Headers;

.field public final origin:Lio/ktor/client/statement/HttpResponse;


# direct methods
.method public constructor <init>(Lio/ktor/client/call/HttpClientCall;Lio/ktor/client/statement/HttpResponse;Lkotlin/jvm/functions/Function1;Lio/ktor/http/Headers;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/call/HttpClientCall;",
            "Lio/ktor/client/statement/HttpResponse;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/client/statement/HttpResponse;",
            "+",
            "Lio/ktor/utils/io/ByteReadChannel;",
            ">;",
            "Lio/ktor/http/Headers;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "origin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lio/ktor/client/statement/HttpResponse;-><init>()V

    .line 62
    iput-object p1, p0, Lio/ktor/client/call/DelegatedResponse;->call:Lio/ktor/client/call/HttpClientCall;

    .line 63
    iput-object p2, p0, Lio/ktor/client/call/DelegatedResponse;->origin:Lio/ktor/client/statement/HttpResponse;

    .line 64
    iput-object p3, p0, Lio/ktor/client/call/DelegatedResponse;->content:Lkotlin/jvm/functions/Function1;

    .line 65
    iput-object p4, p0, Lio/ktor/client/call/DelegatedResponse;->headers:Lio/ktor/http/Headers;

    .line 70
    invoke-interface {p2}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/call/DelegatedResponse;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-void
.end method


# virtual methods
.method public getCall()Lio/ktor/client/call/HttpClientCall;
    .registers 1

    .line 62
    iget-object p0, p0, Lio/ktor/client/call/DelegatedResponse;->call:Lio/ktor/client/call/HttpClientCall;

    return-object p0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .registers 1

    .line 70
    iget-object p0, p0, Lio/ktor/client/call/DelegatedResponse;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method public getHeaders()Lio/ktor/http/Headers;
    .registers 1

    .line 65
    iget-object p0, p0, Lio/ktor/client/call/DelegatedResponse;->headers:Lio/ktor/http/Headers;

    return-object p0
.end method

.method public getRawContent()Lio/ktor/utils/io/ByteReadChannel;
    .registers 2

    .line 68
    iget-object v0, p0, Lio/ktor/client/call/DelegatedResponse;->content:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lio/ktor/client/call/DelegatedResponse;->origin:Lio/ktor/client/statement/HttpResponse;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/ktor/utils/io/ByteReadChannel;

    return-object p0
.end method

.method public getRequestTime()Lio/ktor/util/date/GMTDate;
    .registers 1

    .line 76
    iget-object p0, p0, Lio/ktor/client/call/DelegatedResponse;->origin:Lio/ktor/client/statement/HttpResponse;

    invoke-virtual {p0}, Lio/ktor/client/statement/HttpResponse;->getRequestTime()Lio/ktor/util/date/GMTDate;

    move-result-object p0

    return-object p0
.end method

.method public getResponseTime()Lio/ktor/util/date/GMTDate;
    .registers 1

    .line 78
    iget-object p0, p0, Lio/ktor/client/call/DelegatedResponse;->origin:Lio/ktor/client/statement/HttpResponse;

    invoke-virtual {p0}, Lio/ktor/client/statement/HttpResponse;->getResponseTime()Lio/ktor/util/date/GMTDate;

    move-result-object p0

    return-object p0
.end method

.method public getStatus()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 72
    iget-object p0, p0, Lio/ktor/client/call/DelegatedResponse;->origin:Lio/ktor/client/statement/HttpResponse;

    invoke-virtual {p0}, Lio/ktor/client/statement/HttpResponse;->getStatus()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public getVersion()Lio/ktor/http/HttpProtocolVersion;
    .registers 1

    .line 74
    iget-object p0, p0, Lio/ktor/client/call/DelegatedResponse;->origin:Lio/ktor/client/statement/HttpResponse;

    invoke-virtual {p0}, Lio/ktor/client/statement/HttpResponse;->getVersion()Lio/ktor/http/HttpProtocolVersion;

    move-result-object p0

    return-object p0
.end method
