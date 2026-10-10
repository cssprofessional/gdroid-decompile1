###### Class in.dragonbra.javasteam.enums.ELauncherType (in.dragonbra.javasteam.enums.ELauncherType)
.class public final enum Lin/dragonbra/javasteam/enums/ELauncherType;
.super Ljava/lang/Enum;
.source "ELauncherType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/enums/ELauncherType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/enums/ELauncherType;

.field public static final enum CSGO:Lin/dragonbra/javasteam/enums/ELauncherType;

.field public static final enum ClientUI:Lin/dragonbra/javasteam/enums/ELauncherType;

.field public static final enum CmdLine:Lin/dragonbra/javasteam/enums/ELauncherType;

.field public static final enum Default:Lin/dragonbra/javasteam/enums/ELauncherType;

.field public static final enum GameServer:Lin/dragonbra/javasteam/enums/ELauncherType;

.field public static final enum Headless:Lin/dragonbra/javasteam/enums/ELauncherType;

.field public static final enum Nexon:Lin/dragonbra/javasteam/enums/ELauncherType;

.field public static final enum PerfectWorld:Lin/dragonbra/javasteam/enums/ELauncherType;

.field public static final enum SingleApp:Lin/dragonbra/javasteam/enums/ELauncherType;

.field public static final enum SteamChina:Lin/dragonbra/javasteam/enums/ELauncherType;


# instance fields
.field private final code:I


# direct methods
.method private static synthetic $values()[Lin/dragonbra/javasteam/enums/ELauncherType;
    .registers 10

    .line 4
    sget-object v0, Lin/dragonbra/javasteam/enums/ELauncherType;->Default:Lin/dragonbra/javasteam/enums/ELauncherType;

    sget-object v1, Lin/dragonbra/javasteam/enums/ELauncherType;->PerfectWorld:Lin/dragonbra/javasteam/enums/ELauncherType;

    sget-object v2, Lin/dragonbra/javasteam/enums/ELauncherType;->Nexon:Lin/dragonbra/javasteam/enums/ELauncherType;

    sget-object v3, Lin/dragonbra/javasteam/enums/ELauncherType;->CmdLine:Lin/dragonbra/javasteam/enums/ELauncherType;

    sget-object v4, Lin/dragonbra/javasteam/enums/ELauncherType;->CSGO:Lin/dragonbra/javasteam/enums/ELauncherType;

    sget-object v5, Lin/dragonbra/javasteam/enums/ELauncherType;->ClientUI:Lin/dragonbra/javasteam/enums/ELauncherType;

    sget-object v6, Lin/dragonbra/javasteam/enums/ELauncherType;->Headless:Lin/dragonbra/javasteam/enums/ELauncherType;

    sget-object v7, Lin/dragonbra/javasteam/enums/ELauncherType;->SteamChina:Lin/dragonbra/javasteam/enums/ELauncherType;

    sget-object v8, Lin/dragonbra/javasteam/enums/ELauncherType;->SingleApp:Lin/dragonbra/javasteam/enums/ELauncherType;

    sget-object v9, Lin/dragonbra/javasteam/enums/ELauncherType;->GameServer:Lin/dragonbra/javasteam/enums/ELauncherType;

    filled-new-array/range {v0 .. v9}, [Lin/dragonbra/javasteam/enums/ELauncherType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 6
    new-instance v0, Lin/dragonbra/javasteam/enums/ELauncherType;

    const-string v1, "Default"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/ELauncherType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELauncherType;->Default:Lin/dragonbra/javasteam/enums/ELauncherType;

    .line 8
    new-instance v0, Lin/dragonbra/javasteam/enums/ELauncherType;

    const-string v1, "PerfectWorld"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/ELauncherType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELauncherType;->PerfectWorld:Lin/dragonbra/javasteam/enums/ELauncherType;

    .line 10
    new-instance v0, Lin/dragonbra/javasteam/enums/ELauncherType;

    const-string v1, "Nexon"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/ELauncherType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELauncherType;->Nexon:Lin/dragonbra/javasteam/enums/ELauncherType;

    .line 12
    new-instance v0, Lin/dragonbra/javasteam/enums/ELauncherType;

    const-string v1, "CmdLine"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/ELauncherType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELauncherType;->CmdLine:Lin/dragonbra/javasteam/enums/ELauncherType;

    .line 14
    new-instance v0, Lin/dragonbra/javasteam/enums/ELauncherType;

    const-string v1, "CSGO"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/ELauncherType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELauncherType;->CSGO:Lin/dragonbra/javasteam/enums/ELauncherType;

    .line 16
    new-instance v0, Lin/dragonbra/javasteam/enums/ELauncherType;

    const-string v1, "ClientUI"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/ELauncherType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELauncherType;->ClientUI:Lin/dragonbra/javasteam/enums/ELauncherType;

    .line 18
    new-instance v0, Lin/dragonbra/javasteam/enums/ELauncherType;

    const-string v1, "Headless"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/ELauncherType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELauncherType;->Headless:Lin/dragonbra/javasteam/enums/ELauncherType;

    .line 20
    new-instance v0, Lin/dragonbra/javasteam/enums/ELauncherType;

    const-string v1, "SteamChina"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/ELauncherType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELauncherType;->SteamChina:Lin/dragonbra/javasteam/enums/ELauncherType;

    .line 22
    new-instance v0, Lin/dragonbra/javasteam/enums/ELauncherType;

    const-string v1, "SingleApp"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/ELauncherType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELauncherType;->SingleApp:Lin/dragonbra/javasteam/enums/ELauncherType;

    .line 24
    new-instance v0, Lin/dragonbra/javasteam/enums/ELauncherType;

    const-string v1, "GameServer"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/ELauncherType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELauncherType;->GameServer:Lin/dragonbra/javasteam/enums/ELauncherType;

    .line 4
    invoke-static {}, Lin/dragonbra/javasteam/enums/ELauncherType;->$values()[Lin/dragonbra/javasteam/enums/ELauncherType;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/enums/ELauncherType;->$VALUES:[Lin/dragonbra/javasteam/enums/ELauncherType;

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

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lin/dragonbra/javasteam/enums/ELauncherType;->code:I

    return-void
.end method

.method public static from(I)Lin/dragonbra/javasteam/enums/ELauncherType;
    .registers 6

    .line 39
    invoke-static {}, Lin/dragonbra/javasteam/enums/ELauncherType;->values()[Lin/dragonbra/javasteam/enums/ELauncherType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 40
    iget v4, v3, Lin/dragonbra/javasteam/enums/ELauncherType;->code:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/enums/ELauncherType;
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
    const-class v0, Lin/dragonbra/javasteam/enums/ELauncherType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/enums/ELauncherType;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/enums/ELauncherType;
    .registers 1

    .line 4
    sget-object v0, Lin/dragonbra/javasteam/enums/ELauncherType;->$VALUES:[Lin/dragonbra/javasteam/enums/ELauncherType;

    invoke-virtual {v0}, [Lin/dragonbra/javasteam/enums/ELauncherType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/enums/ELauncherType;

    return-object v0
.end method


# virtual methods
.method public code()I
    .registers 1

    .line 35
    iget p0, p0, Lin/dragonbra/javasteam/enums/ELauncherType;->code:I

    return p0
.end method
