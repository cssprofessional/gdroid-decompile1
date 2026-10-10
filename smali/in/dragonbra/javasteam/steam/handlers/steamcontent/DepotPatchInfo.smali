###### Class in.dragonbra.javasteam.steam.handlers.steamcontent.DepotPatchInfo (in.dragonbra.javasteam.steam.handlers.steamcontent.DepotPatchInfo)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;
.super Ljava/lang/Object;
.source "DepotPatchInfo.kt"


# instance fields
.field private final isAvailable:Z

.field private final patchSize:J

.field private final patchedChunksSize:J


# direct methods
.method public constructor <init>(ZJJ)V
    .registers 6

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;->isAvailable:Z

    .line 14
    iput-wide p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;->patchSize:J

    .line 15
    iput-wide p4, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;->patchedChunksSize:J

    return-void
.end method

.method public static synthetic copy$default(Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;ZJJILjava/lang/Object;)Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;
    .registers 10

    .line 0
    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-boolean p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;->isAvailable:Z

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget-wide p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;->patchSize:J

    :cond_c
    move-wide v0, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_13

    iget-wide p4, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;->patchedChunksSize:J

    :cond_13
    move-wide p6, p4

    move-object p2, p0

    move p3, p1

    move-wide p4, v0

    invoke-virtual/range {p2 .. p7}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;->copy(ZJJ)Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;->isAvailable:Z

    return p0
.end method

.method public final component2()J
    .registers 3

    .line 0
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;->patchSize:J

    return-wide v0
.end method

.method public final component3()J
    .registers 3

    .line 0
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;->patchedChunksSize:J

    return-wide v0
.end method

.method public final copy(ZJJ)Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;
    .registers 12

    .line 0
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;-><init>(ZJJ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;

    iget-boolean v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;->isAvailable:Z

    iget-boolean v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;->isAvailable:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;->patchSize:J

    iget-wide v5, p1, Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;->patchSize:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1c

    return v2

    :cond_1c
    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;->patchedChunksSize:J

    iget-wide p0, p1, Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;->patchedChunksSize:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_25

    return v2

    :cond_25
    return v0
.end method

.method public final getPatchSize()J
    .registers 3

    .line 14
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;->patchSize:J

    return-wide v0
.end method

.method public final getPatchedChunksSize()J
    .registers 3

    .line 15
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;->patchedChunksSize:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    .line 0
    iget-boolean v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;->isAvailable:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;->patchSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;->patchedChunksSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isAvailable()Z
    .registers 1

    .line 13
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;->isAvailable:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 17
    iget-boolean v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;->isAvailable:Z

    iget-wide v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;->patchSize:J

    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/DepotPatchInfo;->patchedChunksSize:J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DepotPatchInfo(isAvailable="

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", patchSize="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", patchedChunksSize="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
