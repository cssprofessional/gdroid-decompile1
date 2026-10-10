###### Class in.dragonbra.javasteam.enums.ELicenseType (in.dragonbra.javasteam.enums.ELicenseType)
.class public final enum Lin/dragonbra/javasteam/enums/ELicenseType;
.super Ljava/lang/Enum;
.source "ELicenseType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/enums/ELicenseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/enums/ELicenseType;

.field public static final enum LimitedUseDelayedActivation:Lin/dragonbra/javasteam/enums/ELicenseType;

.field public static final enum NoLicense:Lin/dragonbra/javasteam/enums/ELicenseType;

.field public static final enum RecurringCharge:Lin/dragonbra/javasteam/enums/ELicenseType;

.field public static final enum RecurringChargeLimitedUse:Lin/dragonbra/javasteam/enums/ELicenseType;

.field public static final enum RecurringChargeLimitedUseWithOverages:Lin/dragonbra/javasteam/enums/ELicenseType;

.field public static final enum RecurringOption:Lin/dragonbra/javasteam/enums/ELicenseType;

.field public static final enum SinglePurchase:Lin/dragonbra/javasteam/enums/ELicenseType;

.field public static final enum SinglePurchaseLimitedUse:Lin/dragonbra/javasteam/enums/ELicenseType;


# instance fields
.field private final code:I


# direct methods
.method private static synthetic $values()[Lin/dragonbra/javasteam/enums/ELicenseType;
    .registers 8

    .line 4
    sget-object v0, Lin/dragonbra/javasteam/enums/ELicenseType;->NoLicense:Lin/dragonbra/javasteam/enums/ELicenseType;

    sget-object v1, Lin/dragonbra/javasteam/enums/ELicenseType;->SinglePurchase:Lin/dragonbra/javasteam/enums/ELicenseType;

    sget-object v2, Lin/dragonbra/javasteam/enums/ELicenseType;->SinglePurchaseLimitedUse:Lin/dragonbra/javasteam/enums/ELicenseType;

    sget-object v3, Lin/dragonbra/javasteam/enums/ELicenseType;->RecurringCharge:Lin/dragonbra/javasteam/enums/ELicenseType;

    sget-object v4, Lin/dragonbra/javasteam/enums/ELicenseType;->RecurringChargeLimitedUse:Lin/dragonbra/javasteam/enums/ELicenseType;

    sget-object v5, Lin/dragonbra/javasteam/enums/ELicenseType;->RecurringChargeLimitedUseWithOverages:Lin/dragonbra/javasteam/enums/ELicenseType;

    sget-object v6, Lin/dragonbra/javasteam/enums/ELicenseType;->RecurringOption:Lin/dragonbra/javasteam/enums/ELicenseType;

    sget-object v7, Lin/dragonbra/javasteam/enums/ELicenseType;->LimitedUseDelayedActivation:Lin/dragonbra/javasteam/enums/ELicenseType;

    filled-new-array/range {v0 .. v7}, [Lin/dragonbra/javasteam/enums/ELicenseType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 6
    new-instance v0, Lin/dragonbra/javasteam/enums/ELicenseType;

    const-string v1, "NoLicense"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/ELicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELicenseType;->NoLicense:Lin/dragonbra/javasteam/enums/ELicenseType;

    .line 8
    new-instance v0, Lin/dragonbra/javasteam/enums/ELicenseType;

    const-string v1, "SinglePurchase"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/ELicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELicenseType;->SinglePurchase:Lin/dragonbra/javasteam/enums/ELicenseType;

    .line 10
    new-instance v0, Lin/dragonbra/javasteam/enums/ELicenseType;

    const-string v1, "SinglePurchaseLimitedUse"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/ELicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELicenseType;->SinglePurchaseLimitedUse:Lin/dragonbra/javasteam/enums/ELicenseType;

    .line 12
    new-instance v0, Lin/dragonbra/javasteam/enums/ELicenseType;

    const-string v1, "RecurringCharge"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/ELicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELicenseType;->RecurringCharge:Lin/dragonbra/javasteam/enums/ELicenseType;

    .line 14
    new-instance v0, Lin/dragonbra/javasteam/enums/ELicenseType;

    const-string v1, "RecurringChargeLimitedUse"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/ELicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELicenseType;->RecurringChargeLimitedUse:Lin/dragonbra/javasteam/enums/ELicenseType;

    .line 16
    new-instance v0, Lin/dragonbra/javasteam/enums/ELicenseType;

    const-string v1, "RecurringChargeLimitedUseWithOverages"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/ELicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELicenseType;->RecurringChargeLimitedUseWithOverages:Lin/dragonbra/javasteam/enums/ELicenseType;

    .line 18
    new-instance v0, Lin/dragonbra/javasteam/enums/ELicenseType;

    const-string v1, "RecurringOption"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/ELicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELicenseType;->RecurringOption:Lin/dragonbra/javasteam/enums/ELicenseType;

    .line 20
    new-instance v0, Lin/dragonbra/javasteam/enums/ELicenseType;

    const-string v1, "LimitedUseDelayedActivation"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/ELicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELicenseType;->LimitedUseDelayedActivation:Lin/dragonbra/javasteam/enums/ELicenseType;

    .line 4
    invoke-static {}, Lin/dragonbra/javasteam/enums/ELicenseType;->$values()[Lin/dragonbra/javasteam/enums/ELicenseType;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/enums/ELicenseType;->$VALUES:[Lin/dragonbra/javasteam/enums/ELicenseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lin/dragonbra/javasteam/enums/ELicenseType;->code:I

    return-void
.end method

.method public static from(I)Lin/dragonbra/javasteam/enums/ELicenseType;
    .registers 6

    .line 35
    invoke-static {}, Lin/dragonbra/javasteam/enums/ELicenseType;->values()[Lin/dragonbra/javasteam/enums/ELicenseType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 36
    iget v4, v3, Lin/dragonbra/javasteam/enums/ELicenseType;->code:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/enums/ELicenseType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 4
    const-class v0, Lin/dragonbra/javasteam/enums/ELicenseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/enums/ELicenseType;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/enums/ELicenseType;
    .registers 1

    .line 4
    sget-object v0, Lin/dragonbra/javasteam/enums/ELicenseType;->$VALUES:[Lin/dragonbra/javasteam/enums/ELicenseType;

    invoke-virtual {v0}, [Lin/dragonbra/javasteam/enums/ELicenseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/enums/ELicenseType;

    return-object v0
.end method


# virtual methods
.method public code()I
    .registers 1

    .line 31
    iget p0, p0, Lin/dragonbra/javasteam/enums/ELicenseType;->code:I

    return p0
.end method
