###### Class in.dragonbra.javasteam.steam.handlers.steammatchmaking.SlotsAvailableFilter (in.dragonbra.javasteam.steam.handlers.steammatchmaking.SlotsAvailableFilter)
.class public final Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SlotsAvailableFilter;
.super Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Filter;
.source "Filter.kt"


# instance fields
.field private final slotsAvailable:I


# direct methods
.method public constructor <init>(I)V
    .registers 5

    .line 147
    sget-object v0, Lin/dragonbra/javasteam/enums/ELobbyFilterType;->SlotsAvailable:Lin/dragonbra/javasteam/enums/ELobbyFilterType;

    .line 148
    const-string v1, ""

    .line 149
    sget-object v2, Lin/dragonbra/javasteam/enums/ELobbyComparison;->Equal:Lin/dragonbra/javasteam/enums/ELobbyComparison;

    .line 144
    invoke-direct {p0, v0, v1, v2}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Filter;-><init>(Lin/dragonbra/javasteam/enums/ELobbyFilterType;Ljava/lang/String;Lin/dragonbra/javasteam/enums/ELobbyComparison;)V

    .line 145
    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SlotsAvailableFilter;->slotsAvailable:I

    return-void
.end method


# virtual methods
.method public final getSlotsAvailable()I
    .registers 1

    .line 145
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SlotsAvailableFilter;->slotsAvailable:I

    return p0
.end method

.method public serialize()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Filter$Builder;
    .registers 2

    .line 156
    invoke-super {p0}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Filter;->serialize()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Filter$Builder;

    move-result-object v0

    .line 157
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SlotsAvailableFilter;->slotsAvailable:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Filter$Builder;->setValue(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Filter$Builder;

    return-object v0
.end method
