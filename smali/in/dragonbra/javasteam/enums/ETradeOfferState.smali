###### Class in.dragonbra.javasteam.enums.ETradeOfferState (in.dragonbra.javasteam.enums.ETradeOfferState)
.class public final enum Lin/dragonbra/javasteam/enums/ETradeOfferState;
.super Ljava/lang/Enum;
.source "ETradeOfferState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/enums/ETradeOfferState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/enums/ETradeOfferState;

.field public static final enum Accepted:Lin/dragonbra/javasteam/enums/ETradeOfferState;

.field public static final enum Active:Lin/dragonbra/javasteam/enums/ETradeOfferState;

.field public static final enum Canceled:Lin/dragonbra/javasteam/enums/ETradeOfferState;

.field public static final enum CanceledBySecondFactor:Lin/dragonbra/javasteam/enums/ETradeOfferState;

.field public static final enum Countered:Lin/dragonbra/javasteam/enums/ETradeOfferState;

.field public static final enum CreatedNeedsConfirmation:Lin/dragonbra/javasteam/enums/ETradeOfferState;

.field public static final enum Declined:Lin/dragonbra/javasteam/enums/ETradeOfferState;

.field public static final enum Expired:Lin/dragonbra/javasteam/enums/ETradeOfferState;

.field public static final enum InEscrow:Lin/dragonbra/javasteam/enums/ETradeOfferState;

.field public static final enum Invalid:Lin/dragonbra/javasteam/enums/ETradeOfferState;

.field public static final enum InvalidItems:Lin/dragonbra/javasteam/enums/ETradeOfferState;

.field public static final enum Reverted:Lin/dragonbra/javasteam/enums/ETradeOfferState;


# instance fields
.field private final code:I


