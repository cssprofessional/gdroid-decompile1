###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.OtherGameData (in.dragonbra.javasteam.steam.handlers.steamfriends.OtherGameData)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamfriends/OtherGameData;
.super Ljava/lang/Object;
.source "OtherGameData.kt"


# instance fields
.field private final gameId:J

.field private final richPresence:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/KV;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/KV;",
            ">;)V"
        }
    .end annotation

    const-string v0, "richPresence"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/OtherGameData;->gameId:J

    iput-object p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/OtherGameData;->richPresence:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lin/dragonbra/javasteam/steam/handlers/steamfriends/OtherGameData;JLjava/util/List;ILjava/lang/Object;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/OtherGameData;
    .registers 6

    .line 0
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-wide p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/OtherGameData;->gameId:J

    :cond_6
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_c

    iget-object p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/OtherGameData;->richPresence:Ljava/util/List;

    :cond_c
    invoke-virtual {p0, p1, p2, p3}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/OtherGameData;->copy(JLjava/util/List;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/OtherGameData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .registers 3

    .line 0
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/OtherGameData;->gameId:J

    return-wide v0
.end method

.method public final component2()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/KV;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/OtherGameData;->richPresence:Ljava/util/List;

    return-object p0
.end method

.method public final copy(JLjava/util/List;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/OtherGameData;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/KV;",
            ">;)",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/OtherGameData;"
        }
    .end annotation

    .line 0
    const-string p0, "richPresence"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/OtherGameData;

    invoke-direct {p0, p1, p2, p3}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/OtherGameData;-><init>(JLjava/util/List;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lin/dragonbra/javasteam/steam/handlers/steamfriends/OtherGameData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamfriends/OtherGameData;

    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/OtherGameData;->gameId:J

    iget-wide v5, p1, Lin/dragonbra/javasteam/steam/handlers/steamfriends/OtherGameData;->gameId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/OtherGameData;->richPresence:Ljava/util/List;

    iget-object p1, p1, Lin/dragonbra/javasteam/steam/handlers/steamfriends/OtherGameData;->richPresence:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    return v2

    :cond_20
    return v0
.end method

.method public final getGameId()J
    .registers 3

    .line 9
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/OtherGameData;->gameId:J

    return-wide v0
.end method

.method public final getRichPresence()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/KV;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/OtherGameData;->richPresence:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/OtherGameData;->gameId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/OtherGameData;->richPresence:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 0
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/OtherGameData;->gameId:J

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/OtherGameData;->richPresence:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OtherGameData(gameId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", richPresence="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
