###### Class io.ktor.utils.io.CountedByteReadChannelKt (io.ktor.utils.io.CountedByteReadChannelKt)
.class public final Lio/ktor/utils/io/CountedByteReadChannelKt;
.super Ljava/lang/Object;
.source "CountedByteReadChannel.kt"


# direct methods
.method public static final counted(Lio/ktor/utils/io/ByteReadChannel;)Lio/ktor/utils/io/CountedByteReadChannel;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lio/ktor/utils/io/CountedByteReadChannel;

    invoke-direct {v0, p0}, Lio/ktor/utils/io/CountedByteReadChannel;-><init>(Lio/ktor/utils/io/ByteReadChannel;)V

    return-object v0
.end method
