###### Class kotlinx.coroutines.channels.ReceiveCatching (kotlinx.coroutines.channels.ReceiveCatching)
.class public final Lkotlinx/coroutines/channels/ReceiveCatching;
.super Ljava/lang/Object;
.source "BufferedChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/Waiter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/Waiter;"
    }
.end annotation


# instance fields
.field public final cont:Lkotlinx/coroutines/CancellableContinuationImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuationImpl<",
            "Lkotlinx/coroutines/channels/ChannelResult<",
            "+TE;>;>;"
        }
    .end annotation
.end field


# virtual methods
.method public invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/Segment<",
            "*>;I)V"
        }
    .end annotation

    .line 0
    iget-object p0, p0, Lkotlinx/coroutines/channels/ReceiveCatching;->cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V

    return-void
.end method
