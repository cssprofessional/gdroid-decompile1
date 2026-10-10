###### Class in.dragonbra.javasteam.enums.EBillingType (in.dragonbra.javasteam.enums.EBillingType)
.class public final enum Lin/dragonbra/javasteam/enums/EBillingType;
.super Ljava/lang/Enum;
.source "EBillingType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/enums/EBillingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/enums/EBillingType;

.field public static final enum AutoGrant:Lin/dragonbra/javasteam/enums/EBillingType;

.field public static final enum BillMonthly:Lin/dragonbra/javasteam/enums/EBillingType;

.field public static final enum BillOnceOnly:Lin/dragonbra/javasteam/enums/EBillingType;

.field public static final enum BillOnceOrCDKey:Lin/dragonbra/javasteam/enums/EBillingType;

.field public static final enum CommercialLicense:Lin/dragonbra/javasteam/enums/EBillingType;

.field public static final enum FreeCommercialLicense:Lin/dragonbra/javasteam/enums/EBillingType;

.field public static final enum FreeOnDemand:Lin/dragonbra/javasteam/enums/EBillingType;

.field public static final enum Gift:Lin/dragonbra/javasteam/enums/EBillingType;

.field public static final enum GuestPass:Lin/dragonbra/javasteam/enums/EBillingType;

.field public static final enum HardwarePromo:Lin/dragonbra/javasteam/enums/EBillingType;

.field public static final enum NoCost:Lin/dragonbra/javasteam/enums/EBillingType;

.field public static final enum NumBillingTypes:Lin/dragonbra/javasteam/enums/EBillingType;

.field public static final enum OEMTicket:Lin/dragonbra/javasteam/enums/EBillingType;

.field public static final enum ProofOfPrepurchaseOnly:Lin/dragonbra/javasteam/enums/EBillingType;

.field public static final enum RecurringOption:Lin/dragonbra/javasteam/enums/EBillingType;

.field public static final enum Rental:Lin/dragonbra/javasteam/enums/EBillingType;

.field public static final enum Repurchaseable:Lin/dragonbra/javasteam/enums/EBillingType;


# instance fields
.field private final code:I


