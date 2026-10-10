###### Class io.ktor.util.CaseInsensitiveMap (io.ktor.util.CaseInsensitiveMap)
.class public final Lio/ktor/util/CaseInsensitiveMap;
.super Ljava/lang/Object;
.source "CaseInsensitiveMap.kt"

# interfaces
.implements Ljava/util/Map;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "TValue;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCaseInsensitiveMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CaseInsensitiveMap.kt\nio/ktor/util/CaseInsensitiveMap\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,80:1\n216#2,2:81\n*S KotlinDebug\n*F\n+ 1 CaseInsensitiveMap.kt\nio/ktor/util/CaseInsensitiveMap\n*L\n32#1:81,2\n*E\n"
.end annotation


# instance fields
.field public final delegate:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/ktor/util/CaseInsensitiveString;",
            "TValue;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$aPwV0J9RG0OuTlfSe2cusTXAu1A(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/ktor/util/CaseInsensitiveMap;->_get_entries_$lambda$0(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jkgA40z_sd4W_bUaNVg8E8SbBmA(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/ktor/util/CaseInsensitiveMap;->_get_entries_$lambda$1(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$olLXMYFR_qeiJJfxCDwAzYcURQE(Lio/ktor/util/CaseInsensitiveString;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/ktor/util/CaseInsensitiveMap;->_get_keys_$lambda$0(Lio/ktor/util/CaseInsensitiveString;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zAeL05CEMBjzKYiremyna-2XJK4(Ljava/lang/String;)Lio/ktor/util/CaseInsensitiveString;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/ktor/util/CaseInsensitiveMap;->_get_keys_$lambda$1(Ljava/lang/String;)Lio/ktor/util/CaseInsensitiveString;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/ktor/util/CaseInsensitiveMap;->delegate:Ljava/util/Map;

    return-void
.end method

.method public static final _get_entries_$lambda$0(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .registers 3

    const-string v0, "$this$DelegatingMutableSet"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lio/ktor/util/Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/ktor/util/CaseInsensitiveString;

    invoke-virtual {v1}, Lio/ktor/util/CaseInsensitiveString;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lio/ktor/util/Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final _get_entries_$lambda$1(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .registers 3

    const-string v0, "$this$DelegatingMutableSet"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lio/ktor/util/Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/ktor/util/TextKt;->caseInsensitive(Ljava/lang/String;)Lio/ktor/util/CaseInsensitiveString;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lio/ktor/util/Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final _get_keys_$lambda$0(Lio/ktor/util/CaseInsensitiveString;)Ljava/lang/String;
    .registers 2

    const-string v0, "$this$DelegatingMutableSet"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lio/ktor/util/CaseInsensitiveString;->getContent()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final _get_keys_$lambda$1(Ljava/lang/String;)Lio/ktor/util/CaseInsensitiveString;
    .registers 2

    const-string v0, "$this$DelegatingMutableSet"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-static {p0}, Lio/ktor/util/TextKt;->caseInsensitive(Ljava/lang/String;)Lio/ktor/util/CaseInsensitiveString;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clear()V
    .registers 1

    .line 26
    iget-object p0, p0, Lio/ktor/util/CaseInsensitiveMap;->delegate:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final bridge containsKey(Ljava/lang/Object;)Z
    .registers 3

    .line 12
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/ktor/util/CaseInsensitiveMap;->containsKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public containsKey(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object p0, p0, Lio/ktor/util/CaseInsensitiveMap;->delegate:Ljava/util/Map;

    new-instance v0, Lio/ktor/util/CaseInsensitiveString;

    invoke-direct {v0, p1}, Lio/ktor/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 19
    :cond_4
    iget-object p0, p0, Lio/ktor/util/CaseInsensitiveMap;->delegate:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final bridge entrySet()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "TValue;>;>;"
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lio/ktor/util/CaseInsensitiveMap;->getEntries()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eqz p1, :cond_12

    .line 54
    instance-of v0, p1, Lio/ktor/util/CaseInsensitiveMap;

    if-nez v0, :cond_7

    goto :goto_12

    .line 55
    :cond_7
    check-cast p1, Lio/ktor/util/CaseInsensitiveMap;

    iget-object p1, p1, Lio/ktor/util/CaseInsensitiveMap;->delegate:Ljava/util/Map;

    iget-object p0, p0, Lio/ktor/util/CaseInsensitiveMap;->delegate:Ljava/util/Map;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return p0
.end method

.method public final bridge get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TValue;"
        }
    .end annotation

    .line 12
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/ktor/util/CaseInsensitiveMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TValue;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object p0, p0, Lio/ktor/util/CaseInsensitiveMap;->delegate:Ljava/util/Map;

    invoke-static {p1}, Lio/ktor/util/TextKt;->caseInsensitive(Ljava/lang/String;)Lio/ktor/util/CaseInsensitiveString;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getEntries()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "TValue;>;>;"
        }
    .end annotation

    .line 45
    new-instance v0, Lio/ktor/util/DelegatingMutableSet;

    .line 46
    iget-object p0, p0, Lio/ktor/util/CaseInsensitiveMap;->delegate:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    new-instance v1, Lio/ktor/util/CaseInsensitiveMap$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/ktor/util/CaseInsensitiveMap$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lio/ktor/util/CaseInsensitiveMap$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lio/ktor/util/CaseInsensitiveMap$$ExternalSyntheticLambda1;-><init>()V

    .line 45
    invoke-direct {v0, p0, v1, v2}, Lio/ktor/util/DelegatingMutableSet;-><init>(Ljava/util/Set;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public getKeys()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 38
    new-instance v0, Lio/ktor/util/DelegatingMutableSet;

    .line 39
    iget-object p0, p0, Lio/ktor/util/CaseInsensitiveMap;->delegate:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    new-instance v1, Lio/ktor/util/CaseInsensitiveMap$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lio/ktor/util/CaseInsensitiveMap$$ExternalSyntheticLambda2;-><init>()V

    new-instance v2, Lio/ktor/util/CaseInsensitiveMap$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lio/ktor/util/CaseInsensitiveMap$$ExternalSyntheticLambda3;-><init>()V

    .line 38
    invoke-direct {v0, p0, v1, v2}, Lio/ktor/util/DelegatingMutableSet;-><init>(Ljava/util/Set;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public getSize()I
    .registers 1

    .line 15
    iget-object p0, p0, Lio/ktor/util/CaseInsensitiveMap;->delegate:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public getValues()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TValue;>;"
        }
    .end annotation

    .line 51
    iget-object p0, p0, Lio/ktor/util/CaseInsensitiveMap;->delegate:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 58
    iget-object p0, p0, Lio/ktor/util/CaseInsensitiveMap;->delegate:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .registers 1

    .line 23
    iget-object p0, p0, Lio/ktor/util/CaseInsensitiveMap;->delegate:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final bridge keySet()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lio/ktor/util/CaseInsensitiveMap;->getKeys()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 12
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lio/ktor/util/CaseInsensitiveMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TValue;)TValue;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object p0, p0, Lio/ktor/util/CaseInsensitiveMap;->delegate:Ljava/util/Map;

    invoke-static {p1}, Lio/ktor/util/TextKt;->caseInsensitive(Ljava/lang/String;)Lio/ktor/util/CaseInsensitiveString;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+TValue;>;)V"
        }
    .end annotation

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 32
    invoke-virtual {p0, v1, v0}, Lio/ktor/util/CaseInsensitiveMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_27
    return-void
