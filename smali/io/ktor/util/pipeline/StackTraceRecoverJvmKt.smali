###### Class io.ktor.util.pipeline.StackTraceRecoverJvmKt (io.ktor.util.pipeline.StackTraceRecoverJvmKt)
.class public final Lio/ktor/util/pipeline/StackTraceRecoverJvmKt;
.super Ljava/lang/Object;
.source "StackTraceRecoverJvm.kt"


# direct methods
.method public static final withCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2

    .line 0
    const-string p1, "<this>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
