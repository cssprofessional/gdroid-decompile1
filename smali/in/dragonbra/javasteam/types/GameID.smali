###### Class in.dragonbra.javasteam.types.GameID (in.dragonbra.javasteam.types.GameID)
.class public final Lin/dragonbra/javasteam/types/GameID;
.super Ljava/lang/Object;
.source "GameID.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/types/GameID$GameType;
    }
.end annotation


# instance fields
.field private final gameId:Lin/dragonbra/javasteam/types/BitVector64;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lin/dragonbra/javasteam/types/GameID;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    int-to-long v0, p1

    .line 20
    invoke-direct {p0, v0, v1}, Lin/dragonbra/javasteam/types/GameID;-><init>(J)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    const-string v0, "modPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/types/GameID;-><init>(I)V

    .line 28
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/types/GameID;->setAppID(I)V

    .line 29
    sget-object p1, Lin/dragonbra/javasteam/types/GameID$GameType;->GAME_MOD:Lin/dragonbra/javasteam/types/GameID$GameType;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/types/GameID;->setAppType(Lin/dragonbra/javasteam/types/GameID$GameType;)V

    .line 30
    invoke-static {p2}, Lin/dragonbra/javasteam/util/Utils;->crc32(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/types/GameID;->setModID(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lin/dragonbra/javasteam/types/BitVector64;

    invoke-direct {v0, p1, p2}, Lin/dragonbra/javasteam/types/BitVector64;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/types/GameID;->gameId:Lin/dragonbra/javasteam/types/BitVector64;

    return-void
.end method

.method public synthetic constructor <init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_6

    const-wide/16 p1, 0x0

    .line 12
    :cond_6
    invoke-direct {p0, p1, p2}, Lin/dragonbra/javasteam/types/GameID;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/types/GameID;-><init>(I)V

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_e

    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    if-eqz p2, :cond_13

    .line 44
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    :cond_13
    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/types/GameID;->setAppID(I)V

    .line 48
    sget-object p1, Lin/dragonbra/javasteam/types/GameID$GameType;->SHORTCUT:Lin/dragonbra/javasteam/types/GameID$GameType;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/types/GameID;->setAppType(Lin/dragonbra/javasteam/types/GameID$GameType;)V

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lin/dragonbra/javasteam/util/Utils;->crc32(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/types/GameID;->setModID(J)V

    return-void
.end method


# virtual methods
.method public final convertToUInt64()J
    .registers 3

    .line 134
    iget-object p0, p0, Lin/dragonbra/javasteam/types/GameID;->gameId:Lin/dragonbra/javasteam/types/BitVector64;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/BitVector64;->getData()J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 143
    :cond_4
    instance-of v1, p1, Lin/dragonbra/javasteam/types/GameID;

    if-nez v1, :cond_9

    return v0

    .line 144
    :cond_9
    iget-object p0, p0, Lin/dragonbra/javasteam/types/GameID;->gameId:Lin/dragonbra/javasteam/types/BitVector64;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/BitVector64;->getData()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    check-cast p1, Lin/dragonbra/javasteam/types/GameID;

    iget-object p1, p1, Lin/dragonbra/javasteam/types/GameID;->gameId:Lin/dragonbra/javasteam/types/BitVector64;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/BitVector64;->getData()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lin/dragonbra/javasteam/util/compat/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getAppID()I
    .registers 4

    .line 70
    iget-object p0, p0, Lin/dragonbra/javasteam/types/GameID;->gameId:Lin/dragonbra/javasteam/types/BitVector64;

    const/4 v0, 0x0

    const-wide/32 v1, 0xffffff

    invoke-virtual {p0, v0, v1, v2}, Lin/dragonbra/javasteam/types/BitVector64;->getMask(IJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public final getAppType()Lin/dragonbra/javasteam/types/GameID$GameType;
    .registers 5

    .line 79
    sget-object v0, Lin/dragonbra/javasteam/types/GameID$GameType;->Companion:Lin/dragonbra/javasteam/types/GameID$GameType$Companion;

    iget-object p0, p0, Lin/dragonbra/javasteam/types/GameID;->gameId:Lin/dragonbra/javasteam/types/BitVector64;

    const/16 v1, 0x18

    const-wide/16 v2, 0xff

    invoke-virtual {p0, v1, v2, v3}, Lin/dragonbra/javasteam/types/BitVector64;->getMask(IJ)J

    move-result-wide v1

    long-to-int p0, v1

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/types/GameID$GameType$Companion;->from(I)Lin/dragonbra/javasteam/types/GameID$GameType;

    move-result-object p0

    return-object p0
.end method

.method public final getModID()J
    .registers 4

    .line 88
    iget-object p0, p0, Lin/dragonbra/javasteam/types/GameID;->gameId:Lin/dragonbra/javasteam/types/BitVector64;

    const/16 v0, 0x20

    const-wide v1, 0xffffffffL

    invoke-virtual {p0, v0, v1, v2}, Lin/dragonbra/javasteam/types/BitVector64;->getMask(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .registers 3

    .line 151
    iget-object p0, p0, Lin/dragonbra/javasteam/types/GameID;->gameId:Lin/dragonbra/javasteam/types/BitVector64;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/BitVector64;->getData()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public final isMod()Z
    .registers 2

    .line 99
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/GameID;->getAppType()Lin/dragonbra/javasteam/types/GameID$GameType;

    move-result-object p0

    sget-object v0, Lin/dragonbra/javasteam/types/GameID$GameType;->GAME_MOD:Lin/dragonbra/javasteam/types/GameID$GameType;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isP2PFile()Z
    .registers 2

    .line 113
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/GameID;->getAppType()Lin/dragonbra/javasteam/types/GameID$GameType;

    move-result-object p0

    sget-object v0, Lin/dragonbra/javasteam/types/GameID$GameType;->P2P:Lin/dragonbra/javasteam/types/GameID$GameType;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isShortcut()Z
    .registers 2

    .line 106
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/GameID;->getAppType()Lin/dragonbra/javasteam/types/GameID$GameType;

    move-result-object p0

    sget-object v0, Lin/dragonbra/javasteam/types/GameID$GameType;->SHORTCUT:Lin/dragonbra/javasteam/types/GameID$GameType;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isSteamApp()Z
    .registers 2

    .line 120
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/GameID;->getAppType()Lin/dragonbra/javasteam/types/GameID$GameType;

    move-result-object p0

    sget-object v0, Lin/dragonbra/javasteam/types/GameID$GameType;->APP:Lin/dragonbra/javasteam/types/GameID$GameType;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final set(J)V
    .registers 3

    .line 57
    iget-object p0, p0, Lin/dragonbra/javasteam/types/GameID;->gameId:Lin/dragonbra/javasteam/types/BitVector64;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/types/BitVector64;->setData(J)V

    return-void
.end method

.method public final setAppID(I)V
    .registers 8

    .line 72
    iget-object v0, p0, Lin/dragonbra/javasteam/types/GameID;->gameId:Lin/dragonbra/javasteam/types/BitVector64;

    const-wide/32 v2, 0xffffff

    int-to-long v4, p1

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Lin/dragonbra/javasteam/types/BitVector64;->setMask(IJJ)V

    return-void
.end method

.method public final setAppType(Lin/dragonbra/javasteam/types/GameID$GameType;)V
    .registers 8

    .line 81
    iget-object v0, p0, Lin/dragonbra/javasteam/types/GameID;->gameId:Lin/dragonbra/javasteam/types/BitVector64;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/GameID$GameType;->getCode()I

    move-result p0

    int-to-long v4, p0

    const/16 v1, 0x18

    const-wide/16 v2, 0xff

    invoke-virtual/range {v0 .. v5}, Lin/dragonbra/javasteam/types/BitVector64;->setMask(IJJ)V

    return-void
.end method

.method public final setFromUInt64(J)V
    .registers 3

    .line 127
    iget-object p0, p0, Lin/dragonbra/javasteam/types/GameID;->gameId:Lin/dragonbra/javasteam/types/BitVector64;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/types/BitVector64;->setData(J)V

    return-void
.end method

.method public final setModID(J)V
    .registers 13

    .line 90
    iget-object v0, p0, Lin/dragonbra/javasteam/types/GameID;->gameId:Lin/dragonbra/javasteam/types/BitVector64;

    const/16 v1, 0x20

    const-wide v2, 0xffffffffL

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lin/dragonbra/javasteam/types/BitVector64;->setMask(IJJ)V

    .line 91
    iget-object v4, p0, Lin/dragonbra/javasteam/types/GameID;->gameId:Lin/dragonbra/javasteam/types/BitVector64;

    const-wide/16 v6, 0xff

    const-wide/16 v8, 0x1

    const/16 v5, 0x3f

    invoke-virtual/range {v4 .. v9}, Lin/dragonbra/javasteam/types/BitVector64;->setMask(IJJ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 157
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/GameID;->toUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toUInt64()J
    .registers 3

    .line 64
    iget-object p0, p0, Lin/dragonbra/javasteam/types/GameID;->gameId:Lin/dragonbra/javasteam/types/BitVector64;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/BitVector64;->getData()J

    move-result-wide v0

    return-wide v0
.end method

###### Class in.dragonbra.javasteam.types.GameID.GameType (in.dragonbra.javasteam.types.GameID$GameType)
.class public final enum Lin/dragonbra/javasteam/types/GameID$GameType;
.super Ljava/lang/Enum;
.source "GameID.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/types/GameID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GameType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/types/GameID$GameType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/types/GameID$GameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/types/GameID$GameType;

.field public static final enum APP:Lin/dragonbra/javasteam/types/GameID$GameType;

.field public static final Companion:Lin/dragonbra/javasteam/types/GameID$GameType$Companion;

.field public static final enum GAME_MOD:Lin/dragonbra/javasteam/types/GameID$GameType;

.field public static final enum P2P:Lin/dragonbra/javasteam/types/GameID$GameType;

.field public static final enum SHORTCUT:Lin/dragonbra/javasteam/types/GameID$GameType;


# instance fields
.field private final code:I


# direct methods
.method private static final synthetic $values()[Lin/dragonbra/javasteam/types/GameID$GameType;
    .registers 4

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/types/GameID$GameType;->APP:Lin/dragonbra/javasteam/types/GameID$GameType;

    sget-object v1, Lin/dragonbra/javasteam/types/GameID$GameType;->GAME_MOD:Lin/dragonbra/javasteam/types/GameID$GameType;

    sget-object v2, Lin/dragonbra/javasteam/types/GameID$GameType;->SHORTCUT:Lin/dragonbra/javasteam/types/GameID$GameType;

    sget-object v3, Lin/dragonbra/javasteam/types/GameID$GameType;->P2P:Lin/dragonbra/javasteam/types/GameID$GameType;

    filled-new-array {v0, v1, v2, v3}, [Lin/dragonbra/javasteam/types/GameID$GameType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 166
    new-instance v0, Lin/dragonbra/javasteam/types/GameID$GameType;

    const-string v1, "APP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/types/GameID$GameType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/types/GameID$GameType;->APP:Lin/dragonbra/javasteam/types/GameID$GameType;

    .line 171
    new-instance v0, Lin/dragonbra/javasteam/types/GameID$GameType;

    const-string v1, "GAME_MOD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/types/GameID$GameType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/types/GameID$GameType;->GAME_MOD:Lin/dragonbra/javasteam/types/GameID$GameType;

    .line 176
    new-instance v0, Lin/dragonbra/javasteam/types/GameID$GameType;

    const-string v1, "SHORTCUT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/types/GameID$GameType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/types/GameID$GameType;->SHORTCUT:Lin/dragonbra/javasteam/types/GameID$GameType;

    .line 181
    new-instance v0, Lin/dragonbra/javasteam/types/GameID$GameType;

    const-string v1, "P2P"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/types/GameID$GameType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/types/GameID$GameType;->P2P:Lin/dragonbra/javasteam/types/GameID$GameType;

    invoke-static {}, Lin/dragonbra/javasteam/types/GameID$GameType;->$values()[Lin/dragonbra/javasteam/types/GameID$GameType;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/types/GameID$GameType;->$VALUES:[Lin/dragonbra/javasteam/types/GameID$GameType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/types/GameID$GameType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lin/dragonbra/javasteam/types/GameID$GameType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/types/GameID$GameType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/types/GameID$GameType;->Companion:Lin/dragonbra/javasteam/types/GameID$GameType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lin/dragonbra/javasteam/types/GameID$GameType;->code:I

    return-void
.end method

.method public static final from(I)Lin/dragonbra/javasteam/types/GameID$GameType;
    .registers 2

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/types/GameID$GameType;->Companion:Lin/dragonbra/javasteam/types/GameID$GameType$Companion;

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/types/GameID$GameType$Companion;->from(I)Lin/dragonbra/javasteam/types/GameID$GameType;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lin/dragonbra/javasteam/types/GameID$GameType;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/types/GameID$GameType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/types/GameID$GameType;
    .registers 2

    .line 0
    const-class v0, Lin/dragonbra/javasteam/types/GameID$GameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/types/GameID$GameType;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/types/GameID$GameType;
    .registers 1

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/types/GameID$GameType;->$VALUES:[Lin/dragonbra/javasteam/types/GameID$GameType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/types/GameID$GameType;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .registers 1

    .line 162
    iget p0, p0, Lin/dragonbra/javasteam/types/GameID$GameType;->code:I

    return p0
.end method

###### Class in.dragonbra.javasteam.types.GameID.GameType.Companion (in.dragonbra.javasteam.types.GameID$GameType$Companion)
.class public final Lin/dragonbra/javasteam/types/GameID$GameType$Companion;
.super Ljava/lang/Object;
.source "GameID.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/types/GameID$GameType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGameID.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameID.kt\nin/dragonbra/javasteam/types/GameID$GameType$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,190:1\n1#2:191\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/types/GameID$GameType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(I)Lin/dragonbra/javasteam/types/GameID$GameType;
    .registers 4

    .line 186
    invoke-static {}, Lin/dragonbra/javasteam/types/GameID$GameType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lin/dragonbra/javasteam/types/GameID$GameType;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/types/GameID$GameType;->getCode()I

    move-result v1

    if-ne v1, p1, :cond_8

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    check-cast v0, Lin/dragonbra/javasteam/types/GameID$GameType;

    return-object v0
.end method
