###### Class io.ktor.utils.io.ClosedReadChannelException (io.ktor.utils.io.ClosedReadChannelException)
.class public final Lio/ktor/utils/io/ClosedReadChannelException;
.super Lio/ktor/utils/io/ClosedByteChannelException;
.source "Exceptions.kt"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lio/ktor/utils/io/ClosedReadChannelException;-><init>(Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ClosedByteChannelException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 30
    :cond_5
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ClosedReadChannelException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