.end method

.method public final bridge remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TValue;"
        }
    .end annotation

    .line 12
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/ktor/util/CaseInsensitiveMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TValue;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object p0, p0, Lio/ktor/util/CaseInsensitiveMap;->delegate:Ljava/util/Map;

    invoke-static {p1}, Lio/ktor/util/TextKt;->caseInsensitive(Ljava/lang/String;)Lio/ktor/util/CaseInsensitiveString;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final bridge size()I
    .registers 1

    .line 12
    invoke-virtual {p0}, Lio/ktor/util/CaseInsensitiveMap;->getSize()I

    move-result p0

    return p0
.end method

.method public final bridge values()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TValue;>;"
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lio/ktor/util/CaseInsensitiveMap;->getValues()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.util.CaseInsensitiveMap$$ExternalSyntheticLambda0 (io.ktor.util.CaseInsensitiveMap$$ExternalSyntheticLambda0)
.class public final synthetic Lio/ktor/util/CaseInsensitiveMap$$ExternalSyntheticLambda0;
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
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lio/ktor/util/CaseInsensitiveMap;->$r8$lambda$aPwV0J9RG0OuTlfSe2cusTXAu1A(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.util.CaseInsensitiveMap$$ExternalSyntheticLambda1 (io.ktor.util.CaseInsensitiveMap$$ExternalSyntheticLambda1)
.class public final synthetic Lio/ktor/util/CaseInsensitiveMap$$ExternalSyntheticLambda1;
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
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lio/ktor/util/CaseInsensitiveMap;->$r8$lambda$jkgA40z_sd4W_bUaNVg8E8SbBmA(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.util.CaseInsensitiveMap$$ExternalSyntheticLambda2 (io.ktor.util.CaseInsensitiveMap$$ExternalSyntheticLambda2)
.class public final synthetic Lio/ktor/util/CaseInsensitiveMap$$ExternalSyntheticLambda2;
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
    check-cast p1, Lio/ktor/util/CaseInsensitiveString;

    invoke-static {p1}, Lio/ktor/util/CaseInsensitiveMap;->$r8$lambda$olLXMYFR_qeiJJfxCDwAzYcURQE(Lio/ktor/util/CaseInsensitiveString;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.util.CaseInsensitiveMap$$ExternalSyntheticLambda3 (io.ktor.util.CaseInsensitiveMap$$ExternalSyntheticLambda3)
.class public final synthetic Lio/ktor/util/CaseInsensitiveMap$$ExternalSyntheticLambda3;
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
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lio/ktor/util/CaseInsensitiveMap;->$r8$lambda$zAeL05CEMBjzKYiremyna-2XJK4(Ljava/lang/String;)Lio/ktor/util/CaseInsensitiveString;

    move-result-object p0

    return-object p0
.end method
