###### Class in.dragonbra.javasteam.enums.EUIMode (in.dragonbra.javasteam.enums.EUIMode)
.class public final enum Lin/dragonbra/javasteam/enums/EUIMode;
.super Ljava/lang/Enum;
.source "EUIMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/enums/EUIMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/enums/EUIMode;

.field public static final enum DesktopUI:Lin/dragonbra/javasteam/enums/EUIMode;

.field public static final enum EmbeddedClient:Lin/dragonbra/javasteam/enums/EUIMode;

.field public static final enum GamePadUI:Lin/dragonbra/javasteam/enums/EUIMode;

.field public static final enum Mobile:Lin/dragonbra/javasteam/enums/EUIMode;

.field public static final enum MobileChat:Lin/dragonbra/javasteam/enums/EUIMode;

.field public static final enum Tenfoot:Lin/dragonbra/javasteam/enums/EUIMode;

.field public static final enum Unknown:Lin/dragonbra/javasteam/enums/EUIMode;

.field public static final enum VGUI:Lin/dragonbra/javasteam/enums/EUIMode;

.field public static final enum Web:Lin/dragonbra/javasteam/enums/EUIMode;


# instance fields
.field private final code:I


# direct methods
.method private static synthetic $values()[Lin/dragonbra/javasteam/enums/EUIMode;
    .registers 9

    .line 4
    sget-object v0, Lin/dragonbra/javasteam/enums/EUIMode;->Unknown:Lin/dragonbra/javasteam/enums/EUIMode;

    sget-object v1, Lin/dragonbra/javasteam/enums/EUIMode;->VGUI:Lin/dragonbra/javasteam/enums/EUIMode;

    sget-object v2, Lin/dragonbra/javasteam/enums/EUIMode;->Tenfoot:Lin/dragonbra/javasteam/enums/EUIMode;

    sget-object v3, Lin/dragonbra/javasteam/enums/EUIMode;->Mobile:Lin/dragonbra/javasteam/enums/EUIMode;

    sget-object v4, Lin/dragonbra/javasteam/enums/EUIMode;->Web:Lin/dragonbra/javasteam/enums/EUIMode;

    sget-object v5, Lin/dragonbra/javasteam/enums/EUIMode;->GamePadUI:Lin/dragonbra/javasteam/enums/EUIMode;

    sget-object v6, Lin/dragonbra/javasteam/enums/EUIMode;->MobileChat:Lin/dragonbra/javasteam/enums/EUIMode;

    sget-object v7, Lin/dragonbra/javasteam/enums/EUIMode;->EmbeddedClient:Lin/dragonbra/javasteam/enums/EUIMode;

    sget-object v8, Lin/dragonbra/javasteam/enums/EUIMode;->DesktopUI:Lin/dragonbra/javasteam/enums/EUIMode;

    filled-new-array/range {v0 .. v8}, [Lin/dragonbra/javasteam/enums/EUIMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 6
    new-instance v0, Lin/dragonbra/javasteam/enums/EUIMode;

    const/4 v1, -0x1

    const-string v2, "Unknown"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lin/dragonbra/javasteam/enums/EUIMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EUIMode;->Unknown:Lin/dragonbra/javasteam/enums/EUIMode;

    .line 8
    new-instance v0, Lin/dragonbra/javasteam/enums/EUIMode;

    const-string v1, "VGUI"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/enums/EUIMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EUIMode;->VGUI:Lin/dragonbra/javasteam/enums/EUIMode;

    .line 10
    new-instance v0, Lin/dragonbra/javasteam/enums/EUIMode;

    const-string v1, "Tenfoot"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lin/dragonbra/javasteam/enums/EUIMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EUIMode;->Tenfoot:Lin/dragonbra/javasteam/enums/EUIMode;

    .line 12
    new-instance v0, Lin/dragonbra/javasteam/enums/EUIMode;

    const-string v1, "Mobile"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/enums/EUIMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EUIMode;->Mobile:Lin/dragonbra/javasteam/enums/EUIMode;

    .line 14
    new-instance v0, Lin/dragonbra/javasteam/enums/EUIMode;

    const-string v1, "Web"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lin/dragonbra/javasteam/enums/EUIMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EUIMode;->Web:Lin/dragonbra/javasteam/enums/EUIMode;

    .line 16
    new-instance v0, Lin/dragonbra/javasteam/enums/EUIMode;

    const-string v1, "GamePadUI"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/enums/EUIMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EUIMode;->GamePadUI:Lin/dragonbra/javasteam/enums/EUIMode;

    .line 18
    new-instance v0, Lin/dragonbra/javasteam/enums/EUIMode;

    const-string v1, "MobileChat"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2}, Lin/dragonbra/javasteam/enums/EUIMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EUIMode;->MobileChat:Lin/dragonbra/javasteam/enums/EUIMode;

    .line 20
    new-instance v0, Lin/dragonbra/javasteam/enums/EUIMode;

    const-string v1, "EmbeddedClient"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/enums/EUIMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EUIMode;->EmbeddedClient:Lin/dragonbra/javasteam/enums/EUIMode;

    .line 22
    new-instance v0, Lin/dragonbra/javasteam/enums/EUIMode;

    const-string v1, "DesktopUI"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v2}, Lin/dragonbra/javasteam/enums/EUIMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EUIMode;->DesktopUI:Lin/dragonbra/javasteam/enums/EUIMode;

    .line 4
    invoke-static {}, Lin/dragonbra/javasteam/enums/EUIMode;->$values()[Lin/dragonbra/javasteam/enums/EUIMode;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/enums/EUIMode;->$VALUES:[Lin/dragonbra/javasteam/enums/EUIMode;

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

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lin/dragonbra/javasteam/enums/EUIMode;->code:I

    return-void
.end method

.method public static from(I)Lin/dragonbra/javasteam/enums/EUIMode;
    .registers 6

    .line 37
    invoke-static {}, Lin/dragonbra/javasteam/enums/EUIMode;->values()[Lin/dragonbra/javasteam/enums/EUIMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 38
    iget v4, v3, Lin/dragonbra/javasteam/enums/EUIMode;->code:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/enums/EUIMode;
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
    const-class v0, Lin/dragonbra/javasteam/enums/EUIMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/enums/EUIMode;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/enums/EUIMode;
    .registers 1

    .line 4
    sget-object v0, Lin/dragonbra/javasteam/enums/EUIMode;->$VALUES:[Lin/dragonbra/javasteam/enums/EUIMode;

    invoke-virtual {v0}, [Lin/dragonbra/javasteam/enums/EUIMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/enums/EUIMode;

    return-object v0
.end method


# virtual methods
.method public code()I
    .registers 1

    .line 33
    iget p0, p0, Lin/dragonbra/javasteam/enums/EUIMode;->code:I

    return p0
.end method
