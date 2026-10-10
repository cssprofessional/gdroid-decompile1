###### Class in.dragonbra.javasteam.enums.EMobileConfirmationType (in.dragonbra.javasteam.enums.EMobileConfirmationType)
.class public final enum Lin/dragonbra/javasteam/enums/EMobileConfirmationType;
.super Ljava/lang/Enum;
.source "EMobileConfirmationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/enums/EMobileConfirmationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

.field public static final enum AccountRecovery:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

.field public static final enum AddUser:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

.field public static final enum BuildChangeRequest:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

.field public static final enum FeatureOptOut:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

.field public static final enum Invalid:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

.field public static final enum InviteToFamilyGroup:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

.field public static final enum JoinFamilyGroup:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

.field public static final enum MarketListing:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

.field public static final enum MarketPurchase:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

.field public static final enum PhoneNumberChange:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

.field public static final enum RegisterApiKey:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

.field public static final enum RequestRefund:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

.field public static final enum Test:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

.field public static final enum Trade:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;


# instance fields
.field private final code:I


# direct methods
.method private static synthetic $values()[Lin/dragonbra/javasteam/enums/EMobileConfirmationType;
    .registers 14

    .line 4
    sget-object v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->Invalid:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    sget-object v1, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->Test:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    sget-object v2, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->Trade:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    sget-object v3, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->MarketListing:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    sget-object v4, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->FeatureOptOut:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    sget-object v5, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->PhoneNumberChange:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    sget-object v6, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->AccountRecovery:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    sget-object v7, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->BuildChangeRequest:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    sget-object v8, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->AddUser:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    sget-object v9, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->RegisterApiKey:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    sget-object v10, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->InviteToFamilyGroup:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    sget-object v11, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->JoinFamilyGroup:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    sget-object v12, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->MarketPurchase:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    sget-object v13, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->RequestRefund:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    filled-new-array/range {v0 .. v13}, [Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 6
    new-instance v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    const-string v1, "Invalid"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->Invalid:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    .line 8
    new-instance v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    const-string v1, "Test"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->Test:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    .line 10
    new-instance v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    const-string v1, "Trade"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->Trade:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    .line 12
    new-instance v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    const-string v1, "MarketListing"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->MarketListing:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    .line 14
    new-instance v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    const-string v1, "FeatureOptOut"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->FeatureOptOut:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    .line 16
    new-instance v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    const-string v1, "PhoneNumberChange"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->PhoneNumberChange:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    .line 18
    new-instance v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    const-string v1, "AccountRecovery"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->AccountRecovery:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    .line 20
    new-instance v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    const-string v1, "BuildChangeRequest"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->BuildChangeRequest:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    .line 22
    new-instance v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    const-string v1, "AddUser"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->AddUser:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    .line 24
    new-instance v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    const-string v1, "RegisterApiKey"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->RegisterApiKey:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    .line 26
    new-instance v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    const-string v1, "InviteToFamilyGroup"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->InviteToFamilyGroup:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    .line 28
    new-instance v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    const-string v1, "JoinFamilyGroup"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->JoinFamilyGroup:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    .line 30
    new-instance v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    const-string v1, "MarketPurchase"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->MarketPurchase:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    .line 32
    new-instance v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    const-string v1, "RequestRefund"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->RequestRefund:Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    .line 4
    invoke-static {}, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->$values()[Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->$VALUES:[Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

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

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->code:I

    return-void
.end method

.method public static from(I)Lin/dragonbra/javasteam/enums/EMobileConfirmationType;
    .registers 6

    .line 47
    invoke-static {}, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->values()[Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 48
    iget v4, v3, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->code:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/enums/EMobileConfirmationType;
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
    const-class v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/enums/EMobileConfirmationType;
    .registers 1

    .line 4
    sget-object v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->$VALUES:[Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    invoke-virtual {v0}, [Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/enums/EMobileConfirmationType;

    return-object v0
.end method


# virtual methods
.method public code()I
    .registers 1

    .line 43
    iget p0, p0, Lin/dragonbra/javasteam/enums/EMobileConfirmationType;->code:I

    return p0
.end method
