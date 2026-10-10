###### Class in.dragonbra.javasteam.steam.discovery.IServerListProvider (in.dragonbra.javasteam.steam.discovery.IServerListProvider)
.class public interface abstract Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;
.super Ljava/lang/Object;
.source "IServerListProvider.kt"


# virtual methods
.method public abstract fetchServerList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/discovery/ServerRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLastServerListRefresh()Ljava/time/Instant;
.end method

.method public abstract updateServerList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/discovery/ServerRecord;",
            ">;)V"
        }
    .end annotation
.end method
