###### Class in.dragonbra.javasteam.types.SteamID (in.dragonbra.javasteam.types.SteamID)
.class public final Lin/dragonbra/javasteam/types/SteamID;
.super Ljava/lang/Object;
.source "SteamID.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;,
        Lin/dragonbra/javasteam/types/SteamID$Companion;,
        Lin/dragonbra/javasteam/types/SteamID$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSteamID.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SteamID.kt\nin/dragonbra/javasteam/types/SteamID\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,561:1\n1#2:562\n*E\n"
.end annotation


# static fields
.field public static final ACCOUNT_ID_MASK:J = 0xffffffffL

.field public static final ACCOUNT_INSTANCE_MASK:J = 0xfffffL

.field private static final ACCOUNT_TYPE_CHARS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lin/dragonbra/javasteam/enums/EAccountType;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static final ALL_INSTANCES:J = 0x0L

.field public static final CONSOLE_INSTANCE:J = 0x2L

.field public static final Companion:Lin/dragonbra/javasteam/types/SteamID$Companion;

.field public static final DESKTOP_INSTANCE:J = 0x1L

.field private static final STEAM2_REGEX:Ljava/util/regex/Pattern;

.field private static final STEAM3_FALLBACK_REGEX:Ljava/util/regex/Pattern;

.field private static final STEAM3_REGEX:Ljava/util/regex/Pattern;

.field public static final UNKNOWN_ACCOUNT_TYPE_CHAR:C = 'i'

.field public static final WEB_INSTANCE:J = 0x4L


