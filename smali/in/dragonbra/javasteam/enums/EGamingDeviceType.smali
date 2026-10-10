###### Class in.dragonbra.javasteam.enums.EGamingDeviceType (in.dragonbra.javasteam.enums.EGamingDeviceType)
.class public final enum Lin/dragonbra/javasteam/enums/EGamingDeviceType;
.super Ljava/lang/Enum;
.source "EGamingDeviceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/enums/EGamingDeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/enums/EGamingDeviceType;

.field public static final enum Console:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

.field public static final enum ConsoleLegacy:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

.field public static final enum Fremont:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

.field public static final enum Handheld_Legacy:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

.field public static final enum LegionGoS:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

.field public static final enum PS3:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

.field public static final enum Phone:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

.field public static final enum StandardPC:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

.field public static final enum SteamDeck:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

.field public static final enum SteamFrame:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

.field public static final enum SteamOSGeneric:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

.field public static final enum Steambox:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

.field public static final enum Tesla:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

.field public static final enum Unknown:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

.field public static final enum VR:Lin/dragonbra/javasteam/enums/EGamingDeviceType;


# instance fields
.field private final code:I


# direct methods
.method private static synthetic $values()[Lin/dragonbra/javasteam/enums/EGamingDeviceType;
    .registers 15

    .line 4
    sget-object v0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->Unknown:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    sget-object v1, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->StandardPC:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    sget-object v2, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->ConsoleLegacy:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    sget-object v3, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->PS3:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    sget-object v4, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->Steambox:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    sget-object v5, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->Tesla:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    sget-object v6, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->Handheld_Legacy:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    sget-object v7, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->Phone:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    sget-object v8, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->Console:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    sget-object v9, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->SteamOSGeneric:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    sget-object v10, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->SteamDeck:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    sget-object v11, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->LegionGoS:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    sget-object v12, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->Fremont:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    sget-object v13, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->VR:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    sget-object v14, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->SteamFrame:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    filled-new-array/range {v0 .. v14}, [Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 6
    new-instance v0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EGamingDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->Unknown:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    .line 8
    new-instance v0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    const-string v1, "StandardPC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EGamingDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->StandardPC:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    .line 10
    new-instance v0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    const/4 v1, 0x2

    const/16 v2, 0x100

    const-string v3, "ConsoleLegacy"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/enums/EGamingDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->ConsoleLegacy:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    .line 12
    new-instance v0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    const/4 v1, 0x3

    const/16 v2, 0x111

    const-string v3, "PS3"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/enums/EGamingDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->PS3:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    .line 14
    new-instance v0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    const/4 v1, 0x4

    const/16 v2, 0x120

    const-string v3, "Steambox"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/enums/EGamingDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->Steambox:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    .line 16
    new-instance v0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    const/4 v1, 0x5

    const/16 v2, 0x140

    const-string v3, "Tesla"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/enums/EGamingDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->Tesla:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    .line 18
    new-instance v0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    const/4 v1, 0x6

    const/16 v2, 0x200

    const-string v3, "Handheld_Legacy"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/enums/EGamingDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->Handheld_Legacy:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    .line 20
    new-instance v0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    const/4 v1, 0x7

    const/16 v2, 0x210

    const-string v3, "Phone"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/enums/EGamingDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->Phone:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    .line 22
    new-instance v0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    const/16 v1, 0x8

    const/16 v2, 0x21c

    const-string v3, "Console"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/enums/EGamingDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->Console:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    .line 24
    new-instance v0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    const/16 v1, 0x9

    const/16 v2, 0x21d

    const-string v3, "SteamOSGeneric"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/enums/EGamingDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->SteamOSGeneric:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    .line 26
    new-instance v0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    const/16 v1, 0xa

    const/16 v2, 0x220

    const-string v3, "SteamDeck"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/enums/EGamingDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->SteamDeck:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    .line 28
    new-instance v0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    const/16 v1, 0xb

    const/16 v2, 0x221

    const-string v3, "LegionGoS"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/enums/EGamingDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->LegionGoS:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    .line 30
    new-instance v0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    const/16 v1, 0xc

    const/16 v2, 0x222

    const-string v3, "Fremont"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/enums/EGamingDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->Fremont:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    .line 32
    new-instance v0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    const/16 v1, 0xd

    const/16 v2, 0x300

    const-string v3, "VR"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/enums/EGamingDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->VR:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    .line 34
    new-instance v0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    const/16 v1, 0xe

    const/16 v2, 0x301

    const-string v3, "SteamFrame"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/enums/EGamingDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->SteamFrame:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    .line 4
    invoke-static {}, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->$values()[Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->$VALUES:[Lin/dragonbra/javasteam/enums/EGamingDeviceType;

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

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->code:I

    return-void
.end method

.method public static from(I)Lin/dragonbra/javasteam/enums/EGamingDeviceType;
    .registers 6

    .line 49
    invoke-static {}, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->values()[Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 50
    iget v4, v3, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->code:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/enums/EGamingDeviceType;
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
    const-class v0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/enums/EGamingDeviceType;
    .registers 1

    .line 4
    sget-object v0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->$VALUES:[Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    invoke-virtual {v0}, [Lin/dragonbra/javasteam/enums/EGamingDeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    return-object v0
.end method


# virtual methods
.method public code()I
    .registers 1

    .line 45
    iget p0, p0, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->code:I

    return p0
.end method
