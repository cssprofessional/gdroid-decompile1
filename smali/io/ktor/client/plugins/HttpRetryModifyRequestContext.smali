###### Class io.ktor.client.plugins.HttpRetryModifyRequestContext (io.ktor.client.plugins.HttpRetryModifyRequestContext)
.class public final Lio/ktor/client/plugins/HttpRetryModifyRequestContext;
.super Ljava/lang/Object;
.source "HttpRequestRetry.kt"


# instance fields
.field public final cause:Ljava/lang/Throwable;

.field public final request:Lio/ktor/client/request/HttpRequestBuilder;

.field public final response:Lio/ktor/client/statement/HttpResponse;

.field public final retryCount:I


# direct methods
.method public constructor <init>(Lio/ktor/client/request/HttpRequestBuilder;Lio/ktor/client/statement/HttpResponse;Ljava/lang/Throwable;I)V
    .registers 6

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput-object p1, p0, Lio/ktor/client/plugins/HttpRetryModifyRequestContext;->request:Lio/ktor/client/request/HttpRequestBuilder;

    .line 419
    iput-object p2, p0, Lio/ktor/client/plugins/HttpRetryModifyRequestContext;->response:Lio/ktor/client/statement/HttpResponse;

    .line 420
    iput-object p3, p0, Lio/ktor/client/plugins/HttpRetryModifyRequestContext;->cause:Ljava/lang/Throwable;

    .line 424
    iput p4, p0, Lio/ktor/client/plugins/HttpRetryModifyRequestContext;->retryCount:I

    return-void
.end method
