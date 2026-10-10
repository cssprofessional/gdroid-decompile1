###### Class in.dragonbra.javasteam.steam.handlers.steamuserstats.Stats (in.dragonbra.javasteam.steam.handlers.steamuserstats.Stats)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamuserstats/Stats;
.super Ljava/lang/Object;
.source "Stats.kt"


# instance fields
.field private final statId:I

.field private final statValue:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/Stats;->statId:I

    iput p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/Stats;->statValue:I

    return-void
.end method

.method public static synthetic copy$default(Lin/dragonbra/javasteam/steam/handlers/steamuserstats/Stats;IIILjava/lang/Object;)Lin/dragonbra/javasteam/steam/handlers/steamuserstats/Stats;
    .registers 5

    .line 0
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/Stats;->statId:I

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/Stats;->statValue:I

    :cond_c
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/Stats;->copy(II)Lin/dragonbra/javasteam/steam/handlers/steamuserstats/Stats;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/Stats;->statId:I

    return p0
.end method

.method public final component2()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/Stats;->statValue:I

    return p0
.end method

.method public final copy(II)Lin/dragonbra/javasteam/steam/handlers/steamuserstats/Stats;
    .registers 3

    .line 0
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/Stats;

    invoke-direct {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/Stats;-><init>(II)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/Stats;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/Stats;

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/Stats;->statId:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/Stats;->statId:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/Stats;->statValue:I

    iget p1, p1, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/Stats;->statValue:I

    if-eq p0, p1, :cond_1a

    return v2

    :cond_1a
    return v0
.end method

.method public final getStatId()I
    .registers 1

    .line 12
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/Stats;->statId:I

    return p0
.end method

.method public final getStatValue()I
    .registers 1

    .line 12
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/Stats;->statValue:I

    return p0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/Stats;->statId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/Stats;->statValue:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 0
    iget v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/Stats;->statId:I

    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/Stats;->statValue:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stats(statId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", statValue="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
