###### Class io.ktor.utils.io.DeprecationKt (io.ktor.utils.io.DeprecationKt)
.class public final Lio/ktor/utils/io/DeprecationKt;
.super Ljava/lang/Object;
.source "Deprecation.kt"


# direct methods
.method public static final readText(Lkotlinx/io/Source;)Ljava/lang/String;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0}, Lkotlinx/io/Utf8Kt;->readString(Lkotlinx/io/Source;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
