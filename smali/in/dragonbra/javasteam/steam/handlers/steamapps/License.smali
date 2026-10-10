###### Class in.dragonbra.javasteam.steam.handlers.steamapps.License (in.dragonbra.javasteam.steam.handlers.steamapps.License)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamapps/License;
.super Ljava/lang/Object;
.source "License.kt"


# instance fields
.field private final accessToken:J

.field private final lastChangeNumber:I

.field private final licenseFlags:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/ELicenseFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final licenseType:Lin/dragonbra/javasteam/enums/ELicenseType;

.field private final masterPackageID:I

.field private final minuteLimit:I

.field private final minutesUsed:I

.field private final ownerAccountID:I

.field private final packageID:I

.field private final paymentMethod:Lin/dragonbra/javasteam/enums/EPaymentMethod;

.field private final purchaseCode:Ljava/lang/String;

.field private final territoryCode:I

.field private final timeCreated:Ljava/util/Date;

.field private final timeNextProcess:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientLicenseList$License;)V
    .registers 7

    const-string v0, "license"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientLicenseList$License;->getPackageId()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/License;->packageID:I

    .line 23
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientLicenseList$License;->getChangeNumber()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/License;->lastChangeNumber:I

    .line 28
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientLicenseList$License;->getTimeCreated()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/License;->timeCreated:Ljava/util/Date;

    .line 33
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientLicenseList$License;->getTimeNextProcess()I

    move-result v1

    int-to-long v1, v1

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/License;->timeNextProcess:Ljava/util/Date;

    .line 38
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientLicenseList$License;->getMinuteLimit()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/License;->minuteLimit:I

    .line 43
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientLicenseList$License;->getMinutesUsed()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/License;->minutesUsed:I

    .line 48
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientLicenseList$License;->getPaymentMethod()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EPaymentMethod;->from(I)Lin/dragonbra/javasteam/enums/EPaymentMethod;

    move-result-object v0

    if-nez v0, :cond_48

    sget-object v0, Lin/dragonbra/javasteam/enums/EPaymentMethod;->None:Lin/dragonbra/javasteam/enums/EPaymentMethod;

    :cond_48
    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/License;->paymentMethod:Lin/dragonbra/javasteam/enums/EPaymentMethod;

    .line 53
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientLicenseList$License;->getFlags()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/enums/ELicenseFlags;->from(I)Ljava/util/EnumSet;

    move-result-object v0

    const-string v1, "from(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/License;->licenseFlags:Ljava/util/EnumSet;

    .line 58
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientLicenseList$License;->getPurchaseCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getPurchaseCountryCode(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/License;->purchaseCode:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientLicenseList$License;->getLicenseType()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/enums/ELicenseType;->from(I)Lin/dragonbra/javasteam/enums/ELicenseType;

    move-result-object v0

    if-nez v0, :cond_70

    sget-object v0, Lin/dragonbra/javasteam/enums/ELicenseType;->NoLicense:Lin/dragonbra/javasteam/enums/ELicenseType;

    :cond_70
    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/License;->licenseType:Lin/dragonbra/javasteam/enums/ELicenseType;

    .line 68
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientLicenseList$License;->getTerritoryCode()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/License;->territoryCode:I

    .line 73
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientLicenseList$License;->getAccessToken()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/License;->accessToken:J

    .line 78
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientLicenseList$License;->getOwnerId()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/License;->ownerAccountID:I

    .line 83
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientLicenseList$License;->getMasterPackageId()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/License;->masterPackageID:I

    return-void
.end method


# virtual methods
.method public final getAccessToken()J
    .registers 3

    .line 73
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/License;->accessToken:J

    return-wide v0
.end method

.method public final getLastChangeNumber()I
    .registers 1

    .line 23
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/License;->lastChangeNumber:I

    return p0
.end method

.method public final getLicenseFlags()Ljava/util/EnumSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/ELicenseFlags;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/License;->licenseFlags:Ljava/util/EnumSet;

    return-object p0
.end method

.method public final getLicenseType()Lin/dragonbra/javasteam/enums/ELicenseType;
    .registers 1

    .line 63
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/License;->licenseType:Lin/dragonbra/javasteam/enums/ELicenseType;

    return-object p0
.end method

.method public final getMasterPackageID()I
    .registers 1

    .line 83
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/License;->masterPackageID:I

    return p0
.end method

.method public final getMinuteLimit()I
    .registers 1

    .line 38
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/License;->minuteLimit:I

    return p0
.end method

.method public final getMinutesUsed()I
    .registers 1

    .line 43
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/License;->minutesUsed:I

    return p0
.end method

.method public final getOwnerAccountID()I
    .registers 1

    .line 78
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/License;->ownerAccountID:I

    return p0
.end method

.method public final getPackageID()I
    .registers 1

    .line 18
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/License;->packageID:I

    return p0
.end method

.method public final getPaymentMethod()Lin/dragonbra/javasteam/enums/EPaymentMethod;
    .registers 1

    .line 48
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/License;->paymentMethod:Lin/dragonbra/javasteam/enums/EPaymentMethod;

    return-object p0
.end method

.method public final getPurchaseCode()Ljava/lang/String;
    .registers 1

    .line 58
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/License;->purchaseCode:Ljava/lang/String;

    return-object p0
.end method

.method public final getTerritoryCode()I
    .registers 1

    .line 68
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/License;->territoryCode:I

    return p0
.end method

.method public final getTimeCreated()Ljava/util/Date;
    .registers 1

    .line 28
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/License;->timeCreated:Ljava/util/Date;

    return-object p0
.end method

.method public final getTimeNextProcess()Ljava/util/Date;
    .registers 1

    .line 33
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/License;->timeNextProcess:Ljava/util/Date;

    return-object p0
.end method
