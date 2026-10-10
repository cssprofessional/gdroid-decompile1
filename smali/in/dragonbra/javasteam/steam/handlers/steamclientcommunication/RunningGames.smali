###### Class in.dragonbra.javasteam.steam.handlers.steamclientcommunication.RunningGames (in.dragonbra.javasteam.steam.handlers.steamclientcommunication.RunningGames)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;
.super Ljava/lang/Object;
.source "RunningGames.kt"


# instance fields
.field private final appId:I

.field private final extraInfo:Ljava/lang/String;

.field private final timeRunningSec:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .registers 5

    const-string v0, "extraInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;->appId:I

    .line 14
    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;->extraInfo:Ljava/lang/String;

    .line 15
    iput p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;->timeRunningSec:I

    return-void
.end method

.method public static synthetic copy$default(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;ILjava/lang/String;IILjava/lang/Object;)Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;
    .registers 6

    .line 0
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;->appId:I

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;->extraInfo:Ljava/lang/String;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;->timeRunningSec:I

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;->copy(ILjava/lang/String;I)Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;->appId:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;->extraInfo:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;->timeRunningSec:I

    return p0
.end method

.method public final copy(ILjava/lang/String;I)Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;
    .registers 4

    .line 0
    const-string p0, "extraInfo"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;

    invoke-direct {p0, p1, p2, p3}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;-><init>(ILjava/lang/String;I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;->appId:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;->appId:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;->extraInfo:Ljava/lang/String;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;->extraInfo:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;->timeRunningSec:I

    iget p1, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;->timeRunningSec:I

    if-eq p0, p1, :cond_25

    return v2

    :cond_25
    return v0
.end method

.method public final getAppId()I
    .registers 1

    .line 13
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;->appId:I

    return p0
.end method

.method public final getExtraInfo()Ljava/lang/String;
    .registers 1

    .line 14
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;->extraInfo:Ljava/lang/String;

    return-object p0
.end method

.method public final getTimeRunningSec()I
    .registers 1

    .line 15
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;->timeRunningSec:I

    return p0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;->appId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;->extraInfo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;->timeRunningSec:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 19
    iget v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;->appId:I

    .line 20
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;->extraInfo:Ljava/lang/String;

    .line 21
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;->timeRunningSec:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n            RunningGames(\n                appId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",\n                extraInfo=\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\',\n                timeRunningSec="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\n            )\n    "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 23
    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
