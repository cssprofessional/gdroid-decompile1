###### Class io.ktor.http.cio.internals.AsciiCharTree (io.ktor.http.cio.internals.AsciiCharTree)
.class public final Lio/ktor/http/cio/internals/AsciiCharTree;
.super Ljava/lang/Object;
.source "AsciiCharTree.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/http/cio/internals/AsciiCharTree$Companion;,
        Lio/ktor/http/cio/internals/AsciiCharTree$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/http/cio/internals/AsciiCharTree$Companion;


# instance fields
.field public final root:Lio/ktor/http/cio/internals/AsciiCharTree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/http/cio/internals/AsciiCharTree$Node<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/ktor/http/cio/internals/AsciiCharTree$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/http/cio/internals/AsciiCharTree$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/cio/internals/AsciiCharTree;->Companion:Lio/ktor/http/cio/internals/AsciiCharTree$Companion;

    return-void
.end method

.method public constructor <init>(Lio/ktor/http/cio/internals/AsciiCharTree$Node;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/cio/internals/AsciiCharTree$Node<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/http/cio/internals/AsciiCharTree;->root:Lio/ktor/http/cio/internals/AsciiCharTree$Node;

    return-void
.end method

.method public static synthetic search$default(Lio/ktor/http/cio/internals/AsciiCharTree;Ljava/lang/CharSequence;IIZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/util/List;
    .registers 15

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_7

    move v3, v0

    goto :goto_8

    :cond_7
    move v3, p2

    :goto_8
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_10

    .line 15
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    :cond_10
    move v4, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_17

    move v5, v0

    goto :goto_18

    :cond_17
    move v5, p4

    :goto_18
    move-object v1, p0

    move-object v2, p1

    move-object v6, p5

    .line 12
    invoke-virtual/range {v1 .. v6}, Lio/ktor/http/cio/internals/AsciiCharTree;->search(Ljava/lang/CharSequence;IIZLkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final search(Ljava/lang/CharSequence;IIZLkotlin/jvm/functions/Function2;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "IIZ",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Character;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stopPredicate"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_52

    .line 20
    iget-object p0, p0, Lio/ktor/http/cio/internals/AsciiCharTree;->root:Lio/ktor/http/cio/internals/AsciiCharTree$Node;

    :goto_12
    if-ge p2, p3, :cond_4d

    .line 23
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 26
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p5, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4d

    .line 28
    invoke-virtual {p0}, Lio/ktor/http/cio/internals/AsciiCharTree$Node;->getArray()[Lio/ktor/http/cio/internals/AsciiCharTree$Node;

    move-result-object v1

    aget-object v1, v1, v0

    if-nez v1, :cond_49

    if-eqz p4, :cond_41

    .line 29
    invoke-virtual {p0}, Lio/ktor/http/cio/internals/AsciiCharTree$Node;->getArray()[Lio/ktor/http/cio/internals/AsciiCharTree$Node;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    aget-object p0, p0, v0

    goto :goto_42

    :cond_41
    const/4 p0, 0x0

    :goto_42
    if-nez p0, :cond_4a

    .line 30
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_49
    move-object p0, v1

    :cond_4a
    add-int/lit8 p2, p2, 0x1

    goto :goto_12

    .line 35
    :cond_4d
    invoke-virtual {p0}, Lio/ktor/http/cio/internals/AsciiCharTree$Node;->getExact()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 19
    :cond_52
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Couldn\'t search in char tree for empty string"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class io.ktor.http.cio.internals.AsciiCharTree.Companion (io.ktor.http.cio.internals.AsciiCharTree$Companion)
.class public final Lio/ktor/http/cio/internals/AsciiCharTree$Companion;
.super Ljava/lang/Object;
.source "AsciiCharTree.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/cio/internals/AsciiCharTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsciiCharTree.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsciiCharTree.kt\nio/ktor/http/cio/internals/AsciiCharTree$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,73:1\n1999#2,14:74\n1761#2,3:88\n1491#2:91\n1516#2,3:92\n1519#2,3:102\n774#2:106\n865#2,2:107\n774#2:109\n865#2,2:110\n382#3,7:95\n216#4:105\n217#4:112\n*S KotlinDebug\n*F\n+ 1 AsciiCharTree.kt\nio/ktor/http/cio/internals/AsciiCharTree$Companion\n*L\n44#1:74,14\n47#1:88,3\n63#1:91\n63#1:92,3\n63#1:102,3\n66#1:106\n66#1:107,2\n68#1:109\n68#1:110,2\n63#1:95,7\n63#1:105\n63#1:112\n*E\n"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$eGcjufKiwWA2rClBlHWRzUE7iV4(Ljava/lang/CharSequence;)I
    .registers 1

    .line 0
    invoke-static {p0}, Lio/ktor/http/cio/internals/AsciiCharTree$Companion;->build$lambda$0(Ljava/lang/CharSequence;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$x-VFxMIUpk80j2Z4v-mz1vlxv3M(Ljava/lang/CharSequence;I)C
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/ktor/http/cio/internals/AsciiCharTree$Companion;->build$lambda$1(Ljava/lang/CharSequence;I)C

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/ktor/http/cio/internals/AsciiCharTree$Companion;-><init>()V

    return-void
.end method

.method public static final build$lambda$0(Ljava/lang/CharSequence;)I
    .registers 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    return p0
.end method

.method public static final build$lambda$1(Ljava/lang/CharSequence;I)C
    .registers 3

    const-string v0, "s"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    return p0
.end method


# virtual methods
.method public final build(Ljava/util/List;)Lio/ktor/http/cio/internals/AsciiCharTree;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)",
            "Lio/ktor/http/cio/internals/AsciiCharTree<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lio/ktor/http/cio/internals/AsciiCharTree$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/ktor/http/cio/internals/AsciiCharTree$Companion$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Lio/ktor/http/cio/internals/AsciiCharTree$Companion$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lio/ktor/http/cio/internals/AsciiCharTree$Companion$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Lio/ktor/http/cio/internals/AsciiCharTree$Companion;->build(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lio/ktor/http/cio/internals/AsciiCharTree;

    move-result-object p0

    return-object p0
.end method

.method public final build(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lio/ktor/http/cio/internals/AsciiCharTree;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Character;",
            ">;)",
            "Lio/ktor/http/cio/internals/AsciiCharTree<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "length"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charAt"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1999
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2000
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1b

    const/4 v0, 0x0

    goto :goto_46

    .line 2001
    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2002
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_27

    :goto_25
    move-object v0, v1

    goto :goto_46

    .line 2003
    :cond_27
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    .line 2005
    :cond_2d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 2006
    invoke-interface {p2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    .line 2007
    invoke-interface {v2, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_3f

    move-object v1, v3

    move-object v2, v4

    .line 2011
    :cond_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2d

    goto :goto_25

    :goto_46
    if-eqz v0, :cond_9f

    .line 44
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-eqz p1, :cond_5b

    .line 1761
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    goto :goto_7e

    .line 1762
    :cond_5b
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 47
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz v1, :cond_76

    goto :goto_5f

    :cond_76
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "There should be no empty entries"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 49
    :cond_7e
    :goto_7e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    .line 50
    invoke-virtual/range {v1 .. v7}, Lio/ktor/http/cio/internals/AsciiCharTree$Companion;->build(Ljava/util/List;Ljava/util/List;IILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 52
    new-instance p0, Lio/ktor/http/cio/internals/AsciiCharTree;

    new-instance p1, Lio/ktor/http/cio/internals/AsciiCharTree$Node;

    const/4 p2, 0x0

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    invoke-direct {p1, p2, p3, v0}, Lio/ktor/http/cio/internals/AsciiCharTree$Node;-><init>(CLjava/util/List;Ljava/util/List;)V

    invoke-direct {p0, p1}, Lio/ktor/http/cio/internals/AsciiCharTree;-><init>(Lio/ktor/http/cio/internals/AsciiCharTree$Node;)V

    return-object p0

    .line 45
    :cond_9f
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Unable to build char tree from an empty list"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final build(Ljava/util/List;Ljava/util/List;IILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lio/ktor/http/cio/internals/AsciiCharTree$Node<",
            "TT;>;>;",
            "Ljava/util/List<",
            "+TT;>;II",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p5

    .line 1491
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1516
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 63
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v8, p6

    invoke-interface {v8, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    .line 382
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_32

    .line 1518
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 385
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    :cond_32
    check-cast v4, Ljava/util/List;

    .line 1519
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_38
    move-object/from16 v8, p6

    .line 216
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_42
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v10

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/util/List;

    add-int/lit8 v12, p4, 0x1

    .line 65
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 66
    sget-object v0, Lio/ktor/http/cio/internals/AsciiCharTree;->Companion:Lio/ktor/http/cio/internals/AsciiCharTree$Companion;

    .line 774
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 865
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_71
    :goto_71
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 66
    invoke-interface {v7, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-le v4, v12, :cond_71

    .line 865
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_71

    :cond_8b
    move-object v1, v13

    move/from16 v3, p3

    move v4, v12

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 66
    invoke-virtual/range {v0 .. v6}, Lio/ktor/http/cio/internals/AsciiCharTree$Companion;->build(Ljava/util/List;Ljava/util/List;IILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    .line 67
    invoke-virtual {v13}, Ljava/util/ArrayList;->trimToSize()V

    .line 774
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 865
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a2
    :goto_a2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 68
    invoke-interface {v7, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-ne v3, v12, :cond_a2

    .line 865
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a2

    .line 68
    :cond_bc
    new-instance v1, Lio/ktor/http/cio/internals/AsciiCharTree$Node;

    invoke-direct {v1, v10, v0, v13}, Lio/ktor/http/cio/internals/AsciiCharTree$Node;-><init>(CLjava/util/List;Ljava/util/List;)V

    move-object v0, p1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_42

    :cond_c7
    return-void
.end method

###### Class io.ktor.http.cio.internals.AsciiCharTree$Companion$$ExternalSyntheticLambda0 (io.ktor.http.cio.internals.AsciiCharTree$Companion$$ExternalSyntheticLambda0)
.class public final synthetic Lio/ktor/http/cio/internals/AsciiCharTree$Companion$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lio/ktor/http/cio/internals/AsciiCharTree$Companion;->$r8$lambda$eGcjufKiwWA2rClBlHWRzUE7iV4(Ljava/lang/CharSequence;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.http.cio.internals.AsciiCharTree$Companion$$ExternalSyntheticLambda1 (io.ktor.http.cio.internals.AsciiCharTree$Companion$$ExternalSyntheticLambda1)
.class public final synthetic Lio/ktor/http/cio/internals/AsciiCharTree$Companion$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lio/ktor/http/cio/internals/AsciiCharTree$Companion;->$r8$lambda$x-VFxMIUpk80j2Z4v-mz1vlxv3M(Ljava/lang/CharSequence;I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.http.cio.internals.AsciiCharTree.Node (io.ktor.http.cio.internals.AsciiCharTree$Node)
.class public final Lio/ktor/http/cio/internals/AsciiCharTree$Node;
.super Ljava/lang/Object;
.source "AsciiCharTree.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/cio/internals/AsciiCharTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsciiCharTree.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsciiCharTree.kt\nio/ktor/http/cio/internals/AsciiCharTree$Node\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,73:1\n669#2,11:74\n*S KotlinDebug\n*F\n+ 1 AsciiCharTree.kt\nio/ktor/http/cio/internals/AsciiCharTree$Node\n*L\n9#1:74,11\n*E\n"
.end annotation


# instance fields
.field public final array:[Lio/ktor/http/cio/internals/AsciiCharTree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/ktor/http/cio/internals/AsciiCharTree$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final ch:C

.field public final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/http/cio/internals/AsciiCharTree$Node<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final exact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(CLjava/util/List;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/util/List<",
            "+TT;>;",
            "Ljava/util/List<",
            "Lio/ktor/http/cio/internals/AsciiCharTree$Node<",
            "TT;>;>;)V"
        }
    .end annotation

    const-string v0, "exact"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "children"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lio/ktor/http/cio/internals/AsciiCharTree$Node;->ch:C

    iput-object p2, p0, Lio/ktor/http/cio/internals/AsciiCharTree$Node;->exact:Ljava/util/List;

    iput-object p3, p0, Lio/ktor/http/cio/internals/AsciiCharTree$Node;->children:Ljava/util/List;

    const/16 p1, 0x100

    .line 9
    new-array p2, p1, [Lio/ktor/http/cio/internals/AsciiCharTree$Node;

    const/4 p3, 0x0

    move v0, p3

    :goto_19
    if-ge v0, p1, :cond_44

    iget-object v1, p0, Lio/ktor/http/cio/internals/AsciiCharTree$Node;->children:Ljava/util/List;

    .line 671
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, p3

    move-object v4, v2

    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 672
    move-object v6, v5

    check-cast v6, Lio/ktor/http/cio/internals/AsciiCharTree$Node;

    .line 9
    iget-char v6, v6, Lio/ktor/http/cio/internals/AsciiCharTree$Node;->ch:C

    if-ne v6, v0, :cond_24

    if-eqz v3, :cond_38

    goto :goto_3f

    :cond_38
    const/4 v3, 0x1

    move-object v4, v5

    goto :goto_24

    :cond_3b
    if-nez v3, :cond_3e

    goto :goto_3f

    :cond_3e
    move-object v2, v4

    .line 679
    :goto_3f
    aput-object v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 9
    :cond_44
    iput-object p2, p0, Lio/ktor/http/cio/internals/AsciiCharTree$Node;->array:[Lio/ktor/http/cio/internals/AsciiCharTree$Node;

    return-void
.end method


# virtual methods
.method public final getArray()[Lio/ktor/http/cio/internals/AsciiCharTree$Node;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lio/ktor/http/cio/internals/AsciiCharTree$Node<",
            "TT;>;"
        }
    .end annotation

    .line 9
    iget-object p0, p0, Lio/ktor/http/cio/internals/AsciiCharTree$Node;->array:[Lio/ktor/http/cio/internals/AsciiCharTree$Node;

    return-object p0
.end method

.method public final getExact()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 8
    iget-object p0, p0, Lio/ktor/http/cio/internals/AsciiCharTree$Node;->exact:Ljava/util/List;

    return-object p0
.end method
