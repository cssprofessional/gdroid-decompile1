###### Class in.dragonbra.javasteam.steam.handlers.steamclientcommunication.InstalledAppsFilter (in.dragonbra.javasteam.steam.handlers.steamclientcommunication.InstalledAppsFilter)
.class public final enum Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;
.super Ljava/lang/Enum;
.source "InstalledAppsFilter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;

.field public static final enum Changing:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;

.field public static final enum None:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;


# direct methods
.method private static final synthetic $values()[Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;
    .registers 2

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;->None:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;

    sget-object v1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;->Changing:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;

    filled-new-array {v0, v1}, [Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 10
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;->None:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;

    .line 15
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;

    const-string v1, "Changing"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;->Changing:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;

    invoke-static {}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;->$values()[Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;->$VALUES:[Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;
    .registers 2

    .line 0
    const-class v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;
    .registers 1

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;->$VALUES:[Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/InstalledAppsFilter;

    return-object v0
.end method
