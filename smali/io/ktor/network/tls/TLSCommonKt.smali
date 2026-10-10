###### Class io.ktor.network.tls.TLSCommonKt (io.ktor.network.tls.TLSCommonKt)
.class public final Lio/ktor/network/tls/TLSCommonKt;
.super Ljava/lang/Object;
.source "TLSCommon.kt"


# direct methods
.method public static final tls(Lio/ktor/network/sockets/Connection;Lkotlin/coroutines/CoroutineContext;Lio/ktor/network/tls/TLSConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/sockets/Connection;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lio/ktor/network/tls/TLSConfig;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/sockets/Socket;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/network/tls/TLSCommonKt$tls$3;

    if-eqz v0, :cond_14

    move-object v0, p3

    check-cast v0, Lio/ktor/network/tls/TLSCommonKt$tls$3;

    iget v1, v0, Lio/ktor/network/tls/TLSCommonKt$tls$3;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_14

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/network/tls/TLSCommonKt$tls$3;->label:I

    :goto_12
    move-object v6, v0

    goto :goto_1a

    :cond_14
    new-instance v0, Lio/ktor/network/tls/TLSCommonKt$tls$3;

    invoke-direct {v0, p3}, Lio/ktor/network/tls/TLSCommonKt$tls$3;-><init>(Lkotlin/coroutines/Continuation;)V

    goto :goto_12

    :goto_1a
    iget-object p3, v6, Lio/ktor/network/tls/TLSCommonKt$tls$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 42
    iget v1, v6, Lio/ktor/network/tls/TLSCommonKt$tls$3;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_41

    if-ne v1, v2, :cond_39

    iget-object p0, v6, Lio/ktor/network/tls/TLSCommonKt$tls$3;->L$2:Ljava/lang/Object;

    check-cast p0, Lio/ktor/network/tls/TLSConfig;

    iget-object p0, v6, Lio/ktor/network/tls/TLSCommonKt$tls$3;->L$1:Ljava/lang/Object;

    check-cast p0, Lkotlin/coroutines/CoroutineContext;

    iget-object p0, v6, Lio/ktor/network/tls/TLSCommonKt$tls$3;->L$0:Ljava/lang/Object;

    check-cast p0, Lio/ktor/network/sockets/Connection;

    :try_start_33
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_6a

    :catchall_37
    move-exception p1

    goto :goto_6d

    :cond_39
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_41
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    :try_start_44
    invoke-virtual {p0}, Lio/ktor/network/sockets/Connection;->getSocket()Lio/ktor/network/sockets/Socket;

    move-result-object v1

    invoke-virtual {p0}, Lio/ktor/network/sockets/Connection;->getInput()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object p3

    invoke-virtual {p0}, Lio/ktor/network/sockets/Connection;->getOutput()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v3

    iput-object p0, v6, Lio/ktor/network/tls/TLSCommonKt$tls$3;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v6, Lio/ktor/network/tls/TLSCommonKt$tls$3;->L$1:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v6, Lio/ktor/network/tls/TLSCommonKt$tls$3;->L$2:Ljava/lang/Object;

    iput v2, v6, Lio/ktor/network/tls/TLSCommonKt$tls$3;->label:I

    move-object v2, p3

    move-object v4, p2

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lio/ktor/network/tls/TLSClientSessionJvmKt;->openTLSSession(Lio/ktor/network/sockets/Socket;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/network/tls/TLSConfig;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_6a

    return-object v0

    :cond_6a
    :goto_6a
    check-cast p3, Lio/ktor/network/sockets/Socket;
    :try_end_6c
    .catchall {:try_start_44 .. :try_end_6c} :catchall_37

    return-object p3

    .line 49
    :goto_6d
    invoke-virtual {p0}, Lio/ktor/network/sockets/Connection;->getInput()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object p2

    invoke-interface {p2, p1}, Lio/ktor/utils/io/ByteReadChannel;->cancel(Ljava/lang/Throwable;)V

    .line 50
    invoke-virtual {p0}, Lio/ktor/network/sockets/Connection;->getOutput()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object p2

    invoke-static {p2, p1}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->close(Lio/ktor/utils/io/ByteWriteChannel;Ljava/lang/Throwable;)V

    .line 51
    invoke-virtual {p0}, Lio/ktor/network/sockets/Connection;->getSocket()Lio/ktor/network/sockets/Socket;

    move-result-object p0

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 52
    throw p1
.end method

.method public static final tls(Lio/ktor/network/sockets/Connection;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/sockets/Connection;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/network/tls/TLSConfigBuilder;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/sockets/Socket;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 69
    new-instance v0, Lio/ktor/network/tls/TLSConfigBuilder;

    invoke-direct {v0}, Lio/ktor/network/tls/TLSConfigBuilder;-><init>()V

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lio/ktor/network/tls/TLSConfigBuilder;->build()Lio/ktor/network/tls/TLSConfig;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lio/ktor/network/tls/TLSCommonKt;->tls(Lio/ktor/network/sockets/Connection;Lkotlin/coroutines/CoroutineContext;Lio/ktor/network/tls/TLSConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.network.tls.TLSCommonKt.AnonymousClass3 (io.ktor.network.tls.TLSCommonKt$tls$3)
.class public final Lio/ktor/network/tls/TLSCommonKt$tls$3;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "TLSCommon.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/tls/TLSCommonKt;->tls(Lio/ktor/network/sockets/Connection;Lkotlin/coroutines/CoroutineContext;Lio/ktor/network/tls/TLSConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.network.tls.TLSCommonKt"
    f = "TLSCommon.kt"
    l = {
        0x2f
    }
    m = "tls"
    v = 0x1
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/tls/TLSCommonKt$tls$3;",
            ">;)V"
        }
    .end annotation

    .line 0
    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/ktor/network/tls/TLSCommonKt$tls$3;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/network/tls/TLSCommonKt$tls$3;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/network/tls/TLSCommonKt$tls$3;->label:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p0}, Lio/ktor/network/tls/TLSCommonKt;->tls(Lio/ktor/network/sockets/Connection;Lkotlin/coroutines/CoroutineContext;Lio/ktor/network/tls/TLSConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
