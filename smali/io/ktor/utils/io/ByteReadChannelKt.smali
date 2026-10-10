###### Class io.ktor.utils.io.ByteReadChannelKt (io.ktor.utils.io.ByteReadChannelKt)
.class public final Lio/ktor/utils/io/ByteReadChannelKt;
.super Ljava/lang/Object;
.source "ByteReadChannel.kt"


# direct methods
.method public static final cancel(Lio/ktor/utils/io/ByteReadChannel;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Channel was cancelled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lio/ktor/utils/io/ByteReadChannel;->cancel(Ljava/lang/Throwable;)V

    return-void
.end method
