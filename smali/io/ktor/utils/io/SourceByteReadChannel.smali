###### Class io.ktor.utils.io.SourceByteReadChannel (io.ktor.utils.io.SourceByteReadChannel)
.class public final Lio/ktor/utils/io/SourceByteReadChannel;
.super Ljava/lang/Object;
.source "SourceByteReadChannel.kt"

# interfaces
.implements Lio/ktor/utils/io/ByteReadChannel;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSourceByteReadChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SourceByteReadChannel.kt\nio/ktor/utils/io/SourceByteReadChannel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,41:1\n1#2:42\n*E\n"
.end annotation


# instance fields
.field private volatile closed:Lio/ktor/utils/io/CloseToken;

.field public final source:Lkotlinx/io/Source;


# direct methods
.method public constructor <init>(Lkotlinx/io/Source;)V
    .registers 3

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/utils/io/SourceByteReadChannel;->source:Lkotlinx/io/Source;

    return-void
.end method


# virtual methods
.method public awaitContent(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
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

    .line 31
    invoke-virtual {p0}, Lio/ktor/utils/io/SourceByteReadChannel;->getClosedCause()Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_12

    .line 32
    iget-object p0, p0, Lio/ktor/utils/io/SourceByteReadChannel;->source:Lkotlinx/io/Source;

    int-to-long p1, p1

    invoke-interface {p0, p1, p2}, Lkotlinx/io/Source;->request(J)Z

    move-result p0

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 31
    :cond_12
    throw p2
.end method

.method public cancel(Ljava/lang/Throwable;)V
    .registers 5

    .line 36
    iget-object v0, p0, Lio/ktor/utils/io/SourceByteReadChannel;->closed:Lio/ktor/utils/io/CloseToken;

    if-eqz v0, :cond_5

    return-void

    .line 37
    :cond_5
    iget-object v0, p0, Lio/ktor/utils/io/SourceByteReadChannel;->source:Lkotlinx/io/Source;

    invoke-interface {v0}, Lkotlinx/io/RawSource;->close()V

    .line 38
    new-instance v0, Lio/ktor/utils/io/CloseToken;

    new-instance v1, Ljava/io/IOException;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_18

    :cond_16
    const-string v2, "Channel was cancelled"

    :cond_18
    invoke-direct {v1, v2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Lio/ktor/utils/io/CloseToken;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lio/ktor/utils/io/SourceByteReadChannel;->closed:Lio/ktor/utils/io/CloseToken;

    return-void
.end method

.method public getClosedCause()Ljava/lang/Throwable;
    .registers 3

    .line 17
    iget-object p0, p0, Lio/ktor/utils/io/SourceByteReadChannel;->closed:Lio/ktor/utils/io/CloseToken;

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lio/ktor/utils/io/CloseToken;->wrapCause$default(Lio/ktor/utils/io/CloseToken;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method public getReadBuffer()Lkotlinx/io/Source;
    .registers 2

    .line 26
    invoke-virtual {p0}, Lio/ktor/utils/io/SourceByteReadChannel;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_d

    .line 27
    iget-object p0, p0, Lio/ktor/utils/io/SourceByteReadChannel;->source:Lkotlinx/io/Source;

    invoke-interface {p0}, Lkotlinx/io/Source;->getBuffer()Lkotlinx/io/Buffer;

    move-result-object p0

    return-object p0

    .line 26
    :cond_d
    throw v0
.end method

.method public isClosedForRead()Z
    .registers 1

    .line 20
    iget-object p0, p0, Lio/ktor/utils/io/SourceByteReadChannel;->source:Lkotlinx/io/Source;

    invoke-interface {p0}, Lkotlinx/io/Source;->exhausted()Z

    move-result p0

    return p0
.end method
