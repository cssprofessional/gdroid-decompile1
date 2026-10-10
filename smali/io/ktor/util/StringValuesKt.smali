###### Class io.ktor.util.StringValuesKt (io.ktor.util.StringValuesKt)
.class public final Lio/ktor/util/StringValuesKt;
.super Ljava/lang/Object;
.source "StringValues.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStringValues.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringValues.kt\nio/ktor/util/StringValuesKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,524:1\n1869#2,2:525\n1252#2,4:527\n1374#2:531\n1460#2,2:532\n1563#2:534\n1634#2,3:535\n1462#2,3:538\n1869#2:541\n865#2,2:542\n1870#2:544\n1869#2,2:545\n1869#2,2:555\n865#2,2:557\n13805#3,2:547\n13805#3,2:549\n216#4,2:551\n216#4,2:553\n*S KotlinDebug\n*F\n+ 1 StringValues.kt\nio/ktor/util/StringValuesKt\n*L\n364#1:525,2\n374#1:527,4\n381#1:531\n381#1:532,2\n382#1:534\n382#1:535,3\n381#1:538,3\n406#1:541\n407#1:542,2\n406#1:544\n442#1:545,2\n391#1:555,2\n429#1:557,2\n476#1:547,2\n489#1:549,2\n502#1:551,2\n514#1:553,2\n*E\n"
.end annotation


# direct methods
.method public static final synthetic access$entriesEquals(Ljava/util/Set;Ljava/util/Set;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lio/ktor/util/StringValuesKt;->entriesEquals(Ljava/util/Set;Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$entriesHashCode(Ljava/util/Set;I)I
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lio/ktor/util/StringValuesKt;->entriesHashCode(Ljava/util/Set;I)I

    move-result p0

    return p0
.end method

.method public static final appendAll(Lio/ktor/util/StringValuesBuilder;Lio/ktor/util/StringValuesBuilder;)Lio/ktor/util/StringValuesBuilder;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    invoke-interface {p1}, Lio/ktor/util/StringValuesBuilder;->entries()Ljava/util/Set;

    move-result-object p1

    .line 1869
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 443
    invoke-interface {p0, v1, v0}, Lio/ktor/util/StringValuesBuilder;->appendAll(Ljava/lang/String;Ljava/lang/Iterable;)V

    goto :goto_12

    :cond_2e
    return-object p0
.end method

.method public static final entriesEquals(Ljava/util/Set;Ljava/util/Set;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/util/Set<",
            "+",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;)Z"
        }
    .end annotation

    .line 518
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final entriesHashCode(Ljava/util/Set;I)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;I)I"
        }
    .end annotation

    mul-int/lit8 p1, p1, 0x1f

    .line 522
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method
