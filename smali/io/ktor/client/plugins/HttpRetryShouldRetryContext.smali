###### Class io.ktor.client.plugins.HttpRetryShouldRetryContext (io.ktor.client.plugins.HttpRetryShouldRetryContext)
.class public final Lio/ktor/client/plugins/HttpRetryShouldRetryContext;
.super Ljava/lang/Object;
.source "HttpRequestRetry.kt"


# instance fields
.field public final retryCount:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    iput p1, p0, Lio/ktor/client/plugins/HttpRetryShouldRetryContext;->retryCount:I

    return-void
.end method
