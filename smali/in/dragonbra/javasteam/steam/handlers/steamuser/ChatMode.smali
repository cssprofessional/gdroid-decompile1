###### Class in.dragonbra.javasteam.steam.handlers.steamuser.ChatMode (in.dragonbra.javasteam.steam.handlers.steamuser.ChatMode)
.class public final enum Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;
.super Ljava/lang/Enum;
.source "ChatMode.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;

.field public static final enum DEFAULT:Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;

.field public static final enum NEW_STEAM_CHAT:Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;


# instance fields
.field private final mode:I


# direct methods
.method private static final synthetic $values()[Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;
    .registers 2

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;->DEFAULT:Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;

    sget-object v1, Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;->NEW_STEAM_CHAT:Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;

    filled-new-array {v0, v1}, [Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 11
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;->DEFAULT:Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;

    .line 16
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const-string v3, "NEW_STEAM_CHAT"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;->NEW_STEAM_CHAT:Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;

    invoke-static {}, Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;->$values()[Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;->$VALUES:[Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    iput p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;->mode:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;
    .registers 2

    .line 0
    const-class v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;
    .registers 1

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;->$VALUES:[Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;

    return-object v0
.end method


# virtual methods
.method public final getMode()I
    .registers 1

    .line 7
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;->mode:I

    return p0
.end method
