###### Class io.ktor.client.plugins.HttpRequestRetryKt$HttpRequestRetry$1 (io.ktor.client.plugins.HttpRequestRetryKt$HttpRequestRetry$1)
.class public final synthetic Lio/ktor/client/plugins/HttpRequestRetryKt$HttpRequestRetry$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "HttpRequestRetry.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/HttpRequestRetryKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Lio/ktor/client/plugins/HttpRequestRetryConfig;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/client/plugins/HttpRequestRetryKt$HttpRequestRetry$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/ktor/client/plugins/HttpRequestRetryKt$HttpRequestRetry$1;

    invoke-direct {v0}, Lio/ktor/client/plugins/HttpRequestRetryKt$HttpRequestRetry$1;-><init>()V

    sput-object v0, Lio/ktor/client/plugins/HttpRequestRetryKt$HttpRequestRetry$1;->INSTANCE:Lio/ktor/client/plugins/HttpRequestRetryKt$HttpRequestRetry$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .line 0
    const-string v4, "<init>()V"

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-class v2, Lio/ktor/client/plugins/HttpRequestRetryConfig;

    const-string v3, "<init>"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lio/ktor/client/plugins/HttpRequestRetryConfig;
    .registers 1

    .line 277
    new-instance p0, Lio/ktor/client/plugins/HttpRequestRetryConfig;

    invoke-direct {p0}, Lio/ktor/client/plugins/HttpRequestRetryConfig;-><init>()V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 277
    invoke-virtual {p0}, Lio/ktor/client/plugins/HttpRequestRetryKt$HttpRequestRetry$1;->invoke()Lio/ktor/client/plugins/HttpRequestRetryConfig;

    move-result-object p0

    return-object p0
.end method
