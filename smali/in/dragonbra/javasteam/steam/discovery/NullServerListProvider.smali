###### Class in.dragonbra.javasteam.steam.discovery.NullServerListProvider (in.dragonbra.javasteam.steam.discovery.NullServerListProvider)
.class public final Lin/dragonbra/javasteam/steam/discovery/NullServerListProvider;
.super Ljava/lang/Object;
.source "NullServerListProvider.kt"

# interfaces
.implements Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLastServerListRefresh()Ljava/time/Instant;
    .registers 2

    .line 18
    sget-object p0, Ljava/time/Instant;->MIN:Ljava/time/Instant;

    const-string v0, "MIN"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public updateServerList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/discovery/ServerRecord;",
            ">;)V"
        }
    .end annotation

    .line 0
    const-string p0, "endpoints"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
