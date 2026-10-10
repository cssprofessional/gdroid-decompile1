###### Class in.dragonbra.javasteam.steam.handlers.steamapps.AppProcessInfo (in.dragonbra.javasteam.steam.handlers.steamapps.AppProcessInfo)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;
.super Ljava/lang/Object;
.source "AppProcessInfo.kt"


# instance fields
.field private final parentIsSteam:Z

.field private final processId:I

.field private final processIdParent:I


# direct methods
.method public constructor <init>(IIZ)V
    .registers 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;->processId:I

    .line 5
    iput p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;->processIdParent:I

    .line 6
    iput-boolean p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;->parentIsSteam:Z

    return-void
.end method

.method public static synthetic copy$default(Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;IIZILjava/lang/Object;)Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;
    .registers 6

    .line 0
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;->processId:I

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;->processIdParent:I

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-boolean p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;->parentIsSteam:Z

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;->copy(IIZ)Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;->processId:I

    return p0
.end method

.method public final component2()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;->processIdParent:I

    return p0
.end method

.method public final component3()Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;->parentIsSteam:Z

    return p0
.end method

.method public final copy(IIZ)Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;
    .registers 4

    .line 0
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;

    invoke-direct {p0, p1, p2, p3}, Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;-><init>(IIZ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;->processId:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;->processId:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;->processIdParent:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;->processIdParent:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;->parentIsSteam:Z

    iget-boolean p1, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;->parentIsSteam:Z

    if-eq p0, p1, :cond_21

    return v2

    :cond_21
    return v0
.end method

.method public final getParentIsSteam()Z
    .registers 1

    .line 6
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;->parentIsSteam:Z

    return p0
.end method

.method public final getProcessId()I
    .registers 1

    .line 4
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;->processId:I

    return p0
.end method

.method public final getProcessIdParent()I
    .registers 1

    .line 5
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;->processIdParent:I

    return p0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;->processId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;->processIdParent:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;->parentIsSteam:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 0
    iget v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;->processId:I

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;->processIdParent:I

    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;->parentIsSteam:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppProcessInfo(processId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", processIdParent="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", parentIsSteam="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
