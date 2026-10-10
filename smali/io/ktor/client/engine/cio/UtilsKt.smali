###### Class io.ktor.client.engine.cio.UtilsKt (io.ktor.client.engine.cio.UtilsKt)
.class public final Lio/ktor/client/engine/cio/UtilsKt;
.super Ljava/lang/Object;
.source "utils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nutils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 utils.kt\nio/ktor/client/engine/cio/UtilsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,313:1\n1#2:314\n*E\n"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$RDyNFnlV03rBtuaktrGPxqk69mg(Lio/ktor/http/cio/RequestResponseBuilder;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lio/ktor/client/engine/cio/UtilsKt;->writeHeaders$lambda$1(Lio/ktor/http/cio/RequestResponseBuilder;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WTN-fpygKd3bg6oGtiXgunmIi4s(Lio/ktor/utils/io/ByteWriteChannel;Ljava/lang/Throwable;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/ktor/client/engine/cio/UtilsKt;->withoutClosePropagation$lambda$0(Lio/ktor/utils/io/ByteWriteChannel;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$processOutgoingContent(Lio/ktor/client/request/HttpRequestData;Lio/ktor/http/content/OutgoingContent;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/client/engine/cio/UtilsKt;->processOutgoingContent(Lio/ktor/client/request/HttpRequestData;Lio/ktor/http/content/OutgoingContent;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final expectContinue(Ljava/lang/String;Lio/ktor/http/content/OutgoingContent;)Z
    .registers 3

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_d

    .line 312
    instance-of p0, p1, Lio/ktor/http/content/OutgoingContent$NoContent;

    if-nez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public static final getUnwrapped(Lio/ktor/http/content/OutgoingContent;)Lio/ktor/http/content/OutgoingContent;
    .registers 2

    .line 150
    instance-of v0, p0, Lio/ktor/http/content/OutgoingContent$ContentWrapper;

    if-eqz v0, :cond_e

    check-cast p0, Lio/ktor/http/content/OutgoingContent$ContentWrapper;

    invoke-virtual {p0}, Lio/ktor/http/content/OutgoingContent$ContentWrapper;->delegate()Lio/ktor/http/content/OutgoingContent;

    move-result-object p0

    invoke-static {p0}, Lio/ktor/client/engine/cio/UtilsKt;->getUnwrapped(Lio/ktor/http/content/OutgoingContent;)Lio/ktor/http/content/OutgoingContent;

    move-result-object p0

    :cond_e
    return-object p0
.end method

.method public static final handleHalfClosed(Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;Z)Lio/ktor/utils/io/ByteWriteChannel;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_d

    goto :goto_14

    :cond_d
    const/4 p2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 303
    invoke-static {p0, p1, v1, p2, v0}, Lio/ktor/client/engine/cio/UtilsKt;->withoutClosePropagation$default(Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;ZILjava/lang/Object;)Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object p0

    :goto_14
    return-object p0
.end method

.method public static final isChunked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_13

    .line 309
    const-string p0, "chunked"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public static final isInformational(Lio/ktor/http/HttpStatusCode;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lio/ktor/http/HttpStatusCode;->getValue()I

    move-result p0

    div-int/lit8 p0, p0, 0x64

    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static final processOutgoingContent(Lio/ktor/client/request/HttpRequestData;Lio/ktor/http/content/OutgoingContent;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/request/HttpRequestData;",
            "Lio/ktor/http/content/OutgoingContent;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 156
    instance-of v0, p1, Lio/ktor/http/content/OutgoingContent$ByteArrayContent;

    if-eqz v0, :cond_1e

    check-cast p1, Lio/ktor/http/content/OutgoingContent$ByteArrayContent;

    invoke-virtual {p1}, Lio/ktor/http/content/OutgoingContent$ByteArrayContent;->bytes()[B

    move-result-object v1

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p2

    move-object v4, p3

    invoke-static/range {v0 .. v6}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->writeFully$default(Lio/ktor/utils/io/ByteWriteChannel;[BIILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1b

    return-object p0

    :cond_1b
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 157
    :cond_1e
    instance-of v0, p1, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;

    if-eqz v0, :cond_36

    check-cast p1, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;

    invoke-virtual {p1}, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;->readFrom()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lio/ktor/utils/io/ByteReadChannelOperationsKt;->copyAndClose(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_33

    return-object p0

    :cond_33
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 158
    :cond_36
    instance-of v0, p1, Lio/ktor/http/content/OutgoingContent$WriteChannelContent;

    if-eqz v0, :cond_4a

    check-cast p1, Lio/ktor/http/content/OutgoingContent$WriteChannelContent;

    invoke-virtual {p1, p2, p3}, Lio/ktor/http/content/OutgoingContent$WriteChannelContent;->writeTo(Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_47

    return-object p0

    :cond_47
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 159
    :cond_4a
    instance-of v0, p1, Lio/ktor/http/content/OutgoingContent$ContentWrapper;

    if-eqz v0, :cond_62

    check-cast p1, Lio/ktor/http/content/OutgoingContent$ContentWrapper;

    invoke-virtual {p1}, Lio/ktor/http/content/OutgoingContent$ContentWrapper;->delegate()Lio/ktor/http/content/OutgoingContent;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lio/ktor/client/engine/cio/UtilsKt;->processOutgoingContent(Lio/ktor/client/request/HttpRequestData;Lio/ktor/http/content/OutgoingContent;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_5f

    return-object p0

    :cond_5f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 161
    :cond_62
    instance-of p0, p1, Lio/ktor/http/content/OutgoingContent$NoContent;

    if-eqz p0, :cond_6e

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unreachable code"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 155
    :cond_6e
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final readResponse(Lio/ktor/util/date/GMTDate;Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/date/GMTDate;",
            "Lio/ktor/client/request/HttpRequestData;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/request/HttpResponseData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 172
    new-instance v7, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2;-><init>(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;Lio/ktor/util/date/GMTDate;Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/Continuation;)V

    invoke-static {p4, v7, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final startTunnel(Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/request/HttpRequestData;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;

    iget v1, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;

    invoke-direct {v0, p3}, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 217
    iget v2, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_b4

    if-eq v2, v6, :cond_97

    if-eq v2, v5, :cond_7e

    if-eq v2, v4, :cond_62

    if-ne v2, v3, :cond_5a

    iget-object p0, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$8:Ljava/lang/Object;

    check-cast p0, Ljava/lang/CharSequence;

    iget-object p0, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$7:Ljava/lang/Object;

    check-cast p0, Lio/ktor/http/cio/Response;

    iget-object p0, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$6:Ljava/lang/Object;

    check-cast p0, Ljava/io/Closeable;

    iget-object p1, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$5:Ljava/lang/Object;

    check-cast p1, Lio/ktor/http/cio/Response;

    iget-object p1, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$4:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lio/ktor/http/cio/RequestResponseBuilder;

    iget-object p2, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$2:Ljava/lang/Object;

    check-cast p2, Lio/ktor/utils/io/ByteReadChannel;

    iget-object p2, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lio/ktor/utils/io/ByteWriteChannel;

    iget-object p2, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lio/ktor/client/request/HttpRequestData;

    :try_start_52
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_57

    goto/16 :goto_1f4

    :catchall_57
    move-exception p2

    goto/16 :goto_214

    :cond_5a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_62
    iget-object p0, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$4:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object p1, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lio/ktor/http/cio/RequestResponseBuilder;

    iget-object p2, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$2:Ljava/lang/Object;

    check-cast p2, Lio/ktor/utils/io/ByteReadChannel;

    iget-object v2, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v4, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lio/ktor/client/request/HttpRequestData;

    :try_start_76
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_7b

    goto/16 :goto_191

    :catchall_7b
    move-exception p0

    goto/16 :goto_227

    :cond_7e
    iget-object p0, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$4:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object p1, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lio/ktor/http/cio/RequestResponseBuilder;

    iget-object p2, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$2:Ljava/lang/Object;

    check-cast p2, Lio/ktor/utils/io/ByteReadChannel;

    iget-object v2, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v5, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lio/ktor/client/request/HttpRequestData;

    :try_start_92
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_7b

    goto/16 :goto_171

    :cond_97
    iget-object p0, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$4:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object p1, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lio/ktor/http/cio/RequestResponseBuilder;

    iget-object p2, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$2:Ljava/lang/Object;

    check-cast p2, Lio/ktor/utils/io/ByteReadChannel;

    iget-object v2, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v7, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lio/ktor/client/request/HttpRequestData;

    :try_start_ab
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_7b

    move-object p3, p1

    move-object p1, v2

    move-object v2, p0

    move-object p0, v7

    goto/16 :goto_14e

    :cond_b4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 222
    new-instance p3, Lio/ktor/http/cio/RequestResponseBuilder;

    invoke-direct {p3}, Lio/ktor/http/cio/RequestResponseBuilder;-><init>()V

    .line 225
    :try_start_bc
    invoke-virtual {p0}, Lio/ktor/client/request/HttpRequestData;->getUrl()Lio/ktor/http/Url;

    move-result-object v2

    invoke-static {v2}, Lio/ktor/http/URLUtilsKt;->getHostWithPort(Lio/ktor/http/Url;)Ljava/lang/String;

    move-result-object v2

    .line 226
    new-instance v7, Lio/ktor/http/HttpMethod;

    const-string v8, "CONNECT"

    invoke-direct {v7, v8}, Lio/ktor/http/HttpMethod;-><init>(Ljava/lang/String;)V

    sget-object v8, Lio/ktor/http/HttpProtocolVersion;->Companion:Lio/ktor/http/HttpProtocolVersion$Companion;

    invoke-virtual {v8}, Lio/ktor/http/HttpProtocolVersion$Companion;->getHTTP_1_1()Lio/ktor/http/HttpProtocolVersion;

    move-result-object v8

    invoke-virtual {v8}, Lio/ktor/http/HttpProtocolVersion;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v7, v2, v8}, Lio/ktor/http/cio/RequestResponseBuilder;->requestLine(Lio/ktor/http/HttpMethod;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 227
    sget-object v7, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v7}, Lio/ktor/http/HttpHeaders;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8, v2}, Lio/ktor/http/cio/RequestResponseBuilder;->headerLine(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 228
    const-string v8, "Proxy-Connection"

    const-string v9, "Keep-Alive"

    invoke-virtual {p3, v8, v9}, Lio/ktor/http/cio/RequestResponseBuilder;->headerLine(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 229
    invoke-virtual {p0}, Lio/ktor/client/request/HttpRequestData;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v8

    invoke-virtual {v7}, Lio/ktor/http/HttpHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lio/ktor/util/StringValues;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_102

    .line 230
    invoke-virtual {v7}, Lio/ktor/http/HttpHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v9, v8}, Lio/ktor/http/cio/RequestResponseBuilder;->headerLine(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_102

    :catchall_fe
    move-exception p0

    move-object p1, p3

    goto/16 :goto_227

    .line 232
    :cond_102
    :goto_102
    invoke-virtual {p0}, Lio/ktor/client/request/HttpRequestData;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v8

    invoke-virtual {v7}, Lio/ktor/http/HttpHeaders;->getProxyAuthenticate()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lio/ktor/util/StringValues;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_117

    .line 233
    invoke-virtual {v7}, Lio/ktor/http/HttpHeaders;->getProxyAuthenticate()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v9, v8}, Lio/ktor/http/cio/RequestResponseBuilder;->headerLine(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 235
    :cond_117
    invoke-virtual {p0}, Lio/ktor/client/request/HttpRequestData;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v8

    invoke-virtual {v7}, Lio/ktor/http/HttpHeaders;->getProxyAuthorization()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lio/ktor/util/StringValues;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_12c

    .line 236
    invoke-virtual {v7}, Lio/ktor/http/HttpHeaders;->getProxyAuthorization()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7, v8}, Lio/ktor/http/cio/RequestResponseBuilder;->headerLine(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 239
    :cond_12c
    invoke-virtual {p3}, Lio/ktor/http/cio/RequestResponseBuilder;->emptyLine()V

    .line 240
    invoke-virtual {p3}, Lio/ktor/http/cio/RequestResponseBuilder;->build()Lkotlinx/io/Source;

    move-result-object v7

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$3:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$4:Ljava/lang/Object;

    iput v6, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->label:I

    invoke-static {p1, v7, v0}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->writePacket(Lio/ktor/utils/io/ByteWriteChannel;Lkotlinx/io/Source;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_14e

    return-object v1

    .line 241
    :cond_14e
    :goto_14e
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$3:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$4:Ljava/lang/Object;

    iput v5, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->label:I

    invoke-interface {p1, v0}, Lio/ktor/utils/io/ByteWriteChannel;->flush(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_16a
    .catchall {:try_start_bc .. :try_end_16a} :catchall_fe

    if-ne v5, v1, :cond_16d

    return-object v1

    :cond_16d
    move-object v5, p0

    move-object p0, v2

    move-object v2, p1

    move-object p1, p3

    .line 243
    :goto_171
    :try_start_171
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$2:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$3:Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$4:Ljava/lang/Object;

    iput v4, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->label:I

    invoke-static {p2, v0}, Lio/ktor/http/cio/HttpParserKt;->parseResponse(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_190

    return-object v1

    :cond_190
    move-object v4, v5

    :goto_191
    check-cast p3, Lio/ktor/http/cio/Response;
    :try_end_193
    .catchall {:try_start_171 .. :try_end_193} :catchall_7b

    if-eqz p3, :cond_21a

    .line 246
    :try_start_195
    invoke-virtual {p3}, Lio/ktor/http/cio/Response;->getStatus()I

    move-result v5

    div-int/lit16 v5, v5, 0xc8

    if-ne v5, v6, :cond_20c

    .line 249
    invoke-virtual {p3}, Lio/ktor/http/cio/HttpMessage;->getHeaders()Lio/ktor/http/cio/HttpHeadersMap;

    move-result-object v5

    sget-object v6, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v6}, Lio/ktor/http/HttpHeaders;->getContentLength()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/ktor/http/cio/HttpHeadersMap;->get(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_202

    .line 250
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$1:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$2:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$3:Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$4:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$5:Ljava/lang/Object;

    iput-object p3, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$6:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$7:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->L$8:Ljava/lang/Object;

    const/4 p0, 0x0

    iput p0, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->I$0:I

    iput p0, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->I$1:I

    iput v3, v0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->label:I

    invoke-static {p2, v6, v7, v0}, Lio/ktor/utils/io/ByteReadChannelOperationsKt;->discard(Lio/ktor/utils/io/ByteReadChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1ee
    .catchall {:try_start_195 .. :try_end_1ee} :catchall_1ff

    if-ne p0, v1, :cond_1f1

    return-object v1

    :cond_1f1
    move-object v10, p3

    move-object p3, p0

    move-object p0, v10

    :goto_1f4
    :try_start_1f4
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    invoke-static {p2, p3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;
    :try_end_1fd
    .catchall {:try_start_1f4 .. :try_end_1fd} :catchall_57

    move-object p3, p0

    goto :goto_202

    :catchall_1ff
    move-exception p2

    move-object p0, p3

    goto :goto_214

    :cond_202
    :goto_202
    const/4 p0, 0x0

    .line 245
    :try_start_203
    invoke-static {p3, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_206
    .catchall {:try_start_203 .. :try_end_206} :catchall_7b

    .line 254
    invoke-virtual {p1}, Lio/ktor/http/cio/RequestResponseBuilder;->release()V

    .line 256
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 247
    :cond_20c
    :try_start_20c
    new-instance p0, Ljava/io/IOException;

    const-string p2, "Can not establish tunnel connection"

    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_214
    .catchall {:try_start_20c .. :try_end_214} :catchall_1ff

    .line 245
    :goto_214
    :try_start_214
    throw p2
    :try_end_215
    .catchall {:try_start_214 .. :try_end_215} :catchall_215

    :catchall_215
    move-exception p3

    :try_start_216
    invoke-static {p0, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3

    .line 244
    :cond_21a
    new-instance p0, Lio/ktor/utils/io/ClosedReadChannelException;

    new-instance p2, Ljava/io/EOFException;

    const-string p3, "Failed to parse CONNECT response: unexpected EOF"

    invoke-direct {p2, p3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lio/ktor/utils/io/ClosedReadChannelException;-><init>(Ljava/lang/Throwable;)V

    throw p0
    :try_end_227
    .catchall {:try_start_216 .. :try_end_227} :catchall_7b

    .line 254
    :goto_227
    invoke-virtual {p1}, Lio/ktor/http/cio/RequestResponseBuilder;->release()V

    throw p0
.end method

.method public static final toMap(Lio/ktor/http/cio/HttpHeadersMap;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/cio/HttpHeadersMap;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 261
    invoke-virtual {p0}, Lio/ktor/http/cio/HttpHeadersMap;->offsets()Lkotlin/sequences/Sequence;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 262
    invoke-virtual {p0, v2}, Lio/ktor/http/cio/HttpHeadersMap;->nameAtOffset(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 263
    invoke-virtual {p0, v2}, Lio/ktor/http/cio/HttpHeadersMap;->valueAtOffset(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_43

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_44

    :cond_43
    const/4 v4, 0x0

    :goto_44
    if-nez v4, :cond_12

    .line 266
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_52
    return-object v0
.end method

.method public static final withoutClosePropagation(Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;Z)Lio/ktor/utils/io/ByteWriteChannel;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_18

    .line 286
    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    move-result-object p2

    new-instance v0, Lio/ktor/client/engine/cio/UtilsKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/ktor/client/engine/cio/UtilsKt$$ExternalSyntheticLambda0;-><init>(Lio/ktor/utils/io/ByteWriteChannel;)V

    invoke-interface {p2, v0}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 291
    :cond_18
    sget-object p2, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    new-instance v0, Lio/ktor/client/engine/cio/UtilsKt$withoutClosePropagation$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/ktor/client/engine/cio/UtilsKt$withoutClosePropagation$2;-><init>(Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x1

    invoke-static {p2, p1, p0, v0}, Lio/ktor/utils/io/ByteReadChannelOperationsKt;->reader(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ZLkotlin/jvm/functions/Function2;)Lio/ktor/utils/io/ReaderJob;

    move-result-object p0

    .line 294
    invoke-virtual {p0}, Lio/ktor/utils/io/ReaderJob;->getChannel()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic withoutClosePropagation$default(Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;ZILjava/lang/Object;)Lio/ktor/utils/io/ByteWriteChannel;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x1

    .line 279
    :cond_5
    invoke-static {p0, p1, p2}, Lio/ktor/client/engine/cio/UtilsKt;->withoutClosePropagation(Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;Z)Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object p0

    return-object p0
.end method

.method public static final withoutClosePropagation$lambda$0(Lio/ktor/utils/io/ByteWriteChannel;Ljava/lang/Throwable;)Lkotlin/Unit;
    .registers 2

    .line 287
    invoke-static {p0, p1}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->close(Lio/ktor/utils/io/ByteWriteChannel;Ljava/lang/Throwable;)V

    .line 288
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final writeBody(Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/request/HttpRequestData;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Lio/ktor/client/request/HttpRequestData;->getBody()Lio/ktor/http/content/OutgoingContent;

    move-result-object p4

    invoke-static {p4}, Lio/ktor/client/engine/cio/UtilsKt;->getUnwrapped(Lio/ktor/http/content/OutgoingContent;)Lio/ktor/http/content/OutgoingContent;

    move-result-object v2

    .line 111
    instance-of p4, v2, Lio/ktor/http/content/OutgoingContent$NoContent;

    if-eqz p4, :cond_14

    if-eqz p3, :cond_11

    .line 112
    invoke-static {p1}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)V

    .line 113
    :cond_11
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 119
    :cond_14
    invoke-virtual {p0}, Lio/ktor/client/request/HttpRequestData;->getHeaders()Lio/ktor/http/Headers;

    move-result-object p4

    sget-object v0, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getContentLength()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Lio/ktor/util/StringValues;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const/4 v1, 0x0

    if-nez p4, :cond_35

    invoke-virtual {v2}, Lio/ktor/http/content/OutgoingContent;->getContentLength()Ljava/lang/Long;

    move-result-object p4

    if-eqz p4, :cond_34

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    goto :goto_35

    :cond_34
    move-object p4, v1

    .line 120
    :cond_35
    :goto_35
    invoke-virtual {p0}, Lio/ktor/client/request/HttpRequestData;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v3

    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getTransferEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/ktor/util/StringValues;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-virtual {v2}, Lio/ktor/http/content/OutgoingContent;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v4

    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lio/ktor/util/StringValues;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {p4, v0, v3}, Lio/ktor/client/engine/cio/UtilsKt;->isChunked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_59

    .line 124
    invoke-static {p1, p2}, Lio/ktor/http/cio/ChunkedTransferEncodingKt;->encodeChunked(Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;)Lio/ktor/utils/io/ReaderJob;

    move-result-object p4

    move-object v4, p4

    goto :goto_5a

    :cond_59
    move-object v4, v1

    :goto_5a
    if-eqz v4, :cond_65

    .line 125
    invoke-virtual {v4}, Lio/ktor/utils/io/ReaderJob;->getChannel()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object p4

    if-nez p4, :cond_63

    goto :goto_65

    :cond_63
    move-object v3, p4

    goto :goto_66

    :cond_65
    :goto_65
    move-object v3, p1

    .line 127
    :goto_66
    new-instance p4, Lkotlinx/coroutines/CoroutineName;

    const-string v0, "cio-client-body-writer"

    invoke-direct {p4, v0}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p4}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p2

    .line 128
    new-instance v8, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v5, p1

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;-><init>(Lio/ktor/client/request/HttpRequestData;Lio/ktor/http/content/OutgoingContent;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/ReaderJob;Lio/ktor/utils/io/ByteWriteChannel;ZLkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    move-object v5, p2

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 147
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic writeBody$default(Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    const/4 p3, 0x1

    .line 104
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/client/engine/cio/UtilsKt;->writeBody(Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final writeHeaders(Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteWriteChannel;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/request/HttpRequestData;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "ZZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v0, p4

    instance-of v3, v0, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;

    if-eqz v3, :cond_19

    move-object v3, v0

    check-cast v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;

    iget v4, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_19

    sub-int/2addr v4, v5

    iput v4, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->label:I

    goto :goto_1e

    :cond_19
    new-instance v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;

    invoke-direct {v3, v0}, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_1e
    iget-object v0, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 35
    iget v5, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->label:I

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v5, :cond_131

    if-eq v5, v9, :cond_c4

    if-eq v5, v8, :cond_71

    if-eq v5, v7, :cond_39

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    iget-object v1, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$11:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    iget-object v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$10:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$9:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$8:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$7:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$6:Ljava/lang/Object;

    check-cast v2, Lio/ktor/http/content/OutgoingContent;

    iget-object v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$5:Ljava/lang/Object;

    check-cast v2, Lio/ktor/http/Headers;

    iget-object v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lio/ktor/http/Url;

    iget-object v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lio/ktor/http/HttpMethod;

    iget-object v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lio/ktor/http/cio/RequestResponseBuilder;

    iget-object v4, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v3, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ktor/client/request/HttpRequestData;

    :try_start_69
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_6e

    goto/16 :goto_3ae

    :catchall_6e
    move-exception v0

    goto/16 :goto_3b5

    :cond_71
    iget-boolean v1, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->Z$2:Z

    iget-boolean v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->Z$1:Z

    iget-boolean v5, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->Z$0:Z

    iget-object v8, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$12:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v8, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$11:Ljava/lang/Object;

    check-cast v8, Lio/ktor/http/Url;

    iget-object v8, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$10:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$9:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$8:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$7:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$6:Ljava/lang/Object;

    check-cast v12, Lio/ktor/http/content/OutgoingContent;

    iget-object v13, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$5:Ljava/lang/Object;

    check-cast v13, Lio/ktor/http/Headers;

    iget-object v14, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$4:Ljava/lang/Object;

    check-cast v14, Lio/ktor/http/Url;

    iget-object v15, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$3:Ljava/lang/Object;

    check-cast v15, Lio/ktor/http/HttpMethod;

    iget-object v7, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lio/ktor/http/cio/RequestResponseBuilder;

    iget-object v6, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lio/ktor/utils/io/ByteWriteChannel;

    move/from16 p0, v1

    iget-object v1, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/ktor/client/request/HttpRequestData;

    :try_start_ad
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_b2

    goto/16 :goto_32f

    :catchall_b2
    move-exception v0

    move-object/from16 v16, v14

    move-object v14, v12

    move-object v12, v10

    move-object v10, v8

    move-object v8, v7

    move/from16 v7, p0

    move/from16 v20, v5

    move v5, v2

    move-object v2, v4

    move-object v4, v6

    move/from16 v6, v20

    goto/16 :goto_357

    :cond_c4
    iget v1, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->I$0:I

    iget-boolean v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->Z$2:Z

    iget-boolean v5, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->Z$1:Z

    iget-boolean v6, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->Z$0:Z

    iget-object v7, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$12:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v9, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$11:Ljava/lang/Object;

    check-cast v9, Lio/ktor/http/Url;

    iget-object v10, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$10:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$9:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$8:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$7:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v14, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$6:Ljava/lang/Object;

    check-cast v14, Lio/ktor/http/content/OutgoingContent;

    iget-object v15, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$5:Ljava/lang/Object;

    check-cast v15, Lio/ktor/http/Headers;

    iget-object v8, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lio/ktor/http/Url;

    move/from16 p0, v1

    iget-object v1, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lio/ktor/http/HttpMethod;

    move-object/from16 p1, v1

    iget-object v1, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lio/ktor/http/cio/RequestResponseBuilder;

    move-object/from16 p2, v1

    iget-object v1, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lio/ktor/utils/io/ByteWriteChannel;

    move-object/from16 p3, v1

    iget-object v1, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/ktor/client/request/HttpRequestData;

    :try_start_108
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_10b
    .catchall {:try_start_108 .. :try_end_10b} :catchall_121

    move/from16 v0, p0

    move-object/from16 v17, p1

    move-object/from16 v19, v4

    move-object/from16 v18, v7

    move-object/from16 v16, v8

    move-object/from16 v8, p2

    move-object/from16 v4, p3

    move v7, v2

    move-object/from16 v20, v11

    move-object v11, v9

    move-object/from16 v9, v20

    goto/16 :goto_2d4

    :catchall_121
    move-exception v0

    move v7, v2

    move-object v2, v4

    move-object/from16 v16, v8

    move-object v9, v11

    move-object v11, v13

    move-object v13, v15

    move-object/from16 v15, p1

    move-object/from16 v8, p2

    move-object/from16 v4, p3

    goto/16 :goto_357

    :cond_131
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    new-instance v5, Lio/ktor/http/cio/RequestResponseBuilder;

    invoke-direct {v5}, Lio/ktor/http/cio/RequestResponseBuilder;-><init>()V

    .line 43
    invoke-virtual/range {p0 .. p0}, Lio/ktor/client/request/HttpRequestData;->getMethod()Lio/ktor/http/HttpMethod;

    move-result-object v15

    .line 44
    invoke-virtual/range {p0 .. p0}, Lio/ktor/client/request/HttpRequestData;->getUrl()Lio/ktor/http/Url;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/client/engine/cio/CIOEngineKt;->rebuildIfNeeded(Lio/ktor/http/Url;)Lio/ktor/http/Url;

    move-result-object v14

    .line 45
    invoke-virtual/range {p0 .. p0}, Lio/ktor/client/request/HttpRequestData;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v13

    .line 46
    invoke-virtual/range {p0 .. p0}, Lio/ktor/client/request/HttpRequestData;->getBody()Lio/ktor/http/content/OutgoingContent;

    move-result-object v12

    .line 48
    sget-object v0, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getContentLength()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v13, v6}, Lio/ktor/util/StringValues;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_167

    invoke-virtual {v12}, Lio/ktor/http/content/OutgoingContent;->getContentLength()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_169

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    :cond_167
    move-object v11, v6

    goto :goto_16a

    :cond_169
    const/4 v11, 0x0

    .line 49
    :goto_16a
    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getTransferEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v13, v6}, Lio/ktor/util/StringValues;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 50
    invoke-virtual {v12}, Lio/ktor/http/content/OutgoingContent;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v6

    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getTransferEncoding()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lio/ktor/util/StringValues;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 51
    invoke-static {v11, v6, v10}, Lio/ktor/client/engine/cio/UtilsKt;->isChunked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 52
    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getExpect()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v13, v8}, Lio/ktor/util/StringValues;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 55
    :try_start_18a
    invoke-virtual {v14}, Lio/ktor/http/Url;->getRawSegments()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v16
    :try_end_192
    .catchall {:try_start_18a .. :try_end_192} :catchall_352

    if-eqz v16, :cond_1bb

    :try_start_194
    invoke-static {v14}, Lio/ktor/http/URLUtilsKt;->URLBuilder(Lio/ktor/http/Url;)Lio/ktor/http/URLBuilder;

    move-result-object v9
    :try_end_198
    .catchall {:try_start_194 .. :try_end_198} :catchall_1b7

    move-object/from16 v17, v4

    :try_start_19a
    const-string v4, "/"

    invoke-static {v9, v4}, Lio/ktor/http/URLBuilderKt;->setEncodedPath(Lio/ktor/http/URLBuilder;Ljava/lang/String;)V

    invoke-virtual {v9}, Lio/ktor/http/URLBuilder;->build()Lio/ktor/http/Url;

    move-result-object v4

    move-object v9, v4

    goto :goto_1be

    :catchall_1a5
    move-exception v0

    :goto_1a6
    move-object v4, v1

    move-object v9, v6

    move-object/from16 v16, v14

    move-object/from16 v1, p0

    move v6, v2

    move-object v14, v12

    move-object/from16 v2, v17

    :goto_1b0
    move-object v12, v10

    move-object v10, v8

    move-object v8, v5

    move/from16 v5, p3

    goto/16 :goto_357

    :catchall_1b7
    move-exception v0

    move-object/from16 v17, v4

    goto :goto_1a6

    :cond_1bb
    move-object/from16 v17, v4

    move-object v9, v14

    :goto_1be
    if-eqz v2, :cond_1c5

    .line 56
    invoke-virtual {v9}, Lio/ktor/http/Url;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_1c4
    .catchall {:try_start_19a .. :try_end_1c4} :catchall_1a5

    goto :goto_1c9

    :cond_1c5
    :try_start_1c5
    invoke-static {v9}, Lio/ktor/http/URLUtilsKt;->getFullPath(Lio/ktor/http/Url;)Ljava/lang/String;

    move-result-object v4

    .line 58
    :goto_1c9
    sget-object v18, Lio/ktor/http/HttpProtocolVersion;->Companion:Lio/ktor/http/HttpProtocolVersion$Companion;

    invoke-virtual/range {v18 .. v18}, Lio/ktor/http/HttpProtocolVersion$Companion;->getHTTP_1_1()Lio/ktor/http/HttpProtocolVersion;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lio/ktor/http/HttpProtocolVersion;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v15, v4, v2}, Lio/ktor/http/cio/RequestResponseBuilder;->requestLine(Lio/ktor/http/HttpMethod;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2}, Lio/ktor/util/StringValues;->contains(Ljava/lang/String;)Z

    move-result v2
    :try_end_1de
    .catchall {:try_start_1c5 .. :try_end_1de} :catchall_34e

    if-nez v2, :cond_20e

    .line 61
    :try_start_1e0
    invoke-virtual {v14}, Lio/ktor/http/Url;->getProtocol()Lio/ktor/http/URLProtocol;

    move-result-object v2

    invoke-virtual {v2}, Lio/ktor/http/URLProtocol;->getDefaultPort()I

    move-result v2

    move-object/from16 v18, v4

    invoke-virtual {v14}, Lio/ktor/http/Url;->getPort()I

    move-result v4

    if-ne v2, v4, :cond_202

    .line 62
    invoke-virtual {v14}, Lio/ktor/http/Url;->getHost()Ljava/lang/String;

    move-result-object v2

    goto :goto_206

    :catchall_1f5
    move-exception v0

    move-object v4, v1

    move-object v9, v6

    move-object/from16 v16, v14

    move-object/from16 v2, v17

    move-object/from16 v1, p0

    move/from16 v6, p2

    move-object v14, v12

    goto :goto_1b0

    .line 64
    :cond_202
    invoke-static {v14}, Lio/ktor/http/URLUtilsKt;->getHostWithPort(Lio/ktor/http/Url;)Ljava/lang/String;

    move-result-object v2

    .line 66
    :goto_206
    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4, v2}, Lio/ktor/http/cio/RequestResponseBuilder;->headerLine(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_20d
    .catchall {:try_start_1e0 .. :try_end_20d} :catchall_1f5

    goto :goto_210

    :cond_20e
    move-object/from16 v18, v4

    .line 69
    :goto_210
    :try_start_210
    instance-of v2, v12, Lio/ktor/http/content/OutgoingContent$NoContent;
    :try_end_212
    .catchall {:try_start_210 .. :try_end_212} :catchall_34e

    xor-int/lit8 v4, v2, 0x1

    if-eqz v11, :cond_225

    .line 71
    :try_start_216
    invoke-static {v15}, Lio/ktor/http/HttpMethodKt;->getSupportsRequestBody(Lio/ktor/http/HttpMethod;)Z

    move-result v19

    if-nez v19, :cond_21e

    if-nez v2, :cond_225

    .line 72
    :cond_21e
    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getContentLength()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2, v11}, Lio/ktor/http/cio/RequestResponseBuilder;->headerLine(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_225
    .catchall {:try_start_216 .. :try_end_225} :catchall_1f5

    .line 76
    :cond_225
    :try_start_225
    new-instance v2, Lio/ktor/client/engine/cio/UtilsKt$$ExternalSyntheticLambda1;

    invoke-direct {v2, v5}, Lio/ktor/client/engine/cio/UtilsKt$$ExternalSyntheticLambda1;-><init>(Lio/ktor/http/cio/RequestResponseBuilder;)V

    invoke-static {v13, v12, v2}, Lio/ktor/client/engine/UtilsKt;->mergeHeaders(Lio/ktor/http/Headers;Lio/ktor/http/content/OutgoingContent;Lkotlin/jvm/functions/Function2;)V
    :try_end_22d
    .catchall {:try_start_225 .. :try_end_22d} :catchall_34e

    if-eqz v7, :cond_243

    if-nez v10, :cond_243

    if-nez v6, :cond_243

    .line 82
    :try_start_233
    instance-of v2, v12, Lio/ktor/http/content/OutgoingContent$NoContent;

    if-nez v2, :cond_243

    .line 83
    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getTransferEncoding()Ljava/lang/String;

    move-result-object v2

    move/from16 v19, v4

    const-string v4, "chunked"

    invoke-virtual {v5, v2, v4}, Lio/ktor/http/cio/RequestResponseBuilder;->headerLine(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_242
    .catchall {:try_start_233 .. :try_end_242} :catchall_1f5

    goto :goto_245

    :cond_243
    move/from16 v19, v4

    .line 86
    :goto_245
    :try_start_245
    invoke-static {v8, v12}, Lio/ktor/client/engine/cio/UtilsKt;->expectContinue(Ljava/lang/String;Lio/ktor/http/content/OutgoingContent;)Z

    move-result v2
    :try_end_249
    .catchall {:try_start_245 .. :try_end_249} :catchall_34e

    if-eqz v2, :cond_255

    .line 87
    :try_start_24b
    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getExpect()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v0, v8}, Lio/ktor/http/cio/RequestResponseBuilder;->headerLine(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_255
    .catchall {:try_start_24b .. :try_end_255} :catchall_1f5

    .line 90
    :cond_255
    :try_start_255
    invoke-virtual {v5}, Lio/ktor/http/cio/RequestResponseBuilder;->emptyLine()V

    .line 91
    invoke-virtual {v5}, Lio/ktor/http/cio/RequestResponseBuilder;->build()Lkotlinx/io/Source;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$1:Ljava/lang/Object;

    iput-object v5, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$2:Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$3:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$4:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$5:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$6:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$7:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$8:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$9:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$10:Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$11:Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$12:Ljava/lang/Object;

    move/from16 v2, p2

    iput-boolean v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->Z$0:Z
    :try_end_2a6
    .catchall {:try_start_255 .. :try_end_2a6} :catchall_34e

    move/from16 v4, p3

    :try_start_2a8
    iput-boolean v4, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->Z$1:Z

    iput-boolean v7, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->Z$2:Z

    move/from16 v2, v19

    iput v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->I$0:I

    move/from16 v19, v2

    const/4 v2, 0x1

    iput v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->label:I

    invoke-static {v1, v0, v3}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->writePacket(Lio/ktor/utils/io/ByteWriteChannel;Lkotlinx/io/Source;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2b9
    .catchall {:try_start_2a8 .. :try_end_2b9} :catchall_33d

    move-object/from16 v2, v17

    if-ne v0, v2, :cond_2be

    return-object v2

    :cond_2be
    move-object/from16 v16, v14

    move-object/from16 v17, v15

    move/from16 v0, v19

    move-object/from16 v19, v2

    move-object v14, v12

    move-object v15, v13

    move-object v12, v10

    move-object v13, v11

    move-object v10, v8

    move-object v11, v9

    move-object v8, v5

    move-object v9, v6

    move/from16 v6, p2

    move v5, v4

    move-object v4, v1

    move-object/from16 v1, p0

    .line 92
    :goto_2d4
    :try_start_2d4
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$0:Ljava/lang/Object;

    iput-object v4, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$1:Ljava/lang/Object;

    iput-object v8, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$2:Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$3:Ljava/lang/Object;

    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$4:Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$5:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$6:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$7:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$8:Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$9:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$10:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$11:Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$12:Ljava/lang/Object;

    iput-boolean v6, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->Z$0:Z

    iput-boolean v5, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->Z$1:Z

    iput-boolean v7, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->Z$2:Z

    iput v0, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->I$0:I

    const/4 v0, 0x2

    iput v0, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->label:I

    invoke-interface {v4, v3}, Lio/ktor/utils/io/ByteWriteChannel;->flush(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_329
    .catchall {:try_start_2d4 .. :try_end_329} :catchall_335

    move-object/from16 v2, v19

    if-ne v0, v2, :cond_32e

    return-object v2

    :cond_32e
    move-object v7, v8

    .line 99
    :goto_32f
    invoke-virtual {v7}, Lio/ktor/http/cio/RequestResponseBuilder;->release()V

    .line 101
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_335
    move-exception v0

    move-object/from16 v2, v19

    move-object v11, v13

    move-object v13, v15

    move-object/from16 v15, v17

    goto :goto_357

    :catchall_33d
    move-exception v0

    :goto_33e
    move-object/from16 v2, v17

    :goto_340
    move-object v9, v6

    move-object/from16 v16, v14

    move/from16 v6, p2

    move-object v14, v12

    move-object v12, v10

    move-object v10, v8

    move-object v8, v5

    move v5, v4

    move-object v4, v1

    move-object/from16 v1, p0

    goto :goto_357

    :catchall_34e
    move-exception v0

    move/from16 v4, p3

    goto :goto_33e

    :catchall_352
    move-exception v0

    move-object v2, v4

    move/from16 v4, p3

    goto :goto_340

    :goto_357
    if-eqz v5, :cond_3b3

    .line 95
    :try_start_359
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$0:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$1:Ljava/lang/Object;

    iput-object v8, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$2:Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$3:Ljava/lang/Object;

    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$4:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$5:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$6:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$7:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$8:Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$9:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$10:Ljava/lang/Object;

    iput-object v0, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$11:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->L$12:Ljava/lang/Object;

    iput-boolean v6, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->Z$0:Z

    iput-boolean v5, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->Z$1:Z

    iput-boolean v7, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->Z$2:Z

    const/4 v1, 0x3

    iput v1, v3, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->label:I

    invoke-interface {v4, v3}, Lio/ktor/utils/io/ByteWriteChannel;->flushAndClose(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3a9
    .catchall {:try_start_359 .. :try_end_3a9} :catchall_3b0

    if-ne v1, v2, :cond_3ac

    return-object v2

    :cond_3ac
    move-object v1, v0

    move-object v2, v8

    :goto_3ae
    move-object v0, v1

    goto :goto_3b4

    :catchall_3b0
    move-exception v0

    move-object v2, v8

    goto :goto_3b5

    :cond_3b3
    move-object v2, v8

    .line 97
    :goto_3b4
    :try_start_3b4
    throw v0
    :try_end_3b5
    .catchall {:try_start_3b4 .. :try_end_3b5} :catchall_6e

    .line 99
    :goto_3b5
    invoke-virtual {v2}, Lio/ktor/http/cio/RequestResponseBuilder;->release()V

    throw v0
.end method

.method public static synthetic writeHeaders$default(Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteWriteChannel;ZZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    const/4 p3, 0x1

    .line 35
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/client/engine/cio/UtilsKt;->writeHeaders(Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteWriteChannel;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final writeHeaders$lambda$1(Lio/ktor/http/cio/RequestResponseBuilder;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .registers 5

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getContentLength()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getExpect()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_27

    .line 79
    :cond_21
    invoke-virtual {p0, p1, p2}, Lio/ktor/http/cio/RequestResponseBuilder;->headerLine(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 80
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 77
    :cond_27
    :goto_27
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final writeRequest(Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/request/HttpRequestData;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lkotlin/coroutines/CoroutineContext;",
            "ZZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 29
    new-instance v7, Lio/ktor/client/engine/cio/UtilsKt$writeRequest$2;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lio/ktor/client/engine/cio/UtilsKt$writeRequest$2;-><init>(Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteWriteChannel;ZZLkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v7, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_17

    return-object p0

    :cond_17
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic writeRequest$default(Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;ZZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 14

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_5

    const/4 p4, 0x1

    :cond_5
    move v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    .line 23
    invoke-static/range {v0 .. v5}, Lio/ktor/client/engine/cio/UtilsKt;->writeRequest(Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.client.engine.cio.UtilsKt.AnonymousClass2 (io.ktor.client.engine.cio.UtilsKt$readResponse$2)
.class public final Lio/ktor/client/engine/cio/UtilsKt$readResponse$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/cio/UtilsKt;->readResponse(Lio/ktor/util/date/GMTDate;Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lio/ktor/client/request/HttpResponseData;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.client.engine.cio.UtilsKt$readResponse$2"
    f = "utils.kt"
    l = {
        0xad
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public final synthetic $callContext:Lkotlin/coroutines/CoroutineContext;

.field public final synthetic $input:Lio/ktor/utils/io/ByteReadChannel;

.field public final synthetic $output:Lio/ktor/utils/io/ByteWriteChannel;

.field public final synthetic $request:Lio/ktor/client/request/HttpRequestData;

.field public final synthetic $requestTime:Lio/ktor/util/date/GMTDate;

.field public label:I


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;Lio/ktor/util/date/GMTDate;Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/Continuation;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lio/ktor/util/date/GMTDate;",
            "Lio/ktor/client/request/HttpRequestData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/engine/cio/UtilsKt$readResponse$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2;->$input:Lio/ktor/utils/io/ByteReadChannel;

    iput-object p2, p0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    iput-object p3, p0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2;->$callContext:Lkotlin/coroutines/CoroutineContext;

    iput-object p4, p0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2;->$requestTime:Lio/ktor/util/date/GMTDate;

    iput-object p5, p0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2;->$request:Lio/ktor/client/request/HttpRequestData;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance p1, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2;

    iget-object v1, p0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2;->$input:Lio/ktor/utils/io/ByteReadChannel;

    iget-object v2, p0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v3, p0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2;->$callContext:Lkotlin/coroutines/CoroutineContext;

    iget-object v4, p0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2;->$requestTime:Lio/ktor/util/date/GMTDate;

    iget-object v5, p0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2;->$request:Lio/ktor/client/request/HttpRequestData;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2;-><init>(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;Lio/ktor/util/date/GMTDate;Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/request/HttpResponseData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 26

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 172
    iget v2, v0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1b

    if-ne v2, v3, :cond_13

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_29

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 173
    iget-object v2, v0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2;->$input:Lio/ktor/utils/io/ByteReadChannel;

    iput v3, v0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2;->label:I

    invoke-static {v2, v0}, Lio/ktor/http/cio/HttpParserKt;->parseResponse(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_29

    return-object v1

    :cond_29
    :goto_29
    check-cast v2, Lio/ktor/http/cio/Response;

    if-eqz v2, :cond_17e

    .line 178
    iget-object v9, v0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2;->$input:Lio/ktor/utils/io/ByteReadChannel;

    iget-object v4, v0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v1, v0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2;->$callContext:Lkotlin/coroutines/CoroutineContext;

    iget-object v15, v0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2;->$requestTime:Lio/ktor/util/date/GMTDate;

    iget-object v11, v0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2;->$request:Lio/ktor/client/request/HttpRequestData;

    .line 179
    :try_start_37
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    invoke-virtual {v2}, Lio/ktor/http/cio/Response;->getStatus()I

    move-result v3

    invoke-virtual {v2}, Lio/ktor/http/cio/Response;->getStatusText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    .line 180
    invoke-virtual {v2}, Lio/ktor/http/cio/HttpMessage;->getHeaders()Lio/ktor/http/cio/HttpHeadersMap;

    move-result-object v3

    sget-object v5, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v5}, Lio/ktor/http/HttpHeaders;->getContentLength()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lio/ktor/http/cio/HttpHeadersMap;->get(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_6d

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6d

    invoke-static {v3}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_6d

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_6f

    :catchall_69
    move-exception v0

    move-object v1, v0

    goto/16 :goto_177

    :cond_6d
    const-wide/16 v6, -0x1

    .line 181
    :goto_6f
    invoke-virtual {v2}, Lio/ktor/http/cio/HttpMessage;->getHeaders()Lio/ktor/http/cio/HttpHeadersMap;

    move-result-object v3

    invoke-virtual {v5}, Lio/ktor/http/HttpHeaders;->getTransferEncoding()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lio/ktor/http/cio/HttpHeadersMap;->get(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v14, 0x0

    if-eqz v3, :cond_84

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    goto :goto_85

    :cond_84
    move-object v8, v14

    .line 182
    :goto_85
    sget-object v3, Lio/ktor/http/cio/ConnectionOptions;->Companion:Lio/ktor/http/cio/ConnectionOptions$Companion;

    invoke-virtual {v2}, Lio/ktor/http/cio/HttpMessage;->getHeaders()Lio/ktor/http/cio/HttpHeadersMap;

    move-result-object v10

    invoke-virtual {v5}, Lio/ktor/http/HttpHeaders;->getConnection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Lio/ktor/http/cio/HttpHeadersMap;->get(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Lio/ktor/http/cio/ConnectionOptions$Companion;->parse(Ljava/lang/CharSequence;)Lio/ktor/http/cio/ConnectionOptions;

    move-result-object v10

    .line 184
    invoke-virtual {v2}, Lio/ktor/http/cio/HttpMessage;->getHeaders()Lio/ktor/http/cio/HttpHeadersMap;

    move-result-object v3

    .line 185
    new-instance v13, Lio/ktor/http/HeadersImpl;

    invoke-static {v3}, Lio/ktor/client/engine/cio/UtilsKt;->toMap(Lio/ktor/http/cio/HttpHeadersMap;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v13, v3}, Lio/ktor/http/HeadersImpl;-><init>(Ljava/util/Map;)V

    .line 186
    sget-object v3, Lio/ktor/http/HttpProtocolVersion;->Companion:Lio/ktor/http/HttpProtocolVersion$Companion;

    invoke-virtual {v2}, Lio/ktor/http/cio/Response;->getVersion()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Lio/ktor/http/HttpProtocolVersion$Companion;->parse(Ljava/lang/CharSequence;)Lio/ktor/http/HttpProtocolVersion;

    move-result-object v17

    .line 188
    sget-object v3, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    invoke-virtual {v3}, Lio/ktor/http/HttpStatusCode$Companion;->getSwitchingProtocols()Lio/ktor/http/HttpStatusCode;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d9

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    move-object v3, v9

    move-object v8, v1

    move v9, v10

    move-object v10, v11

    .line 189
    invoke-static/range {v3 .. v10}, Lio/ktor/websocket/RawWebSocketJvmKt;->RawWebSocket$default(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;JZLkotlin/coroutines/CoroutineContext;ILjava/lang/Object;)Lio/ktor/websocket/WebSocketSession;

    move-result-object v3

    .line 190
    new-instance v4, Lio/ktor/client/request/HttpResponseData;

    move-object v10, v4

    move-object v11, v0

    move-object v12, v15

    move-object v5, v14

    move-object/from16 v14, v17

    move-object v15, v3

    move-object/from16 v16, v1

    invoke-direct/range {v10 .. v16}, Lio/ktor/client/request/HttpResponseData;-><init>(Lio/ktor/http/HttpStatusCode;Lio/ktor/util/date/GMTDate;Lio/ktor/http/Headers;Lio/ktor/http/HttpProtocolVersion;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V
    :try_end_d5
    .catchall {:try_start_37 .. :try_end_d5} :catchall_69

    .line 178
    invoke-static {v2, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v4

    :cond_d9
    move-object v5, v14

    .line 194
    :try_start_da
    invoke-virtual {v11}, Lio/ktor/client/request/HttpRequestData;->getMethod()Lio/ktor/http/HttpMethod;

    move-result-object v4

    sget-object v12, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    invoke-virtual {v12}, Lio/ktor/http/HttpMethod$Companion;->getHead()Lio/ktor/http/HttpMethod;

    move-result-object v12

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_106

    .line 195
    invoke-virtual {v3}, Lio/ktor/http/HttpStatusCode$Companion;->getNotModified()Lio/ktor/http/HttpStatusCode;

    move-result-object v4

    invoke-virtual {v3}, Lio/ktor/http/HttpStatusCode$Companion;->getNoContent()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    filled-new-array {v4, v3}, [Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_106

    .line 196
    invoke-static {v0}, Lio/ktor/client/engine/cio/UtilsKt;->isInformational(Lio/ktor/http/HttpStatusCode;)Z

    move-result v3

    if-eqz v3, :cond_108

    :cond_106
    move-object v14, v5

    goto :goto_137

    .line 201
    :cond_108
    new-instance v3, Lkotlinx/coroutines/CoroutineName;

    const-string v4, "cio-client-body-reader"

    invoke-direct {v3, v4}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v18

    .line 202
    new-instance v21, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2$1$body$httpBodyParser$1;

    const/4 v12, 0x0

    move-object/from16 v3, v21

    move-object/from16 v4, v17

    move-object v14, v5

    move-wide v5, v6

    move-object v7, v8

    move-object v8, v10

    move-object v10, v12

    invoke-direct/range {v3 .. v10}, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2$1$body$httpBodyParser$1;-><init>(Lio/ktor/http/HttpProtocolVersion;JLjava/lang/String;Lio/ktor/http/cio/ConnectionOptions;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)V

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-static/range {v18 .. v23}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->writer$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lio/ktor/utils/io/WriterJob;

    move-result-object v3

    .line 205
    invoke-virtual {v3}, Lio/ktor/utils/io/WriterJob;->getChannel()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v3

    goto :goto_13d

    .line 197
    :goto_137
    sget-object v3, Lio/ktor/utils/io/ByteReadChannel;->Companion:Lio/ktor/utils/io/ByteReadChannel$Companion;

    invoke-virtual {v3}, Lio/ktor/utils/io/ByteReadChannel$Companion;->getEmpty()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v3

    .line 209
    :goto_13d
    invoke-virtual {v11}, Lio/ktor/client/request/HttpRequestData;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object v4

    invoke-static {}, Lio/ktor/client/request/HttpRequestKt;->getResponseAdapterAttributeKey()Lio/ktor/util/AttributeKey;

    move-result-object v5

    invoke-interface {v4, v5}, Lio/ktor/util/Attributes;->getOrNull(Lio/ktor/util/AttributeKey;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lio/ktor/client/request/ResponseAdapter;

    if-eqz v10, :cond_162

    .line 210
    invoke-virtual {v11}, Lio/ktor/client/request/HttpRequestData;->getBody()Lio/ktor/http/content/OutgoingContent;

    move-result-object v4

    move-object v12, v0

    move-object v5, v13

    move-object v6, v14

    move-object v14, v3

    move-object v7, v15

    move-object v15, v4

    move-object/from16 v16, v1

    invoke-interface/range {v10 .. v16}, Lio/ktor/client/request/ResponseAdapter;->adapt(Lio/ktor/client/request/HttpRequestData;Lio/ktor/http/HttpStatusCode;Lio/ktor/http/Headers;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/http/content/OutgoingContent;Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_165

    move-object v15, v4

    goto :goto_166

    :cond_162
    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    :cond_165
    move-object v15, v3

    .line 213
    :goto_166
    new-instance v3, Lio/ktor/client/request/HttpResponseData;

    move-object v10, v3

    move-object v11, v0

    move-object v12, v7

    move-object v13, v5

    move-object/from16 v14, v17

    move-object/from16 v16, v1

    invoke-direct/range {v10 .. v16}, Lio/ktor/client/request/HttpResponseData;-><init>(Lio/ktor/http/HttpStatusCode;Lio/ktor/util/date/GMTDate;Lio/ktor/http/Headers;Lio/ktor/http/HttpProtocolVersion;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V
    :try_end_173
    .catchall {:try_start_da .. :try_end_173} :catchall_69

    .line 178
    invoke-static {v2, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v3

    :goto_177
    :try_start_177
    throw v1
    :try_end_178
    .catchall {:try_start_177 .. :try_end_178} :catchall_178

    :catchall_178
    move-exception v0

    move-object v3, v0

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    .line 174
    :cond_17e
    new-instance v0, Lio/ktor/utils/io/ClosedReadChannelException;

    .line 175
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "Failed to parse HTTP response: the server prematurely closed the connection"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-direct {v0, v1}, Lio/ktor/utils/io/ClosedReadChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

###### Class io.ktor.client.engine.cio.UtilsKt.AnonymousClass1 (io.ktor.client.engine.cio.UtilsKt$startTunnel$1)
.class public final Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "utils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/cio/UtilsKt;->startTunnel(Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.client.engine.cio.UtilsKt"
    f = "utils.kt"
    l = {
        0xf0,
        0xf1,
        0xf3,
        0xfa
    }
    m = "startTunnel"
    v = 0x1
.end annotation


# instance fields
.field public I$0:I

.field public I$1:I

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public L$5:Ljava/lang/Object;

.field public L$6:Ljava/lang/Object;

.field public L$7:Ljava/lang/Object;

.field public L$8:Ljava/lang/Object;

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
            "Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;",
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
    iput-object p1, p0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/client/engine/cio/UtilsKt$startTunnel$1;->label:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p0}, Lio/ktor/client/engine/cio/UtilsKt;->startTunnel(Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.client.engine.cio.UtilsKt.C00382 (io.ktor.client.engine.cio.UtilsKt$withoutClosePropagation$2)
.class public final Lio/ktor/client/engine/cio/UtilsKt$withoutClosePropagation$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/cio/UtilsKt;->withoutClosePropagation(Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;Z)Lio/ktor/utils/io/ByteWriteChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/ktor/utils/io/ReaderScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.client.engine.cio.UtilsKt$withoutClosePropagation$2"
    f = "utils.kt"
    l = {
        0x124,
        0x125
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public final synthetic $this_withoutClosePropagation:Lio/ktor/utils/io/ByteWriteChannel;

.field public synthetic L$0:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/engine/cio/UtilsKt$withoutClosePropagation$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/cio/UtilsKt$withoutClosePropagation$2;->$this_withoutClosePropagation:Lio/ktor/utils/io/ByteWriteChannel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance v0, Lio/ktor/client/engine/cio/UtilsKt$withoutClosePropagation$2;

    iget-object p0, p0, Lio/ktor/client/engine/cio/UtilsKt$withoutClosePropagation$2;->$this_withoutClosePropagation:Lio/ktor/utils/io/ByteWriteChannel;

    invoke-direct {v0, p0, p2}, Lio/ktor/client/engine/cio/UtilsKt$withoutClosePropagation$2;-><init>(Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/client/engine/cio/UtilsKt$withoutClosePropagation$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Lio/ktor/utils/io/ReaderScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ReaderScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/cio/UtilsKt$withoutClosePropagation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/ktor/client/engine/cio/UtilsKt$withoutClosePropagation$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/ktor/client/engine/cio/UtilsKt$withoutClosePropagation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lio/ktor/utils/io/ReaderScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/cio/UtilsKt$withoutClosePropagation$2;->invoke(Lio/ktor/utils/io/ReaderScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    iget-object v0, p0, Lio/ktor/client/engine/cio/UtilsKt$withoutClosePropagation$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/ReaderScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 291
    iget v2, p0, Lio/ktor/client/engine/cio/UtilsKt$withoutClosePropagation$2;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_22

    if-eq v2, v4, :cond_1e

    if-ne v2, v3, :cond_16

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_50

    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3f

    :cond_22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 292
    invoke-virtual {v0}, Lio/ktor/utils/io/ReaderScope;->getChannel()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object p1

    iget-object v2, p0, Lio/ktor/client/engine/cio/UtilsKt$withoutClosePropagation$2;->$this_withoutClosePropagation:Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lio/ktor/client/engine/cio/UtilsKt$withoutClosePropagation$2;->L$0:Ljava/lang/Object;

    iput v4, p0, Lio/ktor/client/engine/cio/UtilsKt$withoutClosePropagation$2;->label:I

    const-wide v4, 0x7fffffffffffffffL

    invoke-static {p1, v2, v4, v5, p0}, Lio/ktor/utils/io/ByteReadChannelOperationsKt;->copyTo(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3f

    return-object v1

    .line 293
    :cond_3f
    :goto_3f
    iget-object p1, p0, Lio/ktor/client/engine/cio/UtilsKt$withoutClosePropagation$2;->$this_withoutClosePropagation:Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/engine/cio/UtilsKt$withoutClosePropagation$2;->L$0:Ljava/lang/Object;

    iput v3, p0, Lio/ktor/client/engine/cio/UtilsKt$withoutClosePropagation$2;->label:I

    invoke-interface {p1, p0}, Lio/ktor/utils/io/ByteWriteChannel;->flush(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_50

    return-object v1

    .line 294
    :cond_50
    :goto_50
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

###### Class io.ktor.client.engine.cio.UtilsKt.C00392 (io.ktor.client.engine.cio.UtilsKt$writeBody$2)
.class public final Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/cio/UtilsKt;->writeBody(Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nutils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 utils.kt\nio/ktor/client/engine/cio/UtilsKt$writeBody$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,313:1\n1#2:314\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.client.engine.cio.UtilsKt$writeBody$2"
    f = "utils.kt"
    l = {
        0x82,
        0x87,
        0x89,
        0x87,
        0x89
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public final synthetic $body:Lio/ktor/http/content/OutgoingContent;

.field public final synthetic $channel:Lio/ktor/utils/io/ByteWriteChannel;

.field public final synthetic $chunkedJob:Lio/ktor/utils/io/ReaderJob;

.field public final synthetic $closeChannel:Z

.field public final synthetic $output:Lio/ktor/utils/io/ByteWriteChannel;

.field public final synthetic $request:Lio/ktor/client/request/HttpRequestData;

.field public L$0:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(Lio/ktor/client/request/HttpRequestData;Lio/ktor/http/content/OutgoingContent;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/ReaderJob;Lio/ktor/utils/io/ByteWriteChannel;ZLkotlin/coroutines/Continuation;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/request/HttpRequestData;",
            "Lio/ktor/http/content/OutgoingContent;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lio/ktor/utils/io/ReaderJob;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->$request:Lio/ktor/client/request/HttpRequestData;

    iput-object p2, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->$body:Lio/ktor/http/content/OutgoingContent;

    iput-object p3, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->$channel:Lio/ktor/utils/io/ByteWriteChannel;

    iput-object p4, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->$chunkedJob:Lio/ktor/utils/io/ReaderJob;

    iput-object p5, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    iput-boolean p6, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->$closeChannel:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance p1, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;

    iget-object v1, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->$request:Lio/ktor/client/request/HttpRequestData;

    iget-object v2, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->$body:Lio/ktor/http/content/OutgoingContent;

    iget-object v3, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->$channel:Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v4, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->$chunkedJob:Lio/ktor/utils/io/ReaderJob;

    iget-object v5, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    iget-boolean v6, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->$closeChannel:Z

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;-><init>(Lio/ktor/client/request/HttpRequestData;Lio/ktor/http/content/OutgoingContent;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/ReaderJob;Lio/ktor/utils/io/ByteWriteChannel;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 128
    iget v1, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v1, :cond_41

    if-eq v1, v7, :cond_3b

    if-eq v1, v6, :cond_37

    if-eq v1, v5, :cond_33

    if-eq v1, v4, :cond_29

    if-ne v1, v3, :cond_21

    iget-object v0, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_cc

    :cond_21
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_29
    iget-object v1, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v1

    goto/16 :goto_af

    :cond_33
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_78

    :cond_37
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5e

    :cond_3b
    :try_start_3b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_53

    :catchall_3f
    move-exception p1

    goto :goto_9b

    :cond_41
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 130
    :try_start_44
    iget-object p1, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->$request:Lio/ktor/client/request/HttpRequestData;

    iget-object v1, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->$body:Lio/ktor/http/content/OutgoingContent;

    iget-object v8, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->$channel:Lio/ktor/utils/io/ByteWriteChannel;

    iput v7, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->label:I

    invoke-static {p1, v1, v8, p0}, Lio/ktor/client/engine/cio/UtilsKt;->access$processOutgoingContent(Lio/ktor/client/request/HttpRequestData;Lio/ktor/http/content/OutgoingContent;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_50
    .catchall {:try_start_44 .. :try_end_50} :catchall_3f

    if-ne p1, v0, :cond_53

    return-object v0

    .line 135
    :cond_53
    :goto_53
    iget-object p1, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->$channel:Lio/ktor/utils/io/ByteWriteChannel;

    iput v6, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->label:I

    invoke-interface {p1, p0}, Lio/ktor/utils/io/ByteWriteChannel;->flush(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5e

    return-object v0

    .line 136
    :cond_5e
    :goto_5e
    iget-object p1, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->$chunkedJob:Lio/ktor/utils/io/ReaderJob;

    if-eqz p1, :cond_6b

    invoke-virtual {p1}, Lio/ktor/utils/io/ReaderJob;->getChannel()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object p1

    if-eqz p1, :cond_6b

    invoke-static {p1}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)V

    .line 137
    :cond_6b
    iget-object p1, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->$chunkedJob:Lio/ktor/utils/io/ReaderJob;

    if-eqz p1, :cond_78

    iput v5, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->label:I

    invoke-static {p1, p0}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->join(Lio/ktor/utils/io/ChannelJob;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_78

    return-object v0

    .line 139
    :cond_78
    :goto_78
    iget-object p1, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    invoke-interface {p1}, Lio/ktor/utils/io/ByteWriteChannel;->getClosedCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_8f

    invoke-static {p1}, Lio/ktor/client/utils/ExceptionUtilsJvmKt;->unwrapCancellationException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_8f

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_8b

    move-object v2, p1

    :cond_8b
    if-nez v2, :cond_8e

    goto :goto_8f

    .line 140
    :cond_8e
    throw v2

    .line 142
    :cond_8f
    :goto_8f
    iget-boolean p1, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->$closeChannel:Z

    if-eqz p1, :cond_98

    .line 143
    iget-object p0, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {p0}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)V

    .line 146
    :cond_98
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 132
    :goto_9b
    :try_start_9b
    iget-object v1, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->$channel:Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {v1, p1}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->close(Lio/ktor/utils/io/ByteWriteChannel;Ljava/lang/Throwable;)V

    .line 133
    throw p1
    :try_end_a1
    .catchall {:try_start_9b .. :try_end_a1} :catchall_a1

    :catchall_a1
    move-exception p1

    .line 135
    iget-object v1, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->$channel:Lio/ktor/utils/io/ByteWriteChannel;

    iput-object p1, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->L$0:Ljava/lang/Object;

    iput v4, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->label:I

    invoke-interface {v1, p0}, Lio/ktor/utils/io/ByteWriteChannel;->flush(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_af

    return-object v0

    .line 136
    :cond_af
    :goto_af
    iget-object v1, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->$chunkedJob:Lio/ktor/utils/io/ReaderJob;

    if-eqz v1, :cond_bc

    invoke-virtual {v1}, Lio/ktor/utils/io/ReaderJob;->getChannel()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v1

    if-eqz v1, :cond_bc

    invoke-static {v1}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)V

    .line 137
    :cond_bc
    iget-object v1, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->$chunkedJob:Lio/ktor/utils/io/ReaderJob;

    if-eqz v1, :cond_cd

    iput-object p1, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->L$0:Ljava/lang/Object;

    iput v3, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->label:I

    invoke-static {v1, p0}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->join(Lio/ktor/utils/io/ChannelJob;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_cb

    return-object v0

    :cond_cb
    move-object v0, p1

    :goto_cc
    move-object p1, v0

    .line 139
    :cond_cd
    iget-object v0, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    invoke-interface {v0}, Lio/ktor/utils/io/ByteWriteChannel;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_e4

    invoke-static {v0}, Lio/ktor/client/utils/ExceptionUtilsJvmKt;->unwrapCancellationException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_e4

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_e0

    move-object v2, v0

    :cond_e0
    if-nez v2, :cond_e3

    goto :goto_e4

    .line 140
    :cond_e3
    throw v2

    .line 142
    :cond_e4
    :goto_e4
    iget-boolean v0, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->$closeChannel:Z

    if-eqz v0, :cond_ed

    .line 143
    iget-object p0, p0, Lio/ktor/client/engine/cio/UtilsKt$writeBody$2;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {p0}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)V

    :cond_ed
    throw p1
.end method

###### Class io.ktor.client.engine.cio.UtilsKt.C00401 (io.ktor.client.engine.cio.UtilsKt$writeHeaders$1)
.class public final Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "utils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/cio/UtilsKt;->writeHeaders(Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteWriteChannel;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.client.engine.cio.UtilsKt"
    f = "utils.kt"
    l = {
        0x5b,
        0x5c,
        0x5f
    }
    m = "writeHeaders"
    v = 0x1
.end annotation


# instance fields
.field public I$0:I

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$10:Ljava/lang/Object;

.field public L$11:Ljava/lang/Object;

.field public L$12:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public L$5:Ljava/lang/Object;

.field public L$6:Ljava/lang/Object;

.field public L$7:Ljava/lang/Object;

.field public L$8:Ljava/lang/Object;

.field public L$9:Ljava/lang/Object;

.field public Z$0:Z

.field public Z$1:Z

.field public Z$2:Z

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
            "Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;",
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
    iput-object p1, p0, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/client/engine/cio/UtilsKt$writeHeaders$1;->label:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-static {p1, p1, v0, v0, p0}, Lio/ktor/client/engine/cio/UtilsKt;->writeHeaders(Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteWriteChannel;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.client.engine.cio.UtilsKt.C00412 (io.ktor.client.engine.cio.UtilsKt$writeRequest$2)
.class public final Lio/ktor/client/engine/cio/UtilsKt$writeRequest$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/cio/UtilsKt;->writeRequest(Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.client.engine.cio.UtilsKt$writeRequest$2"
    f = "utils.kt"
    l = {
        0x1e,
        0x1f
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public final synthetic $callContext:Lkotlin/coroutines/CoroutineContext;

.field public final synthetic $closeChannel:Z

.field public final synthetic $output:Lio/ktor/utils/io/ByteWriteChannel;

.field public final synthetic $overProxy:Z

.field public final synthetic $request:Lio/ktor/client/request/HttpRequestData;

.field public label:I


# direct methods
.method public constructor <init>(Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteWriteChannel;ZZLkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/request/HttpRequestData;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "ZZ",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/engine/cio/UtilsKt$writeRequest$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/cio/UtilsKt$writeRequest$2;->$request:Lio/ktor/client/request/HttpRequestData;

    iput-object p2, p0, Lio/ktor/client/engine/cio/UtilsKt$writeRequest$2;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    iput-boolean p3, p0, Lio/ktor/client/engine/cio/UtilsKt$writeRequest$2;->$overProxy:Z

    iput-boolean p4, p0, Lio/ktor/client/engine/cio/UtilsKt$writeRequest$2;->$closeChannel:Z

    iput-object p5, p0, Lio/ktor/client/engine/cio/UtilsKt$writeRequest$2;->$callContext:Lkotlin/coroutines/CoroutineContext;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance p1, Lio/ktor/client/engine/cio/UtilsKt$writeRequest$2;

    iget-object v1, p0, Lio/ktor/client/engine/cio/UtilsKt$writeRequest$2;->$request:Lio/ktor/client/request/HttpRequestData;

    iget-object v2, p0, Lio/ktor/client/engine/cio/UtilsKt$writeRequest$2;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    iget-boolean v3, p0, Lio/ktor/client/engine/cio/UtilsKt$writeRequest$2;->$overProxy:Z

    iget-boolean v4, p0, Lio/ktor/client/engine/cio/UtilsKt$writeRequest$2;->$closeChannel:Z

    iget-object v5, p0, Lio/ktor/client/engine/cio/UtilsKt$writeRequest$2;->$callContext:Lkotlin/coroutines/CoroutineContext;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lio/ktor/client/engine/cio/UtilsKt$writeRequest$2;-><init>(Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteWriteChannel;ZZLkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/cio/UtilsKt$writeRequest$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/cio/UtilsKt$writeRequest$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/ktor/client/engine/cio/UtilsKt$writeRequest$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/ktor/client/engine/cio/UtilsKt$writeRequest$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 29
    iget v1, p0, Lio/ktor/client/engine/cio/UtilsKt$writeRequest$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    if-eq v1, v3, :cond_1a

    if-ne v1, v2, :cond_12

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_46

    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_32

    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    iget-object p1, p0, Lio/ktor/client/engine/cio/UtilsKt$writeRequest$2;->$request:Lio/ktor/client/request/HttpRequestData;

    iget-object v1, p0, Lio/ktor/client/engine/cio/UtilsKt$writeRequest$2;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    iget-boolean v4, p0, Lio/ktor/client/engine/cio/UtilsKt$writeRequest$2;->$overProxy:Z

    iget-boolean v5, p0, Lio/ktor/client/engine/cio/UtilsKt$writeRequest$2;->$closeChannel:Z

    iput v3, p0, Lio/ktor/client/engine/cio/UtilsKt$writeRequest$2;->label:I

    invoke-static {p1, v1, v4, v5, p0}, Lio/ktor/client/engine/cio/UtilsKt;->writeHeaders(Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteWriteChannel;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_32

    return-object v0

    .line 31
    :cond_32
    :goto_32
    iget-object v3, p0, Lio/ktor/client/engine/cio/UtilsKt$writeRequest$2;->$request:Lio/ktor/client/request/HttpRequestData;

    iget-object v4, p0, Lio/ktor/client/engine/cio/UtilsKt$writeRequest$2;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v5, p0, Lio/ktor/client/engine/cio/UtilsKt$writeRequest$2;->$callContext:Lkotlin/coroutines/CoroutineContext;

    iput v2, p0, Lio/ktor/client/engine/cio/UtilsKt$writeRequest$2;->label:I

    const/4 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v7, p0

    invoke-static/range {v3 .. v9}, Lio/ktor/client/engine/cio/UtilsKt;->writeBody$default(Lio/ktor/client/request/HttpRequestData;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_46

    return-object v0

    .line 32
    :cond_46
    :goto_46
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

###### Class io.ktor.client.engine.cio.UtilsKt$$ExternalSyntheticLambda0 (io.ktor.client.engine.cio.UtilsKt$$ExternalSyntheticLambda0)
.class public final synthetic Lio/ktor/client/engine/cio/UtilsKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lio/ktor/utils/io/ByteWriteChannel;


# direct methods
.method public synthetic constructor <init>(Lio/ktor/utils/io/ByteWriteChannel;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/client/engine/cio/UtilsKt$$ExternalSyntheticLambda0;->f$0:Lio/ktor/utils/io/ByteWriteChannel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lio/ktor/client/engine/cio/UtilsKt$$ExternalSyntheticLambda0;->f$0:Lio/ktor/utils/io/ByteWriteChannel;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p0, p1}, Lio/ktor/client/engine/cio/UtilsKt;->$r8$lambda$WTN-fpygKd3bg6oGtiXgunmIi4s(Lio/ktor/utils/io/ByteWriteChannel;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.client.engine.cio.UtilsKt$$ExternalSyntheticLambda1 (io.ktor.client.engine.cio.UtilsKt$$ExternalSyntheticLambda1)
.class public final synthetic Lio/ktor/client/engine/cio/UtilsKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lio/ktor/http/cio/RequestResponseBuilder;


# direct methods
.method public synthetic constructor <init>(Lio/ktor/http/cio/RequestResponseBuilder;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/client/engine/cio/UtilsKt$$ExternalSyntheticLambda1;->f$0:Lio/ktor/http/cio/RequestResponseBuilder;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object p0, p0, Lio/ktor/client/engine/cio/UtilsKt$$ExternalSyntheticLambda1;->f$0:Lio/ktor/http/cio/RequestResponseBuilder;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lio/ktor/client/engine/cio/UtilsKt;->$r8$lambda$RDyNFnlV03rBtuaktrGPxqk69mg(Lio/ktor/http/cio/RequestResponseBuilder;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
