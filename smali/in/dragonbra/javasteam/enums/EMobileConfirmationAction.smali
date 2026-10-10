###### Class in.dragonbra.javasteam.enums.EMobileConfirmationAction (in.dragonbra.javasteam.enums.EMobileConfirmationAction)
.class public final enum Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;
.super Ljava/lang/Enum;
.source "EMobileConfirmationAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;

.field public static final enum Allow:Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;

.field public static final enum Cancel:Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;

.field public static final enum None:Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;


# instance fields
.field private final code:I


# direct methods
.method private static synthetic $values()[Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;
    .registers 3

    .line 4
    sget-object v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;->None:Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;

    sget-object v1, Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;->Allow:Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;

    sget-object v2, Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;->Cancel:Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;

    filled-new-array {v0, v1, v2}, [Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 6
    new-instance v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;->None:Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;

    .line 8
    new-instance v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;

    const-string v1, "Allow"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;->Allow:Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;

    .line 10
    new-instance v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;

    const-string v1, "Cancel"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;->Cancel:Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;

    .line 4
    invoke-static {}, Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;->$values()[Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;->$VALUES:[Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;

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

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;->code:I

    return-void
.end method

.method public static from(I)Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;
    .registers 6

    .line 25
    invoke-static {}, Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;->values()[Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 26
    iget v4, v3, Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;->code:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;
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
    const-class v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;
    .registers 1

    .line 4
    sget-object v0, Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;->$VALUES:[Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;

    invoke-virtual {v0}, [Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;

    return-object v0
.end method


# virtual methods
.method public code()I
    .registers 1

    .line 21
    iget p0, p0, Lin/dragonbra/javasteam/enums/EMobileConfirmationAction;->code:I

    return p0
.end method
