###### Class io.ktor.util.internal.ExceptionUtilsJvmKt (io.ktor.util.internal.ExceptionUtilsJvmKt)
.class public final Lio/ktor/util/internal/ExceptionUtilsJvmKt;
.super Ljava/lang/Object;
.source "ExceptionUtilsJvm.kt"


# direct methods
.method public static final initCauseBridge(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cause"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method
