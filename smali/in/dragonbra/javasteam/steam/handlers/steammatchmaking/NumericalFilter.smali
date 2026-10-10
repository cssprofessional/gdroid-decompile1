###### Class in.dragonbra.javasteam.steam.handlers.steammatchmaking.NumericalFilter (in.dragonbra.javasteam.steam.handlers.steammatchmaking.NumericalFilter)
.class public final Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/NumericalFilter;
.super Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Filter;
.source "Filter.kt"


# instance fields
.field private final value:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILin/dragonbra/javasteam/enums/ELobbyComparison;)V
    .registers 5

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comparison"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    sget-object v0, Lin/dragonbra/javasteam/enums/ELobbyFilterType;->Numerical:Lin/dragonbra/javasteam/enums/ELobbyFilterType;

    .line 114
    invoke-direct {p0, v0, p1, p3}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Filter;-><init>(Lin/dragonbra/javasteam/enums/ELobbyFilterType;Ljava/lang/String;Lin/dragonbra/javasteam/enums/ELobbyComparison;)V

    .line 116
    iput p2, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/NumericalFilter;->value:I

    return-void
.end method


# virtual methods
.method public final getValue()I
    .registers 1

    .line 116
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/NumericalFilter;->value:I

    return p0
.end method

.method public serialize()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Filter$Builder;
    .registers 2

    .line 128
    invoke-super {p0}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Filter;->serialize()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Filter$Builder;

    move-result-object v0

    .line 129
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/NumericalFilter;->value:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Filter$Builder;->setValue(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Filter$Builder;

    return-object v0
.end method
