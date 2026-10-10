###### Class in.dragonbra.javasteam.steam.handlers.steammatchmaking.Filter (in.dragonbra.javasteam.steam.handlers.steammatchmaking.Filter)
.class public abstract Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Filter;
.super Ljava/lang/Object;
.source "Filter.kt"


# instance fields
.field private final comparison:Lin/dragonbra/javasteam/enums/ELobbyComparison;

.field private final filterType:Lin/dragonbra/javasteam/enums/ELobbyFilterType;

.field private final key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/enums/ELobbyFilterType;Ljava/lang/String;Lin/dragonbra/javasteam/enums/ELobbyComparison;)V
    .registers 5

    const-string v0, "filterType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comparison"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Filter;->filterType:Lin/dragonbra/javasteam/enums/ELobbyFilterType;

    .line 27
    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Filter;->key:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Filter;->comparison:Lin/dragonbra/javasteam/enums/ELobbyComparison;

    return-void
.end method


# virtual methods
.method public final getComparison()Lin/dragonbra/javasteam/enums/ELobbyComparison;
    .registers 1

    .line 28
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Filter;->comparison:Lin/dragonbra/javasteam/enums/ELobbyComparison;

    return-object p0
.end method

.method public final getFilterType()Lin/dragonbra/javasteam/enums/ELobbyFilterType;
    .registers 1

    .line 26
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Filter;->filterType:Lin/dragonbra/javasteam/enums/ELobbyFilterType;

    return-object p0
.end method

.method public final getKey()Ljava/lang/String;
    .registers 1

    .line 27
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Filter;->key:Ljava/lang/String;

    return-object p0
.end method

.method public serialize()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Filter$Builder;
    .registers 3

    .line 35
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Filter;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Filter$Builder;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Filter;->filterType:Lin/dragonbra/javasteam/enums/ELobbyFilterType;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/enums/ELobbyFilterType;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Filter$Builder;->setFilterType(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Filter$Builder;

    .line 37
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Filter;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Filter$Builder;->setKey(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Filter$Builder;

    .line 38
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Filter;->comparison:Lin/dragonbra/javasteam/enums/ELobbyComparison;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/enums/ELobbyComparison;->code()I

    move-result p0

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Filter$Builder;->setComparision(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Filter$Builder;

    .line 35
    const-string p0, "apply(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
