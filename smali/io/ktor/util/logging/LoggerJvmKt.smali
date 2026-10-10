###### Class io.ktor.util.logging.LoggerJvmKt (io.ktor.util.logging.LoggerJvmKt)
.class public final Lio/ktor/util/logging/LoggerJvmKt;
.super Ljava/lang/Object;
.source "LoggerJvm.kt"


# direct methods
.method public static final isTraceEnabled(Lorg/slf4j/Logger;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {p0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result p0

    return p0
.end method
