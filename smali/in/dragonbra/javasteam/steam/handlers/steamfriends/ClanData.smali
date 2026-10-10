###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.ClanData (in.dragonbra.javasteam.steam.handlers.steamfriends.ClanData)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamfriends/ClanData;
.super Ljava/lang/Object;
.source "ClanData.kt"


# instance fields
.field private final chatGroupID:J

.field private final oggAppId:I


# direct methods
.method public constructor <init>(IJ)V
    .registers 4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/ClanData;->oggAppId:I

    iput-wide p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/ClanData;->chatGroupID:J

    return-void
.end method

.method public static synthetic copy$default(Lin/dragonbra/javasteam/steam/handlers/steamfriends/ClanData;IJILjava/lang/Object;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/ClanData;
    .registers 6

    .line 0
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/ClanData;->oggAppId:I

    :cond_6
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_c

    iget-wide p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/ClanData;->chatGroupID:J

    :cond_c
    invoke-virtual {p0, p1, p2, p3}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/ClanData;->copy(IJ)Lin/dragonbra/javasteam/steam/handlers/steamfriends/ClanData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/ClanData;->oggAppId:I

    return p0
.end method

.method public final component2()J
    .registers 3

    .line 0
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/ClanData;->chatGroupID:J

    return-wide v0
.end method

.method public final copy(IJ)Lin/dragonbra/javasteam/steam/handlers/steamfriends/ClanData;
    .registers 4

    .line 0
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/ClanData;

    invoke-direct {p0, p1, p2, p3}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/ClanData;-><init>(IJ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lin/dragonbra/javasteam/steam/handlers/steamfriends/ClanData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamfriends/ClanData;

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/ClanData;->oggAppId:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamfriends/ClanData;->oggAppId:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/ClanData;->chatGroupID:J

    iget-wide p0, p1, Lin/dragonbra/javasteam/steam/handlers/steamfriends/ClanData;->chatGroupID:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_1c

    return v2

    :cond_1c
    return v0
.end method

.method public final getChatGroupID()J
    .registers 3

    .line 9
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/ClanData;->chatGroupID:J

    return-wide v0
.end method

.method public final getOggAppId()I
    .registers 1

    .line 9
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/ClanData;->oggAppId:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    .line 0
    iget v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/ClanData;->oggAppId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/ClanData;->chatGroupID:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 0
    iget v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/ClanData;->oggAppId:I

    iget-wide v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/ClanData;->chatGroupID:J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClanData(oggAppId="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", chatGroupID="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
