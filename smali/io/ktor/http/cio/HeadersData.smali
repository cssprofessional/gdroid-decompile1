###### Class io.ktor.http.cio.HeadersData (io.ktor.http.cio.HeadersData)
.class public final Lio/ktor/http/cio/HeadersData;
.super Ljava/lang/Object;
.source "HttpHeadersMap.kt"


# instance fields
.field public arrays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/ktor/http/cio/HeadersData;->arrays:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getArrays$p(Lio/ktor/http/cio/HeadersData;)Ljava/util/List;
    .registers 1

    .line 238
    iget-object p0, p0, Lio/ktor/http/cio/HeadersData;->arrays:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final arraysCount()I
    .registers 1

    .line 242
    iget-object p0, p0, Lio/ktor/http/cio/HeadersData;->arrays:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final at(I)I
    .registers 3

    .line 251
    iget-object p0, p0, Lio/ktor/http/cio/HeadersData;->arrays:Ljava/util/List;

    div-int/lit16 v0, p1, 0x300

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    rem-int/lit16 p1, p1, 0x300

    aget p0, p0, p1

    return p0
.end method

.method public final headersStarts()Lkotlin/sequences/Sequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 258
    new-instance v0, Lio/ktor/http/cio/HeadersData$headersStarts$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/ktor/http/cio/HeadersData$headersStarts$1;-><init>(Lio/ktor/http/cio/HeadersData;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt;->sequence(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public final prepare(I)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_13

    .line 246
    iget-object v1, p0, Lio/ktor/http/cio/HeadersData;->arrays:Ljava/util/List;

    invoke-static {}, Lio/ktor/http/cio/HttpHeadersMapKt;->access$getIntArrayPool$p()Lio/ktor/utils/io/pool/DefaultPool;

    move-result-object v2

    invoke-virtual {v2}, Lio/ktor/utils/io/pool/DefaultPool;->borrow()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    return-void
.end method

.method public final release()V
    .registers 4

    .line 273
    iget-object v0, p0, Lio/ktor/http/cio/HeadersData;->arrays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-static {}, Lio/ktor/http/cio/HttpHeadersMapKt;->access$getIntArrayPool$p()Lio/ktor/utils/io/pool/DefaultPool;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/ktor/utils/io/pool/DefaultPool;->recycle(Ljava/lang/Object;)V

    goto :goto_6

    .line 274
    :cond_1a
    iget-object p0, p0, Lio/ktor/http/cio/HeadersData;->arrays:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final set(II)V
    .registers 4

    .line 255
    iget-object p0, p0, Lio/ktor/http/cio/HeadersData;->arrays:Ljava/util/List;

    div-int/lit16 v0, p1, 0x300

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    rem-int/lit16 p1, p1, 0x300

    aput p2, p0, p1

    return-void
.end method

###### Class io.ktor.http.cio.HeadersData.AnonymousClass1 (io.ktor.http.cio.HeadersData$headersStarts$1)
.class public final Lio/ktor/http/cio/HeadersData$headersStarts$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "HttpHeadersMap.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/http/cio/HeadersData;->headersStarts()Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/SequenceScope<",
        "-",
        "Ljava/lang/Integer;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.http.cio.HeadersData$headersStarts$1"
    f = "HttpHeadersMap.kt"
    l = {
        0x108
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public I$0:I

.field public I$1:I

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lio/ktor/http/cio/HeadersData;


# direct methods
.method public constructor <init>(Lio/ktor/http/cio/HeadersData;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/cio/HeadersData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/http/cio/HeadersData$headersStarts$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/http/cio/HeadersData$headersStarts$1;->this$0:Lio/ktor/http/cio/HeadersData;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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
    new-instance v0, Lio/ktor/http/cio/HeadersData$headersStarts$1;

    iget-object p0, p0, Lio/ktor/http/cio/HeadersData$headersStarts$1;->this$0:Lio/ktor/http/cio/HeadersData;

    invoke-direct {v0, p0, p2}, Lio/ktor/http/cio/HeadersData$headersStarts$1;-><init>(Lio/ktor/http/cio/HeadersData;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/http/cio/HeadersData$headersStarts$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlin/sequences/SequenceScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/http/cio/HeadersData$headersStarts$1;->invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/SequenceScope<",
            "-",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/ktor/http/cio/HeadersData$headersStarts$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/ktor/http/cio/HeadersData$headersStarts$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/ktor/http/cio/HeadersData$headersStarts$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    iget-object v0, p0, Lio/ktor/http/cio/HeadersData$headersStarts$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/sequences/SequenceScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 258
    iget v2, p0, Lio/ktor/http/cio/HeadersData$headersStarts$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_28

    if-ne v2, v4, :cond_20

    iget v2, p0, Lio/ktor/http/cio/HeadersData$headersStarts$1;->I$1:I

    iget v5, p0, Lio/ktor/http/cio/HeadersData$headersStarts$1;->I$0:I

    iget-object v6, p0, Lio/ktor/http/cio/HeadersData$headersStarts$1;->L$2:Ljava/lang/Object;

    check-cast v6, [I

    iget-object v7, p0, Lio/ktor/http/cio/HeadersData$headersStarts$1;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/util/Iterator;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_69

    :cond_20
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_28
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 260
    iget-object p1, p0, Lio/ktor/http/cio/HeadersData$headersStarts$1;->this$0:Lio/ktor/http/cio/HeadersData;

    invoke-static {p1}, Lio/ktor/http/cio/HeadersData;->access$getArrays$p(Lio/ktor/http/cio/HeadersData;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, v3

    :goto_36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_71

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    move-object v6, v5

    move v5, v2

    move v2, v3

    .line 262
    :goto_45
    array-length v7, v6

    if-ge v2, v7, :cond_6f

    .line 263
    iget-object v7, p0, Lio/ktor/http/cio/HeadersData$headersStarts$1;->this$0:Lio/ktor/http/cio/HeadersData;

    invoke-virtual {v7, v5}, Lio/ktor/http/cio/HeadersData;->at(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_6a

    .line 264
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v0, p0, Lio/ktor/http/cio/HeadersData$headersStarts$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lio/ktor/http/cio/HeadersData$headersStarts$1;->L$1:Ljava/lang/Object;

    iput-object v6, p0, Lio/ktor/http/cio/HeadersData$headersStarts$1;->L$2:Ljava/lang/Object;

    iput v5, p0, Lio/ktor/http/cio/HeadersData$headersStarts$1;->I$0:I

    iput v2, p0, Lio/ktor/http/cio/HeadersData$headersStarts$1;->I$1:I

    iput v4, p0, Lio/ktor/http/cio/HeadersData$headersStarts$1;->label:I

    invoke-virtual {v0, v7, p0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_68

    return-object v1

    :cond_68
    move-object v7, p1

    :goto_69
    move-object p1, v7

    :cond_6a
    add-int/lit8 v2, v2, 0x6

    add-int/lit8 v5, v5, 0x6

    goto :goto_45

    :cond_6f
    move v2, v5

    goto :goto_36

    .line 270
    :cond_71
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
