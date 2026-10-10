###### Class io.ktor.http.URLBuilderJvmKt (io.ktor.http.URLBuilderJvmKt)
.class public final Lio/ktor/http/URLBuilderJvmKt;
.super Ljava/lang/Object;
.source "URLBuilderJvm.kt"


# direct methods
.method public static final getOrigin(Lio/ktor/http/URLBuilder$Companion;)Ljava/lang/String;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    const-string p0, "http://localhost"

    return-object p0
.end method
