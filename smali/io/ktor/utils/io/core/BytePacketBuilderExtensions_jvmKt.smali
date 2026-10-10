###### Class io.ktor.utils.io.core.BytePacketBuilderExtensions_jvmKt (io.ktor.utils.io.core.BytePacketBuilderExtensions_jvmKt)
.class public final Lio/ktor/utils/io/core/BytePacketBuilderExtensions_jvmKt;
.super Ljava/lang/Object;
.source "BytePacketBuilderExtensions.jvm.kt"


# direct methods
.method public static final writeFully(Lkotlinx/io/Sink;Ljava/nio/ByteBuffer;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-interface {p0}, Lkotlinx/io/Sink;->getBuffer()Lkotlinx/io/Buffer;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlinx/io/BuffersJvmKt;->transferFrom(Lkotlinx/io/Buffer;Ljava/nio/ByteBuffer;)Lkotlinx/io/Buffer;

    return-void
.end method
