###### Class io.ktor.utils.io.ReaderScope (io.ktor.utils.io.ReaderScope)
.class public final Lio/ktor/utils/io/ReaderScope;
.super Ljava/lang/Object;
.source "ByteReadChannelOperations.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# instance fields
.field public final channel:Lio/ktor/utils/io/ByteReadChannel;

.field public final coroutineContext:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/CoroutineContext;)V
    .registers 4

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-object p1, p0, Lio/ktor/utils/io/ReaderScope;->channel:Lio/ktor/utils/io/ByteReadChannel;

    .line 293
    iput-object p2, p0, Lio/ktor/utils/io/ReaderScope;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-void
.end method


# virtual methods
.method public final getChannel()Lio/ktor/utils/io/ByteReadChannel;
    .registers 1

    .line 292
    iget-object p0, p0, Lio/ktor/utils/io/ReaderScope;->channel:Lio/ktor/utils/io/ByteReadChannel;

    return-object p0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .registers 1

    .line 293
    iget-object p0, p0, Lio/ktor/utils/io/ReaderScope;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method
