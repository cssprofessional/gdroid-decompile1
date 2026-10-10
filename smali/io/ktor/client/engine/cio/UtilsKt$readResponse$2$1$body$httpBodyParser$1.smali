###### Class io.ktor.client.engine.cio.UtilsKt$readResponse$2$1$body$httpBodyParser$1 (io.ktor.client.engine.cio.UtilsKt$readResponse$2$1$body$httpBodyParser$1)
.class public final Lio/ktor/client/engine/cio/UtilsKt$readResponse$2$1$body$httpBodyParser$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/cio/UtilsKt$readResponse$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/ktor/utils/io/WriterScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.client.engine.cio.UtilsKt$readResponse$2$1$body$httpBodyParser$1"
    f = "utils.kt"
    l = {
        0xcb
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public final synthetic $connectionType:Lio/ktor/http/cio/ConnectionOptions;

.field public final synthetic $contentLength:J

.field public final synthetic $input:Lio/ktor/utils/io/ByteReadChannel;

.field public final synthetic $transferEncoding:Ljava/lang/String;

.field public final synthetic $version:Lio/ktor/http/HttpProtocolVersion;

.field public synthetic L$0:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(Lio/ktor/http/HttpProtocolVersion;JLjava/lang/String;Lio/ktor/http/cio/ConnectionOptions;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/HttpProtocolVersion;",
            "J",
            "Ljava/lang/String;",
            "Lio/ktor/http/cio/ConnectionOptions;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/engine/cio/UtilsKt$readResponse$2$1$body$httpBodyParser$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2$1$body$httpBodyParser$1;->$version:Lio/ktor/http/HttpProtocolVersion;

    iput-wide p2, p0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2$1$body$httpBodyParser$1;->$contentLength:J

    iput-object p4, p0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2$1$body$httpBodyParser$1;->$transferEncoding:Ljava/lang/String;

    iput-object p5, p0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2$1$body$httpBodyParser$1;->$connectionType:Lio/ktor/http/cio/ConnectionOptions;

    iput-object p6, p0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2$1$body$httpBodyParser$1;->$input:Lio/ktor/utils/io/ByteReadChannel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 12
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
    new-instance v8, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2$1$body$httpBodyParser$1;

    iget-object v1, p0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2$1$body$httpBodyParser$1;->$version:Lio/ktor/http/HttpProtocolVersion;

    iget-wide v2, p0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2$1$body$httpBodyParser$1;->$contentLength:J

    iget-object v4, p0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2$1$body$httpBodyParser$1;->$transferEncoding:Ljava/lang/String;

    iget-object v5, p0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2$1$body$httpBodyParser$1;->$connectionType:Lio/ktor/http/cio/ConnectionOptions;

    iget-object v6, p0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2$1$body$httpBodyParser$1;->$input:Lio/ktor/utils/io/ByteReadChannel;

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2$1$body$httpBodyParser$1;-><init>(Lio/ktor/http/HttpProtocolVersion;JLjava/lang/String;Lio/ktor/http/cio/ConnectionOptions;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v8, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2$1$body$httpBodyParser$1;->L$0:Ljava/lang/Object;

    return-object v8
.end method

.method public final invoke(Lio/ktor/utils/io/WriterScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/WriterScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2$1$body$httpBodyParser$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2$1$body$httpBodyParser$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2$1$body$httpBodyParser$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lio/ktor/utils/io/WriterScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2$1$body$httpBodyParser$1;->invoke(Lio/ktor/utils/io/WriterScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    iget-object v0, p0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2$1$body$httpBodyParser$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/WriterScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 202
    iget v2, p0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2$1$body$httpBodyParser$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1b

    if-ne v2, v3, :cond_13

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3e

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 203
    iget-object v2, p0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2$1$body$httpBodyParser$1;->$version:Lio/ktor/http/HttpProtocolVersion;

    iget-wide v4, p0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2$1$body$httpBodyParser$1;->$contentLength:J

    iget-object p1, p0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2$1$body$httpBodyParser$1;->$transferEncoding:Ljava/lang/String;

    iget-object v6, p0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2$1$body$httpBodyParser$1;->$connectionType:Lio/ktor/http/cio/ConnectionOptions;

    iget-object v7, p0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2$1$body$httpBodyParser$1;->$input:Lio/ktor/utils/io/ByteReadChannel;

    invoke-virtual {v0}, Lio/ktor/utils/io/WriterScope;->getChannel()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v8

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2$1$body$httpBodyParser$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lio/ktor/client/engine/cio/UtilsKt$readResponse$2$1$body$httpBodyParser$1;->label:I

    move-wide v3, v4

    move-object v5, p1

    move-object v9, p0

    invoke-static/range {v2 .. v9}, Lio/ktor/http/cio/HttpBodyKt;->parseHttpBody(Lio/ktor/http/HttpProtocolVersion;JLjava/lang/CharSequence;Lio/ktor/http/cio/ConnectionOptions;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3e

    return-object v1

    .line 204
    :cond_3e
    :goto_3e
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
