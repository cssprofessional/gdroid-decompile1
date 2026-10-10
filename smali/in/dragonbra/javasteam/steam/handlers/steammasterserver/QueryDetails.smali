###### Class in.dragonbra.javasteam.steam.handlers.steammasterserver.QueryDetails (in.dragonbra.javasteam.steam.handlers.steammasterserver.QueryDetails)
.class public final Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;
.super Ljava/lang/Object;
.source "QueryDetails.kt"


# instance fields
.field private appID:I

.field private filter:Ljava/lang/String;

.field private geoLocatedIP:Ljava/net/InetAddress;

.field private maxServers:I

.field private region:Lin/dragonbra/javasteam/enums/ERegionCode;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lin/dragonbra/javasteam/enums/ERegionCode;Ljava/net/InetAddress;I)V
    .registers 7

    const-string v0, "region"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->appID:I

    .line 17
    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->filter:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->region:Lin/dragonbra/javasteam/enums/ERegionCode;

    .line 19
    iput-object p4, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->geoLocatedIP:Ljava/net/InetAddress;

    .line 20
    iput p5, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->maxServers:I

    return-void
.end method

.method public static synthetic copy$default(Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;ILjava/lang/String;Lin/dragonbra/javasteam/enums/ERegionCode;Ljava/net/InetAddress;IILjava/lang/Object;)Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;
    .registers 11

    .line 0
    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget p1, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->appID:I

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->filter:Ljava/lang/String;

    :cond_c
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->region:Lin/dragonbra/javasteam/enums/ERegionCode;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1a

    iget-object p4, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->geoLocatedIP:Ljava/net/InetAddress;

    :cond_1a
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_21

    iget p5, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->maxServers:I

    :cond_21
    move v2, p5

    move-object p2, p0

    move p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->copy(ILjava/lang/String;Lin/dragonbra/javasteam/enums/ERegionCode;Ljava/net/InetAddress;I)Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->appID:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->filter:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Lin/dragonbra/javasteam/enums/ERegionCode;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->region:Lin/dragonbra/javasteam/enums/ERegionCode;

    return-object p0
.end method

.method public final component4()Ljava/net/InetAddress;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->geoLocatedIP:Ljava/net/InetAddress;

    return-object p0
.end method

.method public final component5()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->maxServers:I

    return p0
.end method

.method public final copy(ILjava/lang/String;Lin/dragonbra/javasteam/enums/ERegionCode;Ljava/net/InetAddress;I)Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;
    .registers 12

    .line 0
    const-string p0, "region"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;-><init>(ILjava/lang/String;Lin/dragonbra/javasteam/enums/ERegionCode;Ljava/net/InetAddress;I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->appID:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->appID:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->filter:Ljava/lang/String;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->filter:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->region:Lin/dragonbra/javasteam/enums/ERegionCode;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->region:Lin/dragonbra/javasteam/enums/ERegionCode;

    if-eq v1, v3, :cond_25

    return v2

    :cond_25
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->geoLocatedIP:Ljava/net/InetAddress;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->geoLocatedIP:Ljava/net/InetAddress;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v2

    :cond_30
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->maxServers:I

    iget p1, p1, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->maxServers:I

    if-eq p0, p1, :cond_37

    return v2

    :cond_37
    return v0
.end method

.method public final getAppID()I
    .registers 1

    .line 16
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->appID:I

    return p0
.end method

.method public final getFilter()Ljava/lang/String;
    .registers 1

    .line 17
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->filter:Ljava/lang/String;

    return-object p0
.end method

.method public final getGeoLocatedIP()Ljava/net/InetAddress;
    .registers 1

    .line 19
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->geoLocatedIP:Ljava/net/InetAddress;

    return-object p0
.end method

.method public final getMaxServers()I
    .registers 1

    .line 20
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->maxServers:I

    return p0
.end method

.method public final getRegion()Lin/dragonbra/javasteam/enums/ERegionCode;
    .registers 1

    .line 18
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->region:Lin/dragonbra/javasteam/enums/ERegionCode;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    .line 0
    iget v0, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->appID:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->filter:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->region:Lin/dragonbra/javasteam/enums/ERegionCode;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->geoLocatedIP:Ljava/net/InetAddress;

    if-nez v1, :cond_24

    goto :goto_28

    :cond_24
    invoke-virtual {v1}, Ljava/net/InetAddress;->hashCode()I

    move-result v2

    :goto_28
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->maxServers:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setAppID(I)V
    .registers 2

    .line 16
    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->appID:I

    return-void
.end method

.method public final setFilter(Ljava/lang/String;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->filter:Ljava/lang/String;

    return-void
.end method

.method public final setGeoLocatedIP(Ljava/net/InetAddress;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->geoLocatedIP:Ljava/net/InetAddress;

    return-void
.end method

.method public final setMaxServers(I)V
    .registers 2

    .line 20
    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->maxServers:I

    return-void
.end method

.method public final setRegion(Lin/dragonbra/javasteam/enums/ERegionCode;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->region:Lin/dragonbra/javasteam/enums/ERegionCode;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 0
    iget v0, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->appID:I

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->filter:Ljava/lang/String;

    iget-object v2, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->region:Lin/dragonbra/javasteam/enums/ERegionCode;

    iget-object v3, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->geoLocatedIP:Ljava/net/InetAddress;

    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->maxServers:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QueryDetails(appID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", filter="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", region="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", geoLocatedIP="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", maxServers="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
