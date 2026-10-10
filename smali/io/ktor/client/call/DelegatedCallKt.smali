###### Class io.ktor.client.call.DelegatedCallKt (io.ktor.client.call.DelegatedCallKt)
.class public final Lio/ktor/client/call/DelegatedCallKt;
.super Ljava/lang/Object;
.source "DelegatedCall.kt"


# direct methods
.method public static final replaceResponse(Lio/ktor/client/call/HttpClientCall;Lio/ktor/http/Headers;Lkotlin/jvm/functions/Function1;)Lio/ktor/client/call/HttpClientCall;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/call/HttpClientCall;",
            "Lio/ktor/http/Headers;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/client/statement/HttpResponse;",
            "+",
            "Lio/ktor/utils/io/ByteReadChannel;",
            ">;)",
            "Lio/ktor/client/call/HttpClientCall;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lio/ktor/client/call/DelegatedCall;

    invoke-virtual {p0}, Lio/ktor/client/call/HttpClientCall;->getClient()Lio/ktor/client/HttpClient;

    move-result-object v1

    invoke-direct {v0, v1, p0, p2, p1}, Lio/ktor/client/call/DelegatedCall;-><init>(Lio/ktor/client/HttpClient;Lio/ktor/client/call/HttpClientCall;Lkotlin/jvm/functions/Function1;Lio/ktor/http/Headers;)V

    return-object v0
.end method

.method public static synthetic replaceResponse$default(Lio/ktor/client/call/HttpClientCall;Lio/ktor/http/Headers;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/ktor/client/call/HttpClientCall;
    .registers 5

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_c

    .line 36
    invoke-virtual {p0}, Lio/ktor/client/call/HttpClientCall;->getResponse()Lio/ktor/client/statement/HttpResponse;

    move-result-object p1

    invoke-interface {p1}, Lio/ktor/http/HttpMessage;->getHeaders()Lio/ktor/http/Headers;

    move-result-object p1

    .line 35
    :cond_c
    invoke-static {p0, p1, p2}, Lio/ktor/client/call/DelegatedCallKt;->replaceResponse(Lio/ktor/client/call/HttpClientCall;Lio/ktor/http/Headers;Lkotlin/jvm/functions/Function1;)Lio/ktor/client/call/HttpClientCall;

    move-result-object p0

    return-object p0
.end method