# instance fields
.field private final steamID:Lin/dragonbra/javasteam/types/BitVector64;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    new-instance v0, Lin/dragonbra/javasteam/types/SteamID$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/types/SteamID$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/types/SteamID;->Companion:Lin/dragonbra/javasteam/types/SteamID$Companion;

    .line 20
    const-string v0, "STEAM_([0-4]):([0-1]):(\\d+)"

    const/4 v1, 0x2

    .line 19
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/types/SteamID;->STEAM2_REGEX:Ljava/util/regex/Pattern;

    .line 25
    const-string v0, "\\[([AGMPCgcLTIUai]):([0-4]):(\\d+)(:(\\d+))?]"

    .line 24
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/types/SteamID;->STEAM3_REGEX:Ljava/util/regex/Pattern;

    .line 29
    const-string v0, "\\[([AGMPCgcLTIUai]):([0-4]):(\\d+)(\\((\\d+)\\))?]"

    .line 28
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/types/SteamID;->STEAM3_FALLBACK_REGEX:Ljava/util/regex/Pattern;

    .line 33
    sget-object v0, Lin/dragonbra/javasteam/enums/EAccountType;->AnonGameServer:Lin/dragonbra/javasteam/enums/EAccountType;

    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 34
    sget-object v0, Lin/dragonbra/javasteam/enums/EAccountType;->GameServer:Lin/dragonbra/javasteam/enums/EAccountType;

    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 35
    sget-object v0, Lin/dragonbra/javasteam/enums/EAccountType;->Multiseat:Lin/dragonbra/javasteam/enums/EAccountType;

    const/16 v1, 0x4d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 36
    sget-object v0, Lin/dragonbra/javasteam/enums/EAccountType;->Pending:Lin/dragonbra/javasteam/enums/EAccountType;

    const/16 v1, 0x50

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 37
    sget-object v0, Lin/dragonbra/javasteam/enums/EAccountType;->ContentServer:Lin/dragonbra/javasteam/enums/EAccountType;

    const/16 v1, 0x43

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 38
    sget-object v0, Lin/dragonbra/javasteam/enums/EAccountType;->Clan:Lin/dragonbra/javasteam/enums/EAccountType;

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 39
    sget-object v0, Lin/dragonbra/javasteam/enums/EAccountType;->Chat:Lin/dragonbra/javasteam/enums/EAccountType;

    const/16 v1, 0x54

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    .line 40
    sget-object v0, Lin/dragonbra/javasteam/enums/EAccountType;->Invalid:Lin/dragonbra/javasteam/enums/EAccountType;

    const/16 v1, 0x49

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    .line 41
    sget-object v0, Lin/dragonbra/javasteam/enums/EAccountType;->Individual:Lin/dragonbra/javasteam/enums/EAccountType;

    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    .line 42
    sget-object v0, Lin/dragonbra/javasteam/enums/EAccountType;->AnonUser:Lin/dragonbra/javasteam/enums/EAccountType;

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    filled-new-array/range {v2 .. v11}, [Lkotlin/Pair;

    move-result-object v0

    .line 32
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/types/SteamID;->ACCOUNT_TYPE_CHARS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 83
    invoke-direct {p0, v0, v1}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 4

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lin/dragonbra/javasteam/types/BitVector64;

    invoke-direct {v0, p1, p2}, Lin/dragonbra/javasteam/types/BitVector64;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/types/SteamID;->steamID:Lin/dragonbra/javasteam/types/BitVector64;

    return-void
.end method

.method public constructor <init>(JJLin/dragonbra/javasteam/enums/EUniverse;Lin/dragonbra/javasteam/enums/EAccountType;)V
    .registers 8

    const-string v0, "eUniverse"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lin/dragonbra/javasteam/types/SteamID;-><init>()V

    .line 111
    invoke-virtual/range {p0 .. p6}, Lin/dragonbra/javasteam/types/SteamID;->instancedSet(JJLin/dragonbra/javasteam/enums/EUniverse;Lin/dragonbra/javasteam/enums/EAccountType;)V

    return-void
.end method

.method public constructor <init>(JLin/dragonbra/javasteam/enums/EUniverse;Lin/dragonbra/javasteam/enums/EAccountType;)V
    .registers 6

    const-string v0, "eUniverse"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lin/dragonbra/javasteam/types/SteamID;-><init>()V

    .line 100
    invoke-virtual {p0, p1, p2, p3, p4}, Lin/dragonbra/javasteam/types/SteamID;->set(JLin/dragonbra/javasteam/enums/EUniverse;Lin/dragonbra/javasteam/enums/EAccountType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 0
    const-string v0, "steamId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lin/dragonbra/javasteam/types/SteamID;-><init>(Ljava/lang/String;Lin/dragonbra/javasteam/enums/EUniverse;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lin/dragonbra/javasteam/enums/EUniverse;)V
    .registers 4

    const-string v0, "steamId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eUniverse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-direct {p0}, Lin/dragonbra/javasteam/types/SteamID;-><init>()V

    .line 121
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/types/SteamID;->setFromString(Ljava/lang/String;Lin/dragonbra/javasteam/enums/EUniverse;)Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lin/dragonbra/javasteam/enums/EUniverse;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    .line 120
    sget-object p2, Lin/dragonbra/javasteam/enums/EUniverse;->Public:Lin/dragonbra/javasteam/enums/EUniverse;

    :cond_6
    invoke-direct {p0, p1, p2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(Ljava/lang/String;Lin/dragonbra/javasteam/enums/EUniverse;)V

    return-void
.end method

.method public static synthetic render$default(Lin/dragonbra/javasteam/types/SteamID;ZILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_5

    move p1, p3

    .line 440
    :cond_5
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/types/SteamID;->render(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final renderSteam2()Ljava/lang/String;
    .registers 7

    .line 472
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountType()Lin/dragonbra/javasteam/enums/EAccountType;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    goto :goto_10

    :cond_8
    sget-object v1, Lin/dragonbra/javasteam/types/SteamID$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_10
    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    const/4 v2, 0x2

    if-eq v0, v2, :cond_21

    .line 483
    iget-object p0, p0, Lin/dragonbra/javasteam/types/SteamID;->steamID:Lin/dragonbra/javasteam/types/BitVector64;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/BitVector64;->getData()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 474
    :cond_21
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountUniverse()Lin/dragonbra/javasteam/enums/EUniverse;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/enums/EUniverse;->code()I

    move-result v0

    sget-object v2, Lin/dragonbra/javasteam/enums/EUniverse;->Public:Lin/dragonbra/javasteam/enums/EUniverse;

    invoke-virtual {v2}, Lin/dragonbra/javasteam/enums/EUniverse;->code()I

    move-result v2

    if-gt v0, v2, :cond_34

    .line 475
    const-string v0, "0"

    goto :goto_40

    .line 477
    :cond_34
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountUniverse()Lin/dragonbra/javasteam/enums/EUniverse;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/enums/EUniverse;->code()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 480
    :goto_40
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountID()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountID()J

    move-result-wide v4

    shr-long/2addr v4, v1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STEAM_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final renderSteam3()Ljava/lang/String;
    .registers 11

    .line 488
    sget-object v0, Lin/dragonbra/javasteam/types/SteamID;->ACCOUNT_TYPE_CHARS:Ljava/util/Map;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountType()Lin/dragonbra/javasteam/enums/EAccountType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    goto :goto_15

    :cond_13
    const/16 v0, 0x69

    .line 490
    :goto_15
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountType()Lin/dragonbra/javasteam/enums/EAccountType;

    move-result-object v1

    sget-object v2, Lin/dragonbra/javasteam/enums/EAccountType;->Chat:Lin/dragonbra/javasteam/enums/EAccountType;

    if-ne v1, v2, :cond_3a

    .line 492
    sget-object v1, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;->CLAN:Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountInstance()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;->hasFlag(J)Z

    move-result v1

    if-eqz v1, :cond_2c

    const/16 v0, 0x63

    goto :goto_3a

    .line 493
    :cond_2c
    sget-object v1, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;->LOBBY:Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountInstance()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;->hasFlag(J)Z

    move-result v1

    if-eqz v1, :cond_3a

    const/16 v0, 0x4c

    .line 497
    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountType()Lin/dragonbra/javasteam/enums/EAccountType;

    move-result-object v1

    if-nez v1, :cond_42

    const/4 v1, -0x1

    goto :goto_4a

    :cond_42
    sget-object v2, Lin/dragonbra/javasteam/types/SteamID$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    :goto_4a
    const/4 v2, 0x2

    const-string v3, "]"

    const-string v4, "["

    const-string v5, ":"

    if-eq v1, v2, :cond_5a

    const/4 v2, 0x3

    if-eq v1, v2, :cond_64

    const/4 v2, 0x4

    if-eq v1, v2, :cond_64

    goto :goto_99

    .line 499
    :cond_5a
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountInstance()J

    move-result-wide v1

    const-wide/16 v6, 0x1

    cmp-long v1, v1, v6

    if-eqz v1, :cond_99

    .line 504
    :cond_64
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountUniverse()Lin/dragonbra/javasteam/enums/EUniverse;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountID()J

    move-result-wide v6

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountInstance()J

    move-result-wide v8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_c3

    .line 506
    :cond_99
    :goto_99
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountUniverse()Lin/dragonbra/javasteam/enums/EUniverse;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountID()J

    move-result-wide v6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_c3
    return-object p0
.end method


# virtual methods
.method public final convertToUInt64()J
    .registers 3

    .line 272
    iget-object p0, p0, Lin/dragonbra/javasteam/types/SteamID;->steamID:Lin/dragonbra/javasteam/types/BitVector64;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/BitVector64;->getData()J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 522
    instance-of v0, p1, Lin/dragonbra/javasteam/types/SteamID;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 523
    :cond_6
    iget-object p0, p0, Lin/dragonbra/javasteam/types/SteamID;->steamID:Lin/dragonbra/javasteam/types/BitVector64;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/BitVector64;->getData()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    check-cast p1, Lin/dragonbra/javasteam/types/SteamID;

    iget-object p1, p1, Lin/dragonbra/javasteam/types/SteamID;->steamID:Lin/dragonbra/javasteam/types/BitVector64;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/BitVector64;->getData()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lin/dragonbra/javasteam/util/compat/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getAccountID()J
    .registers 4

    .line 398
    iget-object p0, p0, Lin/dragonbra/javasteam/types/SteamID;->steamID:Lin/dragonbra/javasteam/types/BitVector64;

    const/4 v0, 0x0

    const-wide v1, 0xffffffffL

    invoke-virtual {p0, v0, v1, v2}, Lin/dragonbra/javasteam/types/BitVector64;->getMask(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAccountInstance()J
    .registers 4

    .line 407
    iget-object p0, p0, Lin/dragonbra/javasteam/types/SteamID;->steamID:Lin/dragonbra/javasteam/types/BitVector64;

    const/16 v0, 0x20

    const-wide/32 v1, 0xfffff

    invoke-virtual {p0, v0, v1, v2}, Lin/dragonbra/javasteam/types/BitVector64;->getMask(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAccountType()Lin/dragonbra/javasteam/enums/EAccountType;
    .registers 4

    .line 416
    iget-object p0, p0, Lin/dragonbra/javasteam/types/SteamID;->steamID:Lin/dragonbra/javasteam/types/BitVector64;

    const/16 v0, 0x34

    const-wide/16 v1, 0xf

    invoke-virtual {p0, v0, v1, v2}, Lin/dragonbra/javasteam/types/BitVector64;->getMask(IJ)J

    move-result-wide v0

    long-to-int p0, v0

    invoke-static {p0}, Lin/dragonbra/javasteam/enums/EAccountType;->from(I)Lin/dragonbra/javasteam/enums/EAccountType;

    move-result-object p0

    if-nez p0, :cond_13

    sget-object p0, Lin/dragonbra/javasteam/enums/EAccountType;->Invalid:Lin/dragonbra/javasteam/enums/EAccountType;

    :cond_13
    return-object p0
.end method

.method public final getAccountUniverse()Lin/dragonbra/javasteam/enums/EUniverse;
    .registers 4

    .line 429
    iget-object p0, p0, Lin/dragonbra/javasteam/types/SteamID;->steamID:Lin/dragonbra/javasteam/types/BitVector64;

    const/16 v0, 0x38

    const-wide/16 v1, 0xff

    invoke-virtual {p0, v0, v1, v2}, Lin/dragonbra/javasteam/types/BitVector64;->getMask(IJ)J

    move-result-wide v0

    long-to-int p0, v0

    invoke-static {p0}, Lin/dragonbra/javasteam/enums/EUniverse;->from(I)Lin/dragonbra/javasteam/enums/EUniverse;

    move-result-object p0

    if-nez p0, :cond_13

    sget-object p0, Lin/dragonbra/javasteam/enums/EUniverse;->Invalid:Lin/dragonbra/javasteam/enums/EUniverse;

    :cond_13
    return-object p0
.end method

.method public final getStaticAccountKey()J
    .registers 6

    .line 279
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountUniverse()Lin/dragonbra/javasteam/enums/EUniverse;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/enums/EUniverse;->code()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountType()Lin/dragonbra/javasteam/enums/EAccountType;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lin/dragonbra/javasteam/enums/EAccountType;->code()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x34

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountID()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public hashCode()I
    .registers 3

    .line 530
    iget-object p0, p0, Lin/dragonbra/javasteam/types/SteamID;->steamID:Lin/dragonbra/javasteam/types/BitVector64;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/BitVector64;->getData()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public final instancedSet(JJLin/dragonbra/javasteam/enums/EUniverse;Lin/dragonbra/javasteam/enums/EAccountType;)V
    .registers 8

    const-string v0, "eUniverse"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/types/SteamID;->setAccountID(J)V

    .line 151
    invoke-virtual {p0, p5}, Lin/dragonbra/javasteam/types/SteamID;->setAccountUniverse(Lin/dragonbra/javasteam/enums/EUniverse;)V

    .line 152
    invoke-virtual {p0, p6}, Lin/dragonbra/javasteam/types/SteamID;->setAccountType(Lin/dragonbra/javasteam/enums/EAccountType;)V

    .line 153
    invoke-virtual {p0, p3, p4}, Lin/dragonbra/javasteam/types/SteamID;->setAccountInstance(J)V

    return-void
.end method

.method public final isAnonAccount()Z
    .registers 3

    .line 349
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountType()Lin/dragonbra/javasteam/enums/EAccountType;

    move-result-object v0

    sget-object v1, Lin/dragonbra/javasteam/enums/EAccountType;->AnonUser:Lin/dragonbra/javasteam/enums/EAccountType;

    if-eq v0, v1, :cond_13

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountType()Lin/dragonbra/javasteam/enums/EAccountType;

    move-result-object p0

    sget-object v0, Lin/dragonbra/javasteam/enums/EAccountType;->AnonGameServer:Lin/dragonbra/javasteam/enums/EAccountType;

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public final isAnonGameServerAccount()Z
    .registers 2

    .line 307
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountType()Lin/dragonbra/javasteam/enums/EAccountType;

    move-result-object p0

    sget-object v0, Lin/dragonbra/javasteam/enums/EAccountType;->AnonGameServer:Lin/dragonbra/javasteam/enums/EAccountType;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isAnonUserAccount()Z
    .registers 2

    .line 356
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountType()Lin/dragonbra/javasteam/enums/EAccountType;

    move-result-object p0

    sget-object v0, Lin/dragonbra/javasteam/enums/EAccountType;->AnonUser:Lin/dragonbra/javasteam/enums/EAccountType;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isBlankAnonAccount()Z
    .registers 5

    .line 286
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountID()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->isAnonAccount()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountInstance()J

    move-result-wide v0

    cmp-long p0, v0, v2

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public final isChatAccount()Z
    .registers 2

    .line 328
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountType()Lin/dragonbra/javasteam/enums/EAccountType;

    move-result-object p0

    sget-object v0, Lin/dragonbra/javasteam/enums/EAccountType;->Chat:Lin/dragonbra/javasteam/enums/EAccountType;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isClanAccount()Z
    .registers 2

    .line 321
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountType()Lin/dragonbra/javasteam/enums/EAccountType;

    move-result-object p0

    sget-object v0, Lin/dragonbra/javasteam/enums/EAccountType;->Clan:Lin/dragonbra/javasteam/enums/EAccountType;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isConsoleUserAccount()Z
    .registers 2

    .line 363
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountType()Lin/dragonbra/javasteam/enums/EAccountType;

    move-result-object p0

    sget-object v0, Lin/dragonbra/javasteam/enums/EAccountType;->ConsoleUser:Lin/dragonbra/javasteam/enums/EAccountType;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isContentServerAccount()Z
    .registers 2

    .line 314
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountType()Lin/dragonbra/javasteam/enums/EAccountType;

    move-result-object p0

    sget-object v0, Lin/dragonbra/javasteam/enums/EAccountType;->ContentServer:Lin/dragonbra/javasteam/enums/EAccountType;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isGameServerAccount()Z
    .registers 3

    .line 293
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountType()Lin/dragonbra/javasteam/enums/EAccountType;

    move-result-object v0

    sget-object v1, Lin/dragonbra/javasteam/enums/EAccountType;->GameServer:Lin/dragonbra/javasteam/enums/EAccountType;

    if-eq v0, v1, :cond_13

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountType()Lin/dragonbra/javasteam/enums/EAccountType;

    move-result-object p0

    sget-object v0, Lin/dragonbra/javasteam/enums/EAccountType;->AnonGameServer:Lin/dragonbra/javasteam/enums/EAccountType;

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public final isIndividualAccount()Z
    .registers 3

    .line 342
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountType()Lin/dragonbra/javasteam/enums/EAccountType;

    move-result-object v0

    sget-object v1, Lin/dragonbra/javasteam/enums/EAccountType;->Individual:Lin/dragonbra/javasteam/enums/EAccountType;

    if-eq v0, v1, :cond_13

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountType()Lin/dragonbra/javasteam/enums/EAccountType;

    move-result-object p0

    sget-object v0, Lin/dragonbra/javasteam/enums/EAccountType;->ConsoleUser:Lin/dragonbra/javasteam/enums/EAccountType;

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public final isLobby()Z
    .registers 5

    .line 335
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountType()Lin/dragonbra/javasteam/enums/EAccountType;

    move-result-object v0

    sget-object v1, Lin/dragonbra/javasteam/enums/EAccountType;->Chat:Lin/dragonbra/javasteam/enums/EAccountType;

    if-ne v0, v1, :cond_1b

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountInstance()J

    move-result-wide v0

    sget-object p0, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;->LOBBY:Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;->getCode()J

    move-result-wide v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0
.end method

.method public final isPersistentGameServerAccount()Z
    .registers 2

    .line 300
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountType()Lin/dragonbra/javasteam/enums/EAccountType;

    move-result-object p0

    sget-object v0, Lin/dragonbra/javasteam/enums/EAccountType;->GameServer:Lin/dragonbra/javasteam/enums/EAccountType;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isValid()Z
    .registers 10

    .line 371
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountType()Lin/dragonbra/javasteam/enums/EAccountType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Lin/dragonbra/javasteam/enums/EAccountType;->Invalid:Lin/dragonbra/javasteam/enums/EAccountType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_82

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountType()Lin/dragonbra/javasteam/enums/EAccountType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v2, Lin/dragonbra/javasteam/enums/EAccountType;->AnonUser:Lin/dragonbra/javasteam/enums/EAccountType;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-lez v0, :cond_20

    goto :goto_82

    .line 375
    :cond_20
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountUniverse()Lin/dragonbra/javasteam/enums/EUniverse;

    move-result-object v0

    sget-object v2, Lin/dragonbra/javasteam/enums/EUniverse;->Invalid:Lin/dragonbra/javasteam/enums/EUniverse;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-lez v0, :cond_82

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountUniverse()Lin/dragonbra/javasteam/enums/EUniverse;

    move-result-object v0

    sget-object v2, Lin/dragonbra/javasteam/enums/EUniverse;->Dev:Lin/dragonbra/javasteam/enums/EUniverse;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-lez v0, :cond_39

    goto :goto_82

    .line 379
    :cond_39
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountType()Lin/dragonbra/javasteam/enums/EAccountType;

    move-result-object v0

    sget-object v2, Lin/dragonbra/javasteam/enums/EAccountType;->Individual:Lin/dragonbra/javasteam/enums/EAccountType;

    const-wide/16 v3, 0x0

    if-ne v0, v2, :cond_56

    .line 380
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountID()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-eqz v0, :cond_55

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountInstance()J

    move-result-wide v5

    const-wide/16 v7, 0x4

    cmp-long v0, v5, v7

    if-lez v0, :cond_56

    :cond_55
    return v1

    .line 383
    :cond_56
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountType()Lin/dragonbra/javasteam/enums/EAccountType;

    move-result-object v0

    sget-object v2, Lin/dragonbra/javasteam/enums/EAccountType;->Clan:Lin/dragonbra/javasteam/enums/EAccountType;

    if-ne v0, v2, :cond_6f

    .line 384
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountID()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-eqz v0, :cond_6e

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountInstance()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-eqz v0, :cond_6f

    :cond_6e
    return v1

    .line 387
    :cond_6f
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountType()Lin/dragonbra/javasteam/enums/EAccountType;

    move-result-object v0

    sget-object v2, Lin/dragonbra/javasteam/enums/EAccountType;->GameServer:Lin/dragonbra/javasteam/enums/EAccountType;

    if-ne v0, v2, :cond_80

    .line 388
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountID()J

    move-result-wide v5

    cmp-long p0, v5, v3

    if-nez p0, :cond_80

    return v1

    :cond_80
    const/4 p0, 0x1

    return p0

    :cond_82
    :goto_82
    return v1
.end method

.method public final render()Ljava/lang/String;
    .registers 4

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lin/dragonbra/javasteam/types/SteamID;->render$default(Lin/dragonbra/javasteam/types/SteamID;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final render(Z)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_7

    .line 440
    invoke-direct {p0}, Lin/dragonbra/javasteam/types/SteamID;->renderSteam3()Ljava/lang/String;

    move-result-object p0

    goto :goto_b

    :cond_7
    invoke-direct {p0}, Lin/dragonbra/javasteam/types/SteamID;->renderSteam2()Ljava/lang/String;

    move-result-object p0

    :goto_b
    return-object p0
.end method

.method public final set(JLin/dragonbra/javasteam/enums/EUniverse;Lin/dragonbra/javasteam/enums/EAccountType;)V
    .registers 6

    const-string v0, "eUniverse"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/types/SteamID;->setAccountID(J)V

    .line 132
    invoke-virtual {p0, p3}, Lin/dragonbra/javasteam/types/SteamID;->setAccountUniverse(Lin/dragonbra/javasteam/enums/EUniverse;)V

    .line 133
    invoke-virtual {p0, p4}, Lin/dragonbra/javasteam/types/SteamID;->setAccountType(Lin/dragonbra/javasteam/enums/EAccountType;)V

    .line 135
    sget-object p1, Lin/dragonbra/javasteam/enums/EAccountType;->Clan:Lin/dragonbra/javasteam/enums/EAccountType;

    if-eq p4, p1, :cond_1a

    sget-object p1, Lin/dragonbra/javasteam/enums/EAccountType;->GameServer:Lin/dragonbra/javasteam/enums/EAccountType;

    if-ne p4, p1, :cond_17

    goto :goto_1a

    :cond_17
    const-wide/16 p1, 0x1

    goto :goto_1c

    :cond_1a
    :goto_1a
    const-wide/16 p1, 0x0

    :goto_1c
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/types/SteamID;->setAccountInstance(J)V

    return-void
.end method

.method public final setAccountID(J)V
    .registers 9

    .line 400
    iget-object v0, p0, Lin/dragonbra/javasteam/types/SteamID;->steamID:Lin/dragonbra/javasteam/types/BitVector64;

    const/4 v1, 0x0

    const-wide v2, 0xffffffffL

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lin/dragonbra/javasteam/types/BitVector64;->setMask(IJJ)V

    return-void
.end method

.method public final setAccountInstance(J)V
    .registers 9

    .line 409
    iget-object v0, p0, Lin/dragonbra/javasteam/types/SteamID;->steamID:Lin/dragonbra/javasteam/types/BitVector64;

    const/16 v1, 0x20

    const-wide/32 v2, 0xfffff

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lin/dragonbra/javasteam/types/BitVector64;->setMask(IJJ)V

    return-void
.end method

.method public final setAccountType(Lin/dragonbra/javasteam/enums/EAccountType;)V
    .registers 8

    .line 418
    iget-object v0, p0, Lin/dragonbra/javasteam/types/SteamID;->steamID:Lin/dragonbra/javasteam/types/BitVector64;

    if-eqz p1, :cond_9

    .line 421
    invoke-virtual {p1}, Lin/dragonbra/javasteam/enums/EAccountType;->code()I

    move-result p0

    goto :goto_b

    :cond_9
    const/16 p0, 0x69

    :goto_b
    int-to-long v4, p0

    const/16 v1, 0x34

    const-wide/16 v2, 0xf

    .line 418
    invoke-virtual/range {v0 .. v5}, Lin/dragonbra/javasteam/types/BitVector64;->setMask(IJJ)V

    return-void
.end method

.method public final setAccountUniverse(Lin/dragonbra/javasteam/enums/EUniverse;)V
    .registers 9

    const-string v0, "accountUniverse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    iget-object v1, p0, Lin/dragonbra/javasteam/types/SteamID;->steamID:Lin/dragonbra/javasteam/types/BitVector64;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/enums/EUniverse;->code()I

    move-result p0

    int-to-long v5, p0

    const/16 v2, 0x38

    const-wide/16 v3, 0xff

    invoke-virtual/range {v1 .. v6}, Lin/dragonbra/javasteam/types/BitVector64;->setMask(IJJ)V

    return-void
.end method

.method public final setFromSteam3String(Ljava/lang/String;)Z
    .registers 11

    .line 190
    invoke-static {p1}, Lin/dragonbra/javasteam/util/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 194
    :cond_8
    sget-object v0, Lin/dragonbra/javasteam/types/SteamID;->STEAM3_REGEX:Ljava/util/regex/Pattern;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v2, "matcher(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 197
    sget-object v0, Lin/dragonbra/javasteam/types/SteamID;->STEAM3_FALLBACK_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-nez p1, :cond_2c

    return v1

    :cond_2c
    const/4 p1, 0x3

    .line 204
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d1

    invoke-static {p1}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_d1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x2

    .line 205
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d1

    invoke-static {v2}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_d1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    .line 207
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 209
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v3, :cond_5a

    return v1

    .line 213
    :cond_5a
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v4, 0x5

    .line 216
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-static {v0}, Lin/dragonbra/javasteam/util/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    const/16 v5, 0x63

    const/16 v6, 0x4c

    if-nez v4, :cond_75

    .line 219
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    goto :goto_86

    :cond_75
    if-eq v1, v6, :cond_84

    const/16 v0, 0x54

    if-eq v1, v0, :cond_84

    if-eq v1, v5, :cond_84

    const/16 v0, 0x67

    if-eq v1, v0, :cond_84

    const-wide/16 v7, 0x1

    goto :goto_86

    :cond_84
    const-wide/16 v7, 0x0

    :goto_86
    if-eq v1, v6, :cond_b1

    if-eq v1, v5, :cond_a4

    const/16 v0, 0x69

    if-eq v1, v0, :cond_9e

    .line 240
    sget-object v0, Lin/dragonbra/javasteam/types/SteamID;->ACCOUNT_TYPE_CHARS:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lin/dragonbra/javasteam/util/CollectionUtils;->getKeyByValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/enums/EAccountType;

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/types/SteamID;->setAccountType(Lin/dragonbra/javasteam/enums/EAccountType;)V

    goto :goto_bd

    .line 238
    :cond_9e
    sget-object v0, Lin/dragonbra/javasteam/enums/EAccountType;->Invalid:Lin/dragonbra/javasteam/enums/EAccountType;

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/types/SteamID;->setAccountType(Lin/dragonbra/javasteam/enums/EAccountType;)V

    goto :goto_bd

    .line 229
    :cond_a4
    sget-object v0, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;->CLAN:Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;->getCode()J

    move-result-wide v0

    or-long/2addr v7, v0

    .line 230
    sget-object v0, Lin/dragonbra/javasteam/enums/EAccountType;->Chat:Lin/dragonbra/javasteam/enums/EAccountType;

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/types/SteamID;->setAccountType(Lin/dragonbra/javasteam/enums/EAccountType;)V

    goto :goto_bd

    .line 234
    :cond_b1
    sget-object v0, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;->LOBBY:Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;->getCode()J

    move-result-wide v0

    or-long/2addr v7, v0

    .line 235
    sget-object v0, Lin/dragonbra/javasteam/enums/EAccountType;->Chat:Lin/dragonbra/javasteam/enums/EAccountType;

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/types/SteamID;->setAccountType(Lin/dragonbra/javasteam/enums/EAccountType;)V

    .line 243
    :goto_bd
    invoke-static {v2}, Lin/dragonbra/javasteam/enums/EUniverse;->from(I)Lin/dragonbra/javasteam/enums/EUniverse;

    move-result-object v0

    const-string v1, "from(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/types/SteamID;->setAccountUniverse(Lin/dragonbra/javasteam/enums/EUniverse;)V

    .line 244
    invoke-virtual {p0, v7, v8}, Lin/dragonbra/javasteam/types/SteamID;->setAccountInstance(J)V

    int-to-long v0, p1

    .line 245
    invoke-virtual {p0, v0, v1}, Lin/dragonbra/javasteam/types/SteamID;->setAccountID(J)V

    return v3

    :cond_d1
    return v1
.end method

.method public final setFromString(Ljava/lang/String;Lin/dragonbra/javasteam/enums/EUniverse;)Z
    .registers 8

    const-string v0, "eUniverse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-static {p1}, Lin/dragonbra/javasteam/util/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    return v1

    .line 167
    :cond_d
    sget-object v0, Lin/dragonbra/javasteam/types/SteamID;->STEAM2_REGEX:Ljava/util/regex/Pattern;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1d

    return v1

    :cond_1d
    const/4 v0, 0x3

    .line 173
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "group(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_58

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v0, 0x2

    .line 174
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_58

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 176
    invoke-virtual {p0, p2}, Lin/dragonbra/javasteam/types/SteamID;->setAccountUniverse(Lin/dragonbra/javasteam/enums/EUniverse;)V

    const-wide/16 p1, 0x1

    .line 177
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/types/SteamID;->setAccountInstance(J)V

    .line 178
    sget-object p1, Lin/dragonbra/javasteam/enums/EAccountType;->Individual:Lin/dragonbra/javasteam/enums/EAccountType;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/types/SteamID;->setAccountType(Lin/dragonbra/javasteam/enums/EAccountType;)V

    const/4 p1, 0x1

    shl-long v2, v3, p1

    or-long/2addr v0, v2

    .line 179
    invoke-virtual {p0, v0, v1}, Lin/dragonbra/javasteam/types/SteamID;->setAccountID(J)V

    return p1

    :cond_58
    return v1
.end method

.method public final setFromUInt64(J)V
    .registers 3

    .line 265
    iget-object p0, p0, Lin/dragonbra/javasteam/types/SteamID;->steamID:Lin/dragonbra/javasteam/types/BitVector64;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/types/BitVector64;->setData(J)V

    return-void
.end method

.method public final setFromUInt64String(Ljava/lang/String;)V
    .registers 4

    const-string v0, "stringSteamId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 257
    invoke-virtual {p0, v0, v1}, Lin/dragonbra/javasteam/types/SteamID;->setFromUInt64(J)V

    return-void
.end method

.method public final toChatID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 4

    .line 448
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->isClanAccount()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 450
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    .line 451
    sget-object p0, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;->CLAN:Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;->getCode()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;->setAccountInstance(J)V

    .line 452
    sget-object p0, Lin/dragonbra/javasteam/enums/EAccountType;->Chat:Lin/dragonbra/javasteam/enums/EAccountType;

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/types/SteamID;->setAccountType(Lin/dragonbra/javasteam/enums/EAccountType;)V

    return-object v0

    .line 448
    :cond_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Only Clan IDs can be converted to Chat IDs."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 514
    invoke-static {p0, v2, v0, v1}, Lin/dragonbra/javasteam/types/SteamID;->render$default(Lin/dragonbra/javasteam/types/SteamID;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final tryGetClanID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 5

    .line 461
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->isChatAccount()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->getAccountInstance()J

    move-result-wide v0

    sget-object v2, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;->CLAN:Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;

    invoke-virtual {v2}, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;->getCode()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    .line 462
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    const-wide/16 v1, 0x0

    .line 463
    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;->setAccountInstance(J)V

    .line 464
    sget-object p0, Lin/dragonbra/javasteam/enums/EAccountType;->Clan:Lin/dragonbra/javasteam/enums/EAccountType;

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/types/SteamID;->setAccountType(Lin/dragonbra/javasteam/enums/EAccountType;)V

    return-object v0

    :cond_28
    const/4 p0, 0x0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.types.SteamID.ChatInstanceFlags (in.dragonbra.javasteam.types.SteamID$ChatInstanceFlags)
.class public final enum Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;
.super Ljava/lang/Enum;
.source "SteamID.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/types/SteamID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChatInstanceFlags"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;

.field public static final enum CLAN:Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;

.field public static final Companion:Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags$Companion;

.field public static final enum LOBBY:Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;

.field public static final enum MMS_LOBBY:Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;


# instance fields
.field private final code:J


# direct methods
.method private static final synthetic $values()[Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;
    .registers 3

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;->CLAN:Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;

    sget-object v1, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;->LOBBY:Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;

    sget-object v2, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;->MMS_LOBBY:Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;

    filled-new-array {v0, v1, v2}, [Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 539
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;

    const/4 v1, 0x0

    const-wide/32 v2, 0x80000

    const-string v4, "CLAN"

    invoke-direct {v0, v4, v1, v2, v3}, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;->CLAN:Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;

    .line 544
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;

    const/4 v1, 0x1

    const-wide/32 v2, 0x40000

    const-string v4, "LOBBY"

    invoke-direct {v0, v4, v1, v2, v3}, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;->LOBBY:Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;

    .line 549
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;

    const/4 v1, 0x2

    const-wide/32 v2, 0x20000

    const-string v4, "MMS_LOBBY"

    invoke-direct {v0, v4, v1, v2, v3}, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;->MMS_LOBBY:Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;

    invoke-static {}, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;->$values()[Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;->$VALUES:[Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;->Companion:Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 535
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;->code:J

    return-void
.end method

.method public static final from(J)Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;
    .registers 3

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;->Companion:Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags$Companion;

    invoke-virtual {v0, p0, p1}, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags$Companion;->from(J)Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;
    .registers 2

    .line 0
    const-class v0, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;
    .registers 1

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;->$VALUES:[Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;

    return-object v0
.end method


# virtual methods
.method public final getCode()J
    .registers 3

    .line 535
    iget-wide v0, p0, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;->code:J

    return-wide v0
.end method

.method public final hasFlag(J)Z
    .registers 5

    .line 553
    iget-wide v0, p0, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;->code:J

    and-long p0, p1, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

###### Class in.dragonbra.javasteam.types.SteamID.ChatInstanceFlags.Companion (in.dragonbra.javasteam.types.SteamID$ChatInstanceFlags$Companion)
.class public final Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags$Companion;
.super Ljava/lang/Object;
.source "SteamID.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSteamID.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SteamID.kt\nin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,561:1\n1#2:562\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(J)Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;
    .registers 6

    .line 557
    invoke-static {}, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;->getCode()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_8

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    check-cast v0, Lin/dragonbra/javasteam/types/SteamID$ChatInstanceFlags;

    return-object v0
.end method

###### Class in.dragonbra.javasteam.types.SteamID.Companion (in.dragonbra.javasteam.types.SteamID$Companion)
.class public final Lin/dragonbra/javasteam/types/SteamID$Companion;
.super Ljava/lang/Object;
.source "SteamID.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/types/SteamID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/types/SteamID$Companion;-><init>()V

    return-void
.end method

###### Class in.dragonbra.javasteam.types.SteamID.WhenMappings (in.dragonbra.javasteam.types.SteamID$WhenMappings)
.class public final synthetic Lin/dragonbra/javasteam/types/SteamID$WhenMappings;
.super Ljava/lang/Object;
.source "SteamID.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/types/SteamID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lin/dragonbra/javasteam/enums/EAccountType;->values()[Lin/dragonbra/javasteam/enums/EAccountType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lin/dragonbra/javasteam/enums/EAccountType;->Invalid:Lin/dragonbra/javasteam/enums/EAccountType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lin/dragonbra/javasteam/enums/EAccountType;->Individual:Lin/dragonbra/javasteam/enums/EAccountType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lin/dragonbra/javasteam/enums/EAccountType;->AnonGameServer:Lin/dragonbra/javasteam/enums/EAccountType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lin/dragonbra/javasteam/enums/EAccountType;->Multiseat:Lin/dragonbra/javasteam/enums/EAccountType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    sput-object v0, Lin/dragonbra/javasteam/types/SteamID$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
