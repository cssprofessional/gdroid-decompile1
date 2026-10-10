###### Class io.ktor.http.UrlDecodedParametersBuilder (io.ktor.http.UrlDecodedParametersBuilder)
.class public final Lio/ktor/http/UrlDecodedParametersBuilder;
.super Ljava/lang/Object;
.source "UrlDecodedParametersBuilder.kt"

# interfaces
.implements Lio/ktor/http/ParametersBuilder;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUrlDecodedParametersBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UrlDecodedParametersBuilder.kt\nio/ktor/http/UrlDecodedParametersBuilder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,88:1\n1563#2:89\n1634#2,3:90\n1563#2:93\n1634#2,3:94\n1563#2:97\n1634#2,3:98\n1563#2:101\n1634#2,3:102\n*S KotlinDebug\n*F\n+ 1 UrlDecodedParametersBuilder.kt\nio/ktor/http/UrlDecodedParametersBuilder\n*L\n18#1:89\n18#1:90,3\n26#1:93\n26#1:94,3\n44#1:97\n44#1:98,3\n50#1:101\n50#1:102,3\n*E\n"
.end annotation


# instance fields
.field public final caseInsensitiveName:Z

.field public final encodedParametersBuilder:Lio/ktor/http/ParametersBuilder;


# direct methods
.method public constructor <init>(Lio/ktor/http/ParametersBuilder;)V
    .registers 3

    const-string v0, "encodedParametersBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lio/ktor/http/UrlDecodedParametersBuilder;->encodedParametersBuilder:Lio/ktor/http/ParametersBuilder;

    .line 15
    invoke-interface {p1}, Lio/ktor/util/StringValuesBuilder;->getCaseInsensitiveName()Z

    move-result p1

    iput-boolean p1, p0, Lio/ktor/http/UrlDecodedParametersBuilder;->caseInsensitiveName:Z

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object p0, p0, Lio/ktor/http/UrlDecodedParametersBuilder;->encodedParametersBuilder:Lio/ktor/http/ParametersBuilder;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lio/ktor/http/CodecsKt;->encodeURLParameter$default(Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lio/ktor/http/CodecsKt;->encodeURLParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lio/ktor/util/StringValuesBuilder;->append(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public appendAll(Lio/ktor/util/StringValues;)V
    .registers 3

    const-string v0, "stringValues"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object p0, p0, Lio/ktor/http/UrlDecodedParametersBuilder;->encodedParametersBuilder:Lio/ktor/http/ParametersBuilder;

    invoke-static {p0, p1}, Lio/ktor/http/UrlDecodedParametersBuilderKt;->access$appendAllEncoded(Lio/ktor/util/StringValuesBuilder;Lio/ktor/util/StringValues;)V

    return-void
.end method

.method public appendAll(Ljava/lang/String;Ljava/lang/Iterable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object p0, p0, Lio/ktor/http/UrlDecodedParametersBuilder;->encodedParametersBuilder:Lio/ktor/http/ParametersBuilder;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lio/ktor/http/CodecsKt;->encodeURLParameter$default(Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1563
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_22
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1635
    check-cast v1, Ljava/lang/String;

    .line 44
    invoke-static {v1}, Lio/ktor/http/CodecsKt;->encodeURLParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1635
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 44
    :cond_36
    invoke-interface {p0, p1, v0}, Lio/ktor/util/StringValuesBuilder;->appendAll(Ljava/lang/String;Ljava/lang/Iterable;)V

    return-void
.end method

.method public build()Lio/ktor/http/Parameters;
    .registers 1

    .line 13
    iget-object p0, p0, Lio/ktor/http/UrlDecodedParametersBuilder;->encodedParametersBuilder:Lio/ktor/http/ParametersBuilder;

    invoke-static {p0}, Lio/ktor/http/UrlDecodedParametersBuilderKt;->decodeParameters(Lio/ktor/util/StringValuesBuilder;)Lio/ktor/http/Parameters;

    move-result-object p0

    return-object p0
.end method

.method public clear()V
    .registers 1

    .line 60
    iget-object p0, p0, Lio/ktor/http/UrlDecodedParametersBuilder;->encodedParametersBuilder:Lio/ktor/http/ParametersBuilder;

    invoke-interface {p0}, Lio/ktor/util/StringValuesBuilder;->clear()V

    return-void
.end method

.method public entries()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 30
    iget-object p0, p0, Lio/ktor/http/UrlDecodedParametersBuilder;->encodedParametersBuilder:Lio/ktor/http/ParametersBuilder;

    invoke-static {p0}, Lio/ktor/http/UrlDecodedParametersBuilderKt;->decodeParameters(Lio/ktor/util/StringValuesBuilder;)Lio/ktor/http/Parameters;

    move-result-object p0

    invoke-interface {p0}, Lio/ktor/util/StringValues;->entries()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getAll(Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object p0, p0, Lio/ktor/http/UrlDecodedParametersBuilder;->encodedParametersBuilder:Lio/ktor/http/ParametersBuilder;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lio/ktor/http/CodecsKt;->encodeURLParameter$default(Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/ktor/util/StringValuesBuilder;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3f

    .line 1563
    new-instance v2, Ljava/util/ArrayList;

    const/16 p1, 0xa

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 1635
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    const/16 v8, 0xb

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 18
    invoke-static/range {v3 .. v9}, Lio/ktor/http/CodecsKt;->decodeURLQueryComponent$default(Ljava/lang/String;IIZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1635
    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_3f
    return-object v2
.end method

.method public getCaseInsensitiveName()Z
    .registers 1

    .line 15
    iget-boolean p0, p0, Lio/ktor/http/UrlDecodedParametersBuilder;->caseInsensitiveName:Z

    return p0
.end method

.method public isEmpty()Z
    .registers 1

    .line 28
    iget-object p0, p0, Lio/ktor/http/UrlDecodedParametersBuilder;->encodedParametersBuilder:Lio/ktor/http/ParametersBuilder;

    invoke-interface {p0}, Lio/ktor/util/StringValuesBuilder;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public names()Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object p0, p0, Lio/ktor/http/UrlDecodedParametersBuilder;->encodedParametersBuilder:Lio/ktor/http/ParametersBuilder;

    invoke-interface {p0}, Lio/ktor/util/StringValuesBuilder;->names()Ljava/util/Set;

    move-result-object p0

    .line 1563
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1635
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const/16 v7, 0xf

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 26
    invoke-static/range {v2 .. v8}, Lio/ktor/http/CodecsKt;->decodeURLQueryComponent$default(Ljava/lang/String;IIZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1635
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 26
    :cond_31
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
