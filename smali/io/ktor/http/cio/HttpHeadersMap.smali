###### Class io.ktor.http.cio.HttpHeadersMap (io.ktor.http.cio.HttpHeadersMap)
.class public final Lio/ktor/http/cio/HttpHeadersMap;
.super Ljava/lang/Object;
.source "HttpHeadersMap.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpHeadersMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpHeadersMap.kt\nio/ktor/http/cio/HttpHeadersMap\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,295:1\n1#2:296\n*E\n"
.end annotation


# instance fields
.field public final builder:Lio/ktor/http/cio/internals/CharArrayBuilder;

.field public headerCapacity:I

.field public headersData:Lio/ktor/http/cio/HeadersData;

.field public size:I


# direct methods
.method public constructor <init>(Lio/ktor/http/cio/internals/CharArrayBuilder;)V
    .registers 3

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/http/cio/HttpHeadersMap;->builder:Lio/ktor/http/cio/internals/CharArrayBuilder;

    .line 45
    invoke-static {}, Lio/ktor/http/cio/HttpHeadersMapKt;->access$getHeadersDataPool$p()Lio/ktor/utils/io/pool/DefaultPool;

    move-result-object p1

    invoke-virtual {p1}, Lio/ktor/utils/io/pool/DefaultPool;->borrow()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/ktor/http/cio/HeadersData;

    iput-object p1, p0, Lio/ktor/http/cio/HttpHeadersMap;->headersData:Lio/ktor/http/cio/HeadersData;

    return-void
.end method

.method public static final synthetic access$getHeaderCapacity$p(Lio/ktor/http/cio/HttpHeadersMap;)I
    .registers 1

    .line 40
    iget p0, p0, Lio/ktor/http/cio/HttpHeadersMap;->headerCapacity:I

    return p0
.end method

.method public static final synthetic access$getHeadersData$p(Lio/ktor/http/cio/HttpHeadersMap;)Lio/ktor/http/cio/HeadersData;
    .registers 1

    .line 40
    iget-object p0, p0, Lio/ktor/http/cio/HttpHeadersMap;->headersData:Lio/ktor/http/cio/HeadersData;

    return-object p0
.end method

