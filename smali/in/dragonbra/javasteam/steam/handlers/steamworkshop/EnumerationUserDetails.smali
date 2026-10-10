###### Class in.dragonbra.javasteam.steam.handlers.steamworkshop.EnumerationUserDetails (in.dragonbra.javasteam.steam.handlers.steamworkshop.EnumerationUserDetails)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;
.super Ljava/lang/Object;
.source "EnumerationUserDetails.kt"


# instance fields
.field private appID:I

.field private startIndex:I

.field private userAction:Lin/dragonbra/javasteam/enums/EWorkshopFileAction;


# direct methods
.method public constructor <init>(IILin/dragonbra/javasteam/enums/EWorkshopFileAction;)V
    .registers 5

    const-string v0, "userAction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;->appID:I

    .line 14
    iput p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;->startIndex:I

    .line 15
    iput-object p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;->userAction:Lin/dragonbra/javasteam/enums/EWorkshopFileAction;

    return-void
.end method

.method public static synthetic copy$default(Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;IILin/dragonbra/javasteam/enums/EWorkshopFileAction;ILjava/lang/Object;)Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;
    .registers 6

    .line 0
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;->appID:I

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;->startIndex:I

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;->userAction:Lin/dragonbra/javasteam/enums/EWorkshopFileAction;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;->copy(IILin/dragonbra/javasteam/enums/EWorkshopFileAction;)Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;->appID:I

    return p0
.end method

.method public final component2()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;->startIndex:I

    return p0
.end method

.method public final component3()Lin/dragonbra/javasteam/enums/EWorkshopFileAction;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;->userAction:Lin/dragonbra/javasteam/enums/EWorkshopFileAction;

    return-object p0
.end method

.method public final copy(IILin/dragonbra/javasteam/enums/EWorkshopFileAction;)Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;
    .registers 4

    .line 0
    const-string p0, "userAction"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;

    invoke-direct {p0, p1, p2, p3}, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;-><init>(IILin/dragonbra/javasteam/enums/EWorkshopFileAction;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;->appID:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;->appID:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;->startIndex:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;->startIndex:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;->userAction:Lin/dragonbra/javasteam/enums/EWorkshopFileAction;

    iget-object p1, p1, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;->userAction:Lin/dragonbra/javasteam/enums/EWorkshopFileAction;

    if-eq p0, p1, :cond_21

    return v2

    :cond_21
    return v0
.end method

.method public final getAppID()I
    .registers 1

    .line 13
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;->appID:I

    return p0
.end method

.method public final getStartIndex()I
    .registers 1

    .line 14
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;->startIndex:I

    return p0
.end method

.method public final getUserAction()Lin/dragonbra/javasteam/enums/EWorkshopFileAction;
    .registers 1

    .line 15
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;->userAction:Lin/dragonbra/javasteam/enums/EWorkshopFileAction;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;->appID:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;->startIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;->userAction:Lin/dragonbra/javasteam/enums/EWorkshopFileAction;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setAppID(I)V
    .registers 2

    .line 13
    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;->appID:I

    return-void
.end method

.method public final setStartIndex(I)V
    .registers 2

    .line 14
    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;->startIndex:I

    return-void
.end method

.method public final setUserAction(Lin/dragonbra/javasteam/enums/EWorkshopFileAction;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;->userAction:Lin/dragonbra/javasteam/enums/EWorkshopFileAction;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 0
    iget v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;->appID:I

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;->startIndex:I

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/EnumerationUserDetails;->userAction:Lin/dragonbra/javasteam/enums/EWorkshopFileAction;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EnumerationUserDetails(appID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", startIndex="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", userAction="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
