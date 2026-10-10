###### Class in.dragonbra.javasteam.steam.handlers.steammatchmaking.StringFilter (in.dragonbra.javasteam.steam.handlers.steammatchmaking.StringFilter)
.class public final Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/StringFilter;
.super Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Filter;
.source "Filter.kt"


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lin/dragonbra/javasteam/enums/ELobbyComparison;)V
    .registers 5

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comparison"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    sget-object v0, Lin/dragonbra/javasteam/enums/ELobbyFilterType;->String:Lin/dragonbra/javasteam/enums/ELobbyFilterType;

    .line 174
    invoke-direct {p0, v0, p1, p3}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Filter;-><init>(Lin/dragonbra/javasteam/enums/ELobbyFilterType;Ljava/lang/String;Lin/dragonbra/javasteam/enums/ELobbyComparison;)V

    .line 176
    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/StringFilter;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .registers 1

    .line 176
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/StringFilter;->value:Ljava/lang/String;

    return-object p0
.end method

.method public serialize()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Filter$Builder;
    .registers 2

    .line 188
    invoke-super {p0}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Filter;->serialize()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Filter$Builder;

    move-result-object v0

    .line 189
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/StringFilter;->value:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Filter$Builder;->setValue(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Filter$Builder;

    return-object v0
.end method
