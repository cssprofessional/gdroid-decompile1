###### Class io.ktor.utils.io.core.BuffersKt (io.ktor.utils.io.core.BuffersKt)
.class public final Lio/ktor/utils/io/core/BuffersKt;
.super Ljava/lang/Object;
.source "Buffers.kt"


# direct methods
.method public static final readBytes(Lkotlinx/io/Buffer;I)[B
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {p0, p1}, Lkotlinx/io/SourcesKt;->readByteArray(Lkotlinx/io/Source;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic readBytes$default(Lkotlinx/io/Buffer;IILjava/lang/Object;)[B
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_9

    .line 15
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide p1

    long-to-int p1, p1

    :cond_9
    invoke-static {p0, p1}, Lio/ktor/utils/io/core/BuffersKt;->readBytes(Lkotlinx/io/Buffer;I)[B

    move-result-object p0

    return-object p0
.end method
