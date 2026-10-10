###### Class io.ktor.utils.io.CountedByteReadChannel (io.ktor.utils.io.CountedByteReadChannel)
.class public final Lio/ktor/utils/io/CountedByteReadChannel;
.super Ljava/lang/Object;
.source "CountedByteReadChannel.kt"

# interfaces
.implements Lio/ktor/utils/io/ByteReadChannel;


# instance fields
.field public final buffer:Lkotlinx/io/Buffer;

.field public consumed:J

.field public final delegate:Lio/ktor/utils/io/ByteReadChannel;

.field public initial:J


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/ByteReadChannel;)V
    .registers 3

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/utils/io/CountedByteReadChannel;->delegate:Lio/ktor/utils/io/ByteReadChannel;

    .line 20
    new-instance p1, Lkotlinx/io/Buffer;

    invoke-direct {p1}, Lkotlinx/io/Buffer;-><init>()V

    iput-object p1, p0, Lio/ktor/utils/io/CountedByteReadChannel;->buffer:Lkotlinx/io/Buffer;

    return-void
.end method


# virtual methods
.method public awaitContent(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/CountedByteReadChannel$awaitContent$1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/CountedByteReadChannel$awaitContent$1;

    iget v1, v0, Lio/ktor/utils/io/CountedByteReadChannel$awaitContent$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/utils/io/CountedByteReadChannel$awaitContent$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/ktor/utils/io/CountedByteReadChannel$awaitContent$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/CountedByteReadChannel$awaitContent$1;-><init>(Lio/ktor/utils/io/CountedByteReadChannel;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lio/ktor/utils/io/CountedByteReadChannel$awaitContent$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 44
    iget v2, v0, Lio/ktor/utils/io/CountedByteReadChannel$awaitContent$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_53

    :cond_29
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0}, Lio/ktor/utils/io/CountedByteReadChannel;->getReadBuffer()Lkotlinx/io/Buffer;

    move-result-object p2

    invoke-virtual {p2}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v4

    int-to-long v6, p1

    cmp-long p2, v4, v6

    if-ltz p2, :cond_46

    .line 46
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 48
    :cond_46
    iget-object p2, p0, Lio/ktor/utils/io/CountedByteReadChannel;->delegate:Lio/ktor/utils/io/ByteReadChannel;

    iput p1, v0, Lio/ktor/utils/io/CountedByteReadChannel$awaitContent$1;->I$0:I

    iput v3, v0, Lio/ktor/utils/io/CountedByteReadChannel$awaitContent$1;->label:I

    invoke-interface {p2, p1, v0}, Lio/ktor/utils/io/ByteReadChannel;->awaitContent(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_53

    return-object v1

    :cond_53
    :goto_53
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_63

    .line 49
    invoke-virtual {p0}, Lio/ktor/utils/io/CountedByteReadChannel;->transferFromDelegate()V

    .line 50
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_63
    const/4 p0, 0x0

    .line 52
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public cancel(Ljava/lang/Throwable;)V
    .registers 3

    .line 63
    iget-object v0, p0, Lio/ktor/utils/io/CountedByteReadChannel;->delegate:Lio/ktor/utils/io/ByteReadChannel;

    invoke-interface {v0, p1}, Lio/ktor/utils/io/ByteReadChannel;->cancel(Ljava/lang/Throwable;)V

    .line 64
    iget-object p0, p0, Lio/ktor/utils/io/CountedByteReadChannel;->buffer:Lkotlinx/io/Buffer;

    invoke-virtual {p0}, Lkotlinx/io/Buffer;->close()V

    return-void
.end method

.method public getClosedCause()Ljava/lang/Throwable;
    .registers 1

    .line 31
    iget-object p0, p0, Lio/ktor/utils/io/CountedByteReadChannel;->delegate:Lio/ktor/utils/io/ByteReadChannel;

    invoke-interface {p0}, Lio/ktor/utils/io/ByteReadChannel;->getClosedCause()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public getReadBuffer()Lkotlinx/io/Buffer;
    .registers 1

    .line 39
    invoke-virtual {p0}, Lio/ktor/utils/io/CountedByteReadChannel;->transferFromDelegate()V

    .line 40
    iget-object p0, p0, Lio/ktor/utils/io/CountedByteReadChannel;->buffer:Lkotlinx/io/Buffer;

    return-object p0
.end method

.method public bridge synthetic getReadBuffer()Lkotlinx/io/Source;
    .registers 1

    .line 19
    invoke-virtual {p0}, Lio/ktor/utils/io/CountedByteReadChannel;->getReadBuffer()Lkotlinx/io/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public final getTotalBytesRead()J
    .registers 3

    .line 26
    invoke-virtual {p0}, Lio/ktor/utils/io/CountedByteReadChannel;->updateConsumed()V

    .line 27
    iget-wide v0, p0, Lio/ktor/utils/io/CountedByteReadChannel;->consumed:J

    return-wide v0
.end method

.method public isClosedForRead()Z
    .registers 2

    .line 34
    iget-object v0, p0, Lio/ktor/utils/io/CountedByteReadChannel;->buffer:Lkotlinx/io/Buffer;

    invoke-virtual {v0}, Lkotlinx/io/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lio/ktor/utils/io/CountedByteReadChannel;->delegate:Lio/ktor/utils/io/ByteReadChannel;

    invoke-interface {p0}, Lio/ktor/utils/io/ByteReadChannel;->isClosedForRead()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public final transferFromDelegate()V
    .registers 5

    .line 57
    invoke-virtual {p0}, Lio/ktor/utils/io/CountedByteReadChannel;->updateConsumed()V

    .line 58
    iget-object v0, p0, Lio/ktor/utils/io/CountedByteReadChannel;->buffer:Lkotlinx/io/Buffer;

    iget-object v1, p0, Lio/ktor/utils/io/CountedByteReadChannel;->delegate:Lio/ktor/utils/io/ByteReadChannel;

    invoke-interface {v1}, Lio/ktor/utils/io/ByteReadChannel;->getReadBuffer()Lkotlinx/io/Source;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlinx/io/Buffer;->transferFrom(Lkotlinx/io/RawSource;)J

    move-result-wide v0

    .line 59
    iget-wide v2, p0, Lio/ktor/utils/io/CountedByteReadChannel;->initial:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lio/ktor/utils/io/CountedByteReadChannel;->initial:J

    return-void
.end method

.method public final updateConsumed()V
    .registers 7

    .line 68
    iget-wide v0, p0, Lio/ktor/utils/io/CountedByteReadChannel;->consumed:J

    iget-wide v2, p0, Lio/ktor/utils/io/CountedByteReadChannel;->initial:J

    iget-object v4, p0, Lio/ktor/utils/io/CountedByteReadChannel;->buffer:Lkotlinx/io/Buffer;

    invoke-virtual {v4}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/ktor/utils/io/CountedByteReadChannel;->consumed:J

    .line 69
    iget-object v0, p0, Lio/ktor/utils/io/CountedByteReadChannel;->buffer:Lkotlinx/io/Buffer;

    invoke-virtual {v0}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Lio/ktor/utils/io/CountedByteReadChannel;->initial:J

    return-void
.end method

###### Class io.ktor.utils.io.CountedByteReadChannel.AnonymousClass1 (io.ktor.utils.io.CountedByteReadChannel$awaitContent$1)
.class public final Lio/ktor/utils/io/CountedByteReadChannel$awaitContent$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "CountedByteReadChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/CountedByteReadChannel;->awaitContent(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.utils.io.CountedByteReadChannel"
    f = "CountedByteReadChannel.kt"
    l = {
        0x30
    }
    m = "awaitContent"
    v = 0x1
.end annotation


# instance fields
.field public I$0:I

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lio/ktor/utils/io/CountedByteReadChannel;


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/CountedByteReadChannel;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/CountedByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/CountedByteReadChannel$awaitContent$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/utils/io/CountedByteReadChannel$awaitContent$1;->this$0:Lio/ktor/utils/io/CountedByteReadChannel;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/ktor/utils/io/CountedByteReadChannel$awaitContent$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/utils/io/CountedByteReadChannel$awaitContent$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/utils/io/CountedByteReadChannel$awaitContent$1;->label:I

    iget-object p1, p0, Lio/ktor/utils/io/CountedByteReadChannel$awaitContent$1;->this$0:Lio/ktor/utils/io/CountedByteReadChannel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lio/ktor/utils/io/CountedByteReadChannel;->awaitContent(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
