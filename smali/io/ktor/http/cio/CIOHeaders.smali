###### Class io.ktor.http.cio.CIOHeaders (io.ktor.http.cio.CIOHeaders)
.class public final Lio/ktor/http/cio/CIOHeaders;
.super Ljava/lang/Object;
.source "CIOHeaders.kt"

# interfaces
.implements Lio/ktor/http/Headers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/http/cio/CIOHeaders$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCIOHeaders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CIOHeaders.kt\nio/ktor/http/cio/CIOHeaders\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,42:1\n1#2:43\n*E\n"
.end annotation


# instance fields
.field public final headers:Lio/ktor/http/cio/HttpHeadersMap;

.field public final names$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$-vdifzxkyaAFlU1cUmihV9QFlwc(Lio/ktor/http/cio/CIOHeaders;I)Lio/ktor/http/cio/CIOHeaders$Entry;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/ktor/http/cio/CIOHeaders;->entries$lambda$0(Lio/ktor/http/cio/CIOHeaders;I)Lio/ktor/http/cio/CIOHeaders$Entry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$N8uroZZvZMFrnW9rODomt30XnMc(Lio/ktor/http/cio/CIOHeaders;)Ljava/util/LinkedHashSet;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/ktor/http/cio/CIOHeaders;->names_delegate$lambda$0(Lio/ktor/http/cio/CIOHeaders;)Ljava/util/LinkedHashSet;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$V-beDzOMoJTxW3p_tN-c4JGBUDo(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/ktor/http/cio/CIOHeaders;->getAll$lambda$0(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lio/ktor/http/cio/HttpHeadersMap;)V
    .registers 3

    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/http/cio/CIOHeaders;->headers:Lio/ktor/http/cio/HttpHeadersMap;

    .line 16
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lio/ktor/http/cio/CIOHeaders$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/ktor/http/cio/CIOHeaders$$ExternalSyntheticLambda0;-><init>(Lio/ktor/http/cio/CIOHeaders;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/http/cio/CIOHeaders;->names$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getHeaders$p(Lio/ktor/http/cio/CIOHeaders;)Lio/ktor/http/cio/HttpHeadersMap;
    .registers 1

    .line 14
    iget-object p0, p0, Lio/ktor/http/cio/CIOHeaders;->headers:Lio/ktor/http/cio/HttpHeadersMap;

    return-object p0
.end method

.method public static final entries$lambda$0(Lio/ktor/http/cio/CIOHeaders;I)Lio/ktor/http/cio/CIOHeaders$Entry;
    .registers 3

    .line 34
    new-instance v0, Lio/ktor/http/cio/CIOHeaders$Entry;

    invoke-direct {v0, p0, p1}, Lio/ktor/http/cio/CIOHeaders$Entry;-><init>(Lio/ktor/http/cio/CIOHeaders;I)V

    return-object v0
.end method

.method public static final getAll$lambda$0(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final names_delegate$lambda$0(Lio/ktor/http/cio/CIOHeaders;)Ljava/util/LinkedHashSet;
    .registers 5

    .line 17
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lio/ktor/http/cio/CIOHeaders;->headers:Lio/ktor/http/cio/HttpHeadersMap;

    invoke-virtual {v1}, Lio/ktor/http/cio/HttpHeadersMap;->getSize()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 18
    iget-object v1, p0, Lio/ktor/http/cio/CIOHeaders;->headers:Lio/ktor/http/cio/HttpHeadersMap;

    invoke-virtual {v1}, Lio/ktor/http/cio/HttpHeadersMap;->offsets()Lkotlin/sequences/Sequence;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 19
    iget-object v3, p0, Lio/ktor/http/cio/CIOHeaders;->headers:Lio/ktor/http/cio/HttpHeadersMap;

    invoke-virtual {v3, v2}, Lio/ktor/http/cio/HttpHeadersMap;->nameAtOffset(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_33
    return-object v0
.end method


# virtual methods
.method public bridge contains(Ljava/lang/String;)Z
    .registers 2

    .line 14
    invoke-super {p0, p1}, Lio/ktor/util/StringValues;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public entries()Ljava/util/Set;
    .registers 3
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

    .line 34
    iget-object v0, p0, Lio/ktor/http/cio/CIOHeaders;->headers:Lio/ktor/http/cio/HttpHeadersMap;

    invoke-virtual {v0}, Lio/ktor/http/cio/HttpHeadersMap;->offsets()Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v1, Lio/ktor/http/cio/CIOHeaders$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lio/ktor/http/cio/CIOHeaders$$ExternalSyntheticLambda1;-><init>(Lio/ktor/http/cio/CIOHeaders;)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt___SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->toSet(Lkotlin/sequences/Sequence;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge forEach(Lkotlin/jvm/functions/Function2;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-super {p0, p1}, Lio/ktor/util/StringValues;->forEach(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object p0, p0, Lio/ktor/http/cio/CIOHeaders;->headers:Lio/ktor/http/cio/HttpHeadersMap;

    invoke-virtual {p0, p1}, Lio/ktor/http/cio/HttpHeadersMap;->get(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return-object p0
.end method

.method public getAll(Ljava/lang/String;)Ljava/util/List;
    .registers 3
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

    .line 30
    iget-object p0, p0, Lio/ktor/http/cio/CIOHeaders;->headers:Lio/ktor/http/cio/HttpHeadersMap;

    invoke-virtual {p0, p1}, Lio/ktor/http/cio/HttpHeadersMap;->getAll(Ljava/lang/String;)Lkotlin/sequences/Sequence;

    move-result-object p0

    new-instance p1, Lio/ktor/http/cio/CIOHeaders$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lio/ktor/http/cio/CIOHeaders$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    return-object p0
.end method

.method public getCaseInsensitiveName()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public final getNames()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object p0, p0, Lio/ktor/http/cio/CIOHeaders;->names$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public names()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lio/ktor/http/cio/CIOHeaders;->getNames()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.http.cio.CIOHeaders.Entry (io.ktor.http.cio.CIOHeaders$Entry)
.class public final Lio/ktor/http/cio/CIOHeaders$Entry;
.super Ljava/lang/Object;
.source "CIOHeaders.kt"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/cio/CIOHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation


# instance fields
.field public final offset:I

.field public final synthetic this$0:Lio/ktor/http/cio/CIOHeaders;


# direct methods
.method public constructor <init>(Lio/ktor/http/cio/CIOHeaders;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lio/ktor/http/cio/CIOHeaders$Entry;->this$0:Lio/ktor/http/cio/CIOHeaders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lio/ktor/http/cio/CIOHeaders$Entry;->offset:I

    return-void
.end method


# virtual methods
.method public bridge synthetic getKey()Ljava/lang/Object;
    .registers 1

    .line 37
    invoke-virtual {p0}, Lio/ktor/http/cio/CIOHeaders$Entry;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lio/ktor/http/cio/CIOHeaders$Entry;->this$0:Lio/ktor/http/cio/CIOHeaders;

    invoke-static {v0}, Lio/ktor/http/cio/CIOHeaders;->access$getHeaders$p(Lio/ktor/http/cio/CIOHeaders;)Lio/ktor/http/cio/HttpHeadersMap;

    move-result-object v0

    iget p0, p0, Lio/ktor/http/cio/CIOHeaders$Entry;->offset:I

    invoke-virtual {v0, p0}, Lio/ktor/http/cio/HttpHeadersMap;->nameAtOffset(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 1

    .line 37
    invoke-virtual {p0}, Lio/ktor/http/cio/CIOHeaders$Entry;->getValue()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lio/ktor/http/cio/CIOHeaders$Entry;->this$0:Lio/ktor/http/cio/CIOHeaders;

    invoke-static {v0}, Lio/ktor/http/cio/CIOHeaders;->access$getHeaders$p(Lio/ktor/http/cio/CIOHeaders;)Lio/ktor/http/cio/HttpHeadersMap;

    move-result-object v0

    iget p0, p0, Lio/ktor/http/cio/CIOHeaders$Entry;->offset:I

    invoke-virtual {v0, p0}, Lio/ktor/http/cio/HttpHeadersMap;->valueAtOffset(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class io.ktor.http.cio.CIOHeaders$$ExternalSyntheticLambda0 (io.ktor.http.cio.CIOHeaders$$ExternalSyntheticLambda0)
.class public final synthetic Lio/ktor/http/cio/CIOHeaders$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lio/ktor/http/cio/CIOHeaders;


# direct methods
.method public synthetic constructor <init>(Lio/ktor/http/cio/CIOHeaders;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/http/cio/CIOHeaders$$ExternalSyntheticLambda0;->f$0:Lio/ktor/http/cio/CIOHeaders;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lio/ktor/http/cio/CIOHeaders$$ExternalSyntheticLambda0;->f$0:Lio/ktor/http/cio/CIOHeaders;

    invoke-static {p0}, Lio/ktor/http/cio/CIOHeaders;->$r8$lambda$N8uroZZvZMFrnW9rODomt30XnMc(Lio/ktor/http/cio/CIOHeaders;)Ljava/util/LinkedHashSet;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.http.cio.CIOHeaders$$ExternalSyntheticLambda1 (io.ktor.http.cio.CIOHeaders$$ExternalSyntheticLambda1)
.class public final synthetic Lio/ktor/http/cio/CIOHeaders$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lio/ktor/http/cio/CIOHeaders;


# direct methods
.method public synthetic constructor <init>(Lio/ktor/http/cio/CIOHeaders;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/http/cio/CIOHeaders$$ExternalSyntheticLambda1;->f$0:Lio/ktor/http/cio/CIOHeaders;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lio/ktor/http/cio/CIOHeaders$$ExternalSyntheticLambda1;->f$0:Lio/ktor/http/cio/CIOHeaders;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lio/ktor/http/cio/CIOHeaders;->$r8$lambda$-vdifzxkyaAFlU1cUmihV9QFlwc(Lio/ktor/http/cio/CIOHeaders;I)Lio/ktor/http/cio/CIOHeaders$Entry;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.http.cio.CIOHeaders$$ExternalSyntheticLambda2 (io.ktor.http.cio.CIOHeaders$$ExternalSyntheticLambda2)
.class public final synthetic Lio/ktor/http/cio/CIOHeaders$$ExternalSyntheticLambda2;
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

    invoke-static {p1}, Lio/ktor/http/cio/CIOHeaders;->$r8$lambda$V-beDzOMoJTxW3p_tN-c4JGBUDo(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
