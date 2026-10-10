###### Class io.ktor.http.HttpHeadersKt (io.ktor.http.HttpHeadersKt)
.class public final Lio/ktor/http/HttpHeadersKt;
.super Ljava/lang/Object;
.source "HttpHeaders.kt"


# direct methods
.method public static final synthetic access$isDelimiter(C)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lio/ktor/http/HttpHeadersKt;->isDelimiter(C)Z

    move-result p0

    return p0
.end method

.method public static final isDelimiter(C)Z
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 221
    const-string v2, "\"(),/:;<=>?@[\\]{}"

    const/4 v3, 0x0

    invoke-static {v2, p0, v3, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method