.method public static final synthetic access$headerHasName(Lio/ktor/http/cio/HttpHeadersMap;Ljava/lang/CharSequence;I)Z
    .registers 3

    .line 40
    invoke-virtual {p0, p1, p2}, Lio/ktor/http/cio/HttpHeadersMap;->headerHasName(Ljava/lang/CharSequence;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 7

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget v0, p0, Lio/ktor/http/cio/HttpHeadersMap;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_b

    return-object v1

    :cond_b
    const/4 v0, 0x3

    const/4 v2, 0x0

    .line 69
    invoke-static {p1, v2, v2, v0, v1}, Lio/ktor/http/cio/internals/CharsKt;->hashCodeLowerCase$default(Ljava/lang/CharSequence;IIILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 70
    iget v2, p0, Lio/ktor/http/cio/HttpHeadersMap;->headerCapacity:I

    rem-int/2addr v0, v2

    .line 72
    :goto_18
    iget-object v2, p0, Lio/ktor/http/cio/HttpHeadersMap;->headersData:Lio/ktor/http/cio/HeadersData;

    mul-int/lit8 v3, v0, 0x6

    invoke-virtual {v2, v3}, Lio/ktor/http/cio/HeadersData;->at(I)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_34

    .line 73
    invoke-virtual {p0, p1, v3}, Lio/ktor/http/cio/HttpHeadersMap;->headerHasName(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 74
    invoke-virtual {p0, v3}, Lio/ktor/http/cio/HttpHeadersMap;->valueAtOffset(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    .line 76
    iget v2, p0, Lio/ktor/http/cio/HttpHeadersMap;->headerCapacity:I

    rem-int/2addr v0, v2

    goto :goto_18

    :cond_34
    return-object v1
.end method

.method public final getAll(Ljava/lang/String;)Lkotlin/sequences/Sequence;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/sequences/Sequence<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    new-instance v0, Lio/ktor/http/cio/HttpHeadersMap$getAll$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/ktor/http/cio/HttpHeadersMap$getAll$1;-><init>(Lio/ktor/http/cio/HttpHeadersMap;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt;->sequence(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public final getSize()I
    .registers 1

    .line 41
    iget p0, p0, Lio/ktor/http/cio/HttpHeadersMap;->size:I

    return p0
.end method

.method public final headerHasName(Ljava/lang/CharSequence;I)Z
    .registers 5

    .line 193
    iget-object v0, p0, Lio/ktor/http/cio/HttpHeadersMap;->headersData:Lio/ktor/http/cio/HeadersData;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lio/ktor/http/cio/HeadersData;->at(I)I

    move-result v0

    .line 194
    iget-object v1, p0, Lio/ktor/http/cio/HttpHeadersMap;->headersData:Lio/ktor/http/cio/HeadersData;

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {v1, p2}, Lio/ktor/http/cio/HeadersData;->at(I)I

    move-result p2

    .line 195
    iget-object p0, p0, Lio/ktor/http/cio/HttpHeadersMap;->builder:Lio/ktor/http/cio/internals/CharArrayBuilder;

    invoke-static {p0, v0, p2, p1}, Lio/ktor/http/cio/internals/CharsKt;->equalsLowerCase(Ljava/lang/CharSequence;IILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final nameAtOffset(I)Ljava/lang/CharSequence;
    .registers 4

    .line 199
    iget-object v0, p0, Lio/ktor/http/cio/HttpHeadersMap;->headersData:Lio/ktor/http/cio/HeadersData;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lio/ktor/http/cio/HeadersData;->at(I)I

    move-result v0

    .line 200
    iget-object v1, p0, Lio/ktor/http/cio/HttpHeadersMap;->headersData:Lio/ktor/http/cio/HeadersData;

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {v1, p1}, Lio/ktor/http/cio/HeadersData;->at(I)I

    move-result p1

    .line 201
    iget-object p0, p0, Lio/ktor/http/cio/HttpHeadersMap;->builder:Lio/ktor/http/cio/internals/CharArrayBuilder;

    invoke-virtual {p0, v0, p1}, Lio/ktor/http/cio/internals/CharArrayBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final offsets()Lkotlin/sequences/Sequence;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object p0, p0, Lio/ktor/http/cio/HttpHeadersMap;->headersData:Lio/ktor/http/cio/HeadersData;

    invoke-virtual {p0}, Lio/ktor/http/cio/HeadersData;->headersStarts()Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public final put(IIII)V
    .registers 12

    .line 124
    invoke-virtual {p0}, Lio/ktor/http/cio/HttpHeadersMap;->thresholdReached()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 125
    invoke-virtual {p0}, Lio/ktor/http/cio/HttpHeadersMap;->resize()V

    .line 128
    :cond_9
    iget-object v0, p0, Lio/ktor/http/cio/HttpHeadersMap;->builder:Lio/ktor/http/cio/internals/CharArrayBuilder;

    invoke-static {v0, p1, p2}, Lio/ktor/http/cio/internals/CharsKt;->hashCodeLowerCase(Ljava/lang/CharSequence;II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 129
    iget-object v1, p0, Lio/ktor/http/cio/HttpHeadersMap;->builder:Lio/ktor/http/cio/internals/CharArrayBuilder;

    invoke-virtual {v1, p1, p2}, Lio/ktor/http/cio/internals/CharArrayBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 131
    iget v2, p0, Lio/ktor/http/cio/HttpHeadersMap;->headerCapacity:I

    rem-int v2, v0, v2

    const/4 v3, -0x1

    move v4, v3

    .line 133
    :goto_1f
    iget-object v5, p0, Lio/ktor/http/cio/HttpHeadersMap;->headersData:Lio/ktor/http/cio/HeadersData;

    mul-int/lit8 v6, v2, 0x6

    invoke-virtual {v5, v6}, Lio/ktor/http/cio/HeadersData;->at(I)I

    move-result v5

    if-eq v5, v3, :cond_36

    .line 134
    invoke-virtual {p0, v1, v6}, Lio/ktor/http/cio/HttpHeadersMap;->headerHasName(Ljava/lang/CharSequence;I)Z

    move-result v5

    if-eqz v5, :cond_30

    move v4, v2

    :cond_30
    add-int/lit8 v2, v2, 0x1

    .line 137
    iget v5, p0, Lio/ktor/http/cio/HttpHeadersMap;->headerCapacity:I

    rem-int/2addr v2, v5

    goto :goto_1f

    .line 141
    :cond_36
    iget-object v1, p0, Lio/ktor/http/cio/HttpHeadersMap;->headersData:Lio/ktor/http/cio/HeadersData;

    invoke-virtual {v1, v6, v0}, Lio/ktor/http/cio/HeadersData;->set(II)V

    .line 142
    iget-object v0, p0, Lio/ktor/http/cio/HttpHeadersMap;->headersData:Lio/ktor/http/cio/HeadersData;

    add-int/lit8 v1, v6, 0x1

    invoke-virtual {v0, v1, p1}, Lio/ktor/http/cio/HeadersData;->set(II)V

    .line 143
    iget-object p1, p0, Lio/ktor/http/cio/HttpHeadersMap;->headersData:Lio/ktor/http/cio/HeadersData;

    add-int/lit8 v0, v6, 0x2

    invoke-virtual {p1, v0, p2}, Lio/ktor/http/cio/HeadersData;->set(II)V

    .line 144
    iget-object p1, p0, Lio/ktor/http/cio/HttpHeadersMap;->headersData:Lio/ktor/http/cio/HeadersData;

    add-int/lit8 p2, v6, 0x3

    invoke-virtual {p1, p2, p3}, Lio/ktor/http/cio/HeadersData;->set(II)V

    .line 145
    iget-object p1, p0, Lio/ktor/http/cio/HttpHeadersMap;->headersData:Lio/ktor/http/cio/HeadersData;

    add-int/lit8 p2, v6, 0x4

    invoke-virtual {p1, p2, p4}, Lio/ktor/http/cio/HeadersData;->set(II)V

    .line 146
    iget-object p1, p0, Lio/ktor/http/cio/HttpHeadersMap;->headersData:Lio/ktor/http/cio/HeadersData;

    add-int/lit8 v6, v6, 0x5

    invoke-virtual {p1, v6, v3}, Lio/ktor/http/cio/HeadersData;->set(II)V

    if-eq v4, v3, :cond_69

    .line 149
    iget-object p1, p0, Lio/ktor/http/cio/HttpHeadersMap;->headersData:Lio/ktor/http/cio/HeadersData;

    mul-int/lit8 v4, v4, 0x6

    add-int/lit8 v4, v4, 0x5

    invoke-virtual {p1, v4, v2}, Lio/ktor/http/cio/HeadersData;->set(II)V

    .line 152
    :cond_69
    iget p1, p0, Lio/ktor/http/cio/HttpHeadersMap;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/ktor/http/cio/HttpHeadersMap;->size:I

    return-void
.end method

.method public final release()V
    .registers 3

    const/4 v0, 0x0

    .line 211
    iput v0, p0, Lio/ktor/http/cio/HttpHeadersMap;->size:I

    .line 212
    iput v0, p0, Lio/ktor/http/cio/HttpHeadersMap;->headerCapacity:I

    .line 213
    invoke-static {}, Lio/ktor/http/cio/HttpHeadersMapKt;->access$getHeadersDataPool$p()Lio/ktor/utils/io/pool/DefaultPool;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/http/cio/HttpHeadersMap;->headersData:Lio/ktor/http/cio/HeadersData;

    invoke-virtual {v0, v1}, Lio/ktor/utils/io/pool/DefaultPool;->recycle(Ljava/lang/Object;)V

    .line 214
    invoke-static {}, Lio/ktor/http/cio/HttpHeadersMapKt;->access$getHeadersDataPool$p()Lio/ktor/utils/io/pool/DefaultPool;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/utils/io/pool/DefaultPool;->borrow()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/http/cio/HeadersData;

    iput-object v0, p0, Lio/ktor/http/cio/HttpHeadersMap;->headersData:Lio/ktor/http/cio/HeadersData;

    return-void
.end method

.method public final resize()V
    .registers 8

    .line 172
    iget v0, p0, Lio/ktor/http/cio/HttpHeadersMap;->size:I

    .line 173
    iget-object v1, p0, Lio/ktor/http/cio/HttpHeadersMap;->headersData:Lio/ktor/http/cio/HeadersData;

    const/4 v2, 0x0

    .line 175
    iput v2, p0, Lio/ktor/http/cio/HttpHeadersMap;->size:I

    .line 176
    iget v2, p0, Lio/ktor/http/cio/HttpHeadersMap;->headerCapacity:I

    mul-int/lit8 v2, v2, 0x2

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lio/ktor/http/cio/HttpHeadersMap;->headerCapacity:I

    .line 177
    invoke-static {}, Lio/ktor/http/cio/HttpHeadersMapKt;->access$getHeadersDataPool$p()Lio/ktor/utils/io/pool/DefaultPool;

    move-result-object v2

    invoke-virtual {v2}, Lio/ktor/utils/io/pool/DefaultPool;->borrow()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/ktor/http/cio/HeadersData;

    invoke-virtual {v1}, Lio/ktor/http/cio/HeadersData;->arraysCount()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lio/ktor/http/cio/HeadersData;->prepare(I)V

    iput-object v2, p0, Lio/ktor/http/cio/HttpHeadersMap;->headersData:Lio/ktor/http/cio/HeadersData;

    .line 179
    invoke-virtual {v1}, Lio/ktor/http/cio/HeadersData;->headersStarts()Lkotlin/sequences/Sequence;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    .line 181
    invoke-virtual {v1, v4}, Lio/ktor/http/cio/HeadersData;->at(I)I

    move-result v4

    add-int/lit8 v5, v3, 0x2

    .line 182
    invoke-virtual {v1, v5}, Lio/ktor/http/cio/HeadersData;->at(I)I

    move-result v5

    add-int/lit8 v6, v3, 0x3

    .line 183
    invoke-virtual {v1, v6}, Lio/ktor/http/cio/HeadersData;->at(I)I

    move-result v6

    add-int/lit8 v3, v3, 0x4

    .line 184
    invoke-virtual {v1, v3}, Lio/ktor/http/cio/HeadersData;->at(I)I

    move-result v3

    .line 180
    invoke-virtual {p0, v4, v5, v6, v3}, Lio/ktor/http/cio/HttpHeadersMap;->put(IIII)V

    goto :goto_2e

    .line 188
    :cond_5a
    invoke-static {}, Lio/ktor/http/cio/HttpHeadersMapKt;->access$getHeadersDataPool$p()Lio/ktor/utils/io/pool/DefaultPool;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/ktor/utils/io/pool/DefaultPool;->recycle(Ljava/lang/Object;)V

    .line 189
    iget p0, p0, Lio/ktor/http/cio/HttpHeadersMap;->size:I

    if-ne v0, p0, :cond_66

    return-void

    :cond_66
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final thresholdReached()Z
    .registers 7

    .line 47
    iget v0, p0, Lio/ktor/http/cio/HttpHeadersMap;->size:I

    int-to-double v0, v0

    iget p0, p0, Lio/ktor/http/cio/HttpHeadersMap;->headerCapacity:I

    int-to-double v2, p0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v4

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-static {p0, v1, v0}, Lio/ktor/http/cio/HttpHeadersMapKt;->dumpTo(Lio/ktor/http/cio/HttpHeadersMap;Ljava/lang/String;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final valueAtOffset(I)Ljava/lang/CharSequence;
    .registers 4

    .line 205
    iget-object v0, p0, Lio/ktor/http/cio/HttpHeadersMap;->headersData:Lio/ktor/http/cio/HeadersData;

    add-int/lit8 v1, p1, 0x3

    invoke-virtual {v0, v1}, Lio/ktor/http/cio/HeadersData;->at(I)I

    move-result v0

    .line 206
    iget-object v1, p0, Lio/ktor/http/cio/HttpHeadersMap;->headersData:Lio/ktor/http/cio/HeadersData;

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {v1, p1}, Lio/ktor/http/cio/HeadersData;->at(I)I

    move-result p1

    .line 207
    iget-object p0, p0, Lio/ktor/http/cio/HttpHeadersMap;->builder:Lio/ktor/http/cio/internals/CharArrayBuilder;

    invoke-virtual {p0, v0, p1}, Lio/ktor/http/cio/internals/CharArrayBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.http.cio.HttpHeadersMap.AnonymousClass1 (io.ktor.http.cio.HttpHeadersMap$getAll$1)
.class public final Lio/ktor/http/cio/HttpHeadersMap$getAll$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "HttpHeadersMap.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/http/cio/HttpHeadersMap;->getAll(Ljava/lang/String;)Lkotlin/sequences/Sequence;
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
        "Ljava/lang/CharSequence;",
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
    c = "io.ktor.http.cio.HttpHeadersMap$getAll$1"
    f = "HttpHeadersMap.kt"
    l = {
        0x5a
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public final synthetic $name:Ljava/lang/String;

.field public I$0:I

.field public I$1:I

.field public synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lio/ktor/http/cio/HttpHeadersMap;


# direct methods
.method public constructor <init>(Lio/ktor/http/cio/HttpHeadersMap;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/cio/HttpHeadersMap;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/http/cio/HttpHeadersMap$getAll$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/http/cio/HttpHeadersMap$getAll$1;->this$0:Lio/ktor/http/cio/HttpHeadersMap;

    iput-object p2, p0, Lio/ktor/http/cio/HttpHeadersMap$getAll$1;->$name:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
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
    new-instance v0, Lio/ktor/http/cio/HttpHeadersMap$getAll$1;

    iget-object v1, p0, Lio/ktor/http/cio/HttpHeadersMap$getAll$1;->this$0:Lio/ktor/http/cio/HttpHeadersMap;

    iget-object p0, p0, Lio/ktor/http/cio/HttpHeadersMap$getAll$1;->$name:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p2}, Lio/ktor/http/cio/HttpHeadersMap$getAll$1;-><init>(Lio/ktor/http/cio/HttpHeadersMap;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/http/cio/HttpHeadersMap$getAll$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlin/sequences/SequenceScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/http/cio/HttpHeadersMap$getAll$1;->invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/CharSequence;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/ktor/http/cio/HttpHeadersMap$getAll$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/ktor/http/cio/HttpHeadersMap$getAll$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/ktor/http/cio/HttpHeadersMap$getAll$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    iget-object v0, p0, Lio/ktor/http/cio/HttpHeadersMap$getAll$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/sequences/SequenceScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 82
    iget v2, p0, Lio/ktor/http/cio/HttpHeadersMap$getAll$1;->label:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v2, :cond_20

    if-ne v2, v4, :cond_18

    iget v2, p0, Lio/ktor/http/cio/HttpHeadersMap$getAll$1;->I$1:I

    iget v5, p0, Lio/ktor/http/cio/HttpHeadersMap$getAll$1;->I$0:I

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_71

    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 83
    iget-object p1, p0, Lio/ktor/http/cio/HttpHeadersMap$getAll$1;->this$0:Lio/ktor/http/cio/HttpHeadersMap;

    invoke-virtual {p1}, Lio/ktor/http/cio/HttpHeadersMap;->getSize()I

    move-result p1

    if-nez p1, :cond_2e

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 85
    :cond_2e
    iget-object p1, p0, Lio/ktor/http/cio/HttpHeadersMap$getAll$1;->$name:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p1, v6, v6, v2, v5}, Lio/ktor/http/cio/internals/CharsKt;->hashCodeLowerCase$default(Ljava/lang/CharSequence;IIILjava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 86
    iget-object v2, p0, Lio/ktor/http/cio/HttpHeadersMap$getAll$1;->this$0:Lio/ktor/http/cio/HttpHeadersMap;

    invoke-static {v2}, Lio/ktor/http/cio/HttpHeadersMap;->access$getHeaderCapacity$p(Lio/ktor/http/cio/HttpHeadersMap;)I

    move-result v2

    rem-int v2, p1, v2

    move v5, p1

    .line 88
    :goto_44
    iget-object p1, p0, Lio/ktor/http/cio/HttpHeadersMap$getAll$1;->this$0:Lio/ktor/http/cio/HttpHeadersMap;

    invoke-static {p1}, Lio/ktor/http/cio/HttpHeadersMap;->access$getHeadersData$p(Lio/ktor/http/cio/HttpHeadersMap;)Lio/ktor/http/cio/HeadersData;

    move-result-object p1

    mul-int/lit8 v6, v2, 0x6

    invoke-virtual {p1, v6}, Lio/ktor/http/cio/HeadersData;->at(I)I

    move-result p1

    if-eq p1, v3, :cond_8c

    .line 89
    iget-object p1, p0, Lio/ktor/http/cio/HttpHeadersMap$getAll$1;->this$0:Lio/ktor/http/cio/HttpHeadersMap;

    iget-object v7, p0, Lio/ktor/http/cio/HttpHeadersMap$getAll$1;->$name:Ljava/lang/String;

    invoke-static {p1, v7, v6}, Lio/ktor/http/cio/HttpHeadersMap;->access$headerHasName(Lio/ktor/http/cio/HttpHeadersMap;Ljava/lang/CharSequence;I)Z

    move-result p1

    if-eqz p1, :cond_82

    .line 90
    iget-object p1, p0, Lio/ktor/http/cio/HttpHeadersMap$getAll$1;->this$0:Lio/ktor/http/cio/HttpHeadersMap;

    invoke-virtual {p1, v6}, Lio/ktor/http/cio/HttpHeadersMap;->valueAtOffset(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object v0, p0, Lio/ktor/http/cio/HttpHeadersMap$getAll$1;->L$0:Ljava/lang/Object;

    iput v5, p0, Lio/ktor/http/cio/HttpHeadersMap$getAll$1;->I$0:I

    iput v2, p0, Lio/ktor/http/cio/HttpHeadersMap$getAll$1;->I$1:I

    iput v4, p0, Lio/ktor/http/cio/HttpHeadersMap$getAll$1;->label:I

    invoke-virtual {v0, p1, p0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_71

    return-object v1

    .line 92
    :cond_71
    :goto_71
    iget-object p1, p0, Lio/ktor/http/cio/HttpHeadersMap$getAll$1;->this$0:Lio/ktor/http/cio/HttpHeadersMap;

    invoke-static {p1}, Lio/ktor/http/cio/HttpHeadersMap;->access$getHeadersData$p(Lio/ktor/http/cio/HttpHeadersMap;)Lio/ktor/http/cio/HeadersData;

    move-result-object p1

    mul-int/lit8 v2, v2, 0x6

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {p1, v2}, Lio/ktor/http/cio/HeadersData;->at(I)I

    move-result v2

    if-eq v2, v3, :cond_8c

    goto :goto_44

    :cond_82
    add-int/lit8 v2, v2, 0x1

    .line 97
    iget-object p1, p0, Lio/ktor/http/cio/HttpHeadersMap$getAll$1;->this$0:Lio/ktor/http/cio/HttpHeadersMap;

    invoke-static {p1}, Lio/ktor/http/cio/HttpHeadersMap;->access$getHeaderCapacity$p(Lio/ktor/http/cio/HttpHeadersMap;)I

    move-result p1

    rem-int/2addr v2, p1

    goto :goto_44

    .line 99
    :cond_8c
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
