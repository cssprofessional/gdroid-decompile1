###### Class in.dragonbra.javasteam.steam.handlers.steammatchmaking.LobbyCache (in.dragonbra.javasteam.steam.handlers.steammatchmaking.LobbyCache)
.class public final Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;
.super Ljava/lang/Object;
.source "LobbyCache.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLobbyCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LobbyCache.kt\nin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,125:1\n295#2,2:126\n295#2,2:128\n774#2:130\n865#2,2:131\n*S KotlinDebug\n*F\n+ 1 LobbyCache.kt\nin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache\n*L\n28#1:126,2\n49#1:128,2\n55#1:130\n55#1:131,2\n*E\n"
.end annotation


# instance fields
.field private final lobbies:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lin/dragonbra/javasteam/types/SteamID;",
            "Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$KXhs-deK_2tOkFCACDyBZAD0F0Y(Ljava/lang/Integer;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 0
    invoke-static {p0}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->getAppLobbies$lambda$0(Ljava/lang/Integer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$upZ4CbQe-lkv7FRZgpgL5e8y5jE(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->getAppLobbies$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->lobbies:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private final deleteLobby(ILin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;
    .registers 3

    .line 121
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->lobbies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 122
    :cond_10
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;

    return-object p0
.end method

.method private final getAppLobbies(I)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lin/dragonbra/javasteam/types/SteamID;",
            "Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->lobbies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "computeIfAbsent(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private static final getAppLobbies$lambda$0(Ljava/lang/Integer;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object p0
.end method

.method private static final getAppLobbies$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2

    .line 118
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private final updateLobbyMembers(ILin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;Lin/dragonbra/javasteam/types/SteamID;Ljava/util/List;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;",
            "Lin/dragonbra/javasteam/types/SteamID;",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;",
            ">;)V"
        }
    .end annotation

    .line 102
    new-instance v11, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;

    .line 103
    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->getSteamID()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object v1

    .line 104
    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->getLobbyType()Lin/dragonbra/javasteam/enums/ELobbyType;

    move-result-object v2

    .line 105
    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->getLobbyFlags()I

    move-result v3

    .line 107
    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->getMetadata()Ljava/util/Map;

    move-result-object v5

    .line 108
    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->getMaxMembers()I

    move-result v6

    .line 109
    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->getNumMembers()I

    move-result v7

    if-nez p4, :cond_22

    .line 110
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    goto :goto_24

    :cond_22
    move-object/from16 v8, p4

    .line 111
    :goto_24
    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->getDistance()Ljava/lang/Float;

    move-result-object v9

    .line 112
    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->getWeight()Ljava/lang/Long;

    move-result-object v10

    move-object v0, v11

    move-object v4, p3

    .line 102
    invoke-direct/range {v0 .. v10}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;-><init>(Lin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/enums/ELobbyType;ILin/dragonbra/javasteam/types/SteamID;Ljava/util/Map;IILjava/util/List;Ljava/lang/Float;Ljava/lang/Long;)V

    move-object v0, p0

    move v1, p1

    .line 100
    invoke-virtual {p0, p1, v11}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->cacheLobby(ILin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;)V

    return-void
.end method


# virtual methods
.method public final addLobbyMember(ILin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;JLjava/lang/String;)Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;
    .registers 7

    const-string v0, "lobby"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "personaName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    invoke-direct {v0, p3, p4}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    invoke-virtual {p0, p1, p2, v0, p5}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->addLobbyMember(ILin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;Lin/dragonbra/javasteam/types/SteamID;Ljava/lang/String;)Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;

    move-result-object p0

    return-object p0
.end method

.method public final addLobbyMember(ILin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;Lin/dragonbra/javasteam/types/SteamID;Ljava/lang/String;)Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;
    .registers 14

    const-string v0, "lobby"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memberId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "personaName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->getMembers()Ljava/util/List;

    move-result-object v0

    .line 295
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;

    .line 28
    invoke-virtual {v3}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;->getSteamID()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object v3

    invoke-static {v3, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_31

    :cond_30
    move-object v1, v2

    :goto_31
    check-cast v1, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;

    if-eqz v1, :cond_36

    return-object v2

    .line 35
    :cond_36
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v3 .. v8}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;-><init>(Lin/dragonbra/javasteam/types/SteamID;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    new-instance p3, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->getMembers()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    add-int/lit8 p4, p4, 0x1

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->getMembers()Ljava/util/List;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 39
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->updateLobbyMembers(ILin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;Ljava/util/List;)V

    return-object v0
.end method

.method public final cacheLobby(ILin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;)V
    .registers 4

    const-string v0, "lobby"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->getAppLobbies(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->getSteamID()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final clear()V
    .registers 1

    .line 96
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->lobbies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public final clearLobbyMembers(IJ)V
    .registers 5

    .line 68
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    invoke-direct {v0, p2, p3}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->clearLobbyMembers(ILin/dragonbra/javasteam/types/SteamID;)V

    return-void
.end method

.method public final clearLobbyMembers(ILin/dragonbra/javasteam/types/SteamID;)V
    .registers 4

    const-string v0, "lobbySteamId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->getLobby(ILin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;

    move-result-object p2

    if-eqz p2, :cond_f

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, v0, v0}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->updateLobbyMembers(ILin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;Lin/dragonbra/javasteam/types/SteamID;Ljava/util/List;)V

    :cond_f
    return-void
.end method

.method public final getLobby(IJ)Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;
    .registers 5

    .line 17
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    invoke-direct {v0, p2, p3}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->getLobby(ILin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;

    move-result-object p0

    return-object p0
.end method

.method public final getLobby(ILin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;
    .registers 4

    const-string v0, "lobbySteamId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->getAppLobbies(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;

    return-object p0
.end method

.method public final removeLobbyMember(ILin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;J)Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;
    .registers 6

    const-string v0, "lobby"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    invoke-direct {v0, p3, p4}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    invoke-virtual {p0, p1, p2, v0}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->removeLobbyMember(ILin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;

    move-result-object p0

    return-object p0
.end method

.method public final removeLobbyMember(ILin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;
    .registers 8

    const-string v0, "lobby"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memberId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->getMembers()Ljava/util/List;

    move-result-object v0

    .line 295
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;

    .line 49
    invoke-virtual {v3}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;->getSteamID()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object v3

    invoke-static {v3, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_2c

    :cond_2b
    move-object v1, v2

    :goto_2c
    check-cast v1, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;

    if-nez v1, :cond_31

    return-object v2

    .line 55
    :cond_31
    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->getMembers()Ljava/util/List;

    move-result-object p3

    .line 774
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 865
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3e
    :goto_3e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;

    .line 55
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 865
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 57
    :cond_55
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5f

    .line 58
    invoke-virtual {p0, p1, p2, v0}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->updateLobbyMembers(ILin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;Ljava/util/List;)V

    goto :goto_66

    .line 61
    :cond_5f
    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->getSteamID()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->deleteLobby(ILin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;

    :goto_66
    return-object v1
.end method

.method public final updateLobbyMembers(ILin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;",
            ">;)V"
        }
    .end annotation

    const-string v0, "lobby"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "members"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->getOwnerSteamID()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->updateLobbyMembers(ILin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;Lin/dragonbra/javasteam/types/SteamID;Ljava/util/List;)V

    return-void
.end method

.method public final updateLobbyOwner(IJJ)V
    .registers 7

    .line 80
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    invoke-direct {v0, p2, p3}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    new-instance p2, Lin/dragonbra/javasteam/types/SteamID;

    invoke-direct {p2, p4, p5}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    invoke-virtual {p0, p1, v0, p2}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->updateLobbyOwner(ILin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/types/SteamID;)V

    return-void
.end method

.method public final updateLobbyOwner(ILin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 5

    const-string v0, "lobbySteamId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ownerSteamId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->getLobby(ILin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;

    move-result-object p2

    if-eqz p2, :cond_17

    .line 87
    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->getMembers()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->updateLobbyMembers(ILin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;Lin/dragonbra/javasteam/types/SteamID;Ljava/util/List;)V

    :cond_17
    return-void
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steammatchmaking.LobbyCache$$ExternalSyntheticLambda0 (in.dragonbra.javasteam.steam.handlers.steammatchmaking.LobbyCache$$ExternalSyntheticLambda0)
.class public final synthetic Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache$$ExternalSyntheticLambda0;
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
    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->$r8$lambda$KXhs-deK_2tOkFCACDyBZAD0F0Y(Ljava/lang/Integer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steammatchmaking.LobbyCache$$ExternalSyntheticLambda1 (in.dragonbra.javasteam.steam.handlers.steammatchmaking.LobbyCache$$ExternalSyntheticLambda1)
.class public final synthetic Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->$r8$lambda$upZ4CbQe-lkv7FRZgpgL5e8y5jE(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    return-object p0
.end method
