###### Class io.ktor.utils.io.jvm.javaio.BlockingKt (io.ktor.utils.io.jvm.javaio.BlockingKt)
.class public final Lio/ktor/utils/io/jvm/javaio/BlockingKt;
.super Ljava/lang/Object;
.source "Blocking.kt"


# direct methods
.method public static final toInputStream(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/coroutines/Job;)Ljava/io/InputStream;
    .registers 2

    const-string p1, "<this>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance p1, Lio/ktor/utils/io/jvm/javaio/BlockingKt$toInputStream$1;

    invoke-direct {p1, p0}, Lio/ktor/utils/io/jvm/javaio/BlockingKt$toInputStream$1;-><init>(Lio/ktor/utils/io/ByteReadChannel;)V

    return-object p1
.end method

###### Class io.ktor.utils.io.jvm.javaio.BlockingKt.AnonymousClass1 (io.ktor.utils.io.jvm.javaio.BlockingKt$toInputStream$1)
.class public final Lio/ktor/utils/io/jvm/javaio/BlockingKt$toInputStream$1;
.super Ljava/io/InputStream;
.source "Blocking.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/jvm/javaio/BlockingKt;->toInputStream(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/coroutines/Job;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $this_toInputStream:Lio/ktor/utils/io/ByteReadChannel;


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/ByteReadChannel;)V
    .registers 2

    iput-object p1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingKt$toInputStream$1;->$this_toInputStream:Lio/ktor/utils/io/ByteReadChannel;

    .line 20
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final blockingWait()V
    .registers 3

    .line 41
    new-instance v0, Lio/ktor/utils/io/jvm/javaio/BlockingKt$toInputStream$1$blockingWait$1;

    iget-object p0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingKt$toInputStream$1;->$this_toInputStream:Lio/ktor/utils/io/ByteReadChannel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/ktor/utils/io/jvm/javaio/BlockingKt$toInputStream$1$blockingWait$1;-><init>(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x1

    invoke-static {v1, v0, p0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public close()V
    .registers 1

    .line 47
    iget-object p0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingKt$toInputStream$1;->$this_toInputStream:Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {p0}, Lio/ktor/utils/io/ByteReadChannelKt;->cancel(Lio/ktor/utils/io/ByteReadChannel;)V

    return-void
.end method

.method public read()I
    .registers 3

    .line 23
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingKt$toInputStream$1;->$this_toInputStream:Lio/ktor/utils/io/ByteReadChannel;

    invoke-interface {v0}, Lio/ktor/utils/io/ByteReadChannel;->isClosedForRead()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_a

    return v1

    .line 24
    :cond_a
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingKt$toInputStream$1;->$this_toInputStream:Lio/ktor/utils/io/ByteReadChannel;

    invoke-interface {v0}, Lio/ktor/utils/io/ByteReadChannel;->getReadBuffer()Lkotlinx/io/Source;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/io/Source;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lio/ktor/utils/io/jvm/javaio/BlockingKt$toInputStream$1;->blockingWait()V

    .line 26
    :cond_19
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingKt$toInputStream$1;->$this_toInputStream:Lio/ktor/utils/io/ByteReadChannel;

    invoke-interface {v0}, Lio/ktor/utils/io/ByteReadChannel;->isClosedForRead()Z

    move-result v0

    if-eqz v0, :cond_22

    return v1

    .line 27
    :cond_22
    iget-object p0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingKt$toInputStream$1;->$this_toInputStream:Lio/ktor/utils/io/ByteReadChannel;

    invoke-interface {p0}, Lio/ktor/utils/io/ByteReadChannel;->getReadBuffer()Lkotlinx/io/Source;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/io/Source;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public read([BII)I
    .registers 6

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingKt$toInputStream$1;->$this_toInputStream:Lio/ktor/utils/io/ByteReadChannel;

    invoke-interface {v0}, Lio/ktor/utils/io/ByteReadChannel;->isClosedForRead()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_f

    return v1

    .line 32
    :cond_f
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingKt$toInputStream$1;->$this_toInputStream:Lio/ktor/utils/io/ByteReadChannel;

    invoke-interface {v0}, Lio/ktor/utils/io/ByteReadChannel;->getReadBuffer()Lkotlinx/io/Source;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/io/Source;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lio/ktor/utils/io/jvm/javaio/BlockingKt$toInputStream$1;->blockingWait()V

    .line 34
    :cond_1e
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingKt$toInputStream$1;->$this_toInputStream:Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v0}, Lio/ktor/utils/io/ByteReadChannelOperationsKt;->getAvailableForRead(Lio/ktor/utils/io/ByteReadChannel;)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 35
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingKt$toInputStream$1;->$this_toInputStream:Lio/ktor/utils/io/ByteReadChannel;

    invoke-interface {v0}, Lio/ktor/utils/io/ByteReadChannel;->getReadBuffer()Lkotlinx/io/Source;

    move-result-object v0

    add-int/2addr p3, p2

    invoke-interface {v0, p1, p2, p3}, Lkotlinx/io/Source;->readAtMostTo([BII)I

    move-result p1

    if-ltz p1, :cond_36

    return p1

    .line 37
    :cond_36
    iget-object p0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingKt$toInputStream$1;->$this_toInputStream:Lio/ktor/utils/io/ByteReadChannel;

    invoke-interface {p0}, Lio/ktor/utils/io/ByteReadChannel;->isClosedForRead()Z

    move-result p0

    if-eqz p0, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v1, 0x0

    :goto_40
    return v1
.end method