# direct methods
.method private static synthetic $values()[Lin/dragonbra/javasteam/enums/ETradeOfferState;
    .registers 12

    .line 4
    sget-object v0, Lin/dragonbra/javasteam/enums/ETradeOfferState;->Invalid:Lin/dragonbra/javasteam/enums/ETradeOfferState;

    sget-object v1, Lin/dragonbra/javasteam/enums/ETradeOfferState;->Active:Lin/dragonbra/javasteam/enums/ETradeOfferState;

    sget-object v2, Lin/dragonbra/javasteam/enums/ETradeOfferState;->Accepted:Lin/dragonbra/javasteam/enums/ETradeOfferState;

    sget-object v3, Lin/dragonbra/javasteam/enums/ETradeOfferState;->Countered:Lin/dragonbra/javasteam/enums/ETradeOfferState;

    sget-object v4, Lin/dragonbra/javasteam/enums/ETradeOfferState;->Expired:Lin/dragonbra/javasteam/enums/ETradeOfferState;

    sget-object v5, Lin/dragonbra/javasteam/enums/ETradeOfferState;->Canceled:Lin/dragonbra/javasteam/enums/ETradeOfferState;

    sget-object v6, Lin/dragonbra/javasteam/enums/ETradeOfferState;->Declined:Lin/dragonbra/javasteam/enums/ETradeOfferState;

    sget-object v7, Lin/dragonbra/javasteam/enums/ETradeOfferState;->InvalidItems:Lin/dragonbra/javasteam/enums/ETradeOfferState;

    sget-object v8, Lin/dragonbra/javasteam/enums/ETradeOfferState;->CreatedNeedsConfirmation:Lin/dragonbra/javasteam/enums/ETradeOfferState;

    sget-object v9, Lin/dragonbra/javasteam/enums/ETradeOfferState;->CanceledBySecondFactor:Lin/dragonbra/javasteam/enums/ETradeOfferState;

    sget-object v10, Lin/dragonbra/javasteam/enums/ETradeOfferState;->InEscrow:Lin/dragonbra/javasteam/enums/ETradeOfferState;

    sget-object v11, Lin/dragonbra/javasteam/enums/ETradeOfferState;->Reverted:Lin/dragonbra/javasteam/enums/ETradeOfferState;

    filled-new-array/range {v0 .. v11}, [Lin/dragonbra/javasteam/enums/ETradeOfferState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 6
    new-instance v0, Lin/dragonbra/javasteam/enums/ETradeOfferState;

    const-string v1, "Invalid"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/enums/ETradeOfferState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ETradeOfferState;->Invalid:Lin/dragonbra/javasteam/enums/ETradeOfferState;

    .line 8
    new-instance v0, Lin/dragonbra/javasteam/enums/ETradeOfferState;

    const-string v1, "Active"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lin/dragonbra/javasteam/enums/ETradeOfferState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ETradeOfferState;->Active:Lin/dragonbra/javasteam/enums/ETradeOfferState;

    .line 10
    new-instance v0, Lin/dragonbra/javasteam/enums/ETradeOfferState;

    const-string v1, "Accepted"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/enums/ETradeOfferState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ETradeOfferState;->Accepted:Lin/dragonbra/javasteam/enums/ETradeOfferState;

    .line 12
    new-instance v0, Lin/dragonbra/javasteam/enums/ETradeOfferState;

    const-string v1, "Countered"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lin/dragonbra/javasteam/enums/ETradeOfferState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ETradeOfferState;->Countered:Lin/dragonbra/javasteam/enums/ETradeOfferState;

    .line 14
    new-instance v0, Lin/dragonbra/javasteam/enums/ETradeOfferState;

    const-string v1, "Expired"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/enums/ETradeOfferState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ETradeOfferState;->Expired:Lin/dragonbra/javasteam/enums/ETradeOfferState;

    .line 16
    new-instance v0, Lin/dragonbra/javasteam/enums/ETradeOfferState;

    const-string v1, "Canceled"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lin/dragonbra/javasteam/enums/ETradeOfferState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ETradeOfferState;->Canceled:Lin/dragonbra/javasteam/enums/ETradeOfferState;

    .line 18
    new-instance v0, Lin/dragonbra/javasteam/enums/ETradeOfferState;

    const-string v1, "Declined"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/enums/ETradeOfferState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ETradeOfferState;->Declined:Lin/dragonbra/javasteam/enums/ETradeOfferState;

    .line 20
    new-instance v0, Lin/dragonbra/javasteam/enums/ETradeOfferState;

    const-string v1, "InvalidItems"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lin/dragonbra/javasteam/enums/ETradeOfferState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ETradeOfferState;->InvalidItems:Lin/dragonbra/javasteam/enums/ETradeOfferState;

    .line 22
    new-instance v0, Lin/dragonbra/javasteam/enums/ETradeOfferState;

    const-string v1, "CreatedNeedsConfirmation"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/enums/ETradeOfferState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ETradeOfferState;->CreatedNeedsConfirmation:Lin/dragonbra/javasteam/enums/ETradeOfferState;

    .line 24
    new-instance v0, Lin/dragonbra/javasteam/enums/ETradeOfferState;

    const-string v1, "CanceledBySecondFactor"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v3, v2}, Lin/dragonbra/javasteam/enums/ETradeOfferState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ETradeOfferState;->CanceledBySecondFactor:Lin/dragonbra/javasteam/enums/ETradeOfferState;

    .line 26
    new-instance v0, Lin/dragonbra/javasteam/enums/ETradeOfferState;

    const-string v1, "InEscrow"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/enums/ETradeOfferState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ETradeOfferState;->InEscrow:Lin/dragonbra/javasteam/enums/ETradeOfferState;

    .line 28
    new-instance v0, Lin/dragonbra/javasteam/enums/ETradeOfferState;

    const-string v1, "Reverted"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v3, v2}, Lin/dragonbra/javasteam/enums/ETradeOfferState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ETradeOfferState;->Reverted:Lin/dragonbra/javasteam/enums/ETradeOfferState;

    .line 4
    invoke-static {}, Lin/dragonbra/javasteam/enums/ETradeOfferState;->$values()[Lin/dragonbra/javasteam/enums/ETradeOfferState;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/enums/ETradeOfferState;->$VALUES:[Lin/dragonbra/javasteam/enums/ETradeOfferState;

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

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lin/dragonbra/javasteam/enums/ETradeOfferState;->code:I

    return-void
.end method

.method public static from(I)Lin/dragonbra/javasteam/enums/ETradeOfferState;
    .registers 6

    .line 43
    invoke-static {}, Lin/dragonbra/javasteam/enums/ETradeOfferState;->values()[Lin/dragonbra/javasteam/enums/ETradeOfferState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 44
    iget v4, v3, Lin/dragonbra/javasteam/enums/ETradeOfferState;->code:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/enums/ETradeOfferState;
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
    const-class v0, Lin/dragonbra/javasteam/enums/ETradeOfferState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/enums/ETradeOfferState;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/enums/ETradeOfferState;
    .registers 1

    .line 4
    sget-object v0, Lin/dragonbra/javasteam/enums/ETradeOfferState;->$VALUES:[Lin/dragonbra/javasteam/enums/ETradeOfferState;

    invoke-virtual {v0}, [Lin/dragonbra/javasteam/enums/ETradeOfferState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/enums/ETradeOfferState;

    return-object v0
.end method


# virtual methods
.method public code()I
    .registers 1

    .line 39
    iget p0, p0, Lin/dragonbra/javasteam/enums/ETradeOfferState;->code:I

    return p0
.end method
