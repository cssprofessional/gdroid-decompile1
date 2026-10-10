###### Class io.ktor.utils.io.CloseHookByteWriteChannelKt (io.ktor.utils.io.CloseHookByteWriteChannelKt)
.class public final Lio/ktor/utils/io/CloseHookByteWriteChannelKt;
.super Ljava/lang/Object;
.source "CloseHookByteWriteChannel.kt"


# direct methods
.method public static final onClose(Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/jvm/functions/Function1;)Lio/ktor/utils/io/ByteWriteChannel;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/utils/io/ByteWriteChannel;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lio/ktor/utils/io/CloseHookByteWriteChannel;

    invoke-direct {v0, p0, p1}, Lio/ktor/utils/io/CloseHookByteWriteChannel;-><init>(Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method