# direct methods
.method private static synthetic $values()[Lin/dragonbra/javasteam/enums/EBillingType;
    .registers 17

    .line 4
    sget-object v0, Lin/dragonbra/javasteam/enums/EBillingType;->NoCost:Lin/dragonbra/javasteam/enums/EBillingType;

    sget-object v1, Lin/dragonbra/javasteam/enums/EBillingType;->BillOnceOnly:Lin/dragonbra/javasteam/enums/EBillingType;

    sget-object v2, Lin/dragonbra/javasteam/enums/EBillingType;->BillMonthly:Lin/dragonbra/javasteam/enums/EBillingType;

    sget-object v3, Lin/dragonbra/javasteam/enums/EBillingType;->ProofOfPrepurchaseOnly:Lin/dragonbra/javasteam/enums/EBillingType;

    sget-object v4, Lin/dragonbra/javasteam/enums/EBillingType;->GuestPass:Lin/dragonbra/javasteam/enums/EBillingType;

    sget-object v5, Lin/dragonbra/javasteam/enums/EBillingType;->HardwarePromo:Lin/dragonbra/javasteam/enums/EBillingType;

    sget-object v6, Lin/dragonbra/javasteam/enums/EBillingType;->Gift:Lin/dragonbra/javasteam/enums/EBillingType;

    sget-object v7, Lin/dragonbra/javasteam/enums/EBillingType;->AutoGrant:Lin/dragonbra/javasteam/enums/EBillingType;

    sget-object v8, Lin/dragonbra/javasteam/enums/EBillingType;->OEMTicket:Lin/dragonbra/javasteam/enums/EBillingType;

    sget-object v9, Lin/dragonbra/javasteam/enums/EBillingType;->RecurringOption:Lin/dragonbra/javasteam/enums/EBillingType;

    sget-object v10, Lin/dragonbra/javasteam/enums/EBillingType;->BillOnceOrCDKey:Lin/dragonbra/javasteam/enums/EBillingType;

    sget-object v11, Lin/dragonbra/javasteam/enums/EBillingType;->Repurchaseable:Lin/dragonbra/javasteam/enums/EBillingType;

    sget-object v12, Lin/dragonbra/javasteam/enums/EBillingType;->FreeOnDemand:Lin/dragonbra/javasteam/enums/EBillingType;

    sget-object v13, Lin/dragonbra/javasteam/enums/EBillingType;->Rental:Lin/dragonbra/javasteam/enums/EBillingType;

    sget-object v14, Lin/dragonbra/javasteam/enums/EBillingType;->CommercialLicense:Lin/dragonbra/javasteam/enums/EBillingType;

    sget-object v15, Lin/dragonbra/javasteam/enums/EBillingType;->FreeCommercialLicense:Lin/dragonbra/javasteam/enums/EBillingType;

    sget-object v16, Lin/dragonbra/javasteam/enums/EBillingType;->NumBillingTypes:Lin/dragonbra/javasteam/enums/EBillingType;

    filled-new-array/range {v0 .. v16}, [Lin/dragonbra/javasteam/enums/EBillingType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 6
    new-instance v0, Lin/dragonbra/javasteam/enums/EBillingType;

    const-string v1, "NoCost"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EBillingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EBillingType;->NoCost:Lin/dragonbra/javasteam/enums/EBillingType;

    .line 8
    new-instance v0, Lin/dragonbra/javasteam/enums/EBillingType;

    const-string v1, "BillOnceOnly"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EBillingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EBillingType;->BillOnceOnly:Lin/dragonbra/javasteam/enums/EBillingType;

    .line 10
    new-instance v0, Lin/dragonbra/javasteam/enums/EBillingType;

    const-string v1, "BillMonthly"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EBillingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EBillingType;->BillMonthly:Lin/dragonbra/javasteam/enums/EBillingType;

    .line 12
    new-instance v0, Lin/dragonbra/javasteam/enums/EBillingType;

    const-string v1, "ProofOfPrepurchaseOnly"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EBillingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EBillingType;->ProofOfPrepurchaseOnly:Lin/dragonbra/javasteam/enums/EBillingType;

    .line 14
    new-instance v0, Lin/dragonbra/javasteam/enums/EBillingType;

    const-string v1, "GuestPass"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EBillingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EBillingType;->GuestPass:Lin/dragonbra/javasteam/enums/EBillingType;

    .line 16
    new-instance v0, Lin/dragonbra/javasteam/enums/EBillingType;

    const-string v1, "HardwarePromo"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EBillingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EBillingType;->HardwarePromo:Lin/dragonbra/javasteam/enums/EBillingType;

    .line 18
    new-instance v0, Lin/dragonbra/javasteam/enums/EBillingType;

    const-string v1, "Gift"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EBillingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EBillingType;->Gift:Lin/dragonbra/javasteam/enums/EBillingType;

    .line 20
    new-instance v0, Lin/dragonbra/javasteam/enums/EBillingType;

    const-string v1, "AutoGrant"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EBillingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EBillingType;->AutoGrant:Lin/dragonbra/javasteam/enums/EBillingType;

    .line 22
    new-instance v0, Lin/dragonbra/javasteam/enums/EBillingType;

    const-string v1, "OEMTicket"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EBillingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EBillingType;->OEMTicket:Lin/dragonbra/javasteam/enums/EBillingType;

    .line 24
    new-instance v0, Lin/dragonbra/javasteam/enums/EBillingType;

    const-string v1, "RecurringOption"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EBillingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EBillingType;->RecurringOption:Lin/dragonbra/javasteam/enums/EBillingType;

    .line 26
    new-instance v0, Lin/dragonbra/javasteam/enums/EBillingType;

    const-string v1, "BillOnceOrCDKey"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EBillingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EBillingType;->BillOnceOrCDKey:Lin/dragonbra/javasteam/enums/EBillingType;

    .line 28
    new-instance v0, Lin/dragonbra/javasteam/enums/EBillingType;

    const-string v1, "Repurchaseable"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EBillingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EBillingType;->Repurchaseable:Lin/dragonbra/javasteam/enums/EBillingType;

    .line 30
    new-instance v0, Lin/dragonbra/javasteam/enums/EBillingType;

    const-string v1, "FreeOnDemand"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EBillingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EBillingType;->FreeOnDemand:Lin/dragonbra/javasteam/enums/EBillingType;

    .line 32
    new-instance v0, Lin/dragonbra/javasteam/enums/EBillingType;

    const-string v1, "Rental"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EBillingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EBillingType;->Rental:Lin/dragonbra/javasteam/enums/EBillingType;

    .line 34
    new-instance v0, Lin/dragonbra/javasteam/enums/EBillingType;

    const-string v1, "CommercialLicense"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EBillingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EBillingType;->CommercialLicense:Lin/dragonbra/javasteam/enums/EBillingType;

    .line 36
    new-instance v0, Lin/dragonbra/javasteam/enums/EBillingType;

    const-string v1, "FreeCommercialLicense"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EBillingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EBillingType;->FreeCommercialLicense:Lin/dragonbra/javasteam/enums/EBillingType;

    .line 38
    new-instance v0, Lin/dragonbra/javasteam/enums/EBillingType;

    const-string v1, "NumBillingTypes"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EBillingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EBillingType;->NumBillingTypes:Lin/dragonbra/javasteam/enums/EBillingType;

    .line 4
    invoke-static {}, Lin/dragonbra/javasteam/enums/EBillingType;->$values()[Lin/dragonbra/javasteam/enums/EBillingType;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/enums/EBillingType;->$VALUES:[Lin/dragonbra/javasteam/enums/EBillingType;

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

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lin/dragonbra/javasteam/enums/EBillingType;->code:I

    return-void
.end method

.method public static from(I)Lin/dragonbra/javasteam/enums/EBillingType;
    .registers 6

    .line 53
    invoke-static {}, Lin/dragonbra/javasteam/enums/EBillingType;->values()[Lin/dragonbra/javasteam/enums/EBillingType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 54
    iget v4, v3, Lin/dragonbra/javasteam/enums/EBillingType;->code:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/enums/EBillingType;
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
    const-class v0, Lin/dragonbra/javasteam/enums/EBillingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/enums/EBillingType;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/enums/EBillingType;
    .registers 1

    .line 4
    sget-object v0, Lin/dragonbra/javasteam/enums/EBillingType;->$VALUES:[Lin/dragonbra/javasteam/enums/EBillingType;

    invoke-virtual {v0}, [Lin/dragonbra/javasteam/enums/EBillingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/enums/EBillingType;

    return-object v0
.end method


# virtual methods
.method public code()I
    .registers 1

    .line 49
    iget p0, p0, Lin/dragonbra/javasteam/enums/EBillingType;->code:I

    return p0
.end method
