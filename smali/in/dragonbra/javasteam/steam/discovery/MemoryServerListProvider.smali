###### Class in.dragonbra.javasteam.steam.discovery.MemoryServerListProvider (in.dragonbra.javasteam.steam.discovery.MemoryServerListProvider)
.class public final Lin/dragonbra/javasteam/steam/discovery/MemoryServerListProvider;
.super Ljava/lang/Object;
.source "MemoryServerListProvider.kt"

# interfaces
.implements Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;


# instance fields
.field private lastUpdated:Ljava/time/Instant;

.field private servers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/discovery/ServerRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/discovery/MemoryServerListProvider;->servers:Ljava/util/List;

    .line 12
    sget-object v0, Ljava/time/Instant;->MIN:Ljava/time/Instant;

    const-string v1, "MIN"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/discovery/MemoryServerListProvider;->lastUpdated:Ljava/time/Instant;

    return-void
.end method


# virtual methods
.method public fetchServerList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/discovery/ServerRecord;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/discovery/MemoryServerListProvider;->servers:Ljava/util/List;

    return-object p0
.end method

.method public getLastServerListRefresh()Ljava/time/Instant;
    .registers 1

    .line 18
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/discovery/MemoryServerListProvider;->lastUpdated:Ljava/time/Instant;

    return-object p0
.end method

.method public updateServerList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/discovery/ServerRecord;",
            ">;)V"
        }
    .end annotation

    const-string v0, "endpoints"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/discovery/MemoryServerListProvider;->servers:Ljava/util/List;

    .line 32
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p1

    const-string v0, "now(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/discovery/MemoryServerListProvider;->lastUpdated:Ljava/time/Instant;

    return-void
.end method
