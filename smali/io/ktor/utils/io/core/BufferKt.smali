###### Class io.ktor.utils.io.core.BufferKt (io.ktor.utils.io.core.BufferKt)
.class public final Lio/ktor/utils/io/core/BufferKt;
.super Ljava/lang/Object;
.source "Buffer.kt"


# direct methods
.method public static final canRead(Lkotlinx/io/Buffer;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->exhausted()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
