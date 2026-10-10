###### Class in.dragonbra.javasteam.steam.handlers.steamgameserver.LogOnDetails (in.dragonbra.javasteam.steam.handlers.steamgameserver.LogOnDetails)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamgameserver/LogOnDetails;
.super Ljava/lang/Object;
.source "LogOnDetails.kt"


# instance fields
.field private appID:I

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/LogOnDetails;->token:Ljava/lang/String;

    iput p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/LogOnDetails;->appID:I

    return-void
.end method

.method public static synthetic copy$default(Lin/dragonbra/javasteam/steam/handlers/steamgameserver/LogOnDetails;Ljava/lang/String;IILjava/lang/Object;)Lin/dragonbra/javasteam/steam/handlers/steamgameserver/LogOnDetails;
    .registers 5

    .line 0
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/LogOnDetails;->token:Ljava/lang/String;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/LogOnDetails;->appID:I

    :cond_c
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/LogOnDetails;->copy(Ljava/lang/String;I)Lin/dragonbra/javasteam/steam/handlers/steamgameserver/LogOnDetails;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/LogOnDetails;->token:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/LogOnDetails;->appID:I

    return p0
.end method

.method public final copy(Ljava/lang/String;I)Lin/dragonbra/javasteam/steam/handlers/steamgameserver/LogOnDetails;
    .registers 3

    .line 0
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/LogOnDetails;

    invoke-direct {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/LogOnDetails;-><init>(Ljava/lang/String;I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/LogOnDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/LogOnDetails;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/LogOnDetails;->token:Ljava/lang/String;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/LogOnDetails;->token:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/LogOnDetails;->appID:I

    iget p1, p1, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/LogOnDetails;->appID:I

    if-eq p0, p1, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public final getAppID()I
    .registers 1

    .line 9
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/LogOnDetails;->appID:I

    return p0
.end method

.method public final getToken()Ljava/lang/String;
    .registers 1

    .line 9
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/LogOnDetails;->token:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/LogOnDetails;->token:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/LogOnDetails;->appID:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setAppID(I)V
    .registers 2

    .line 9
    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/LogOnDetails;->appID:I

    return-void
.end method

.method public final setToken(Ljava/lang/String;)V
    .registers 2

    .line 9
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/LogOnDetails;->token:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 0
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/LogOnDetails;->token:Ljava/lang/String;

    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/LogOnDetails;->appID:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LogOnDetails(token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", appID="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
