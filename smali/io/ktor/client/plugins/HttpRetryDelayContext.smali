###### Class io.ktor.client.plugins.HttpRetryDelayContext (io.ktor.client.plugins.HttpRetryDelayContext)
.class public final Lio/ktor/client/plugins/HttpRetryDelayContext;
.super Ljava/lang/Object;
.source "HttpRequestRetry.kt"


# instance fields
.field public final cause:Ljava/lang/Throwable;

.field public final request:Lio/ktor/client/request/HttpRequestBuilder;

.field public final response:Lio/ktor/client/statement/HttpResponse;


# direct methods
.method public constructor <init>(Lio/ktor/client/request/HttpRequestBuilder;Lio/ktor/client/statement/HttpResponse;Ljava/lang/Throwable;)V
    .registers 5

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    iput-object p1, p0, Lio/ktor/client/plugins/HttpRetryDelayContext;->request:Lio/ktor/client/request/HttpRequestBuilder;

    .line 404
    iput-object p2, p0, Lio/ktor/client/plugins/HttpRetryDelayContext;->response:Lio/ktor/client/statement/HttpResponse;

    .line 405
    iput-object p3, p0, Lio/ktor/client/plugins/HttpRetryDelayContext;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final getResponse()Lio/ktor/client/statement/HttpResponse;
    .registers 1

    .line 404
    iget-object p0, p0, Lio/ktor/client/plugins/HttpRetryDelayContext;->response:Lio/ktor/client/statement/HttpResponse;

    return-object p0
.end method
