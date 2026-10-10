###### Class io.ktor.client.plugins.HttpRetryEventData (io.ktor.client.plugins.HttpRetryEventData)
.class public final Lio/ktor/client/plugins/HttpRetryEventData;
.super Ljava/lang/Object;
.source "HttpRequestRetry.kt"


# instance fields
.field public final cause:Ljava/lang/Throwable;

.field public final request:Lio/ktor/client/request/HttpRequestBuilder;

.field public final response:Lio/ktor/client/statement/HttpResponse;

.field public final retryCount:I


# direct methods
.method public constructor <init>(Lio/ktor/client/request/HttpRequestBuilder;ILio/ktor/client/statement/HttpResponse;Ljava/lang/Throwable;)V
    .registers 6

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    iput-object p1, p0, Lio/ktor/client/plugins/HttpRetryEventData;->request:Lio/ktor/client/request/HttpRequestBuilder;

    .line 434
    iput p2, p0, Lio/ktor/client/plugins/HttpRetryEventData;->retryCount:I

    .line 435
    iput-object p3, p0, Lio/ktor/client/plugins/HttpRetryEventData;->response:Lio/ktor/client/statement/HttpResponse;

    .line 436
    iput-object p4, p0, Lio/ktor/client/plugins/HttpRetryEventData;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final getCause()Ljava/lang/Throwable;
    .registers 1

    .line 436
    iget-object p0, p0, Lio/ktor/client/plugins/HttpRetryEventData;->cause:Ljava/lang/Throwable;

    return-object p0
.end method

.method public final getRequest()Lio/ktor/client/request/HttpRequestBuilder;
    .registers 1

    .line 433
    iget-object p0, p0, Lio/ktor/client/plugins/HttpRetryEventData;->request:Lio/ktor/client/request/HttpRequestBuilder;

    return-object p0
.end method

.method public final getResponse()Lio/ktor/client/statement/HttpResponse;
    .registers 1

    .line 435
    iget-object p0, p0, Lio/ktor/client/plugins/HttpRetryEventData;->response:Lio/ktor/client/statement/HttpResponse;

    return-object p0
.end method

.method public final getRetryCount()I
    .registers 1

    .line 434
    iget p0, p0, Lio/ktor/client/plugins/HttpRetryEventData;->retryCount:I

    return p0
.end method
