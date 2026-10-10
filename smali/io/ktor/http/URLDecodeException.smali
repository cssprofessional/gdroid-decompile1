###### Class io.ktor.http.URLDecodeException (io.ktor.http.URLDecodeException)
.class public final Lio/ktor/http/URLDecodeException;
.super Ljava/lang/Exception;
.source "Codecs.kt"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
