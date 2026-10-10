###### Class in.dragonbra.javasteam.steam.handlers.steamuser.AnonymousLogOnDetails (in.dragonbra.javasteam.steam.handlers.steamuser.AnonymousLogOnDetails)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;
.super Ljava/lang/Object;
.source "AnonymousLogOnDetails.kt"


# instance fields
.field private cellID:Ljava/lang/Integer;

.field private clientLanguage:Ljava/lang/String;

.field private clientOSType:Lin/dragonbra/javasteam/enums/EOSType;


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 0
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;-><init>(Ljava/lang/Integer;Lin/dragonbra/javasteam/enums/EOSType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Lin/dragonbra/javasteam/enums/EOSType;Ljava/lang/String;)V
    .registers 5

    const-string v0, "clientOSType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientLanguage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;->cellID:Ljava/lang/Integer;

    .line 15
    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;->clientOSType:Lin/dragonbra/javasteam/enums/EOSType;

    .line 16
    iput-object p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;->clientLanguage:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Lin/dragonbra/javasteam/enums/EOSType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_5

    const/4 p1, 0x0

    :cond_5
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_12

    .line 15
    invoke-static {}, Lin/dragonbra/javasteam/util/Utils;->getOSType()Lin/dragonbra/javasteam/enums/EOSType;

    move-result-object p2

    const-string p5, "getOSType(...)"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_12
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_18

    .line 16
    const-string p3, "english"

    .line 13
    :cond_18
    invoke-direct {p0, p1, p2, p3}, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;-><init>(Ljava/lang/Integer;Lin/dragonbra/javasteam/enums/EOSType;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;Ljava/lang/Integer;Lin/dragonbra/javasteam/enums/EOSType;Ljava/lang/String;ILjava/lang/Object;)Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;
    .registers 6

    .line 0
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;->cellID:Ljava/lang/Integer;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;->clientOSType:Lin/dragonbra/javasteam/enums/EOSType;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;->clientLanguage:Ljava/lang/String;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;->copy(Ljava/lang/Integer;Lin/dragonbra/javasteam/enums/EOSType;Ljava/lang/String;)Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;->cellID:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component2()Lin/dragonbra/javasteam/enums/EOSType;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;->clientOSType:Lin/dragonbra/javasteam/enums/EOSType;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;->clientLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/Integer;Lin/dragonbra/javasteam/enums/EOSType;Ljava/lang/String;)Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;
    .registers 4

    .line 0
    const-string p0, "clientOSType"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "clientLanguage"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;

    invoke-direct {p0, p1, p2, p3}, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;-><init>(Ljava/lang/Integer;Lin/dragonbra/javasteam/enums/EOSType;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;->cellID:Ljava/lang/Integer;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;->cellID:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;->clientOSType:Lin/dragonbra/javasteam/enums/EOSType;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;->clientOSType:Lin/dragonbra/javasteam/enums/EOSType;

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;->clientLanguage:Ljava/lang/String;

    iget-object p1, p1, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;->clientLanguage:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    return v2

    :cond_29
    return v0
.end method

.method public final getCellID()Ljava/lang/Integer;
    .registers 1

    .line 14
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;->cellID:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getClientLanguage()Ljava/lang/String;
    .registers 1

    .line 16
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;->clientLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final getClientOSType()Lin/dragonbra/javasteam/enums/EOSType;
    .registers 1

    .line 15
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;->clientOSType:Lin/dragonbra/javasteam/enums/EOSType;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;->cellID:Ljava/lang/Integer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;->clientOSType:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;->clientLanguage:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setCellID(Ljava/lang/Integer;)V
    .registers 2

    .line 14
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;->cellID:Ljava/lang/Integer;

    return-void
.end method

.method public final setClientLanguage(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;->clientLanguage:Ljava/lang/String;

    return-void
.end method

.method public final setClientOSType(Lin/dragonbra/javasteam/enums/EOSType;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;->clientOSType:Lin/dragonbra/javasteam/enums/EOSType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 0
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;->cellID:Ljava/lang/Integer;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;->clientOSType:Lin/dragonbra/javasteam/enums/EOSType;

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/AnonymousLogOnDetails;->clientLanguage:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnonymousLogOnDetails(cellID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", clientOSType="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", clientLanguage="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
