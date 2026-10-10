###### Class io.ktor.http.cio.HttpHeadersMapKt (io.ktor.http.cio.HttpHeadersMapKt)
.class public final Lio/ktor/http/cio/HttpHeadersMapKt;
.super Ljava/lang/Object;
.source "HttpHeadersMap.kt"


# static fields
.field public static final HeadersDataPool:Lio/ktor/utils/io/pool/DefaultPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/DefaultPool<",
            "Lio/ktor/http/cio/HeadersData;",
            ">;"
        }
    .end annotation
.end field

.field public static final IntArrayPool:Lio/ktor/utils/io/pool/DefaultPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/DefaultPool<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 278
    new-instance v0, Lio/ktor/http/cio/HttpHeadersMapKt$IntArrayPool$1;

    invoke-direct {v0}, Lio/ktor/http/cio/HttpHeadersMapKt$IntArrayPool$1;-><init>()V

    sput-object v0, Lio/ktor/http/cio/HttpHeadersMapKt;->IntArrayPool:Lio/ktor/utils/io/pool/DefaultPool;

    .line 287
    new-instance v0, Lio/ktor/http/cio/HttpHeadersMapKt$HeadersDataPool$1;

    invoke-direct {v0}, Lio/ktor/http/cio/HttpHeadersMapKt$HeadersDataPool$1;-><init>()V

    sput-object v0, Lio/ktor/http/cio/HttpHeadersMapKt;->HeadersDataPool:Lio/ktor/utils/io/pool/DefaultPool;

    return-void
.end method

.method public static final synthetic access$getHeadersDataPool$p()Lio/ktor/utils/io/pool/DefaultPool;
    .registers 1

    .line 1
    sget-object v0, Lio/ktor/http/cio/HttpHeadersMapKt;->HeadersDataPool:Lio/ktor/utils/io/pool/DefaultPool;

    return-object v0
.end method

.method public static final synthetic access$getIntArrayPool$p()Lio/ktor/utils/io/pool/DefaultPool;
    .registers 1

    .line 1
    sget-object v0, Lio/ktor/http/cio/HttpHeadersMapKt;->IntArrayPool:Lio/ktor/utils/io/pool/DefaultPool;

    return-object v0
.end method

.method public static final dumpTo(Lio/ktor/http/cio/HttpHeadersMap;Ljava/lang/String;Ljava/lang/Appendable;)V
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "out"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lio/ktor/http/cio/HttpHeadersMap;->offsets()Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 227
    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 228
    invoke-virtual {p0, v1}, Lio/ktor/http/cio/HttpHeadersMap;->nameAtOffset(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 229
    const-string v2, " => "

    invoke-interface {p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 230
    invoke-virtual {p0, v1}, Lio/ktor/http/cio/HttpHeadersMap;->valueAtOffset(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 231
    const-string v1, "\n"

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_17

    :cond_43
    return-void
.end method

###### Class io.ktor.http.cio.HttpHeadersMapKt$HeadersDataPool$1 (io.ktor.http.cio.HttpHeadersMapKt$HeadersDataPool$1)
.class public final Lio/ktor/http/cio/HttpHeadersMapKt$HeadersDataPool$1;
.super Lio/ktor/utils/io/pool/DefaultPool;
.source "HttpHeadersMap.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/cio/HttpHeadersMapKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/ktor/utils/io/pool/DefaultPool<",
        "Lio/ktor/http/cio/HeadersData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x3e8

    .line 287
    invoke-direct {p0, v0}, Lio/ktor/utils/io/pool/DefaultPool;-><init>(I)V

    return-void
.end method


# virtual methods
.method public clearInstance(Lio/ktor/http/cio/HeadersData;)Lio/ktor/http/cio/HeadersData;
    .registers 3

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1}, Lio/ktor/http/cio/HeadersData;->release()V

    .line 292
    invoke-super {p0, p1}, Lio/ktor/utils/io/pool/DefaultPool;->clearInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/ktor/http/cio/HeadersData;

    return-object p0
.end method

.method public bridge synthetic clearInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 287
    check-cast p1, Lio/ktor/http/cio/HeadersData;

    invoke-virtual {p0, p1}, Lio/ktor/http/cio/HttpHeadersMapKt$HeadersDataPool$1;->clearInstance(Lio/ktor/http/cio/HeadersData;)Lio/ktor/http/cio/HeadersData;

    move-result-object p0

    return-object p0
.end method

.method public produceInstance()Lio/ktor/http/cio/HeadersData;
    .registers 1

    .line 288
    new-instance p0, Lio/ktor/http/cio/HeadersData;

    invoke-direct {p0}, Lio/ktor/http/cio/HeadersData;-><init>()V

    return-object p0
.end method

.method public bridge synthetic produceInstance()Ljava/lang/Object;
    .registers 1

    .line 287
    invoke-virtual {p0}, Lio/ktor/http/cio/HttpHeadersMapKt$HeadersDataPool$1;->produceInstance()Lio/ktor/http/cio/HeadersData;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.http.cio.HttpHeadersMapKt$IntArrayPool$1 (io.ktor.http.cio.HttpHeadersMapKt$IntArrayPool$1)
.class public final Lio/ktor/http/cio/HttpHeadersMapKt$IntArrayPool$1;
.super Lio/ktor/utils/io/pool/DefaultPool;
.source "HttpHeadersMap.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/cio/HttpHeadersMapKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/ktor/utils/io/pool/DefaultPool<",
        "[I>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x3e8

    .line 278
    invoke-direct {p0, v0}, Lio/ktor/utils/io/pool/DefaultPool;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clearInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 278
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lio/ktor/http/cio/HttpHeadersMapKt$IntArrayPool$1;->clearInstance([I)[I

    move-result-object p0

    return-object p0
.end method

.method public clearInstance([I)[I
    .registers 9

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    .line 282
    invoke-static/range {v1 .. v6}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill$default([IIIIILjava/lang/Object;)V

    .line 283
    invoke-super {p0, p1}, Lio/ktor/utils/io/pool/DefaultPool;->clearInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public bridge synthetic produceInstance()Ljava/lang/Object;
    .registers 1

    .line 278
    invoke-virtual {p0}, Lio/ktor/http/cio/HttpHeadersMapKt$IntArrayPool$1;->produceInstance()[I

    move-result-object p0

    return-object p0
.end method

.method public produceInstance()[I
    .registers 4

    const/16 p0, 0x300

    .line 279
    new-array v0, p0, [I

    const/4 v1, 0x0

    :goto_5
    if-ge v1, p0, :cond_d

    const/4 v2, -0x1

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_d
    return-object v0
.end method
