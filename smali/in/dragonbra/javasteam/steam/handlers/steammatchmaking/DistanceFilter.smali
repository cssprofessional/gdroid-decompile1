###### Class in.dragonbra.javasteam.steam.handlers.steammatchmaking.DistanceFilter (in.dragonbra.javasteam.steam.handlers.steammatchmaking.DistanceFilter)
.class public final Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/DistanceFilter;
.super Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Filter;
.source "Filter.kt"


# instance fields
.field private final value:Lin/dragonbra/javasteam/enums/ELobbyDistanceFilter;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/enums/ELobbyDistanceFilter;)V
    .registers 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lin/dragonbra/javasteam/enums/ELobbyFilterType;->Distance:Lin/dragonbra/javasteam/enums/ELobbyFilterType;

    .line 57
    const-string v1, ""

    .line 58
    sget-object v2, Lin/dragonbra/javasteam/enums/ELobbyComparison;->Equal:Lin/dragonbra/javasteam/enums/ELobbyComparison;

    .line 53
    invoke-direct {p0, v0, v1, v2}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Filter;-><init>(Lin/dragonbra/javasteam/enums/ELobbyFilterType;Ljava/lang/String;Lin/dragonbra/javasteam/enums/ELobbyComparison;)V

    .line 54
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/DistanceFilter;->value:Lin/dragonbra/javasteam/enums/ELobbyDistanceFilter;

    return-void
.end method


# virtual methods
.method public final getValue()Lin/dragonbra/javasteam/enums/ELobbyDistanceFilter;
    .registers 1

    .line 54
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/DistanceFilter;->value:Lin/dragonbra/javasteam/enums/ELobbyDistanceFilter;

    return-object p0
.end method

.method public serialize()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Filter$Builder;
    .registers 2

    .line 65
    invoke-super {p0}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Filter;->serialize()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Filter$Builder;

    move-result-object v0

    .line 66
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/DistanceFilter;->value:Lin/dragonbra/javasteam/enums/ELobbyDistanceFilter;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/enums/ELobbyDistanceFilter;->code()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Filter$Builder;->setValue(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Filter$Builder;

    return-object v0
.end method
