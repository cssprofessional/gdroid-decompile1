###### Class in.dragonbra.javasteam.enums.EPersonaState (in.dragonbra.javasteam.enums.EPersonaState)
.class public final enum Lin/dragonbra/javasteam/enums/EPersonaState;
.super Ljava/lang/Enum;
.source "EPersonaState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/enums/EPersonaState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/enums/EPersonaState;

.field public static final enum Away:Lin/dragonbra/javasteam/enums/EPersonaState;

.field public static final enum Busy:Lin/dragonbra/javasteam/enums/EPersonaState;

.field public static final enum Invisible:Lin/dragonbra/javasteam/enums/EPersonaState;

.field public static final enum LookingToPlay:Lin/dragonbra/javasteam/enums/EPersonaState;

.field public static final enum LookingToTrade:Lin/dragonbra/javasteam/enums/EPersonaState;

.field public static final enum Offline:Lin/dragonbra/javasteam/enums/EPersonaState;

.field public static final enum Online:Lin/dragonbra/javasteam/enums/EPersonaState;

.field public static final enum Snooze:Lin/dragonbra/javasteam/enums/EPersonaState;


# instance fields
.field private final code:I


# direct methods
.method private static synthetic $values()[Lin/dragonbra/javasteam/enums/EPersonaState;
    .registers 8

    .line 4
    sget-object v0, Lin/dragonbra/javasteam/enums/EPersonaState;->Offline:Lin/dragonbra/javasteam/enums/EPersonaState;

    sget-object v1, Lin/dragonbra/javasteam/enums/EPersonaState;->Online:Lin/dragonbra/javasteam/enums/EPersonaState;

    sget-object v2, Lin/dragonbra/javasteam/enums/EPersonaState;->Busy:Lin/dragonbra/javasteam/enums/EPersonaState;

    sget-object v3, Lin/dragonbra/javasteam/enums/EPersonaState;->Away:Lin/dragonbra/javasteam/enums/EPersonaState;

    sget-object v4, Lin/dragonbra/javasteam/enums/EPersonaState;->Snooze:Lin/dragonbra/javasteam/enums/EPersonaState;

    sget-object v5, Lin/dragonbra/javasteam/enums/EPersonaState;->LookingToTrade:Lin/dragonbra/javasteam/enums/EPersonaState;

    sget-object v6, Lin/dragonbra/javasteam/enums/EPersonaState;->LookingToPlay:Lin/dragonbra/javasteam/enums/EPersonaState;

    sget-object v7, Lin/dragonbra/javasteam/enums/EPersonaState;->Invisible:Lin/dragonbra/javasteam/enums/EPersonaState;

    filled-new-array/range {v0 .. v7}, [Lin/dragonbra/javasteam/enums/EPersonaState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 6
    new-instance v0, Lin/dragonbra/javasteam/enums/EPersonaState;

    const-string v1, "Offline"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EPersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EPersonaState;->Offline:Lin/dragonbra/javasteam/enums/EPersonaState;

    .line 8
    new-instance v0, Lin/dragonbra/javasteam/enums/EPersonaState;

    const-string v1, "Online"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EPersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EPersonaState;->Online:Lin/dragonbra/javasteam/enums/EPersonaState;

    .line 10
    new-instance v0, Lin/dragonbra/javasteam/enums/EPersonaState;

    const-string v1, "Busy"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EPersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EPersonaState;->Busy:Lin/dragonbra/javasteam/enums/EPersonaState;

    .line 12
    new-instance v0, Lin/dragonbra/javasteam/enums/EPersonaState;

    const-string v1, "Away"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EPersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EPersonaState;->Away:Lin/dragonbra/javasteam/enums/EPersonaState;

    .line 14
    new-instance v0, Lin/dragonbra/javasteam/enums/EPersonaState;

    const-string v1, "Snooze"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EPersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EPersonaState;->Snooze:Lin/dragonbra/javasteam/enums/EPersonaState;

    .line 16
    new-instance v0, Lin/dragonbra/javasteam/enums/EPersonaState;

    const-string v1, "LookingToTrade"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EPersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EPersonaState;->LookingToTrade:Lin/dragonbra/javasteam/enums/EPersonaState;

    .line 18
    new-instance v0, Lin/dragonbra/javasteam/enums/EPersonaState;

    const-string v1, "LookingToPlay"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EPersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EPersonaState;->LookingToPlay:Lin/dragonbra/javasteam/enums/EPersonaState;

    .line 20
    new-instance v0, Lin/dragonbra/javasteam/enums/EPersonaState;

    const-string v1, "Invisible"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EPersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EPersonaState;->Invisible:Lin/dragonbra/javasteam/enums/EPersonaState;

    .line 4
    invoke-static {}, Lin/dragonbra/javasteam/enums/EPersonaState;->$values()[Lin/dragonbra/javasteam/enums/EPersonaState;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/enums/EPersonaState;->$VALUES:[Lin/dragonbra/javasteam/enums/EPersonaState;

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
    iput p3, p0, Lin/dragonbra/javasteam/enums/EPersonaState;->code:I

    return-void
.end method

.method public static from(I)Lin/dragonbra/javasteam/enums/EPersonaState;
    .registers 6

    .line 35
    invoke-static {}, Lin/dragonbra/javasteam/enums/EPersonaState;->values()[Lin/dragonbra/javasteam/enums/EPersonaState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 36
    iget v4, v3, Lin/dragonbra/javasteam/enums/EPersonaState;->code:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/enums/EPersonaState;
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
    const-class v0, Lin/dragonbra/javasteam/enums/EPersonaState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/enums/EPersonaState;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/enums/EPersonaState;
    .registers 1

    .line 4
    sget-object v0, Lin/dragonbra/javasteam/enums/EPersonaState;->$VALUES:[Lin/dragonbra/javasteam/enums/EPersonaState;

    invoke-virtual {v0}, [Lin/dragonbra/javasteam/enums/EPersonaState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/enums/EPersonaState;

    return-object v0
.end method


# virtual methods
.method public code()I
    .registers 1

    .line 31
    iget p0, p0, Lin/dragonbra/javasteam/enums/EPersonaState;->code:I

    return p0
.end method
