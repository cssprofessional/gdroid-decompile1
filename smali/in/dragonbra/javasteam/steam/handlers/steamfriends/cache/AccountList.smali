###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.cache.AccountList (in.dragonbra.javasteam.steam.handlers.steamfriends.cache.AccountList)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "FriendCache.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap<",
        "Lin/dragonbra/javasteam/types/SteamID;",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFriendCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FriendCache.kt\nin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList\n+ 2 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,67:1\n72#2,2:68\n1#3:70\n*S KotlinDebug\n*F\n+ 1 FriendCache.kt\nin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList\n*L\n40#1:68,2\n40#1:70\n*E\n"
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;->clazz:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public bridge containsKey(Lin/dragonbra/javasteam/types/SteamID;)Z
    .registers 2

    .line 31
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final bridge containsKey(Ljava/lang/Object;)Z
    .registers 3

    .line 31
    instance-of v0, p1, Lin/dragonbra/javasteam/types/SteamID;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p1, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;->containsKey(Lin/dragonbra/javasteam/types/SteamID;)Z

    move-result p0

    return p0
.end method

.method public bridge containsValue(Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;)Z
    .registers 2

    .line 31
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final bridge containsValue(Ljava/lang/Object;)Z
    .registers 3

    .line 31
    instance-of v0, p1, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;->containsValue(Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;)Z

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
            "Lin/dragonbra/javasteam/types/SteamID;",
            "TT;>;>;"
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;->getEntries()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge get(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;
    .registers 2

    .line 31
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;

    return-object p0
.end method

.method public final bridge get(Ljava/lang/Object;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 31
    instance-of v0, p1, Lin/dragonbra/javasteam/types/SteamID;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    check-cast p1, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;->get(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 31
    instance-of v0, p1, Lin/dragonbra/javasteam/types/SteamID;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    check-cast p1, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;->get(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;

    move-result-object p0

    return-object p0
.end method

.method public final getAccount(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/types/SteamID;",
            ")TT;"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_27

    .line 41
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;->clazz:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;

    .line 42
    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;->setSteamID(Lin/dragonbra/javasteam/types/SteamID;)V

    .line 73
    invoke-interface {p0, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_26

    goto :goto_27

    :cond_26
    move-object v0, p0

    .line 40
    :cond_27
    :goto_27
    const-string p0, "getOrPut(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;

    return-object v0
.end method

.method public bridge getEntries()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Lin/dragonbra/javasteam/types/SteamID;",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;",
            ">;>;"
        }
    .end annotation

    .line 31
    invoke-super {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge getKeys()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<",
            "Lin/dragonbra/javasteam/types/SteamID;",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-super {p0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object p0

    return-object p0
.end method

.method public final getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;->values()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "<get-values>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge getOrDefault(Lin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;
    .registers 3

    .line 31
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;

    return-object p0
.end method

.method public final bridge getOrDefault(Ljava/lang/Object;Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)TT;"
        }
    .end annotation

    .line 31
    instance-of v0, p1, Lin/dragonbra/javasteam/types/SteamID;

    if-nez v0, :cond_5

    return-object p2

    :cond_5
    check-cast p1, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;->getOrDefault(Lin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 31
    instance-of v0, p1, Lin/dragonbra/javasteam/types/SteamID;

    if-nez v0, :cond_5

    return-object p2

    :cond_5
    check-cast p1, Lin/dragonbra/javasteam/types/SteamID;

    check-cast p2, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;->getOrDefault(Lin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;

    move-result-object p0

    return-object p0
.end method

.method public bridge getSize()I
    .registers 1

    .line 31
    invoke-super {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    return p0
.end method

.method public bridge getValues()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-super {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .registers 1

    .line 31
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;->keySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object p0

    return-object p0
.end method

.method public final bridge keySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<",
            "Lin/dragonbra/javasteam/types/SteamID;",
            "TT;>;"
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;->getKeys()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object p0

    return-object p0
.end method

.method public bridge remove(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;
    .registers 2

    .line 31
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;

    return-object p0
.end method

.method public final bridge remove(Ljava/lang/Object;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 31
    instance-of v0, p1, Lin/dragonbra/javasteam/types/SteamID;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    check-cast p1, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;->remove(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 31
    instance-of v0, p1, Lin/dragonbra/javasteam/types/SteamID;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    check-cast p1, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;->remove(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;

    move-result-object p0

    return-object p0
.end method

.method public bridge remove(Lin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;)Z
    .registers 3

    .line 31
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final bridge remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    .line 31
    instance-of v0, p1, Lin/dragonbra/javasteam/types/SteamID;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    instance-of v0, p2, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;

    if-nez v0, :cond_b

    return v1

    :cond_b
    check-cast p1, Lin/dragonbra/javasteam/types/SteamID;

    check-cast p2, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;->remove(Lin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;)Z

    move-result p0

    return p0
.end method

.method public final bridge size()I
    .registers 1

    .line 31
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;->getSize()I

    move-result p0

    return p0
.end method

.method public final bridge values()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;->getValues()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
