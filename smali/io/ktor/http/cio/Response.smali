###### Class io.ktor.http.cio.Response (io.ktor.http.cio.Response)
.class public final Lio/ktor/http/cio/Response;
.super Lio/ktor/http/cio/HttpMessage;
.source "RequestResponse.kt"


# instance fields
.field public final status:I

.field public final statusText:Ljava/lang/CharSequence;

.field public final version:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lio/ktor/http/cio/HttpHeadersMap;Lio/ktor/http/cio/internals/CharArrayBuilder;)V
    .registers 7

    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0, p4, p5}, Lio/ktor/http/cio/HttpMessage;-><init>(Lio/ktor/http/cio/HttpHeadersMap;Lio/ktor/http/cio/internals/CharArrayBuilder;)V

    .line 70
    iput-object p1, p0, Lio/ktor/http/cio/Response;->version:Ljava/lang/CharSequence;

    .line 71
    iput p2, p0, Lio/ktor/http/cio/Response;->status:I

    .line 72
    iput-object p3, p0, Lio/ktor/http/cio/Response;->statusText:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final getStatus()I
    .registers 1

    .line 71
    iget p0, p0, Lio/ktor/http/cio/Response;->status:I

    return p0
.end method

.method public final getStatusText()Ljava/lang/CharSequence;
    .registers 1

    .line 72
    iget-object p0, p0, Lio/ktor/http/cio/Response;->statusText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getVersion()Ljava/lang/CharSequence;
    .registers 1

    .line 70
    iget-object p0, p0, Lio/ktor/http/cio/Response;->version:Ljava/lang/CharSequence;

    return-object p0
.end method
