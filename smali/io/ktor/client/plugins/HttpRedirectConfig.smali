###### Class io.ktor.client.plugins.HttpRedirectConfig (io.ktor.client.plugins.HttpRedirectConfig)
.class public final Lio/ktor/client/plugins/HttpRedirectConfig;
.super Ljava/lang/Object;
.source "HttpRedirect.kt"


# instance fields
.field public allowHttpsDowngrade:Z

.field public checkHttpMethod:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lio/ktor/client/plugins/HttpRedirectConfig;->checkHttpMethod:Z

    return-void
.end method


# virtual methods
.method public final getAllowHttpsDowngrade()Z
    .registers 1

    .line 46
    iget-boolean p0, p0, Lio/ktor/client/plugins/HttpRedirectConfig;->allowHttpsDowngrade:Z

    return p0
.end method

.method public final getCheckHttpMethod()Z
    .registers 1

    .line 39
    iget-boolean p0, p0, Lio/ktor/client/plugins/HttpRedirectConfig;->checkHttpMethod:Z

    return p0
.end method
